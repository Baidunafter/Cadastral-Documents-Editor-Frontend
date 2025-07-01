export const parseXmlStructure = (
  xml: string,
  dictText: string,
  excludedCodes: string[]
) => {
  const dicts: Record<string, { value: string; label: string }[]> = {};
  const dictRegex = /<xsl:template name="(.*?)">([\s\S]*?)<\/xsl:template>/g;
  let dictMatch;
  while ((dictMatch = dictRegex.exec(dictText))) {
    const name = dictMatch[1];
    const content = dictMatch[2];
    const optionRegex = /\|(\d+)\|(.*?)\|/g;
    const options: { value: string; label: string }[] = [];
    let opt;
    while ((opt = optionRegex.exec(content))) {
      options.push({ value: opt[1], label: opt[2] });
    }
    dicts[name] = options;
  }

  const formRegex = /<Form[^>]+Code="(Act|Info)"[^>]*>([\s\S]*?)<\/Form>/g;
  const aliasMap: Record<string, string> = {};
  const codeCounters: Record<string, number> = {};
  const seenCodes = new Set<string>();
  const result: (Field | Section)[] = [];

  const blockRegex = /<(Simple|Alt|Multi)([^>]*)>([\s\S]*?)<\/\1>/g;
  let formMatch;
  while ((formMatch = formRegex.exec(xml))) {
    const formContent = formMatch[2];
    let blockMatch;
    while ((blockMatch = blockRegex.exec(formContent))) {
      const [, , attr, inner] = blockMatch;
      const code = attr.match(/Code="(.*?)"/)?.[1];
      if (!code || excludedCodes.includes(code) || seenCodes.has(code)) continue;
      seenCodes.add(code);

      const name = attr.match(/Name="(.*?)"/)?.[1] || 'Без названия';
      const section: Section = { name, collapsed: false, children: [] };

      const sectionRegex = /<Section([^>]*)>([\s\S]*?)<\/Section>/g;
      let secMatch;
      while ((secMatch = sectionRegex.exec(inner))) {
        const [_, secAttr, secContent] = secMatch;
        const secCode = secAttr.match(/Code="(.*?)"/)?.[1];
        const secName = secAttr.match(/Name="(.*?)"/)?.[1];
        const children = parseParams(secContent, aliasMap, dicts, codeCounters);
        if (secCode) {
          section.children.push({ name: secName || 'Раздел', collapsed: false, children });
        } else {
          section.children.push(...children);
        }
      }

      result.push(section);
    }
  }

  return { structure: result, aliasMap };
};

const parseParams = (
  content: string,
  aliasMap: Record<string, string>,
  dicts: Record<string, { value: string; label: string }[]>,
  codeCounters: Record<string, number>
): Field[] => {
  const fields: Field[] = [];
  const paramRegex = /<(Param|ParamText|ParamDate|ParamSelect|ParamMemo)\s+([^>]*?)(?:\/>|>([\s\S]*?)<\/\1>)/g;
  let match;
  while ((match = paramRegex.exec(content))) {
    const [_, tag, attrString, inner = ''] = match;

    const isSelfClosing = match[0].endsWith('/>');
    const hasPlaceholder = inner.includes('{?External(') || inner.includes('{?Editor(');
    const hasCodeSelected =
      tag === 'ParamSelect' &&
      /CodeSelected="\{\?(External|Editor)\(.*?\)\?\}"/.test(attrString);
    if (isSelfClosing || (!hasPlaceholder && !hasCodeSelected)) continue;

    const getAttr = (name: string) => {
      const found = attrString.match(new RegExp(`${name}="(.*?)"`));
      return found?.[1];
    };

    const name = getAttr('Name') || 'Без названия';
    const regex = getAttr('RegEx');
    const errorText = getAttr('ErrorText');
    const dictionary = getAttr('Dictionary');

    let rawCode = getAttr('Code');
    let aliasKey: string | undefined;

    if (tag === 'ParamSelect') {
      const innerMatch = inner.match(/<Param[^>]*Code="\{\?(External|Editor)\((.*?)\)\?\}"/);
      const innerCode = innerMatch?.[2];
      if (innerCode) {
        rawCode = innerCode;
        aliasKey = innerCode;
      } else {
        const codeSel = attrString.match(/CodeSelected="\{\?(External|Editor)\((.*?)\)\?\}"/);
        if (codeSel) {
          rawCode = codeSel[2];
          aliasKey = codeSel[2];
        }
      }
    } else {
      const innerCode = inner.match(/\{\?(External|Editor)\((.*?)\)\?\}/)?.[2];
      if (innerCode) {
        aliasKey = innerCode;
      }
    }

    if (!rawCode) continue;

    codeCounters[rawCode] = (codeCounters[rawCode] || 0) + 1;
    const code = codeCounters[rawCode] > 1 ? `${rawCode}_${codeCounters[rawCode]}` : rawCode;

    if (aliasKey) {
      aliasMap[code] = codeCounters[rawCode] > 1 ? `${aliasKey}_${codeCounters[rawCode]}` : aliasKey;
    }

    const field: Field = {
      type: tag as Field['type'],
      code,
      name,
      regex,
      errorText
    };

    if (tag === 'ParamSelect' && dictionary && dicts[dictionary]) {
      field.dictionary = dictionary;
      field.options = dicts[dictionary];
    }

    fields.push(field);
  }

  return fields;
};

export interface Field {
  type: 'Param' | 'ParamText' | 'ParamDate' | 'ParamSelect' | 'ParamMemo';
  code: string;
  name: string;
  regex?: string;
  errorText?: string;
  dictionary?: string;
  options?: { value: string; label: string }[];
}

export interface Section {
  name: string;
  collapsed: boolean;
  children: (Field | Section)[];
}
