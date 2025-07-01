'use client';

import { useEffect, useState } from 'react';
import Header from '../components/header';
import { parseXmlStructure } from '../hooks/parser';

interface Field {
  type: 'Param' | 'ParamText' | 'ParamDate' | 'ParamSelect' | 'ParamMemo';
  code: string;
  name: string;
  regex?: string;
  errorText?: string;
  dictionary?: string;
  options?: { value: string; label: string }[];
}

interface Section {
  name: string;
  collapsed: boolean;
  children: (Field | Section)[];
}

const EXCLUDED_CODES = [
  'Versions', 'Transfer', 'Print', 'ContractorDate', 'RegisterRight',
  'ContractorNumber', 'Contractor', 'ContractorRegNumber', 'Utilization',
  'Flats', 'RightRegisteredUnregistered', 'AgentLetter', 'XXX', 'NameSRO',
  'ContractorSRO', 'Conclusion'
];

const PROFILE_MAP: Record<string, keyof Profile> = {
  FIO1: 'last_name',
  FIO2: 'first_name',
  FIO3: 'middle_name',
  CertN: 'certificate_number',
  Organization: 'organization',
  Phone: 'phone',
  Email: 'email',
  Address: 'organization_address'
};

interface Profile {
  last_name: string;
  first_name: string;
  middle_name: string;
  certificate_number: string;
  email: string;
  phone: string;
  address: string;
  organization: string;
  organization_address: string;
}

export default function InspectionPage() {
  const [xmlText, setXmlText] = useState('');
  const [structure, setStructure] = useState<(Field | Section)[]>([]);
  const [values, setValues] = useState<Record<string, string>>({});
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [fieldAliasMap, setFieldAliasMap] = useState<Record<string, string>>({});
  const [previewHtml, setPreviewHtml] = useState<string | null>(null);
  const [showSuccessDialog, setShowSuccessDialog] = useState(false);

  useEffect(() => {
    Promise.all([
      fetch('/MiniEditor.xml').then(res => res.text()),
      fetch('/Dictionary.xslt').then(res => res.text())
    ])
      .then(([xml, dictText]) => {
        setXmlText(xml);
        const { structure, aliasMap } = parseXmlStructure(xml, dictText, EXCLUDED_CODES);
        setStructure(structure);
        setFieldAliasMap(aliasMap);
      })
      .catch(err => console.error('Ошибка загрузки:', err));
  }, []);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>
  ) => {
    const { name, value } = e.target;
    setValues(prev => ({ ...prev, [name]: value }));

    const allFields = flattenFields(structure);
    const field = allFields.find(f => f.code === name);
    if (field?.regex) {
      try {
        const fullRegex = new RegExp(`^${field.regex}$`);
        if (value && !fullRegex.test(value)) {
          setErrors(prev => ({ ...prev, [name]: field.errorText || 'Неверный формат' }));
        } else {
          setErrors(prev => {
            const updated = { ...prev };
            delete updated[name];
            return updated;
          });
        }
      } catch {
        console.warn(`Неверная регулярка: ${field.regex}`);
      }
    } else {
      setErrors(prev => {
        const updated = { ...prev };
        delete updated[name];
        return updated;
      });
    }
  };

  const fillFromProfile = async () => {
    const token = localStorage.getItem('authToken');
    if (!token) {
      alert('Вы не авторизованы');
      return;
    }

    try {
      const res = await fetch('http://localhost:8000/profiles', {
        method: 'GET',
        headers: {
          Authorization: token
        }
      });

      if (!res.ok) throw new Error('Ошибка при получении профиля');

      const profile: Profile = await res.json();

      const updated: Record<string, string> = {};
      for (const [code, profileField] of Object.entries(PROFILE_MAP)) {
        const value = profile[profileField] ?? '';
        updated[code] = value;
      }

      setValues(prev => ({ ...prev, ...updated }));
    } catch (err) {
      console.error('Ошибка загрузки профиля:', err);
      alert('Не удалось загрузить данные профиля');
    }
  };

  const flattenFields = (items: (Field | Section)[]): Field[] =>
    items.flatMap(item => ('children' in item ? flattenFields(item.children) : [item]));

  const toggleCollapse = (section: Section) => {
    section.collapsed = !section.collapsed;
    setStructure([...structure]);
  };

  const generateModifiedXml = (): string => {
    let modified = xmlText;

    Object.entries(fieldAliasMap).forEach(([code, alias]) => {
      const value = values[code] ?? '';
      const regex = new RegExp(`\\{\\?(External|Editor)\\(${alias}\\)\\?\\}`, 'g');
      modified = modified.replace(regex, value);
    });

    return modified;
  };

  const generatePreviewHtml = async (): Promise<string | null> => {
    if (!xmlText) return null;
    if (Object.keys(errors).length > 0) {
      alert('Пожалуйста, исправьте ошибки.');
      return null;
    }

    const modifiedXml = generateModifiedXml();
    const formData = new FormData();
    formData.append('xml', new Blob([modifiedXml], { type: 'text/xml' }));

    try {
      const res = await fetch('http://localhost:8000/render', {
        method: 'POST',
        body: formData
      });

      if (!res.ok) throw new Error('Ошибка рендеринга на сервере');
      return await res.text();
    } catch (err) {
      console.error(err);
      alert('Не удалось получить HTML');
      return null;
    }
  };

  const handlePreview = async () => {
    const html = await generatePreviewHtml();
    if (html) {
      setPreviewHtml(html);
    }
  };

  const handleDownloadPdf = async () => {
    if (!xmlText) return;
    if (Object.keys(errors).length > 0) {
      alert('Пожалуйста, исправьте ошибки.');
      return;
    }

    const modifiedXml = generateModifiedXml();
    const formData = new FormData();
    formData.append('title', 'Акт обследования');
    formData.append('xml', new Blob([modifiedXml], { type: 'text/xml' }));

    try {
      const res = await fetch('http://localhost:8000/render-pdf', {
        method: 'POST',
        body: formData
      });

      if (!res.ok) throw new Error('Ошибка при генерации PDF');

      const blob = await res.blob();
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'Акт обследования.pdf';
      a.click();
      URL.revokeObjectURL(url);
    } catch (err) {
      console.error(err);
      alert('Не удалось скачать PDF');
    }
  };

  const handleSaveDocument = async () => {
    const token = localStorage.getItem('authToken');
    if (!token) {
      alert('Сначала авторизуйтесь');
      return;
    }

    let htmlToSave = previewHtml;

    if (!htmlToSave) {
      const generated = await generatePreviewHtml();
      if (!generated) return;
      htmlToSave = generated;
      setPreviewHtml(generated);
    }

    try {
      const res = await fetch('http://localhost:8000/documents', {
        method: 'POST',
        headers: {
          'Authorization': token,
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify({
          title: 'Акт обследования',
          content: htmlToSave
        })
      });

      if (!res.ok) throw new Error('Ошибка при сохранении документа');

      setShowSuccessDialog(true);
    } catch (err) {
      console.error(err);
      alert('Не удалось сохранить документ');
    }
  };

  const renderItem = (item: Field | Section, index: number) => {
    if ('children' in item) {
      return (
        <div key={`section-${index}`} style={{ marginBottom: '1rem' }}>
          <div
            onClick={() => toggleCollapse(item)}
            style={{
              fontWeight: 'bold',
              fontSize: '1.1rem',
              cursor: 'pointer',
              backgroundColor: 'var(--page-background)',
              color: 'var(--foreground)',
              padding: '0.5rem',
              borderRadius: '0.25rem'
            }}
          >
            {item.collapsed ? '▶' : '▼'} {item.name}
          </div>
          {!item.collapsed && (
            <div style={{ paddingLeft: '1rem', marginTop: '0.5rem' }}>
              {item.children.map((child, i) => renderItem(child, i))}
            </div>
          )}
        </div>
      );
    } else {
      const value = values[item.code] || '';
      const hasError = !!errors[item.code];

      return (
        <div key={`field-${index}`} style={{ marginBottom: '1rem' }}>
          <label htmlFor={item.code} style={{ display: 'block', fontWeight: 'bold' }}>
            {item.name}
          </label>

          {item.type === 'ParamSelect' && item.options ? (
            <select
              id={item.code}
              name={item.code}
              value={value}
              onChange={handleChange}
              style={{
                width: '100%',
                padding: '0.5rem',
                border: `1px solid ${hasError ? 'red' : 'var(--background)'}`,
                borderRadius: '0.375rem',
                backgroundColor: 'var(--surface)',
                color: 'var(--foreground)'
              }}
            >
              <option value="">-- выберите --</option>
              {item.options.map(opt => (
                <option key={opt.value} value={opt.value}>
                  {opt.label}
                </option>
              ))}
            </select>
          ) : item.type === 'ParamMemo' ? (
            <textarea
              id={item.code}
              name={item.code}
              value={value}
              onChange={handleChange}
              style={{
                width: '100%',
                height: '100px',
                padding: '0.5rem',
                border: `1px solid ${hasError ? 'red' : 'var(--background)'}`,
                borderRadius: '0.375rem',
                backgroundColor: 'var(--background)',
                color: 'var(--foreground)'
              }}
            />
          ) : (
            <input
              type={item.type === 'ParamDate' ? 'date' : 'text'}
              id={item.code}
              name={item.code}
              value={value}
              onChange={handleChange}
              style={{
                width: '100%',
                padding: '0.5rem',
                border: `1px solid ${hasError ? 'red' : 'var(--background)'}`,
                borderRadius: '0.375rem',
                backgroundColor: 'var(--surface)',
                color: 'var(--foreground)'
              }}
            />
          )}

          {hasError && (
            <small style={{ color: 'red', display: 'block', marginTop: '0.25rem' }}>
              {errors[item.code]}
            </small>
          )}
        </div>
      );
    }
  };

  return (
    <>
      <Header />
      <main style={{
        padding: '2rem',
        fontFamily: 'Arial, sans-serif',
        backgroundColor: 'var(--page-background)',
        color: 'var(--foreground)',
        minHeight: '100vh'
      }}>
        <div style={{
          backgroundColor: 'var(--background)',
          padding: '2rem',
          borderRadius: '0.75rem',
          width: '100%',
          maxWidth: '900px',
          margin: '0 auto',
          boxShadow: '0 2px 8px rgba(0,0,0,0.05)'
        }}>
          <h1 style={{
            fontSize: '1.5rem',
            fontWeight: 600,
            textAlign: 'center',
            marginBottom: '2rem',
            border: '2px solid var(--background)',
            borderRadius: '0.5rem',
            padding: '0.75rem 1.5rem',
            backgroundColor: 'var(--page-background)'
          }}>
            Акт обследования
          </h1>

          <form
            style={{ display: 'flex', flexDirection: 'column', alignItems: 'stretch' }}
            onSubmit={(e) => e.preventDefault()}
          >
            {structure.map((item, index) => renderItem(item, index))}

            <div style={{ display: 'flex', flexDirection: 'column', gap: '1rem', marginTop: '1.5rem' }}>
              <button onClick={handlePreview} type="button" style={buttonStyle('var(--success)')}>Просмотр документа</button>
              <button onClick={fillFromProfile} type="button" style={buttonStyle('var(--success)')}>Заполнить данные из профиля</button>
              <button onClick={handleDownloadPdf} type="button" style={buttonStyle('var(--theme)')}>Скачать PDF</button>
              <button onClick={handleSaveDocument} type="button" style={buttonStyle('var(--primary)')}>Сохранить документ</button>
            </div>
          </form>
        </div>

        {previewHtml && (
          <div style={{ marginTop: '2rem', display: 'flex', justifyContent: 'center' }}>
            <div style={{
              backgroundColor: 'var(--background)',
              borderRadius: '0.75rem',
              padding: '1rem',
              width: '100%',
              maxWidth: '900px',
              boxShadow: '0 2px 6px rgba(0, 0, 0, 0.05)',
            }}>
              <h2 style={{ fontSize: '1.25rem', marginBottom: '1rem', textAlign: 'center' }}>
                Предпросмотр
              </h2>
              <iframe
                srcDoc={previewHtml}
                style={{
                  width: '100%',
                  height: '900px',
                  border: 'none',
                  borderRadius: '0.5rem',
                  backgroundColor: 'white'
                }}
              />
            </div>
          </div>
        )}

        {showSuccessDialog && (
          <div style={{
            position: 'fixed',
            top: 0, left: 0, right: 0, bottom: 0,
            backgroundColor: 'rgba(0, 0, 0, 0.4)',
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            zIndex: 1000
          }}>
            <div style={{
              background: 'var(--background)',
              padding: '2rem',
              borderRadius: '0.5rem',
              textAlign: 'center',
              width: '320px'
            }}>
              <p style={{ fontSize: '20px', fontWeight: '600', color: 'var(--foreground)', padding: '1rem' }}>
                Документ успешно сохранён в вашем профиле!
              </p>
              <button
                onClick={() => setShowSuccessDialog(false)}
                style={buttonStyle('var(--primary)')}
              >
                Ок
              </button>
            </div>
          </div>
        )}
      </main>
    </>
  );
}

function buttonStyle(bg: string) {
  return {
    backgroundColor: bg,
    color: 'white',
    padding: '0.75rem',
    border: 'none',
    borderRadius: '0.375rem',
    cursor: 'pointer',
    fontSize: '1rem'
  };
}
