<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Сведения ФИР ЕГРН -->
  <xsl:template name="dIrnDocument">
    <xsl:text>|FILE|Запросы ФИР|</xsl:text>
    <xsl:text>|NAME|Запросы ФИР|</xsl:text>
    <xsl:text>|1|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|2|Кадастровая выписка об объекте недвижимости (кроме помещения)|</xsl:text>
    <xsl:text>|3|Кадастровая справка о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|4|Кадастровый план территории|</xsl:text>
  </xsl:template>
  <xsl:template name="dIrnpDocument">
    <xsl:text>|FILE|Запросы ФГИС|</xsl:text>
    <xsl:text>|NAME|Запросы ФГИС|</xsl:text>
    <xsl:text>|1|Выписка об основных характеристиках и зарегистрированных правах на объект недвижимости|</xsl:text>
    <xsl:text>|01|Выписка из Единого государственного реестра недвижимости об основных характеристиках и зарегистрированных правах на объект недвижимости|</xsl:text>
    <xsl:text>|02|Выписка из Единого государственного реестра недвижимости о зарегистрированных договорах участия в долевом строительстве|</xsl:text>
    <xsl:text>|03|Выписка из Единого государственного реестра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|04|Выписка о дате получения органом регистрации прав заявления о государственном кадастровом учете и (или) государственной регистрации прав и прилагаемых к нему документов|</xsl:text>
    <xsl:text>|05|Выписка из Единого государственного реестра недвижимости о переходе прав на объект недвижимости|</xsl:text>
  </xsl:template>
  <!--Словари перекодирования между версиями-->
  <!--Заявления-->
  <xsl:template name="TAppliedDocuments">
    <xsl:text>*|12|001|14|558401000000|15|558401000000|17|558401000000|18|558401000000|01|558401000000|1.03|558401000000|#</xsl:text>
    <xsl:text>*|12|999|14|558502020000|15|558502020000|17|558502020000|18|558502020000|01|558502020000|1.03|558502020000|#</xsl:text>
    <xsl:text>*|12|999|14|558221000000|15|558502020000|17|558502020000|18|558502020000|01|558502020000|1.03|558502020000|#</xsl:text>
    <xsl:text>*|12|020|14|558207000000|15|558207000000|17|558207000000|18|558207000000|01|558207000000|1.03|558207000000|#</xsl:text>
    <xsl:text>*|12|021|14|558208000000|15|558208000000|17|558208000000|18|558208000000|01|558208000000|1.03|558208000000|#</xsl:text>
    <xsl:text>*|12|022|14|558209000000|15|558209000000|17|558209000000|18|558209000000|01|558209000000|1.03|558209000000|#</xsl:text>
    <xsl:text>*|12|023|14|558401081200|15|558401081200|17|558401081200|18|558401081200|01|558401081200|1.03|558401081200|#</xsl:text>
    <xsl:text>*|12|019|14|558203000000|15|558203000000|17|558203000000|18|558203000000|01|558203000000|1.03|558203000000|#</xsl:text>
    <xsl:text>*|12|009|14|558301010000|15|558301010000|17|558203000000|18|558203000000|01|558203000000|1.03|558203000000|#</xsl:text>
    <xsl:text>*|12|008|14|558100000000|15|558100000000|17|558100000000|18|558100000000|01|558100000000|1.03|558100000000|#</xsl:text>
    <xsl:text>*|12|024|14||15||#</xsl:text>
  </xsl:template>
  <!-- Соответствие кодов, которые есть в КЛАДР но нет в документах-->
  <xsl:template name="dFromKladrConvert">
    <xsl:text>*|District|АО|#</xsl:text>
    <xsl:text>*|District|р-н|#</xsl:text>
    <xsl:text>*|District|у|#</xsl:text>
    <xsl:text>*|District|п|VersionRequest_17|тер|VersionMP_03|тер|SubSchemas_|тер|VersionKAISToGKN_02|тер|VersionZoneToGKN_02|тер|#</xsl:text>
    <xsl:text>*|City|с/п|VersionRequest_17|с/пос|SubSchemas_|с/пос|VersionKAISToGKN_02|с/пос|VersionZoneToGKN_02|с/пос|VersionMP_03|с/пос|#</xsl:text>
    <xsl:text>*|City|с/пос|SchemaCommon_|с/п|VersionMP_04|с/п|VersionMP_05|с/п|VersionMP_06|с/п|VersionTP_03|с/п|VersionRequest_01|с/п|#</xsl:text>
    <xsl:text>*|City|г|#</xsl:text>
    <xsl:text>*|City|дп|#</xsl:text>
    <xsl:text>*|City|массив|#</xsl:text>
    <xsl:text>*|City|п|#</xsl:text>
    <xsl:text>*|City|п/о|#</xsl:text>
    <xsl:text>*|City|пгт|#</xsl:text>
    <xsl:text>*|City|рп|#</xsl:text>
    <xsl:text>*|City|с/а|#</xsl:text>
    <xsl:text>*|City|с/мо|#</xsl:text>
    <xsl:text>*|City|с/о|#</xsl:text>
    <xsl:text>*|City|с/с|#</xsl:text>
    <xsl:text>*|City|тер|#</xsl:text>
    <xsl:text>*|City||#</xsl:text>
    <xsl:text>*|UrbanDistrict|тер|SubSchemas_|р-н|SchemaCommon_|р-н|VersionRequest_18|р-н|VersionRequest_01|р-н|VersionKAISToGKN_02|р-н|VersionKAISToGKN_03|р-н|VersionZoneToGKN_03|р-н|VersionMP_04|р-н|VersionMP_05|р-н|VersionMP_06|р-н|VersionTP_02|р-н|VersionTP_03|р-н|#</xsl:text>
    <xsl:text>*|Urban_District|тер|SubSchemas_|р-н|SchemaCommon_|р-н|VersionRequest_18|р-н|VersionRequest_01|р-н|VersionKAISToGKN_02|р-н|VersionKAISToGKN_03|р-н|VersionZoneToGKN_03|р-н|VersionMP_04|р-н|VersionMP_05|р-н|VersionMP_06|р-н|VersionTP_02|р-н|VersionTP_03|р-н|#</xsl:text>
    <xsl:text>*|Locality|аал|#</xsl:text>
    <xsl:text>*|Locality|автодорога|#</xsl:text>
    <xsl:text>*|Locality|арбан|#</xsl:text>
    <xsl:text>*|Locality|аул|#</xsl:text>
    <xsl:text>*|Locality|высел|#</xsl:text>
    <xsl:text>*|Locality|г|#</xsl:text>
    <xsl:text>*|Locality|гп|SubSchemas_|пгт|SchemaCommon_|пгт|VersionMP_05|пгт|VersionMP_06|пгт|VersionTP_03|пгт|VersionRequest_01|пгт|VersionRequest_18|пгт|VersionZoneToGKN_05|пгт|#</xsl:text>
    <xsl:text>*|Locality|городок|#</xsl:text>
    <xsl:text>*|Locality|д|#</xsl:text>
    <xsl:text>*|Locality|дп|#</xsl:text>
    <xsl:text>*|Locality|ж/д_будка|#</xsl:text>
    <xsl:text>*|Locality|ж/д_казарм|#</xsl:text>
    <xsl:text>*|Locality|ж/д_оп|#</xsl:text>
    <xsl:text>*|Locality|ж/д_платф|#</xsl:text>
    <xsl:text>*|Locality|ж/д_пост|#</xsl:text>
    <xsl:text>*|Locality|ж/д_рзд|#</xsl:text>
    <xsl:text>*|Locality|ж/д_ст|#</xsl:text>
    <xsl:text>*|Locality|жилзона|#</xsl:text>
    <xsl:text>*|Locality|жилрайон|#</xsl:text>
    <xsl:text>*|Locality|заимка|#</xsl:text>
    <xsl:text>*|Locality|казарма|#</xsl:text>
    <xsl:text>*|Locality|кв-л|#</xsl:text>
    <xsl:text>*|Locality|кордон|#</xsl:text>
    <xsl:text>*|Locality|кп|#</xsl:text>
    <xsl:text>*|Locality|лпх|#</xsl:text>
    <xsl:text>*|Locality|м|#</xsl:text>
    <xsl:text>*|Locality|массив|#</xsl:text>
    <xsl:text>*|Locality|мкр|#</xsl:text>
    <xsl:text>*|Locality|нп|#</xsl:text>
    <xsl:text>*|Locality|остров|#</xsl:text>
    <xsl:text>*|Locality|п|#</xsl:text>
    <xsl:text>*|Locality|п/о|#</xsl:text>
    <xsl:text>*|Locality|п/р|#</xsl:text>
    <xsl:text>*|Locality|п/ст|#</xsl:text>
    <xsl:text>*|Locality|пгт|#</xsl:text>
    <xsl:text>*|Locality|погост|#</xsl:text>
    <xsl:text>*|Locality|починок|#</xsl:text>
    <xsl:text>*|Locality|промзона|#</xsl:text>
    <xsl:text>*|Locality|рзд|#</xsl:text>
    <xsl:text>*|Locality|рп|#</xsl:text>
    <xsl:text>*|Locality|с|#</xsl:text>
    <xsl:text>*|Locality|сл|#</xsl:text>
    <xsl:text>*|Locality|снт|#</xsl:text>
    <xsl:text>*|Locality|ст|#</xsl:text>
    <xsl:text>*|Locality|ст-ца|#</xsl:text>
    <xsl:text>*|Locality|тер|#</xsl:text>
    <xsl:text>*|Locality|у|#</xsl:text>
    <xsl:text>*|Locality|х|#</xsl:text>
    <xsl:text>*|Street|н/п|VersionRequest_17|нп|SubSchemas_|нп|VersionKAISToGKN_02|нп|VersionZoneToGKN_02|нп|VersionMP_03|нп|VersionMP_04|нп|#</xsl:text>
    <xsl:text>*|Street|ф/х|VersionRequest_17|ферма|SubSchemas_|ферма|VersionKAISToGKN_02|ферма|VersionZoneToGKN_02|ферма|VersionMP_03|ферма|VersionMP_04|ферма|#</xsl:text>
    <xsl:text>*|Street|проселок|SchemaCommon_|просёлок|#</xsl:text>
    <xsl:text>*|Street|а/я|#</xsl:text>
    <xsl:text>*|Street|аал|#</xsl:text>
    <xsl:text>*|Street|аллея|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|ал.|SubSchemas_|аллея|SchemaCommon_|аллея|VersionRequest_18|аллея|VersionRequest_01|аллея|VersionKAISToGKN_02|аллея|VersionKAISToGKN_03|аллея|VersionZoneToGKN_03|аллея|VersionMP_04|аллея|VersionMP_05|аллея|VersionMP_06|аллея|VersionTP_02|аллея|VersionTP_03|аллея|#</xsl:text>
    <xsl:text>*|Street|аул|#</xsl:text>
    <xsl:text>*|Street|берег|#</xsl:text>
    <xsl:text>*|Street|б-р|#</xsl:text>
    <xsl:text>*|Street|бугор|#</xsl:text>
    <xsl:text>*|Street|вал|#</xsl:text>
    <xsl:text>*|Street|въезд|#</xsl:text>
    <xsl:text>*|Street|высел|#</xsl:text>
    <xsl:text>*|Street|городок|#</xsl:text>
    <xsl:text>*|Street|гск|#</xsl:text>
    <xsl:text>*|Street|д|#</xsl:text>
    <xsl:text>*|Street|дор|#</xsl:text>
    <xsl:text>*|Street|ж/д_будка|#</xsl:text>
    <xsl:text>*|Street|ж/д_казарм|#</xsl:text>
    <xsl:text>*|Street|ж/д_оп|#</xsl:text>
    <xsl:text>*|Street|ж/д_платф|#</xsl:text>
    <xsl:text>*|Street|ж/д_пост|#</xsl:text>
    <xsl:text>*|Street|ж/д_рзд|#</xsl:text>
    <xsl:text>*|Street|ж/д_ст|#</xsl:text>
    <xsl:text>*|Street|жт|#</xsl:text>
    <xsl:text>*|Street|заезд|#</xsl:text>
    <xsl:text>*|Street|зона|#</xsl:text>
    <xsl:text>*|Street|казарма|#</xsl:text>
    <xsl:text>*|Street|канал|#</xsl:text>
    <xsl:text>*|Street|кв-л|#</xsl:text>
    <xsl:text>*|Street|км|#</xsl:text>
    <xsl:text>*|Street|кольцо|#</xsl:text>
    <xsl:text>*|Street|коса|#</xsl:text>
    <xsl:text>*|Street|линия|#</xsl:text>
    <xsl:text>*|Street|лпх|#</xsl:text>
    <xsl:text>*|Street|м|#</xsl:text>
    <xsl:text>*|Street|мкр|#</xsl:text>
    <xsl:text>*|Street|мост|#</xsl:text>
    <xsl:text>*|Street|наб|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|наб.|SubSchemas_|наб|SchemaCommon_|наб|VersionRequest_18|наб|VersionRequest_01|наб|VersionKAISToGKN_02|наб|VersionKAISToGKN_03|наб|VersionZoneToGKN_03|наб|VersionMP_04|наб|VersionMP_05|наб|VersionMP_06|наб|VersionTP_02|наб|VersionTP_03|наб|#</xsl:text>
    <xsl:text>*|Street|нп|#</xsl:text>
    <xsl:text>*|Street|остров|#</xsl:text>
    <xsl:text>*|Street|п|#</xsl:text>
    <xsl:text>*|Street|п/о|#</xsl:text>
    <xsl:text>*|Street|п/р|#</xsl:text>
    <xsl:text>*|Street|п/ст|#</xsl:text>
    <xsl:text>*|Street|парк|#</xsl:text>
    <xsl:text>*|Street|пер|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|пер.|SubSchemas_|пер|SchemaCommon_|пер|VersionRequest_18|пер|VersionRequest_01|пер|VersionKAISToGKN_02|пер|VersionKAISToGKN_03|пер|VersionZoneToGKN_03|пер|VersionMP_04|пер|VersionMP_05|пер|VersionMP_06|пер|VersionTP_02|пер|VersionTP_03|пер|#</xsl:text>
    <xsl:text>*|Street|переезд|#</xsl:text>
    <xsl:text>*|Street|пл|#</xsl:text>
    <xsl:text>*|Street|платф|#</xsl:text>
    <xsl:text>*|Street|пл-ка|#</xsl:text>
    <xsl:text>*|Street|полустанок|#</xsl:text>
    <xsl:text>*|Street|пр-кт|#</xsl:text>
    <xsl:text>*|Street|проезд|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|пр-д|SubSchemas_|проезд|SchemaCommon_|проезд|VersionRequest_18|проезд|VersionRequest_01|проезд|VersionKAISToGKN_02|проезд|VersionKAISToGKN_03|проезд|VersionZoneToGKN_03|проезд|VersionMP_04|проезд|VersionMP_05|проезд|VersionMP_06|проезд|VersionTP_02|проезд|VersionTP_03|проезд|#</xsl:text>
    <xsl:text>*|Street|просек|#</xsl:text>
    <xsl:text>*|Street|просека|#</xsl:text>
    <xsl:text>*|Street|проток|#</xsl:text>
    <xsl:text>*|Street|проулок|#</xsl:text>
    <xsl:text>*|Street|рзд|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|рзд.|SubSchemas_|рзд|SchemaCommon_|рзд|VersionRequest_18|рзд|VersionRequest_01|рзд|VersionKAISToGKN_02|рзд|VersionKAISToGKN_03|рзд|VersionZoneToGKN_03|рзд|VersionMP_04|рзд|VersionMP_05|рзд|VersionMP_06|рзд|VersionTP_02|рзд|VersionTP_03|рзд|#</xsl:text>
    <xsl:text>*|Street|ряды|#</xsl:text>
    <xsl:text>*|Street|с|#</xsl:text>
    <xsl:text>*|Street|сад|#</xsl:text>
    <xsl:text>*|Street|сквер|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|с-р|SubSchemas_|сквер|SchemaCommon_|сквер|VersionRequest_18|сквер|VersionRequest_01|сквер|VersionKAISToGKN_02|сквер|VersionKAISToGKN_03|сквер|VersionZoneToGKN_03|сквер|VersionMP_04|сквер|VersionMP_05|сквер|VersionMP_06|сквер|VersionTP_02|сквер|VersionTP_03|сквер|#</xsl:text>
    <xsl:text>*|Street|сл|#</xsl:text>
    <xsl:text>*|Street|снт|#</xsl:text>
    <xsl:text>*|Street|спуск|#</xsl:text>
    <xsl:text>*|Street|ст|#</xsl:text>
    <xsl:text>*|Street|стр|#</xsl:text>
    <xsl:text>*|Street|тер|#</xsl:text>
    <xsl:text>*|Street|тракт|#</xsl:text>
    <xsl:text>*|Street|туп|#</xsl:text>
    <xsl:text>*|Street|ул|#</xsl:text>
    <xsl:text>*|Street|ул.|SubSchemas_|ул|SchemaCommon_|ул|VersionRequest_18|ул|VersionRequest_01|ул|VersionKAISToGKN_02|ул|VersionKAISToGKN_03|ул|VersionZoneToGKN_03|ул|VersionMP_04|ул|VersionMP_05|ул|VersionMP_06|ул|VersionTP_02|ул|VersionTP_03|ул|#</xsl:text>
    <xsl:text>*|Street|уч-к|#</xsl:text>
    <xsl:text>*|Street|ферма|#</xsl:text>
    <xsl:text>*|Street|х|#</xsl:text>
    <xsl:text>*|Street|ш|#</xsl:text>
    <!-- ФИАС -->
    <xsl:text>*|Street|ш.|SubSchemas_|ш|SchemaCommon_|ш|VersionRequest_18|ш|VersionRequest_01|ш|VersionKAISToGKN_02|ш|VersionKAISToGKN_03|ш|VersionZoneToGKN_03|ш|VersionMP_04|ш|VersionMP_05|ш|VersionMP_06|ш|VersionTP_02|ш|VersionTP_03|ш|#</xsl:text>
    <xsl:text>*|Level1|уч|VersionRequest_18|уч-к|VersionRequest_01|уч-к|VersionZoneToGKN_05|уч-к|VersionReestr_2.00|уч-к||#</xsl:text>
    <xsl:text>*|Level1|вл|VersionRequest_18|влд|VersionRequest_01|влд|VersionReestr_2.00|влд|#</xsl:text>
    <xsl:text>*|Level1|корп|VersionRequest_18|к||VersionRequest_01|к|#</xsl:text>
    <xsl:text>*|Level1|д|VersionZoneToGKN_05|д|#</xsl:text>
    <xsl:text>*|Level1|сооружение|VersionRequest_18|срж||VersionRequest_01|срж|VersionZoneToGKN_05|срж|VersionReestr_2.00|срж|#</xsl:text>
    <xsl:text>*|Level2|строение|VersionRequest_18|стр||VersionRequest_01|стр|VersionZoneToGKN_05|стр|VersionReestr_2.00|стр|#</xsl:text>
    <xsl:text>*|Level2|д|VersionZoneToGKN_05|д|#</xsl:text>
    <xsl:text>*|Level2|уч|VersionRequest_18|уч-к|VersionRequest_01|уч-к|VersionZoneToGKN_05|уч-к|VersionReestr_2.00|уч-к|#</xsl:text>
    <xsl:text>*|Level2|вл|VersionRequest_18|влд|VersionRequest_01|влд|VersionZoneToGKN_05|влд|VersionReestr_2.00|влд|#</xsl:text>
    <xsl:text>*|Level2|корп|VersionRequest_18|к|VersionRequest_01|к|VersionZoneToGKN_05|к|VersionReestr_2.00|к|#</xsl:text>
    <xsl:text>*|Level2|гараж|VersionZoneToGKN_05|гараж|#</xsl:text>
    <xsl:text>*|Level2|бокс|VersionZoneToGKN_05|бокс|#</xsl:text>
    <xsl:text>*|Level2|сооружение|VersionRequest_18|срж|VersionRequest_01|срж|VersionZoneToGKN_05|срж|VersionReestr_2.00|срж|#</xsl:text>
    <xsl:text>*|Level3|строен|VersionRequest_18|стр|VersionRequest_01|стр|VersionZoneToGKN_05|стр|VersionReestr_2.00|стр|#</xsl:text>
    <xsl:text>*|Level3|корп|VersionRequest_18|к|VersionRequest_01|к|VersionZoneToGKN_05|к|VersionReestr_2.00|к|#</xsl:text>
    <xsl:text>*|Apartment|к|VersionRequest_18|ком|VersionRequest_01|ком|VersionZoneToGKN_05|ком|#</xsl:text>
  </xsl:template>
  <!-- Соответствие кодов КЛАДР кодам, которых нет в КЛАДРе -->
  <xsl:template name="dToKladrConvert">
    <xsl:text>*|District|АО|#</xsl:text>
    <xsl:text>*|District|п|#</xsl:text>
    <xsl:text>*|District|р-н|#</xsl:text>
    <xsl:text>*|District|у|#</xsl:text>
    <xsl:text>*|City|г|#</xsl:text>
    <xsl:text>*|City|дп|#</xsl:text>
    <xsl:text>*|City|массив|#</xsl:text>
    <xsl:text>*|City|п|#</xsl:text>
    <xsl:text>*|City|п/о|#</xsl:text>
    <xsl:text>*|City|пгт|#</xsl:text>
    <xsl:text>*|City|рп|#</xsl:text>
    <xsl:text>*|City|с/а|#</xsl:text>
    <xsl:text>*|City|с/мо|#</xsl:text>
    <xsl:text>*|City|с/о|#</xsl:text>
    <xsl:text>*|City|с/п|#</xsl:text>
    <xsl:text>*|City|с/с|#</xsl:text>
    <xsl:text>*|City|тер|#</xsl:text>
    <xsl:text>*|Locality|аал|#</xsl:text>
    <xsl:text>*|Locality|автодорога|#</xsl:text>
    <xsl:text>*|Locality|арбан|#</xsl:text>
    <xsl:text>*|Locality|аул|#</xsl:text>
    <xsl:text>*|Locality|высел|#</xsl:text>
    <xsl:text>*|Locality|г|#</xsl:text>
    <xsl:text>*|Locality|городок|#</xsl:text>
    <xsl:text>*|Locality|д|#</xsl:text>
    <xsl:text>*|Locality|дп|#</xsl:text>
    <xsl:text>*|Locality|ж/д_будка|#</xsl:text>
    <xsl:text>*|Locality|ж/д_казарм|#</xsl:text>
    <xsl:text>*|Locality|ж/д_оп|#</xsl:text>
    <xsl:text>*|Locality|ж/д_платф|#</xsl:text>
    <xsl:text>*|Locality|ж/д_пост|#</xsl:text>
    <xsl:text>*|Locality|ж/д_рзд|#</xsl:text>
    <xsl:text>*|Locality|ж/д_ст|#</xsl:text>
    <xsl:text>*|Locality|жилзона|#</xsl:text>
    <xsl:text>*|Locality|жилрайон|#</xsl:text>
    <xsl:text>*|Locality|заимка|#</xsl:text>
    <xsl:text>*|Locality|казарма|#</xsl:text>
    <xsl:text>*|Locality|кв-л|#</xsl:text>
    <xsl:text>*|Locality|кордон|#</xsl:text>
    <xsl:text>*|Locality|кп|#</xsl:text>
    <xsl:text>*|Locality|лпх|#</xsl:text>
    <xsl:text>*|Locality|м|#</xsl:text>
    <xsl:text>*|Locality|массив|#</xsl:text>
    <xsl:text>*|Locality|мкр|#</xsl:text>
    <xsl:text>*|Locality|нп|#</xsl:text>
    <xsl:text>*|Locality|остров|#</xsl:text>
    <xsl:text>*|Locality|п|#</xsl:text>
    <xsl:text>*|Locality|п/о|#</xsl:text>
    <xsl:text>*|Locality|п/р|#</xsl:text>
    <xsl:text>*|Locality|п/ст|#</xsl:text>
    <xsl:text>*|Locality|пгт|#</xsl:text>
    <xsl:text>*|Locality|погост|#</xsl:text>
    <xsl:text>*|Locality|починок|#</xsl:text>
    <xsl:text>*|Locality|промзона|#</xsl:text>
    <xsl:text>*|Locality|рзд|#</xsl:text>
    <xsl:text>*|Locality|рп|#</xsl:text>
    <xsl:text>*|Locality|с|#</xsl:text>
    <xsl:text>*|Locality|сл|#</xsl:text>
    <xsl:text>*|Locality|снт|#</xsl:text>
    <xsl:text>*|Locality|ст|#</xsl:text>
    <xsl:text>*|Locality|ст-ца|#</xsl:text>
    <xsl:text>*|Locality|тер|#</xsl:text>
    <xsl:text>*|Locality|у|#</xsl:text>
    <xsl:text>*|Locality|х|#</xsl:text>
    <xsl:text>*|Street|а/я|#</xsl:text>
    <xsl:text>*|Street|аал|#</xsl:text>
    <xsl:text>*|Street|аллея|#</xsl:text>
    <xsl:text>*|Street|аул|#</xsl:text>
    <xsl:text>*|Street|балка|#</xsl:text>
    <xsl:text>*|Street|берег|#</xsl:text>
    <xsl:text>*|Street|б-р|#</xsl:text>
    <xsl:text>*|Street|бугор|#</xsl:text>
    <xsl:text>*|Street|бухта|#</xsl:text>
    <xsl:text>*|Street|вал|#</xsl:text>
    <xsl:text>*|Street|въезд|#</xsl:text>
    <xsl:text>*|Street|высел|#</xsl:text>
    <xsl:text>*|Street|горка|#</xsl:text>
    <xsl:text>*|Street|городок|#</xsl:text>
    <xsl:text>*|Street|гск|#</xsl:text>
    <xsl:text>*|Street|д|#</xsl:text>
    <xsl:text>*|Street|днп|#</xsl:text>
    <xsl:text>*|Street|дор|#</xsl:text>
    <xsl:text>*|Street|дп|#</xsl:text>
    <xsl:text>*|Street|ж/д_будка|#</xsl:text>
    <xsl:text>*|Street|ж/д_казарм|#</xsl:text>
    <xsl:text>*|Street|ж/д_оп|#</xsl:text>
    <xsl:text>*|Street|ж/д_платф|#</xsl:text>
    <xsl:text>*|Street|ж/д_пост|#</xsl:text>
    <xsl:text>*|Street|ж/д_рзд|#</xsl:text>
    <xsl:text>*|Street|ж/д_ст|#</xsl:text>
    <xsl:text>*|Street|жт|#</xsl:text>
    <xsl:text>*|Street|заезд|#</xsl:text>
    <xsl:text>*|Street|зона|#</xsl:text>
    <xsl:text>*|Street|казарма|#</xsl:text>
    <xsl:text>*|Street|канал|#</xsl:text>
    <xsl:text>*|Street|кв-л|#</xsl:text>
    <xsl:text>*|Street|км|#</xsl:text>
    <xsl:text>*|Street|кольцо|#</xsl:text>
    <xsl:text>*|Street|коса|#</xsl:text>
    <xsl:text>*|Street|линия|#</xsl:text>
    <xsl:text>*|Street|лпх|#</xsl:text>
    <xsl:text>*|Street|м|#</xsl:text>
    <xsl:text>*|Street|маяк|#</xsl:text>
    <xsl:text>*|Street|местность|#</xsl:text>
    <xsl:text>*|Street|мкр|#</xsl:text>
    <xsl:text>*|Street|мост|#</xsl:text>
    <xsl:text>*|Street|мыс|#</xsl:text>
    <xsl:text>*|Street|н/п|#</xsl:text>
    <xsl:text>*|Street|наб|#</xsl:text>
    <xsl:text>*|Street|нп|#</xsl:text>
    <xsl:text>*|Street|остров|#</xsl:text>
    <xsl:text>*|Street|п|#</xsl:text>
    <xsl:text>*|Street|п/о|#</xsl:text>
    <xsl:text>*|Street|п/р|#</xsl:text>
    <xsl:text>*|Street|п/ст|#</xsl:text>
    <xsl:text>*|Street|парк|#</xsl:text>
    <xsl:text>*|Street|пер|#</xsl:text>
    <xsl:text>*|Street|переезд|#</xsl:text>
    <xsl:text>*|Street|пл|#</xsl:text>
    <xsl:text>*|Street|платф|#</xsl:text>
    <xsl:text>*|Street|пл-ка|#</xsl:text>
    <xsl:text>*|Street|полустанок|#</xsl:text>
    <xsl:text>*|Street|пр-кт|#</xsl:text>
    <xsl:text>*|Street|проезд|#</xsl:text>
    <xsl:text>*|Street|просек|#</xsl:text>
    <xsl:text>*|Street|просека|#</xsl:text>
    <xsl:text>*|Street|проселок|#</xsl:text>
    <xsl:text>*|Street|проток|#</xsl:text>
    <xsl:text>*|Street|проулок|#</xsl:text>
    <xsl:text>*|Street|рзд|#</xsl:text>
    <xsl:text>*|Street|ряды|#</xsl:text>
    <xsl:text>*|Street|с|#</xsl:text>
    <xsl:text>*|Street|сад|#</xsl:text>
    <xsl:text>*|Street|сквер|#</xsl:text>
    <xsl:text>*|Street|сл|#</xsl:text>
    <xsl:text>*|Street|снт|#</xsl:text>
    <xsl:text>*|Street|спуск|#</xsl:text>
    <xsl:text>*|Street|ст|#</xsl:text>
    <xsl:text>*|Street|стр|#</xsl:text>
    <xsl:text>*|Street|тер|#</xsl:text>
    <xsl:text>*|Street|тоннель|#</xsl:text>
    <xsl:text>*|Street|тракт|#</xsl:text>
    <xsl:text>*|Street|туп|#</xsl:text>
    <xsl:text>*|Street|ул|#</xsl:text>
    <xsl:text>*|Street|уч-к|#</xsl:text>
    <xsl:text>*|Street|ф/х|#</xsl:text>
    <xsl:text>*|Street|ферма|#</xsl:text>
    <xsl:text>*|Street|х|#</xsl:text>
    <xsl:text>*|Street|ш|#</xsl:text>
  </xsl:template>
  <xsl:template name="TType_Document">
    <xsl:text>*|12|008001000000|14|008001000000|15|008001000000|17|008001000000|1.03|008001000000|#</xsl:text>
    <xsl:text>*|12|008001001000|14|008001001000|15|008001001000|17|008001001000|1.03|008001001000|#</xsl:text>
    <xsl:text>*|12|008001002000|14|008001002000|15|008001002000|17|008001002000|1.03|008001002000|#</xsl:text>
    <xsl:text>*|12|008001003000|14|008001003000|15|008001003000|17|008001003000|1.03|008001003000|#</xsl:text>
    <xsl:text>*|12|008001004000|14|008001004000|15|008001004000|17|008001004000|1.03|008001004000|#</xsl:text>
    <xsl:text>*|12|008001005000|14|008001005000|15|008001005000|17|008001005000|1.03|008001005000|#</xsl:text>
    <xsl:text>*|12|008001006000|14|008001006000|15|008001006000|17|008001006000|1.03|008001006000|#</xsl:text>
    <xsl:text>*|12|008001007000|14|008001007000|15|008001007000|17|008001007000|1.03|008001007000|#</xsl:text>
    <xsl:text>*|12|008001008000|14|008001008000|15|008001008000|17|008001008000|1.03|008001008000|#</xsl:text>
    <xsl:text>*|12|008001009000|14|008001009000|15|008001009000|17|008001009000|1.03|008001009000|#</xsl:text>
    <xsl:text>*|12|008001010000|14|008001010000|15|008001010000|17|008001010000|1.03|008001010000|#</xsl:text>
    <xsl:text>*|12|008001011000|14|008001011000|15|008001011000|17|008001011000|1.03|008001011000|#</xsl:text>
    <xsl:text>*|12|008001012000|14|008001012000|15|008001012000|17|008001012000|1.03|008001012000|#</xsl:text>
    <xsl:text>*|12|008001013000|14|008001013000|15|008001013000|17|008001013000|1.03|008001013000|#</xsl:text>
    <xsl:text>*|12|008001014000|14|008001014000|15|008001014000|17|008001014000|1.03|008001014000|#</xsl:text>
    <xsl:text>*|12|008001015000|14|008001015000|15|008001015000|17|008001015000|1.03|008001015000|#</xsl:text>
    <xsl:text>*|12|008001016000|14|008001016000|15|008001016000|17|008001016000|1.03|008001016000|#</xsl:text>
    <xsl:text>*|12|008001017000|14|008001017000|15|008001017000|17|008001017000|1.03|008001017000|#</xsl:text>
    <xsl:text>*|12|008001018000|14|008001018000|15|008001018000|17|008001018000|1.03|008001018000|#</xsl:text>
    <xsl:text>*|12|008001019000|14|008001019000|15|008001019000|17|008001019000|1.03|008001019000|#</xsl:text>
    <xsl:text>*|12|008001020000|14|008001020000|15|008001020000|17|008001020000|1.03|008001020000|#</xsl:text>
    <xsl:text>*|12|008002000000|14|008002000000|15|008002000000|17|008002000000|1.03|008002000000|#</xsl:text>
    <xsl:text>*|12|008002001000|14|008002001000|15|008002001000|17|008002001000|1.03|008002001000|#</xsl:text>
    <xsl:text>*|12|008002002000|14|008002002000|15|008002002000|17|008002002000|1.03|008002002000|#</xsl:text>
    <xsl:text>*|12|008002003000|14|008002003000|15|008002003000|17|008002003000|1.03|008002003000|#</xsl:text>
    <xsl:text>*|12|008002004000|14|008002004000|15|008002004000|17|008002004000|1.03|008002004000|#</xsl:text>
    <xsl:text>*|12|008003000000|14|008003000000|15|008003000000|17|008003000000|1.03|008003000000|#</xsl:text>
    <xsl:text>*|12|008001021000|14|008001021000|15|008001099000|17|008001099000|1.03|008001099000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TRequest_Document">
    <xsl:text>*|12|022|14|558213010000|15|558213010000|17|558213010000|#</xsl:text>
    <xsl:text>*|12|023|14|558214010000|15|558214010000|17|558214010000|#</xsl:text>
    <xsl:text>*|12|017|14|558217000000|15|558217000000|17|558217000000|#</xsl:text>
    <xsl:text>*|12|028|14|558218000000|15|558218000000|17|558218000000|#</xsl:text>
    <xsl:text>*|12|013|14|558220010000|15|558220010000|17|558220010000|#</xsl:text>
    <xsl:text>*|12|014|14|558211030000|15|558211030000|17|558211030000|#</xsl:text>
    <xsl:text>*|12|015|14|558220020000|15|558220020000|17|558220020000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TCur_Change">
    <xsl:text>*|12|001|14|2284001000000|15|284001000000|17|284001000000|01|001|#</xsl:text>
    <xsl:text>*|12|004|14|284004000000|15|284010001000|17|284010001000|01|004|#</xsl:text>
    <xsl:text>*|12|002|14|284002000000|15|284002000000|17|284002000000|01|002|#</xsl:text>
    <xsl:text>*|12|003|14|284003000000|15|284003000000|17|284003000000|01|003|#</xsl:text>
    <xsl:text>*|12|008|14|284008000000|15|284004000000|17|284004000000|01|008|#</xsl:text>
    <xsl:text>*|12|010|14|284010000000|15|284005000000|17|284005000000|#</xsl:text>
    <xsl:text>*|12||14||15|284006000000|17|284006000000|#</xsl:text>
    <xsl:text>*|12|001|14|2284001000000|15|284007000000|17|284007000000|01|005#</xsl:text>
    <xsl:text>*|12|009|14|284009000000|15|284008000000|17|284008000000|#</xsl:text>
    <xsl:text>*|12|007|14|284007000000|15|284009000000|17|284009000000|#</xsl:text>
    <xsl:text>*|12||14||15|284010000000|17|284010000000|#</xsl:text>
    <xsl:text>*|12||14||15|284010002000|17|284010002000|#</xsl:text>
    <xsl:text>*|12||14||15|284010003000|17|284010003000|#</xsl:text>
    <xsl:text>*|12|007|14|284007000000|15|284011000000|17|284011000000|#</xsl:text>
    <xsl:text>*|12|005|14|284005000000|15|284012000000|17|284012000000|#</xsl:text>
    <xsl:text>*|12||14||15|284013000000|17|284013000000|#</xsl:text>
    <xsl:text>*|12||14||15|284014000000|17|284014000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284015000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284016000000|01|005|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284017000000|01|006|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284018000000|01|009|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284019000000|01|010|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284020000000|01|013|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284021000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284022000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284023000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284024000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284025000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284026000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284027000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284028000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284029000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284030000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284031000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284032000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284033000000|#</xsl:text>
    <xsl:text>*|12|011|14||15|284015000000|17|284034000000|#</xsl:text>
  </xsl:template>
  <!-- Межевой план -->
  <xsl:template name="TEncumbranches">
    <xsl:text>*|01|022001000000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001001000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001002000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001003000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001004000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001005000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001006000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001007000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001008000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001009000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001010000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001011000|02|022001001000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022001012000|02|022001000000|03|022001001000|04|022001001000|#</xsl:text>
    <xsl:text>*|01|022002000000|02|022001002000|03|022001002000|04|022001002000|#</xsl:text>
    <xsl:text>*|01|022003000000|02|022002000000|03|022002000000|04|022002000000|#</xsl:text>
    <xsl:text>*|01|022004000000|02|022003000000|03|022003000000|04|022003000000|#</xsl:text>
    <xsl:text>*|01|022005000000|02|022006000000|03|022006000000|04|022006000000|#</xsl:text>
    <xsl:text>*|01|022006000000|02|022099000000|03|022099000000|04|022099000000|#</xsl:text>
    <xsl:text>*|01|022007000000|02|022099000000|03|022099000000|04|022099000000|#</xsl:text>
    <xsl:text>*|01|022008000000|02|022007000000|03|022007000000|04|022007000000|#</xsl:text>
    <xsl:text>*|01|022009000000|02|022099000000|03|022099000000|04|022099000000|#</xsl:text>
    <xsl:text>*|01|022010000000|02|022001000000|03|022001000000|04|022001000000|#</xsl:text>
    <xsl:text>*|01|022011000000|02|022001000000|03|022001000000|04|022001000000|#</xsl:text>
    <xsl:text>*|01|022012000000|02|022001000000|03|022001000000|04|022001000000|#</xsl:text>
    <xsl:text>*|01|022013000000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013001000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013002000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013003000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013004000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013005000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013006000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013007000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013008000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013009000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013010000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013011000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013012000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013013000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013014000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013015000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013016000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013017000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013018000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013019000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013020000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013021000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013022000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013023000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013024000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013025000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022013026000|02|022004000000|03|022004000000|04|022004000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022099000000|03|022099000000|04|022099000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022005000000|03|022005000000|04|022005000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022008000000|03|022008000000|04|022008000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022099000000|03|022009000000|04|022009000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022099000000|03|022010000000|04|022010000000|#</xsl:text>
    <xsl:text>*|01|022014000000|02|022099000000|03|022011000000|04|022011000000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TForest_Use">
    <xsl:text>*|02|034001000000|03|234001000000|04|234001000000|#</xsl:text>
    <xsl:text>*|02|034002000000|03|234002000000|04|234002000000|#</xsl:text>
    <xsl:text>*|02|034003000000|03|234003000000|04|234003000000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TGeopoint_Zacrep">
    <xsl:text>*|01|026001000000|02|026001000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026002000000|02|026002000000|03|626001000000|#</xsl:text>
    <xsl:text>*|01|026003000000|02|026003000000|03|626001000000|#</xsl:text>
    <xsl:text>*|01|026004000000|02|026004000000|03|626001000000|#</xsl:text>
    <xsl:text>*|01|026005000000|02|026005000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026006000000|02|026006000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026007000000|02|026007000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026008000000|02|026008000000|03|626001000000|#</xsl:text>
    <xsl:text>*|01|026009000000|02|026009000000|03|626001000000|#</xsl:text>
    <xsl:text>*|01|026010000000|02|026010000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026012000000|02|026012000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026013000000|02|026013000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026014000000|02|026014000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026015000000|02|026015000000|03|626002000000|#</xsl:text>
    <xsl:text>*|01|026016000000|02|026016000000|03|626003000000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TGeopoint_Opred">
    <xsl:text>*|02|Геодезический метод|03|692001000000|#</xsl:text>
    <xsl:text>*|02|Фотограмметрический метод|03|692002000000|#</xsl:text>
    <xsl:text>*|02|Картометрический метод|03|692003000000|#</xsl:text>
    <xsl:text>*|02|Иное описание|03|692004000000|#</xsl:text>
    <xsl:text>*|02|Метод спутниковых геодезических измерений (определений)|03|692005000000|#</xsl:text>
    <xsl:text>*|02|Метод спутниковых геодезических измерений|03|692005000000|#</xsl:text>
    <xsl:text>*|02|Аналитический метод|03|692006000000|#</xsl:text>
  </xsl:template>
  <xsl:template name="TObj_Kind">
    <xsl:text>*|RequestReestr|1|RequestGRP|7|#</xsl:text>
    <xsl:text>*|RequestReestr|2|RequestGRP|2|#</xsl:text>
    <xsl:text>*|RequestReestr|3|RequestGRP|4|#</xsl:text>
    <xsl:text>*|RequestReestr|4|RequestGRP|6|#</xsl:text>
    <xsl:text>*|RequestReestr|5|RequestGRP|8|#</xsl:text>
    <xsl:text>*|RequestReestr|6|RequestGRP|1|#</xsl:text>
  </xsl:template>
  <!-- выборка из словаря dAllDocuments -->
  <xsl:template name="dAppendixDoc">
    <xsl:text>|FILE|Приложения|</xsl:text>
    <xsl:text>|NAME|Приложения|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершенного строительства (поэтажный план)|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершенного строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558220000000|Выписки из Реестра|</xsl:text>
    <xsl:text>|558221010000|Документы об исправлении кадастровой ошибки, направляемые в государственные органы|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>

  </xsl:template>
  <!-- выборка из словаря dAllDocuments -->
  <xsl:template name="dReadyDoc">
    <xsl:text>|FILE|Документы используемые для создания ТП|</xsl:text>
    <xsl:text>|NAME|Документы используемые для создания ТП|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершенного строительства (поэтажный план)|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершенного строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558220000000|Выписки из Реестра|</xsl:text>
    <xsl:text>|558221010000|Документы об исправлении кадастровой ошибки, направляемые в государственные органы|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
  </xsl:template>
  <!-- ОКАТО -->
  <xsl:template name="dOCATO">
    <xsl:text>|FILE||</xsl:text>
    <xsl:text>|NAME|ОКАТО для маршрутизации|</xsl:text>
    <xsl:text>|01000000000|Алтайский край|</xsl:text>
    <xsl:text>|03000000000|Краснодарский край|</xsl:text>
    <xsl:text>|04000000000|Красноярский край|</xsl:text>
    <xsl:text>|04100000000|Таймырский автономный округ|</xsl:text>
    <xsl:text>|04114000000|Диксонский район|</xsl:text>
    <xsl:text>|04117000000|Усть - Енисейский район|</xsl:text>
    <xsl:text>|04119922000|Хатангский район|</xsl:text>
    <xsl:text>|04121000000|Дудинский район|</xsl:text>
    <xsl:text>|04121000000|Таймырский муниципальный район, г.Дудинка|</xsl:text>
    <xsl:text>|04130000000|Эвенкийский автономный округ|</xsl:text>
    <xsl:text>|04143000000|Байкитский район|</xsl:text>
    <xsl:text>|04146000000|Илимпийский район|</xsl:text>
    <xsl:text>|04146000000|Эвенкийский муниципальный район, пгт.Тура|</xsl:text>
    <xsl:text>|04149000000|Тунгусско-Чунский район|</xsl:text>
    <xsl:text>|05000000000|Приморский край|</xsl:text>
    <xsl:text>|07000000000|Ставропольский край|</xsl:text>
    <xsl:text>|08000000000|Хабаровский край|</xsl:text>
    <xsl:text>|10000000000|Амурская область|</xsl:text>
    <xsl:text>|11000000000|Архангельская область|</xsl:text>
    <xsl:text>|11100000000|Ненецкий автономный округ|</xsl:text>
    <xsl:text>|12000000000|Астраханская область|</xsl:text>
    <xsl:text>|14000000000|Белгородская область|</xsl:text>
    <xsl:text>|15000000000|Брянская область|</xsl:text>
    <xsl:text>|17000000000|Владимирская область|</xsl:text>
    <xsl:text>|18000000000|Волгоградская область|</xsl:text>
    <xsl:text>|19000000000|Вологодская область|</xsl:text>
    <xsl:text>|20000000000|Воронежская область|</xsl:text>
    <xsl:text>|22000000000|Нижегородская область|</xsl:text>
    <xsl:text>|24000000000|Ивановская область|</xsl:text>
    <xsl:text>|25000000000|Иркутская область|</xsl:text>
    <xsl:text>|25100000000|Усть-Ордынский Бурятский автономный округ|</xsl:text>
    <xsl:text>|26000000000|Республика Ингушетия|</xsl:text>
    <xsl:text>|27000000000|Калининградская область|</xsl:text>
    <xsl:text>|28000000000|Тверская область|</xsl:text>
    <xsl:text>|29000000000|Калужская область|</xsl:text>
    <xsl:text>|30000000000|Камчатский край|</xsl:text>
    <xsl:text>|30100000000|Корякский автономный округ|</xsl:text>
    <xsl:text>|32000000000|Кемеровская область|</xsl:text>
    <xsl:text>|33000000000|Кировская область|</xsl:text>
    <xsl:text>|34000000000|Костромская область|</xsl:text>
    <xsl:text>|35000000000|Республика Крым|</xsl:text>
    <xsl:text>|36000000000|Самарская область|</xsl:text>
    <xsl:text>|37000000000|Курганская область|</xsl:text>
    <xsl:text>|38000000000|Курская область|</xsl:text>
    <xsl:text>|40000000000|г. Санкт-Петербург|</xsl:text>
    <xsl:text>|41000000000|Ленинградская область|</xsl:text>
    <xsl:text>|41203000000|Бокситогорский район|</xsl:text>
    <xsl:text>|41206000000|Волосовский район|</xsl:text>
    <xsl:text>|41209000000|Волховский район|</xsl:text>
    <xsl:text>|41212000000|Всеволожский район|</xsl:text>
    <xsl:text>|41215000000|Выборгский район|</xsl:text>
    <xsl:text>|41218000000|Гатчинский район|</xsl:text>
    <xsl:text>|41221000000|Кингисеппский район|</xsl:text>
    <xsl:text>|41224000000|Киришский район|</xsl:text>
    <xsl:text>|41225000000|Кировский район|</xsl:text>
    <xsl:text>|41227000000|Лодейнопольский район|</xsl:text>
    <xsl:text>|41230000000|Ломоносовский район|</xsl:text>
    <xsl:text>|41233000000|Лужский район|</xsl:text>
    <xsl:text>|41236000000|Подпорожский район|</xsl:text>
    <xsl:text>|41239000000|Приозерский район|</xsl:text>
    <xsl:text>|41242000000|Сланцевский район|</xsl:text>
    <xsl:text>|41245000000|Тихвинский район|</xsl:text>
    <xsl:text>|41248000000|Тосненский район|</xsl:text>
    <xsl:text>|41403000000|г. Бокситогорск|</xsl:text>
    <xsl:text>|41408000000|г. Волхов|</xsl:text>
    <xsl:text>|41413000000|г. Всеволожск|</xsl:text>
    <xsl:text>|41417000000|г. Выборг|</xsl:text>
    <xsl:text>|41420000000|г. Гатчина|</xsl:text>
    <xsl:text>|41421000000|г. Ивангород|</xsl:text>
    <xsl:text>|41422000000|г. Кингисепп|</xsl:text>
    <xsl:text>|41425000000|г. Кириши|</xsl:text>
    <xsl:text>|41428000000|г. Кировск|</xsl:text>
    <xsl:text>|41432000000|г. Лодейное Поле|</xsl:text>
    <xsl:text>|41438000000|г. Луга|</xsl:text>
    <xsl:text>|41440000000|г. Пикалево|</xsl:text>
    <xsl:text>|41442000000|г. Подпорожье|</xsl:text>
    <xsl:text>|41448000000|г. Приозерск|</xsl:text>
    <xsl:text>|41450000000|г. Сертолово|</xsl:text>
    <xsl:text>|41451000000|г. Сланцы|</xsl:text>
    <xsl:text>|41454000000|г. Сосновый Бор|</xsl:text>
    <xsl:text>|41460000000|г. Тихвин|</xsl:text>
    <xsl:text>|41466000000|г. Тосно|</xsl:text>
    <xsl:text>|41475000000|г. Шлиссельбург|</xsl:text>
    <xsl:text>|42000000000|Липецкая область|</xsl:text>
    <xsl:text>|44000000000|Магаданская область|</xsl:text>
    <xsl:text>|45000000000|г. Москва|</xsl:text>
    <xsl:text>|46000000000|Московская область|</xsl:text>
    <xsl:text>|47000000000|Мурманская область|</xsl:text>
    <xsl:text>|49000000000|Новгородская область|</xsl:text>
    <xsl:text>|50000000000|Новосибирская область|</xsl:text>
    <xsl:text>|52000000000|Омская область|</xsl:text>
    <xsl:text>|53000000000|Оренбургская область|</xsl:text>
    <xsl:text>|54000000000|Орловская область|</xsl:text>
    <xsl:text>|56000000000|Пензенская область|</xsl:text>
    <xsl:text>|57000000000|Пермский край|</xsl:text>
    <xsl:text>|57100000000|Коми-Пермяцкий автономный округ|</xsl:text>
    <xsl:text>|58000000000|Псковская область|</xsl:text>
    <xsl:text>|60000000000|Ростовская область|</xsl:text>
    <xsl:text>|61000000000|Рязанская область|</xsl:text>
    <xsl:text>|63000000000|Саратовская область|</xsl:text>
    <xsl:text>|64000000000|Сахалинская область|</xsl:text>
    <xsl:text>|65000000000|Свердловская область|</xsl:text>
    <xsl:text>|66000000000|Смоленская область|</xsl:text>
    <xsl:text>|67000000000|г. Севастополь|</xsl:text>
    <xsl:text>|68000000000|Тамбовская область|</xsl:text>
    <xsl:text>|69000000000|Томская область|</xsl:text>
    <xsl:text>|70000000000|Тульская область|</xsl:text>
    <xsl:text>|71000000000|Тюменская область|</xsl:text>
    <xsl:text>|71100000000|Ханты-Мансийский автономный округ - Югра|</xsl:text>
    <xsl:text>|71140000000|Ямало-Ненецкий автономный округ|</xsl:text>
    <xsl:text>|73000000000|Ульяновская область|</xsl:text>
    <xsl:text>|75000000000|Челябинская область|</xsl:text>
    <xsl:text>|76000000000|Забайкальский край|</xsl:text>
    <xsl:text>|76100000000|Агинский Бурятский автономный округ|</xsl:text>
    <xsl:text>|77000000000|Чукотский автономный округ|</xsl:text>
    <xsl:text>|78000000000|Ярославская область|</xsl:text>
    <xsl:text>|79000000000|Республика Адыгея|</xsl:text>
    <xsl:text>|80000000000|Республика Башкортостан|</xsl:text>
    <xsl:text>|81000000000|Республика Бурятия|</xsl:text>
    <xsl:text>|82000000000|Республика Дагестан|</xsl:text>
    <xsl:text>|83000000000|Кабардино-Балкарская Республика|</xsl:text>
    <xsl:text>|84000000000|Республика Алтай|</xsl:text>
    <xsl:text>|85000000000|Республика Калмыкия|</xsl:text>
    <xsl:text>|86000000000|Республика Карелия|</xsl:text>
    <xsl:text>|87000000000|Республика Коми|</xsl:text>
    <xsl:text>|88000000000|Республика Марий Эл|</xsl:text>
    <xsl:text>|89000000000|Республика Мордовия|</xsl:text>
    <xsl:text>|90000000000|Республика Северная Осетия - Алания|</xsl:text>
    <xsl:text>|91000000000|Карачаево-Черкесская Республика|</xsl:text>
    <xsl:text>|92000000000|Республика Татарстан|</xsl:text>
    <xsl:text>|93000000000|Республика Тыва|</xsl:text>
    <xsl:text>|94000000000|Удмуртская Республика|</xsl:text>
    <xsl:text>|95000000000|Республика Хакасия|</xsl:text>
    <xsl:text>|96000000000|Чеченская Республика|</xsl:text>
    <xsl:text>|97000000000|Чувашская Республика|</xsl:text>
    <xsl:text>|98000000000|Республика Саха (Якутия)|</xsl:text>
    <xsl:text>|99000000000|Еврейская автономная область|</xsl:text>
  </xsl:template>

  <!-- Старое: ручная работа -->
  <xsl:template name="nAssignation_Name">
    <xsl:text>|NAME|Назначение Cооружения|</xsl:text>
    <xsl:text>|001000|1) Cооружения топливно-энергетического, металлургического, химического или нефтехимического производства|</xsl:text>
    <xsl:text>|001001|1.1. Cооружения электроэнергетики|</xsl:text>
    <xsl:text>|001002|1.2. Cооружения топливной промышленности|</xsl:text>
    <xsl:text>|001003|1.3. Cооружения нефтеперерабатывающей промышленности|</xsl:text>
    <xsl:text>|001004|1.4. Cооружения нефтяных месторождений|</xsl:text>
    <xsl:text>|001005|1.5. Cооружения добывающей промышленности|</xsl:text>
    <xsl:text>|001006|1.6. Cооружения газохимического комплекса|</xsl:text>
    <xsl:text>|001007|1.7. Cооружения угольной и сланцевой добывающей промышленности|</xsl:text>
    <xsl:text>|001008|1.8. Cооружения черной металлургии|</xsl:text>
    <xsl:text>|001009|1.9. Cооружения горнорудных предприятий|</xsl:text>
    <xsl:text>|001010|1.10. Cооружения цветной металлургии|</xsl:text>
    <xsl:text>|001011|1.11. Cооружения для добычи цветных металлов|</xsl:text>
    <xsl:text>|001012|1.12. Cооружения для химических и нефтехимических производств|</xsl:text>
    <xsl:text>|001013|1.13. Cооружения химико-фармацевтического производства|</xsl:text>
    <xsl:text>|001014|1.14. Cооружения органического синтеза|</xsl:text>
    <xsl:text>|002000|2) Cооружения машиностроительного производства|</xsl:text>
    <xsl:text>|002001|2.1. Cооружения авиастроения|</xsl:text>
    <xsl:text>|002002|2.2. Cооружения судостроительного производства|</xsl:text>
    <xsl:text>|002003|2.3. Cооружения судостроительной промышленности|</xsl:text>
    <xsl:text>|003000|3) Cооружения гидротехнические|</xsl:text>
    <xsl:text>|004000|4) Cооружения лесной промышленности|</xsl:text>
    <xsl:text>|005000|5) Cооружения мукомольно-крупяной и комбикормовой промышленности|</xsl:text>
    <xsl:text>|006000|6) Cооружения сельскохозяйственного производства|</xsl:text>
    <xsl:text>|006001|6.1. Cооружения животноводства|</xsl:text>
    <xsl:text>|006002|6.2. Cооружения ирригационных и мелиоративных систем|</xsl:text>
    <xsl:text>|006003|6.3. Cооружения рыборазведенческие|</xsl:text>
    <xsl:text>|007000|7) Cооружения транспорта и связи|</xsl:text>
    <xsl:text>|007001|7.1. Cооружения железнодорожного транспорта|</xsl:text>
    <xsl:text>|007002|7.2. Cооружения линий метрополитена|</xsl:text>
    <xsl:text>|007003|7.3. Cооружения водного транспорта|</xsl:text>
    <xsl:text>|007004|7.4. Cооружения дорожного транспорта|</xsl:text>
    <xsl:text>|007005|7.5. Cооружения городского электрического транспорта|</xsl:text>
    <xsl:text>|007006|7.6. Cооружения воздушного транспорта|</xsl:text>
    <xsl:text>|007007|7.7. Cооружения трубопроводного транспорта|</xsl:text>
    <xsl:text>|007008|7.8.  Cооружения связи|</xsl:text>
    <xsl:text>|008000|8) Cооружения строительной индустрии|</xsl:text>
    <xsl:text>|009000|9) иные Cооружения производственного назначения|</xsl:text>
    <xsl:text>|010000|10) Cооружения коммунального хозяйства|</xsl:text>
    <xsl:text>|010001|10.1. Cооружения водозаборные|</xsl:text>
    <xsl:text>|010002|10.2. Cооружения очистные водоснабжения|</xsl:text>
    <xsl:text>|010003|10.3. Cооружения канализации|</xsl:text>
    <xsl:text>|011000|11) Cооружения по охране окружающей среды и рациональному природопользованию|</xsl:text>
    <xsl:text>|011001|11.1. Cооружения противоэрозионные гидротехнические и противоселевые|</xsl:text>
    <xsl:text>|011002|11.2. Cооружения противооползневые|</xsl:text>
    <xsl:text>|011003|11.3. сооружение по охране атмосферного воздуха|</xsl:text>
    <xsl:text>|012000|12) Cооружения спортивно-оздоровительные|</xsl:text>
    <xsl:text>|013000|13) Cооружения культуры и отдыха|</xsl:text>
    <xsl:text>|014000|14) Cооружения исторические|</xsl:text>
    <xsl:text>|015000|15) Cооружения науки и образования|</xsl:text>
    <xsl:text>|016000|16) Cооружения обороны|</xsl:text>
    <xsl:text>|017000|17) Cооружения гражданской обороны (в том числе Cооружения обеспечения защиты от чрезвычайных ситуаций)|</xsl:text>
  </xsl:template>

  <xsl:template name="sObjKind">
    <xsl:text>|FILE|Заявление|</xsl:text>
    <xsl:text>|NAME|Тип объекта|</xsl:text>
    <xsl:text>|1|Здание (строение)|</xsl:text>
    <xsl:text>|2|Индивидуальный жилой дом|</xsl:text>
    <xsl:text>|3|Жилое помещение|</xsl:text>
    <xsl:text>|4|Нежилое помещение|</xsl:text>
    <xsl:text>|5|Объект незавершенного строительства|</xsl:text>
    <xsl:text>|6|Земельный участок|</xsl:text>
    <xsl:text>|7|Иной|</xsl:text>
  </xsl:template>
  <xsl:template name="dBlockRequest">
    <xsl:text>|FILE|Заявление|</xsl:text>
    <xsl:text>|NAME|Вид запроса о кадастровом квартале|</xsl:text>
    <xsl:text>|032002|КПТ|</xsl:text>
    <xsl:text>|032003|КС|</xsl:text>
    <xsl:text>|558101010000|КПТ|</xsl:text>
  </xsl:template>
  <xsl:template name="sMethodAccordance">
    <xsl:text>|FILE|Заявление|</xsl:text>
    <xsl:text>|NAME|Способ предоставления сведений|</xsl:text>
    <xsl:text>|01|на бумажном носителе|</xsl:text>
    <xsl:text>|02|на машиночитаемом носителе|</xsl:text>
    <xsl:text>|03|по каналу связи|</xsl:text>
    <xsl:text>|04|на бумажном носителе; сведения разделов КВ.2, КВ.4, КВ.5 и КВ.6 прошу выдать в виде файлов mid/mif|</xsl:text>
    <xsl:text>|05|на машиночитаемом носителе; сведения разделов КВ.2, КВ.4, КВ.5 и КВ.6 прошу выдать в виде файлов mid/mif|</xsl:text>
  </xsl:template>
  <xsl:template name="dInformationCPT">
    <xsl:text>|FILE|Заявление|</xsl:text>
    <xsl:text>|NAME|Состав сведений для КПТ|</xsl:text>
    <xsl:text>|001|О земельных участках в кадастровом квартале|</xsl:text>
    <xsl:text>|002|О пунктах ОМС в кадастровом квартале|</xsl:text>
  </xsl:template>
  <xsl:template name="inBounds">
    <xsl:text>|FILE|Межевой план|</xsl:text>
    <xsl:text>|NAME|Ориентир в границах учаска|</xsl:text>
    <xsl:text>|0|Да|</xsl:text>
    <xsl:text>|1|Нет|</xsl:text>
    <xsl:text>|2|Не определено|</xsl:text>
  </xsl:template>

  <!-- Новый ОКС: автоматически -->
  <xsl:template name="dAgentKind">
    <xsl:text>|FILE|Лица, выступающие в качестве представителя правообладателя, стороны договора|</xsl:text>
    <xsl:text>|NAME|Лица, выступающие в качестве представителя правообладателя, стороны договора|</xsl:text>
    <xsl:text>|356001000000|Опекун|</xsl:text>
    <xsl:text>|356002000000|Попечитель|</xsl:text>
    <xsl:text>|356003000000|Законный представитель|</xsl:text>
    <xsl:text>|356004000000|Доверенное лицо|</xsl:text>
    <xsl:text>|356005000000|Уполномоченное лицо|</xsl:text>
    <xsl:text>|356099000000|Иное лицо|</xsl:text>
  </xsl:template>
  <xsl:template name="dSovietVillage">
    <xsl:text>|FILE|dSovietVillage.xsd|</xsl:text>
    <xsl:text>|NAME|Сельсовет|</xsl:text>
    <xsl:text>|с/с|Сельсовет|</xsl:text>
  </xsl:template>
  <xsl:template name="dType_Parameter">
    <xsl:text>|FILE|dType_Parameter.xsd|</xsl:text>
    <xsl:text>|NAME|Тип основного параметра|</xsl:text>
    <xsl:text>|01|Протяженность|</xsl:text>
    <xsl:text>|02|Глубина|</xsl:text>
    <xsl:text>|03|Объем|</xsl:text>
    <xsl:text>|04|Высота|</xsl:text>
    <xsl:text>|05|Площадь|</xsl:text>
    <xsl:text>|06|Площадь застройки|</xsl:text>
    <xsl:text>|07|Глубина залегания|</xsl:text>
  </xsl:template>
  <xsl:template name="dUrbanDistrict">
    <xsl:text>|FILE|dUrbanDistrict.xsd|</xsl:text>
    <xsl:text>|NAME|Городской район|</xsl:text>
    <xsl:text>|р-н|район|</xsl:text>
  </xsl:template>
  <xsl:template name="dWall">
    <xsl:text>|FILE|dWall.xsd|</xsl:text>
    <xsl:text>|NAME|Перечень наименований материалов наружных стен здания, применяемый при ведении Единого государственного реестра объектов капитального строительства|</xsl:text>
    <xsl:text>|061001000000|Стены|</xsl:text>
    <xsl:text>|061001001000|Каменные|</xsl:text>
    <xsl:text>|061001001001|Кирпичные|</xsl:text>
    <xsl:text>|061001001002|Кирпичные облегченные|</xsl:text>
    <xsl:text>|061001001003|Из природного камня|</xsl:text>
    <xsl:text>|061001002000|Деревянные|</xsl:text>
    <xsl:text>|061001002001|Рубленые|</xsl:text>
    <xsl:text>|061001002002|Каркасно-засыпные|</xsl:text>
    <xsl:text>|061001002003|Каркасно-обшивные|</xsl:text>
    <xsl:text>|061001002004|Сборно-щитовые|</xsl:text>
    <xsl:text>|061001002005|Дощатые|</xsl:text>
    <xsl:text>|061001002006|Деревянный каркас без обшивки|</xsl:text>
    <xsl:text>|061001003000|Смешанные|</xsl:text>
    <xsl:text>|061001003001|Каменные и деревянные|</xsl:text>
    <xsl:text>|061001003002|Каменные и бетонные|</xsl:text>
    <xsl:text>|061001004000|Легкие из местных материалов|</xsl:text>
    <xsl:text>|061001005000|Из прочих материалов|</xsl:text>
    <xsl:text>|061001006000|Бетонные|</xsl:text>
    <xsl:text>|061001006001|Монолитные|</xsl:text>
    <xsl:text>|061001006002|Из мелких бетонных блоков|</xsl:text>
    <xsl:text>|061001006003|Из легкобетонных панелей|</xsl:text>
    <xsl:text>|061001007000|Железобетонные|</xsl:text>
    <xsl:text>|061001007001|Крупнопанельные|</xsl:text>
    <xsl:text>|061001007002|Каркасно-панельные|</xsl:text>
    <xsl:text>|061001007003|Монолитные|</xsl:text>
    <xsl:text>|061001007004|Крупноблочные|</xsl:text>
    <xsl:text>|061001007005|Из унифицированных железобетонных элементов|</xsl:text>
    <xsl:text>|061001007006|Из железобетонных сегментов|</xsl:text>
    <xsl:text>|061001008000|Шлакобетонные|</xsl:text>
    <xsl:text>|061001009000|Металлические|</xsl:text>
  </xsl:template>
  <xsl:template name="dApartmentType">
    <xsl:text>|FILE|dApartment_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Тип адресного элемента четвертого уровня|</xsl:text>
    <xsl:text>|кв|Квартира|</xsl:text>
    <xsl:text>|бокс|Бокс|</xsl:text>
    <xsl:text>|к|Комната|</xsl:text>
    <xsl:text>|пом|Помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="dAss_b">
    <xsl:text>|FILE|dAss_b.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений зданий|</xsl:text>
    <xsl:text>|204001000000|Нежилое здание|</xsl:text>
    <xsl:text>|204002000000|Жилой дом|</xsl:text>
    <xsl:text>|204003000000|Многоквартирный дом|</xsl:text>
  </xsl:template>
  <xsl:template name="dAss_bk">
    <xsl:text>|FILE|dAss_bk.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений зданий|</xsl:text>
    <xsl:text>|005001001000|Нежилое здание|</xsl:text>
    <xsl:text>|005001002000|Жилой дом|</xsl:text>
    <xsl:text>|005001003000|Многоквартирный дом|</xsl:text>
    <xsl:text>|005001999000|Иное|</xsl:text>
  </xsl:template>
  <xsl:template name="dAss_fk">
    <xsl:text>|FILE|dAss_f.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений помещений|</xsl:text>
    <xsl:text>|005002001000|Жилое помещение|</xsl:text>
    <xsl:text>|005002001001|Комната|</xsl:text>
    <xsl:text>|005002001002|Квартира|</xsl:text>
    <xsl:text>|005002002000|Нежилое помещение|</xsl:text>
    <xsl:text>|005001999000|Иное|</xsl:text>
  </xsl:template>
  <xsl:template name="dAss_f">
    <xsl:text>|FILE|dAss_f.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений помещений|</xsl:text>
    <xsl:text>|206002000000|Жилое помещение|</xsl:text>
    <xsl:text>|205002000000|Комната|</xsl:text>
    <xsl:text>|205001000000|Квартира|</xsl:text>
    <xsl:text>|206001000000|Нежилое помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="dLocationLevel1Type">
    <xsl:text>|FILE|dLocationLevel1_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Тип адресного элемента первого уровня|</xsl:text>
    <xsl:text>|д|Дом|</xsl:text>
    <xsl:text>|ГСК|Гаражно-строительный кооператив|</xsl:text>
    <xsl:text>|казарма|казарма|</xsl:text>
    <xsl:text>|уч|Участок|</xsl:text>
    <xsl:text>|вл|Владение|</xsl:text>
    <xsl:text>|бокс|бокс|</xsl:text>
    <xsl:text>|в/ч|военная часть|</xsl:text>
    <xsl:text>|сооружение|сооружение|</xsl:text>
  </xsl:template>
  <xsl:template name="dLocationLevel2Type">
    <xsl:text>|FILE|dLocationLevel2.xsd|</xsl:text>
    <xsl:text>|NAME|Тип адресного элемента второго уровня|</xsl:text>
    <xsl:text>|корп|Корпус|</xsl:text>
    <xsl:text>|д|Дом|</xsl:text>
    <xsl:text>|уч|Участок|</xsl:text>
    <xsl:text>|вл|Владение|</xsl:text>
    <xsl:text>|гараж|Гараж|</xsl:text>
    <xsl:text>|бокс|бокс|</xsl:text>
    <xsl:text>|строение|строение|</xsl:text>
    <xsl:text>|сооружение|сооружение|</xsl:text>
  </xsl:template>
  <xsl:template name="dLocationLevel3Type">
    <xsl:text>|FILE|dLocationLevel3.xsd|</xsl:text>
    <xsl:text>|NAME|Тип адресного элемента третьего уровня|</xsl:text>
    <xsl:text>|строен|Строение|</xsl:text>
    <xsl:text>|корп|Корпус|</xsl:text>
    <xsl:text>|блок|Блок|</xsl:text>
    <xsl:text>|литера|литера|</xsl:text>
    <!--Warning: Элемента литера нет в V01_STD_TP-->
  </xsl:template>
  <xsl:template name="dMethod_Formation">
    <xsl:text>|FILE|dMethod_Formation.xsd|</xsl:text>
    <xsl:text>|NAME|Способы образования объектов капитального строительства|</xsl:text>
    <xsl:text>|1|Раздел|</xsl:text>
    <xsl:text>|2|Выдел|</xsl:text>
    <xsl:text>|9|Иное|</xsl:text>
  </xsl:template>
  <xsl:template name="dOld_Number">
    <xsl:text>|FILE|dOld_Number.xsd|</xsl:text>
    <xsl:text>|NAME|Типы ранее присвоенного номера |</xsl:text>
    <xsl:text>|01|Инвентарный номер|</xsl:text>
    <xsl:text>|02|Условный номер|</xsl:text>
    <xsl:text>|03|Кадастровый номер|</xsl:text>
    <xsl:text>|99|Иной номер|</xsl:text>
  </xsl:template>
  <xsl:template name="dDeclarantKind">
    <xsl:text>|FILE|dDeclarantKind.xsd|</xsl:text>
    <xsl:text>|NAME|Справочник категории заявителя (подателя запроса)|</xsl:text>
    <xsl:text>|357001000000|Правообладатель или его представитель|</xsl:text>
    <xsl:text>|357002000000|Лицо, имеющее право на наследование имущества правообладателя по завещанию или по закону (для юридического лица - правопреемник правообладателя)|</xsl:text>
    <xsl:text>|357003000000|Нотариус, запрашивающий сведения о правах наследодателя на объекты недвижимости  в связи с открытием наследства|</xsl:text>
    <xsl:text>|357004000000|Залогодержатель, запрашивающий сведения об объектах недвижимого имущества, находящихся у него в залоге|</xsl:text>
    <xsl:text>|357005000000|Арбитражный управляющий в деле о банкротстве, запрашивающий сведения о принадлежащих соответствующему должнику объектов недвижимого имущества|</xsl:text>
    <!-- отсутствует в 18 версии -->
    <xsl:text>|357006000000|Суды, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <!-- из 18 версии: -->
    <xsl:text>|357006001000|Суды и правоохранительные органы, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателе|</xsl:text>
    <xsl:text>|357006002000|Судебные приставы-исполнители, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <!-- отсутствует в 18 версии -->
    <xsl:text>|357007000000|Правоохранительные органы, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357008000000|Судебные приставы-исполнители, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357009000000|Налоговые органы на территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357010000000|Государственные органы по контролю за использованием и охраной земель и других природных ресурсов|</xsl:text>

    <xsl:text>|357011000000|Органы государственной статистики|</xsl:text>
    <xsl:text>|357012000000|Федеральный антимонопольный орган и его территориальные органына территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357013000000|Председатель Счетной палаты Российской Федерации, его заместители и аудиторы Счетной палаты Российской Федерации|</xsl:text>
    <xsl:text>|357014000000|Органы по учету государственного и муниципального имущества|</xsl:text>
    <xsl:text>|357015000000|Органы государственной власти субъектов Российской Федерации|</xsl:text>
    <xsl:text>|357016000000|Органы местного самоуправления|</xsl:text>
    <xsl:text>|357017000000|Любое иное лицо|</xsl:text>
    <!-- из 18 версии: -->
    <xsl:text>|357018000000|Руководитель, заместитель руководителя, должностные лица, уполномоченные решениями руководителей Федеральных органов исполнительной власти и их территориальных органов|</xsl:text>
    <xsl:text>|357021000000|Уполномоченный при президенте Российской Федерации по правам ребенка|</xsl:text>
    <xsl:text>|357022000000|Государственные внебюджетные фоны и их территориальные подразделения|</xsl:text>
    <xsl:text>|357023000000|Иные определенные федеральным законом органы и организации, имеющие право на бесплатное получение информации|</xsl:text>
    <xsl:text>|357099000000|Иное лицо|</xsl:text>
  </xsl:template>
  <xsl:template name="dDeclarantKindOKS">
    <xsl:text>|FILE|dDeclarantKind.xsd|</xsl:text>
    <xsl:text>|NAME|Справочник категории заявителя (подателя запроса)|</xsl:text>
    <xsl:text>|357001000000|Правообладатель или его представитель|</xsl:text>
    <xsl:text>|357001001000|Плательщик земельного налога при предоставлении сведений о кадастровой стоимости|</xsl:text>
    <xsl:text>|357002000000|Лицо, имеющее право на наследование имущества правообладателя по завещанию или по закону (для юридического лица - правопреемник правообладателя)|</xsl:text>
    <xsl:text>|357003000000|Нотариус, запрашивающий сведения о правах наследодателя на объекты недвижимости  в связи с открытием наследства|</xsl:text>
    <xsl:text>|357004000000|Залогодержатель, запрашивающий сведения об объектах недвижимого имущества, находящихся у него в залоге|</xsl:text>
    <xsl:text>|357005000000|Арбитражный управляющий в деле о банкротстве, запрашивающий сведения о принадлежащих соответствующему должнику объектов недвижимого имущества|</xsl:text>
    <xsl:text>|357006000000|Суды и правоохранительные органы|</xsl:text>
    <xsl:text>|357006001000|Суды, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006002000|Судебные приставы-исполнители, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006003000|Органы прокуратуры, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006004000|Органы внутренних дел, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006005000|Органы Федеральной службы безопасности, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006006000|Органы Следственного комитета, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006099000|Иные правоохранительные органы, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357007000000|Налоговые органы на территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357008000000|Государственные органы по контролю за использованием и охраной земель и других природных ресурсов|</xsl:text>
    <xsl:text>|357009000000|Органы государственной статистики|</xsl:text>
    <xsl:text>|357010000000|Федеральный антимонопольный орган и его территориальные органына территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357011000000|Председатель Счетной палаты Российской Федерации, его заместители и аудиторы Счетной палаты Российской Федерации|</xsl:text>
    <xsl:text>|357012000000|Органы по учету государственного и муниципального имущества|</xsl:text>
    <xsl:text>|357013000000|Органы государственной власти субъектов Российской Федерации|</xsl:text>
    <xsl:text>|357014000000|Органы местного самоуправления|</xsl:text>
    <xsl:text>|357015000000|Избирательные комиссии и комиссии по проведению референдумов|</xsl:text>
    <xsl:text>|357016000000|Государственная корпорация по строительству олимпийских объектов при запросе сведений в отношении участков, предназначенных для размещения олимпийских объектов|</xsl:text>
    <xsl:text>|357017000000|Фонд содействия развитию жилищного строительства при запросе сведений о земельных участках, предназначенных для жилищного строительства и иных объектов недвижимого имущества, предназначенных для обеспечения деятельности Фонда|</xsl:text>
    <xsl:text>|357099000000|Иное лицо|</xsl:text>
  </xsl:template>

  <!-- Старое: Автоматически-->
  <xsl:template name="dASS">
    <xsl:text>|FILE|dAssignation.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений объектов технического учета|</xsl:text>
    <xsl:text>|005000000000|Классификатор видов назначений объектов|</xsl:text>
    <xsl:text>|005001000000|Жилое|</xsl:text>
    <xsl:text>|005001001000|Постоянного проживания|</xsl:text>
    <xsl:text>|005001001001|Общежитие|</xsl:text>
    <xsl:text>|005001002000|Временного проживания|</xsl:text>
    <xsl:text>|005002000000|Нежилое|</xsl:text>
    <xsl:text>|005002001000|Общественное|</xsl:text>
    <xsl:text>|005002001001|Административно-управленческое|</xsl:text>
    <xsl:text>|005002001002|Народного образования|</xsl:text>
    <xsl:text>|005002001003|Науки и научного обслуживания|</xsl:text>
    <xsl:text>|005002001004|Здравоохранения, физической культуры и социального обеспечения|</xsl:text>
    <xsl:text>|005002001005|Торговли и общественного питания|</xsl:text>
    <xsl:text>|005002001006|Коммунально-бытового обслуживания|</xsl:text>
    <xsl:text>|005002001007|Культуры и искусства|</xsl:text>
    <xsl:text>|005002001008|Отдыха и развлечений|</xsl:text>
    <xsl:text>|005002001009|Финансирования и страхования|</xsl:text>
    <xsl:text>|005002001010|Городского благоустройства|</xsl:text>
    <xsl:text>|005002001011|Дачно-садоводческое|</xsl:text>
    <xsl:text>|005002001012|Гаражное|</xsl:text>
    <xsl:text>|005002001013|Культовое|</xsl:text>
    <xsl:text>|005002001014|Ритуальное|</xsl:text>
    <xsl:text>|005002001015|Не определено|</xsl:text>
    <xsl:text>|005002002000|Производственное (промышленное)|</xsl:text>
    <xsl:text>|005002002001|Электроэнергетики|</xsl:text>
    <xsl:text>|005002002002|Топливной промышленности|</xsl:text>
    <xsl:text>|005002002003|Черной металлургии|</xsl:text>
    <xsl:text>|005002002004|Цветной металлургии|</xsl:text>
    <xsl:text>|005002002005|Химической и нефтехимической промышленности|</xsl:text>
    <xsl:text>|005002002006|Химико-фармацевтической промышленности|</xsl:text>
    <xsl:text>|005002002007|Тяжелого машиностроения|</xsl:text>
    <xsl:text>|005002002008|Станкостроительной промышленности|</xsl:text>
    <xsl:text>|005002002009|Автотракторной промышленности|</xsl:text>
    <xsl:text>|005002002010|Легкого машиностроения и бытовых приборов|</xsl:text>
    <xsl:text>|005002002011|Электротехнической, приборостроительной и радиопромышленности|</xsl:text>
    <xsl:text>|005002002012|Судостроительной промышленности|</xsl:text>
    <xsl:text>|005002002013|Авиационной промышленности|</xsl:text>
    <xsl:text>|005002002014|Межотраслевых производств машиностроения|</xsl:text>
    <xsl:text>|005002002015|Лесозаготовительной промышленности|</xsl:text>
    <xsl:text>|005002002016|Деревообрабатывающей промышленности|</xsl:text>
    <xsl:text>|005002002017|Целлюлозно-бумажной и лесохимической промышленности|</xsl:text>
    <xsl:text>|005002002018|Промышленности строительных материалов|</xsl:text>
    <xsl:text>|005002002019|Стекольной и фарфорофаянсовой промышленности|</xsl:text>
    <xsl:text>|005002002020|Полиграфического производства|</xsl:text>
    <xsl:text>|005002002021|Текстильной промышленности|</xsl:text>
    <xsl:text>|005002002022|Швейной, кожевенной, меховой, обувной промышленности|</xsl:text>
    <xsl:text>|005002002023|Пищевкусовой промышленности|</xsl:text>
    <xsl:text>|005002002024|Мясной и молочной промышленности|</xsl:text>
    <xsl:text>|005002002025|Рыбоперерабатывающей и плодоовощной промышленности|</xsl:text>
    <xsl:text>|005002002026|Микробиологической промышленности|</xsl:text>
    <xsl:text>|005002002027|Строительной индустрии|</xsl:text>
    <xsl:text>|005002002028|Не определено|</xsl:text>
    <xsl:text>|005002003000|Транспортное|</xsl:text>
    <xsl:text>|005002003001|Железнодорожного транспорта|</xsl:text>
    <xsl:text>|005002003002|Автомобильного транспорта|</xsl:text>
    <xsl:text>|005002003003|Водного транспорта|</xsl:text>
    <xsl:text>|005002003004|Воздушного транспорта|</xsl:text>
    <xsl:text>|005002003005|Городского надземного электротранспорта|</xsl:text>
    <xsl:text>|005002003006|Городского подземного транспорта|</xsl:text>
    <xsl:text>|005002003007|Магистрального трубопроводного транспорта|</xsl:text>
    <xsl:text>|005002004000|Сельскохозяйственное|</xsl:text>
    <xsl:text>|005002005000|Лесного хозяйства|</xsl:text>
    <xsl:text>|005002006000|Рыбного хозяйства|</xsl:text>
    <xsl:text>|005002007000|Добычи полезных ископаемых|</xsl:text>
    <xsl:text>|005002008000|Строительное|</xsl:text>
    <xsl:text>|005002009000|Связи|</xsl:text>
    <xsl:text>|005002010000|Материально-технического снабжения и сбыта|</xsl:text>
    <xsl:text>|005002011000|Гидротехническое|</xsl:text>
    <xsl:text>|005002012000|Водохозяйственное|</xsl:text>
    <xsl:text>|005002013000|Передаточное|</xsl:text>
    <xsl:text>|005002013001|Электропередачи|</xsl:text>
    <xsl:text>|005002013002|Теплопередачи|</xsl:text>
    <xsl:text>|005002013003|Водопередачи|</xsl:text>
    <xsl:text>|005002014000|Городского коммунального хозяйства|</xsl:text>
    <xsl:text>|005002014001|Электроснабжения|</xsl:text>
    <xsl:text>|005002014002|Теплоснабжения|</xsl:text>
    <xsl:text>|005002014003|Водоснабжения и водоотведения|</xsl:text>
    <xsl:text>|005002014004|Газоснабжения|</xsl:text>
    <xsl:text>|005002014005|Перерабатывающее|</xsl:text>
    <xsl:text>|005002015000|Рекреационное|</xsl:text>
    <xsl:text>|005002016000|Специальное|</xsl:text>
    <xsl:text>|005002017000|Не определено|</xsl:text>
    <xsl:text>|005003000000|Помещение общего пользования|</xsl:text>
    <xsl:text>|005004000000|Техническое помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="dCad_Out_Doc_Type">
    <xsl:text>|FILE|dCad_Out_Doc_Type.xsd|</xsl:text>
    <xsl:text>|NAME|Типы выданных документов|</xsl:text>
    <xsl:text>|001|Уведомление об отказе в приеме|</xsl:text>
    <xsl:text>|002|Уведомление об отказе в учете|</xsl:text>
    <xsl:text>|003|Уведомление о приеме документов на учет|</xsl:text>
    <xsl:text>|004|Акт об отказе в приеме|</xsl:text>
    <xsl:text>|005|Извещение о приостановлении учета|</xsl:text>
    <xsl:text>|006|Документы о ТУ ОКС|</xsl:text>
    <xsl:text>|007|КПЗУ|</xsl:text>
    <xsl:text>|008|Расписка о получении документов|</xsl:text>
    <xsl:text>|009|Справка об отсутствии сведений|</xsl:text>
    <xsl:text>|010|Уведомление об отказе в учете|</xsl:text>
    <xsl:text>|011|Выписка об отсутствии сведений|</xsl:text>
    <xsl:text>|012|Технический паспорт объекта капитального строительства|</xsl:text>
    <xsl:text>|013|Выписка из Реестра, содержащая сведения об объекте учета, относящиеся к информации ограниченного доступа|</xsl:text>
    <xsl:text>|014|План объекта недвижимости|</xsl:text>
    <xsl:text>|015|Выписка из Реестра, содержащая сведения об объекте учета, относящиеся к информации общего пользования|</xsl:text>
    <xsl:text>|016|Протокол внесения изменений|</xsl:text>
    <xsl:text>|017|КПТ|</xsl:text>
    <xsl:text>|019|Уведомление об отказе в предоставлении сведений|</xsl:text>
    <xsl:text>|020|Копии документов|</xsl:text>
    <xsl:text>|021|Справка о составе документов, необходимых для уточнения сведений ГЗК|</xsl:text>
    <xsl:text>|022|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|023|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|024|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|025|Решение|</xsl:text>
    <xsl:text>|026|Уведомление об отсутствии в государственном кадастре недвижимости запрашиваемых сведений|</xsl:text>
    <xsl:text>|027|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|028|Кадастровая справка|</xsl:text>
  </xsl:template>
  <xsl:template name="dCertificates">
    <xsl:text>|FILE|dCertificates.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор "Типы документов, удостоверяющих личность физического лица и подтверждающих факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц"|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны, Министерства внутренних дел и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, подтверждающие факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002003000|Свидетельство о внесении записи в Единый государственный реестр юридических лиц о юридическом лице, зарегистрированном до 1 июля 2002 г|</xsl:text>
    <xsl:text>|008002004000|Иные|</xsl:text>
    <xsl:text>|008003000000|Значение отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dCity">
    <xsl:text>|FILE|dCity.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_3|</xsl:text>
    <xsl:text>|волость|Волость|</xsl:text>
    <xsl:text>|г|Город|</xsl:text>
    <xsl:text>|дп|Дачный поселок|</xsl:text>
    <xsl:text>|кп|Курортный поселок|</xsl:text>
    <xsl:text>|пгт|Поселок городского типа|</xsl:text>
    <xsl:text>|п/о|Почтовое отделение|</xsl:text>
    <xsl:text>|рп|Рабочий (заводской) поселок|</xsl:text>
    <xsl:text>|с/а|Сельская администрация|</xsl:text>
    <xsl:text>|с/пос|Сельское поселение|</xsl:text>
    <xsl:text>|с/п|Сельское поселение|</xsl:text>
    <xsl:text>|с/тер|Сельская территория|</xsl:text>
    <xsl:text>|с/о|Сельский округ|</xsl:text>
    <xsl:text>|с/мо|Сельское муницип. образование|</xsl:text>
    <xsl:text>|с/с|Сельсовет|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|массив|Массив|</xsl:text>
    <xsl:text>|п|Посёлок|</xsl:text>
    <xsl:text>|местность|Местность|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|001|Уточнение площади|</xsl:text>
    <xsl:text>|002|Перевод в другую категорию|</xsl:text>
    <xsl:text>|003|Изменение разрешенного использования|</xsl:text>
    <xsl:text>|004|Образование частей|</xsl:text>
    <xsl:text>|005|Внесение результатов кадастровой оценки|</xsl:text>
    <xsl:text>|006|Уточнение сведений о составе единого землепользования|</xsl:text>
    <xsl:text>|007|Изменение сведений о правах и обременениях|</xsl:text>
    <xsl:text>|008|Изменение местоположения|</xsl:text>
    <xsl:text>|009|Изменение адреса правообладателя|</xsl:text>
    <xsl:text>|010|Изменение сведений о природных объектах|</xsl:text>
    <xsl:text>|011|Изменение сведений об объектах недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges14">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|2284001000000|Уточнение местоположения границы и (или) площади|</xsl:text>
    <xsl:text>|284002000000|Перевод в другую категорию|</xsl:text>
    <xsl:text>|284003000000|Изменение разрешенного использования|</xsl:text>
    <xsl:text>|284004000000|Образование частей|</xsl:text>
    <xsl:text>|284005000000|Внесение результатов кадастровой оценки|</xsl:text>
    <xsl:text>|284006000000|Уточнение сведений о составе единого землепользования|</xsl:text>
    <xsl:text>|284007000000|Изменение сведений о правах|</xsl:text>
    <xsl:text>|284008000000|Изменение местоположения|</xsl:text>
    <xsl:text>|284009000000|Изменением адреса правообладателя|</xsl:text>
    <xsl:text>|284010000000|Изменения сведений о природных объектах|</xsl:text>
    <xsl:text>|284011000000|Изменения сведений об объектах капитального строительства|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChangesPrint">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|001|уточнением местоположения границы и (или) площади земельного участка |</xsl:text>
    <xsl:text>|002|изменением категории земель, к которой отнесен земельный участок |</xsl:text>
    <xsl:text>|003|изменением вида разрешенного использования земельного участка |</xsl:text>
    <xsl:text>|004|[образованием (созданием)], изменением части объекта недвижимости или прекращением существования части объекта недвижимости с учетным номером|</xsl:text>
    <xsl:text>|005||</xsl:text>
    <xsl:text>|006||</xsl:text>
    <xsl:text>|007||</xsl:text>
    <xsl:text>|008||</xsl:text>
    <xsl:text>|009|изменением адреса правообладателя объекта недвижимости |</xsl:text>
    <xsl:text>|010||</xsl:text>
    <xsl:text>|011|изменением иных сведений об объекте недвижимости |</xsl:text>
    <xsl:text>|284001000000|уточнением местоположения границы и (или) площади земельного участка |</xsl:text>
    <xsl:text>|284002000000|изменением категории земель, к которой отнесен земельный участок |</xsl:text>
    <xsl:text>|284003000000|изменением вида разрешенного использования земельного участка |</xsl:text>
    <xsl:text>|284004000000||</xsl:text>
    <xsl:text>|284005000000||</xsl:text>
    <xsl:text>|284006000000||</xsl:text>
    <xsl:text>|284007000000|уточнением местоположения границы и (или) площади земельного участка |</xsl:text>
    <xsl:text>|284008000000|изменением адреса правообладателя объекта недвижимости |</xsl:text>
    <xsl:text>|284009000000||</xsl:text>
    <xsl:text>|284010000000||</xsl:text>
    <xsl:text>|284010001000|[образованием (созданием)], изменением части объекта недвижимости или прекращением существования части объекта недвижимости с учетным номером|</xsl:text>
    <xsl:text>|284010002000|образованием (созданием), [изменением части объекта недвижимости] или прекращением существования части объекта недвижимости с учетным номером|</xsl:text>
    <xsl:text>|284010003000|образованием (созданием), изменением части объекта недвижимости или [прекращением существования части объекта недвижимости] с учетным номером|</xsl:text>
    <xsl:text>|284011000000||</xsl:text>
    <xsl:text>|284012000000||</xsl:text>
    <xsl:text>|284013000000||</xsl:text>
    <xsl:text>|284014000000||</xsl:text>
    <xsl:text>|284015000000|изменением иных сведений об объекте недвижимости |</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges15">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|284001000000|Общие сведения об объекте недвижимости (площадь)|</xsl:text>
    <xsl:text>|284002000000|Общие сведения об объекте недвижимости (категория)|</xsl:text>
    <xsl:text>|284003000000|Общие сведения об объекте недвижимости (разрешенное использование)|</xsl:text>
    <xsl:text>|284004000000|Общие сведения об объекте недвижимости (адрес ЗУ, при отсутствии адреса - описание местоположения)|</xsl:text>
    <xsl:text>|284005000000|Общие сведения об объекте недвижимости (сведения о природных объектах - леса, водные объекты, иные природные объекты)|</xsl:text>
    <xsl:text>|284006000000|Общие сведения об объекте недвижимости (иное)|</xsl:text>
    <xsl:text>|284007000000|Сведения о местоположении границ земельного участка|</xsl:text>
    <xsl:text>|284008000000|Контактный адрес правообладателя|</xsl:text>
    <xsl:text>|284009000000|Сведения о вещных правах|</xsl:text>
    <xsl:text>|284010000000|Сведения о частях объекта недвижимости|</xsl:text>
    <xsl:text>|284010001000|Образование (создание) части объекта недвижимости|</xsl:text>
    <xsl:text>|284010002000|Изменение части объекта недвижимости|</xsl:text>
    <xsl:text>|284010003000|Прекращение существования части объекта недвижимости|</xsl:text>
    <xsl:text>|284011000000|Сведения об ограничениях (обременениях) вещных прав|</xsl:text>
    <xsl:text>|284012000000|Сведения о кадастровой стоимости|</xsl:text>
    <xsl:text>|284013000000|Сведения о кадастровом инженере|</xsl:text>
    <xsl:text>|284014000000|Сведения о прекращении существования объекта недвижимости|</xsl:text>
    <xsl:text>|284015000000|Иные сведения об объекте недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges16">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|228400100000|Общие сведения об объекте недвижимости (площадь)|</xsl:text>
    <xsl:text>|284002000000|Общие сведения об объекте недвижимости (категория)|</xsl:text>
    <xsl:text>|284003000000|Общие сведения об объекте недвижимости (разрешенное использование)|</xsl:text>
    <xsl:text>|284004000000|Общие сведения об объекте недвижимости (адрес, при отсутствии адреса - описание местоположения)|</xsl:text>
    <xsl:text>|284005000000|Общие сведения об объекте недвижимости (сведения о природных объектах - леса, водные объекты, иные природные объекты)|</xsl:text>
    <xsl:text>|284006000000|Общие сведения об объекте недвижимости (иное)|</xsl:text>
    <xsl:text>|284007000000|Сведения о местоположении границ земельного участка|</xsl:text>
    <xsl:text>|284008000000|Контактный адрес правообладателя|</xsl:text>
    <xsl:text>|284009000000|Сведения о вещных правах|</xsl:text>
    <xsl:text>|284010000000|Сведения о частях объекта недвижимости|</xsl:text>
    <xsl:text>|284010001000|Образование (создание) части объекта недвижимости|</xsl:text>
    <xsl:text>|284010002000|Изменение части объекта недвижимости|</xsl:text>
    <xsl:text>|284010003000|Прекращение существования части объекта недвижимости|</xsl:text>
    <xsl:text>|284011000000|Сведения об ограничениях (обременениях) вещных прав|</xsl:text>
    <xsl:text>|284012000000|Сведения о кадастровой стоимости|</xsl:text>
    <xsl:text>|284013000000|Сведения о кадастровом инженере|</xsl:text>
    <xsl:text>|284014000000|Сведения о прекращении существования объекта недвижимости|</xsl:text>
    <xsl:text>|284015000000|Иные сведения об объекте недвижимости|</xsl:text>
    <xsl:text>|284001000000|Общие сведения об объекте недвижимости (площадь)|</xsl:text>
    <xsl:text>|284016000000|Сведения о местоположении на земельном участке|</xsl:text>
    <xsl:text>|284017000000|Сведения о назначении|</xsl:text>
    <xsl:text>|284018000000|Сведения об этажности|</xsl:text>
    <xsl:text>|284019000000|Сведения о материале наружных стен|</xsl:text>
    <xsl:text>|284020000000|Сведения о расположении в строении|</xsl:text>
    <xsl:text>|284021000000|Сведения о годе ввода в эксплуатацию и годе завершения строительства|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges17">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|284001000000|Общие сведения об объекте недвижимости (площадь)|</xsl:text>
    <xsl:text>|284002000000|Общие сведения об объекте недвижимости (категория)|</xsl:text>
    <xsl:text>|284003000000|Общие сведения об объекте недвижимости (разрешенное использование)|</xsl:text>
    <xsl:text>|284004000000|Общие сведения об объекте недвижимости (адрес, при отсутствии адреса - описание местоположения)|</xsl:text>
    <xsl:text>|284005000000|Общие сведения об объекте недвижимости (сведения о природных объектах - леса, водные объекты, иные природные объекты)|</xsl:text>
    <xsl:text>|284006000000|Общие сведения об объекте недвижимости (иное)|</xsl:text>
    <xsl:text>|284007000000|Сведения о местоположении границ земельного участка|</xsl:text>
    <xsl:text>|284008000000|Контактный адрес правообладателя|</xsl:text>
    <xsl:text>|284009000000|Сведения о вещных правах|</xsl:text>
    <xsl:text>|284010000000|Сведения о частях объекта недвижимости|</xsl:text>
    <xsl:text>|284010001000|Образование (создание) части объекта недвижимости|</xsl:text>
    <xsl:text>|284010002000|Изменение части объекта недвижимости|</xsl:text>
    <xsl:text>|284010003000|Прекращение существования части объекта недвижимости|</xsl:text>
    <xsl:text>|284011000000|Сведения об ограничениях (обременениях) вещных прав|</xsl:text>
    <xsl:text>|284012000000|Сведения о кадастровой стоимости|</xsl:text>
    <xsl:text>|284013000000|Сведения о кадастровом инженере|</xsl:text>
    <xsl:text>|284014000000|Сведения о прекращении существования объекта недвижимости|</xsl:text>
    <xsl:text>|284015000000|Иные сведения об объекте недвижимости|</xsl:text>
    <xsl:text>|284016000000|Сведения о местоположении на земельном участке|</xsl:text>
    <xsl:text>|284017000000|Сведения о назначении|</xsl:text>
    <xsl:text>|284018000000|Сведения об этажности|</xsl:text>
    <xsl:text>|284019000000|Сведения о материале наружных стен|</xsl:text>
    <xsl:text>|284020000000|Сведения о расположении в строении|</xsl:text>
    <xsl:text>|284021000000|Сведения о годе ввода в эксплуатацию и годе завершения строительства|</xsl:text>
    <xsl:text>|284022000000|Сведения, содержащие описание прохождения участка государственной границы Российской  Федерации,  описание  местоположения  границы между субъектами Российской  Федерации,  описание  местоположения границы  муниципального  образования,   описание   местоположения границы населенного пункта|</xsl:text>
    <xsl:text>|284023000000|Сведения, содержащие реквизиты правовых актов|</xsl:text>
    <xsl:text>|284024000000|Сведения, содержащие индивидуальное обозначение территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284025000000|Сведения, содержащие описание местоположения границы территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284026000000|Сведения, содержащие реквизиты правовых актов об установлении территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284027000000|Сведения о содержании ограничений использования объектов недвижимости в пределах зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|284028000000|Сведения о видах разрешенного использования объектов недвижимости, а также предельных максимальных и минимальных размерах земельных участков, входящих в состав территориальной зоны|</xsl:text>
    <xsl:text>|284029000000|Сведения о дате создания картографической основы кадастра|</xsl:text>
    <xsl:text>|284030000000|Сведения об организации, создавшей картографическую основу кадастра|</xsl:text>
    <xsl:text>|284031000000|Сведения о масштабе картографической основы|</xsl:text>
    <xsl:text>|284032000000|Сведения о системе координат картографической основы государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|284033000000|Сведения, содержащие каталог (список) координат пунктов опорной межевой сети с указанием системы координат|</xsl:text>
    <xsl:text>|284034000000|Сведения о типах знаков опорной межевой сети|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChanges01">
    <xsl:text>|FILE|dCurrentChanges.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|001|Уточнение площади|</xsl:text>
    <xsl:text>|002|Перевод в другую категорию|</xsl:text>
    <xsl:text>|003|Изменение разрешенного использования|</xsl:text>
    <xsl:text>|008|Изменение адреса|</xsl:text>
    <xsl:text>|005|Изменение местоположения границ|</xsl:text>
    <xsl:text>|004|Изменение сведений о частях|</xsl:text>
    <xsl:text>|006|Изменение сведений о назначении|</xsl:text>
    <xsl:text>|009|Изменение количества этажей|</xsl:text>
    <xsl:text>|010|Изменение сведений о материале наружных стен|</xsl:text>
    <xsl:text>|011|Изменение основной характеристики|</xsl:text>
    <xsl:text>|012|Изменение сведений о наименовании|</xsl:text>
    <xsl:text>|013|Изменение кадастрового номера здания или сооружения, в которых расположено помещение (машино-место)|</xsl:text>
    <xsl:text>|014|Изменение номера этажа, на котором расположено помещение (машино-место)|</xsl:text>
    <xsl:text>|015|Изменение вида жилого помещения|</xsl:text>
    <xsl:text>|016|Изменение степени готовности объекта незавершенного строительства|</xsl:text>
   </xsl:template>

  <xsl:template name="dDistrict">
    <xsl:text>|FILE|dDistrict.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_2|</xsl:text>
    <xsl:text>|р-н|Район|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|у|Улус|</xsl:text>
    <xsl:text>|АО|Автономный округ|</xsl:text>
    <xsl:text>|п|Поселение|</xsl:text>
  </xsl:template>
  <xsl:template name="dDocuments">
    <xsl:text>|FILE|dDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор "Виды документов-оснований"|</xsl:text>
    <xsl:text>|010001000000|Федеральный закон|</xsl:text>
    <xsl:text>|010002000000|Акт, изданный органом государственной власти|</xsl:text>
    <xsl:text>|010003000000|Акт, изданный органом местного самоуправления|</xsl:text>
    <xsl:text>|010004000000|Передаточный акт|</xsl:text>
    <xsl:text>|010005000000|Акт приемки в эксплуатацию законченного строительством объекта|</xsl:text>
    <xsl:text>|010006000000|Договоры (соглашения)|</xsl:text>
    <xsl:text>|010006001000|Договор долевого участия в строительстве|</xsl:text>
    <xsl:text>|010006002000|Инвестиционный договор|</xsl:text>
    <xsl:text>|010006003000|Договор передачи жилья в собственность|</xsl:text>
    <xsl:text>|010006004000|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|010006005000|Договор аренды с правом выкупа|</xsl:text>
    <xsl:text>|010006006000|Договор дарения|</xsl:text>
    <xsl:text>|010006007000|Договор об ипотеке|</xsl:text>
    <xsl:text>|010006008000|Договор купли-продажи|</xsl:text>
    <xsl:text>|010006009000|Договор мены|</xsl:text>
    <xsl:text>|010006010000|Договор постоянной ренты|</xsl:text>
    <xsl:text>|010006011000|Договор пожизненной ренты|</xsl:text>
    <xsl:text>|010006012000|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|010006013000|Договор строительного подряда|</xsl:text>
    <xsl:text>|010006014000|Договор перевода долга|</xsl:text>
    <xsl:text>|010006015000|Договор простого товарищества|</xsl:text>
    <xsl:text>|010006016000|Договор уступки права требования|</xsl:text>
    <xsl:text>|010006017000|Брачный договор|</xsl:text>
    <xsl:text>|010006018000|Соглашение об изменении договора|</xsl:text>
    <xsl:text>|010006019000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|010006020000|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|010006021000|Соглашение о передаче недвижимости|</xsl:text>
    <xsl:text>|010006022000|Соглашение об определении долей|</xsl:text>
    <xsl:text>|010006023000|Соглашение о перераспределении долей|</xsl:text>
    <xsl:text>|010006024000|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|010006025000|Соглашение о выделе доли из общего имущества в натуре|</xsl:text>
    <xsl:text>|010006026000|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|010006027000|Соглашение об отступном|</xsl:text>
    <xsl:text>|010006028000|Соглашение о новации|</xsl:text>
    <xsl:text>|010006029000|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|010006030000|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|010006031000|Договор безвозмездного пользования участком лесного фонда|</xsl:text>
    <xsl:text>|010006032000|Договор концессии участка лесного фонда|</xsl:text>
    <xsl:text>|010006033000|Договор доверительного управления имуществом|</xsl:text>
    <xsl:text>|010006034000|Иное|</xsl:text>
    <xsl:text>|010007000000|Судебные акты|</xsl:text>
    <xsl:text>|010007001000|Определение|</xsl:text>
    <xsl:text>|010007002000|Постановление|</xsl:text>
    <xsl:text>|010007003000|Решение|</xsl:text>
    <xsl:text>|010007004000|Акт судебного пристава|</xsl:text>
    <xsl:text>|010008000000|План приватизации|</xsl:text>
    <xsl:text>|010009000000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|010010000000|Разделительный баланс|</xsl:text>
    <xsl:text>|010011000000|Свидетельство на право собственности на землю|</xsl:text>
    <xsl:text>|010012000000|Свидетельство на право постоянного (бессрочного) пользования землей|</xsl:text>
    <xsl:text>|010013000000|Государственный акт на право собственности на землю, пожизненного наследуемого владения, бессрочного (постоянного) пользования землей|</xsl:text>
    <xsl:text>|010014000000|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|010015000000|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|010016000000|Справка кооператива (жилищного, жилищно-строительного, дачного, гаражного, иного)|</xsl:text>
    <xsl:text>|010017000000|Документ, подтверждающий отказ одаряемого принять дар|</xsl:text>
    <xsl:text>|010018000000|Документ, подтверждающий внесение имущества в уставный капитал|</xsl:text>
    <xsl:text>|010019000000|Иные основания|</xsl:text>
    <xsl:text>|010020000000|Неопределено|</xsl:text>
    <xsl:text>|010021000000|Значение отсутствует|</xsl:text>
    <xsl:text>|010022000000|Свидетельство о государственной регистрации права собственности|</xsl:text>
    <xsl:text>|010023000000|Свидетельство на право пожизненного наследуемого владения|</xsl:text>
  </xsl:template>
  <xsl:template name="dOPF">
    <xsl:text>|FILE|dOPF.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор "Организационно правовые формы юридических лиц"|</xsl:text>
    <xsl:text>|Классификационный код|Значение|</xsl:text>
    <xsl:text>|009001000000|Юридические лица, являющиеся коммерческими организациями|</xsl:text>
    <xsl:text>|009001001000|Полное товарищество|</xsl:text>
    <xsl:text>|009001002000|Товарищество на вере (коммандитное товарищество)|</xsl:text>
    <xsl:text>|009001003000|Общество с ограниченной ответственностью|</xsl:text>
    <xsl:text>|009001004000|Общество с дополнительной ответственностью|</xsl:text>
    <xsl:text>|009001005000|Открытое акционерное общество|</xsl:text>
    <xsl:text>|009001006000|Закрытое акционерное общество|</xsl:text>
    <xsl:text>|009001007000|Производственный кооператив|</xsl:text>
    <xsl:text>|009001008000|Унитарное предприятие, основанное на праве хозяйственного ведения|</xsl:text>
    <xsl:text>|009001009000|Унитарное предприятие, основанное на праве оперативного управления|</xsl:text>
    <xsl:text>|009002000000|Юридические лица, являющиеся некоммерческими организациями|</xsl:text>
    <xsl:text>|009002001000|Потребительский кооператив|</xsl:text>
    <xsl:text>|009002002000|Общественная, религиозная организация (объединение)|</xsl:text>
    <xsl:text>|009002003000|Фонд|</xsl:text>
    <xsl:text>|009002004000|Учреждение|</xsl:text>
    <xsl:text>|009002005000|Объединение юридических лиц (ассоциация и союз)|</xsl:text>
    <xsl:text>|009002006000|Товарищество собственников жилья|</xsl:text>
    <xsl:text>|009002007000|Садоводческое, огородническое или дачное некоммерческое объединение|</xsl:text>
    <xsl:text>|009002008000|Иная некоммерческая организация|</xsl:text>
    <xsl:text>|009003000000|Неопределено|</xsl:text>
    <xsl:text>|009004000000|Значение отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dOPF17">
    <xsl:text>|FILE|dOPF.xsd|</xsl:text>
    <xsl:text>|NAME|Организационно-правовые формы|</xsl:text>
    <xsl:text>|809000000039|Юридические лица, являющиеся коммерческими организациями|</xsl:text>
    <xsl:text>|809000000040|Унитарные предприятия|</xsl:text>
    <xsl:text>|809000000041|Унитарные предприятия, основанные на праве оперативного управления|</xsl:text>
    <xsl:text>|809000000042|Унитарные предприятия, основанные на праве хозяйственного ведения|</xsl:text>
    <xsl:text>|809000000047|Открытые акционерные общества|</xsl:text>
    <xsl:text>|809000000048|Хозяйственные товарищества и общества|</xsl:text>
    <xsl:text>|809000000051|Полные товарищества|</xsl:text>
    <xsl:text>|809000000052|Производственные кооперативы|</xsl:text>
    <xsl:text>|809000000053|Крестьянские (фермерские) хозяйства|</xsl:text>
    <xsl:text>|809000000060|Акционерные общества|</xsl:text>
    <xsl:text>|809000000064|Товарищества на вере|</xsl:text>
    <xsl:text>|809000000065|Общества с ограниченной ответственностью|</xsl:text>
    <xsl:text>|809000000066|Общества с дополнительной ответственностью|</xsl:text>
    <xsl:text>|809000000067|Закрытые акционерные общества|</xsl:text>
    <xsl:text>|809000000070|Юридические лица, являющиеся некоммерческими организациями|</xsl:text>
    <xsl:text>|809000000071|Частные учреждения|</xsl:text>
    <xsl:text>|809000000072|Бюджетные учреждения|</xsl:text>
    <xsl:text>|809000000073|Автономные учреждения|</xsl:text>
    <xsl:text>|809000000076|Садоводческие, огороднические или дачные некоммерческие товарищества|</xsl:text>
    <xsl:text>|809000000077|Объединения крестьянских (фермерских) хозяйств|</xsl:text>
    <xsl:text>|809000000078|Органы общественной самодеятельности|</xsl:text>
    <xsl:text>|809000000080|Территориальные общественные самоуправления|</xsl:text>
    <xsl:text>|809000000081|Учреждения|</xsl:text>
    <xsl:text>|809000000082|Государственные корпорации|</xsl:text>
    <xsl:text>|809000000083|Общественные и религиозные организации (объединения)|</xsl:text>
    <xsl:text>|809000000084|Общественные движения|</xsl:text>
    <xsl:text>|809000000085|Потребительские кооперативы|</xsl:text>
    <xsl:text>|809000000087|Простые товарищества|</xsl:text>
    <xsl:text>|809000000088|Фонды|</xsl:text>
    <xsl:text>|809000000089|Прочие некоммерческие организации|</xsl:text>
    <xsl:text>|809000000090|Представительства и филиалы|</xsl:text>
    <xsl:text>|809000000091|Индивидуальные предприниматели|</xsl:text>
    <xsl:text>|809000000092|Паевые инвестиционные фонды|</xsl:text>
    <xsl:text>|809000000093|Объединения юридических лиц (ассоциации и союзы)|</xsl:text>
    <xsl:text>|809000000094|Товарищества собственников жилья|</xsl:text>
    <xsl:text>|809000000095|Крестьянские (фермерские) хозяйства|</xsl:text>
    <xsl:text>|809000000096|Некоммерческие партнерства|</xsl:text>
    <xsl:text>|809000000097|Автономные некоммерческие организации|</xsl:text>
    <xsl:text>|809000000098|Иные неюридические лица|</xsl:text>
    <xsl:text>|809000000099|Организации без прав юридического лица|</xsl:text>
  </xsl:template>
  <xsl:template name="dParcels">
    <xsl:text>|FILE|dParcels.xsd|</xsl:text>
    <xsl:text>|NAME|Вид земельного участка.|</xsl:text>
    <xsl:text>|01|Землепользование|</xsl:text>
    <xsl:text>|02|Единое землепользование|</xsl:text>
    <xsl:text>|03|Обособленный участок|</xsl:text>
    <xsl:text>|04|Условный участок|</xsl:text>
    <xsl:text>|05|Многоконтурный участок|</xsl:text>
    <xsl:text>|06|Значение отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dParcel_File_Doc">
    <xsl:text>|FILE|dParcel_File_Doc.xsd|</xsl:text>
    <xsl:text>|NAME|Состав землеустроительного дела|</xsl:text>
    <xsl:text>|003|Пояснительная записка|</xsl:text>
    <xsl:text>|004|Сведения государственного земельного кадастра о земельном участке (участках) в форме кадастровой карты (плана) земельного участка (территории)|</xsl:text>
    <xsl:text>|005|Задание на выполнение работ|</xsl:text>
    <xsl:text>|006|Копия документа, удостоверяющего права на землю, или правоустанавливающего документа|</xsl:text>
    <xsl:text>|007|Технический проект|</xsl:text>
    <xsl:text>|008|Документ, подтверждающий факт извещения (вызова) лиц, права которых могут быть затронуты при проведении межевания|</xsl:text>
    <xsl:text>|009|Доверенность уполномоченного лица на участие в межевании|</xsl:text>
    <xsl:text>|010|Акт согласования границ объекта землеустройства|</xsl:text>
    <xsl:text>|011|Каталог координат межевых знаков объекта землеустройства в местной системе координат|</xsl:text>
    <xsl:text>|012|Абрисы на межевые знаки|</xsl:text>
    <xsl:text>|013|Карта (план) границ объекта землеустройства|</xsl:text>
    <xsl:text>|999|Иное|</xsl:text>
  </xsl:template>
  <xsl:template name="dRealty">
    <xsl:text>|FILE|dRealty.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор типов объектов недвижимости|</xsl:text>
    <xsl:text>|002000000000|Классификатор типов объектов недвижимости|</xsl:text>
    <xsl:text>|002001001000|Земельный участок|</xsl:text>
    <xsl:text>|002001002000|Комплекс объектов|</xsl:text>
    <xsl:text>|002001003000|Здание|</xsl:text>
    <xsl:text>|002001004000|Сооружение|</xsl:text>
    <xsl:text>|002001003001|Часть здания|</xsl:text>
    <xsl:text>|002001004001|Часть сооружения|</xsl:text>
    <!-- |002001007000|Многолетние насаждения| в 11 -->
    <xsl:text>|002001007000|Объект незавершенного строительства (сооружение)|</xsl:text>
    <xsl:text>|002001008000|Обособленный водный объект|</xsl:text>
    <xsl:text>|002002001000|Помещение|</xsl:text>
    <xsl:text>|002002002000|Часть помещения (комната)|</xsl:text>
    <xsl:text>|002001006000|Объект незавершенного строительства (здание)|</xsl:text>
    <!-- |002001006000| нет в 11 -->
  </xsl:template>
  <xsl:template name="dRealty14">
    <xsl:text>|FILE|dRealty.xsd|</xsl:text>
    <xsl:text>|NAME|Типы объектов учета|</xsl:text>
    <xsl:text>|002001000000|Земли|</xsl:text>
    <xsl:text>|002001001000|Земельный участок|</xsl:text>
    <xsl:text>|002001002000|Иные земли|</xsl:text>
    <xsl:text>|002002000000|Объекты капитального строительства|</xsl:text>
    <xsl:text>|002002001000|Здание|</xsl:text>
    <xsl:text>|002002002000|Помещение|</xsl:text>
    <xsl:text>|002002004000|Сооружение|</xsl:text>
    <xsl:text>|002002005000|Объекты незавершенного строительства|</xsl:text>
    <xsl:text>|002003000000|Границы|</xsl:text>
    <xsl:text>|002003001000|Государственная граница Российской Федерации|</xsl:text>
    <xsl:text>|002003002000|Граница между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|002003003000|Граница муниципального образования|</xsl:text>
    <xsl:text>|002003004000|Граница населенного пункта|</xsl:text>
    <xsl:text>|002004000000|Зоны|</xsl:text>
    <xsl:text>|002004001000|Зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|002004003000|Территориальные зоны|</xsl:text>
    <xsl:text>|002005000000|Предприятие как имущественный комплекс (ПИК)|</xsl:text>
    <xsl:text>|002006000000|Участок недр, насаждения|</xsl:text>
  </xsl:template>
  <xsl:template name="dRealty17">
    <xsl:text>|FILE|dRealty.xsd|</xsl:text>
    <xsl:text>|NAME|Виды объектов государственного кадастра недвижимости (ГКН) и Единого государственного реестра прав на недвижимое имущество и сделок с ним (ЕГРП)|</xsl:text>
    <xsl:text>|002001000000|Объекты учёта и регистрации|</xsl:text>
    <xsl:text>|002001001000|Земельный участок|</xsl:text>
    <xsl:text>|002001002000|Здание|</xsl:text>
    <xsl:text>|002001003000|Помещение|</xsl:text>
    <xsl:text>|002001004000|Сооружение|</xsl:text>
    <xsl:text>|002001004001|Линейное сооружение, расположенное более чем в одном кадастровом округе|</xsl:text>
    <xsl:text>|002001004002|Условная часть линейного сооружения|</xsl:text>
    <xsl:text>|002001005000|Объект незавершённого строительства|</xsl:text>
    <xsl:text>|002001006000|Предприятие как имущественный комплекс (ПИК)|</xsl:text>
    <xsl:text>|002001007000|Участок недр|</xsl:text>
    <xsl:text>|002002000000|Границы|</xsl:text>
    <xsl:text>|002002001000|Государственная граница Российской Федерации|</xsl:text>
    <xsl:text>|002002002000|Граница между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|002002003000|Граница муниципального образования|</xsl:text>
    <xsl:text>|002002004000|Граница населённого пункта|</xsl:text>
    <xsl:text>|002003000000|Зоны|</xsl:text>
    <xsl:text>|002003001000|Зона с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|002003002000|Территориальная зона|</xsl:text>
  </xsl:template>
  <xsl:template name="dRegionsRF">
    <xsl:text>|FILE|dRegionsRF.xsd|</xsl:text>
    <xsl:text>|NAME|Коды Региона|</xsl:text>
    <xsl:text>|01|Республика Адыгея (Адыгея)|</xsl:text>
    <xsl:text>|02|Республика Башкортостан|</xsl:text>
    <xsl:text>|03|Республика Бурятия|</xsl:text>
    <xsl:text>|04|Республика Алтай|</xsl:text>
    <xsl:text>|05|Республика Дагестан|</xsl:text>
    <xsl:text>|06|Республика Ингушетия|</xsl:text>
    <xsl:text>|07|Кабардино-Балкарская Республика|</xsl:text>
    <xsl:text>|08|Республика Калмыкия|</xsl:text>
    <xsl:text>|09|Карачаево-Черкесская Республика|</xsl:text>
    <xsl:text>|10|Республика Карелия|</xsl:text>
    <xsl:text>|11|Республика Коми|</xsl:text>
    <xsl:text>|12|Республика Марий Эл|</xsl:text>
    <xsl:text>|13|Республика Мордовия|</xsl:text>
    <xsl:text>|14|Республика Саха (Якутия)|</xsl:text>
    <xsl:text>|15|Республика Северная Осетия - Алания|</xsl:text>
    <xsl:text>|16|Республика Татарстан (Татарстан)|</xsl:text>
    <xsl:text>|17|Республика Тыва|</xsl:text>
    <xsl:text>|18|Удмуртская Республика|</xsl:text>
    <xsl:text>|19|Республика Хакасия|</xsl:text>
    <xsl:text>|20|Чеченская Республика|</xsl:text>
    <xsl:text>|21|Чувашская Республика (Чувашия)|</xsl:text>
    <xsl:text>|22|Алтайский край|</xsl:text>
    <xsl:text>|23|Краснодарский край|</xsl:text>
    <xsl:text>|24|Красноярский край|</xsl:text>
    <xsl:text>|25|Приморский край|</xsl:text>
    <xsl:text>|26|Ставропольский край|</xsl:text>
    <xsl:text>|27|Хабаровский край|</xsl:text>
    <xsl:text>|28|Амурская область|</xsl:text>
    <xsl:text>|29|Архангельская область|</xsl:text>
    <xsl:text>|30|Астраханская область|</xsl:text>
    <xsl:text>|31|Белгородская область|</xsl:text>
    <xsl:text>|32|Брянская область|</xsl:text>
    <xsl:text>|33|Владимирская область|</xsl:text>
    <xsl:text>|34|Волгоградская область|</xsl:text>
    <xsl:text>|35|Вологодская область|</xsl:text>
    <xsl:text>|36|Воронежская область|</xsl:text>
    <xsl:text>|37|Ивановская область|</xsl:text>
    <xsl:text>|38|Иркутская область|</xsl:text>
    <xsl:text>|39|Калининградская область|</xsl:text>
    <xsl:text>|40|Калужская область|</xsl:text>
    <xsl:text>|41|Камчатский край|</xsl:text>
    <xsl:text>|42|Кемеровская область|</xsl:text>
    <xsl:text>|43|Кировская область|</xsl:text>
    <xsl:text>|44|Костромская область|</xsl:text>
    <xsl:text>|45|Курганская область|</xsl:text>
    <xsl:text>|46|Курская область|</xsl:text>
    <xsl:text>|47|Ленинградская область|</xsl:text>
    <xsl:text>|48|Липецкая область|</xsl:text>
    <xsl:text>|49|Магаданская область|</xsl:text>
    <xsl:text>|50|Московская область|</xsl:text>
    <xsl:text>|51|Мурманская область|</xsl:text>
    <xsl:text>|52|Нижегородская область|</xsl:text>
    <xsl:text>|53|Новгородская область|</xsl:text>
    <xsl:text>|54|Новосибирская область|</xsl:text>
    <xsl:text>|55|Омская область|</xsl:text>
    <xsl:text>|56|Оренбургская область|</xsl:text>
    <xsl:text>|57|Орловская область|</xsl:text>
    <xsl:text>|58|Пензенская область|</xsl:text>
    <xsl:text>|59|Пермский край|</xsl:text>
    <xsl:text>|60|Псковская область|</xsl:text>
    <xsl:text>|61|Ростовская область|</xsl:text>
    <xsl:text>|62|Рязанская область|</xsl:text>
    <xsl:text>|63|Самарская область|</xsl:text>
    <xsl:text>|64|Саратовская область|</xsl:text>
    <xsl:text>|65|Сахалинская область|</xsl:text>
    <xsl:text>|66|Свердловская область|</xsl:text>
    <xsl:text>|67|Смоленская область|</xsl:text>
    <xsl:text>|68|Тамбовская область|</xsl:text>
    <xsl:text>|69|Тверская область|</xsl:text>
    <xsl:text>|70|Томская область|</xsl:text>
    <xsl:text>|71|Тульская область|</xsl:text>
    <xsl:text>|72|Тюменская область|</xsl:text>
    <xsl:text>|73|Ульяновская область|</xsl:text>
    <xsl:text>|74|Челябинская область|</xsl:text>
    <xsl:text>|75|Забайкальский край|</xsl:text>
    <xsl:text>|76|Ярославская область|</xsl:text>
    <xsl:text>|77|Г. Москва|</xsl:text>
    <xsl:text>|78|Г. Санкт-Петербург|</xsl:text>
    <xsl:text>|79|Еврейская автономная область|</xsl:text>
    <xsl:text>|80|Агинский Бурятский автономный округ|</xsl:text>
    <xsl:text>|81|Коми-Пермяцкий автономный округ|</xsl:text>
    <xsl:text>|82|Корякский автономный округ|</xsl:text>
    <xsl:text>|83|Ненецкий автономный округ|</xsl:text>
    <xsl:text>|84|Таймырский (Долгано-Ненецкий) автономный округ|</xsl:text>
    <xsl:text>|85|Усть-Ордынский Бурятский автономный округ|</xsl:text>
    <xsl:text>|86|Ханты-Мансийский автономный округ - Югра|</xsl:text>
    <xsl:text>|87|Чукотский автономный округ|</xsl:text>
    <xsl:text>|88|Эвенкийский автономный округ|</xsl:text>
    <xsl:text>|89|Ямало-Ненецкий автономный округ|</xsl:text>
    <xsl:text>|91|Республика Крым|</xsl:text>
    <xsl:text>|92|Г. Севастополь|</xsl:text>
  </xsl:template>
  <xsl:template name="dRegionsRFImportLists">
    <xsl:text>|FILE|dRegionsRFImportLists.xsd|</xsl:text>
    <xsl:text>|NAME|Коды Региона - сокращенные названия|</xsl:text>
    <xsl:text>|01|Адыгея_Респ|</xsl:text>
    <xsl:text>|02|Башкортостан_Респ|</xsl:text>
    <xsl:text>|03|Бурятия_Респ|</xsl:text>
    <xsl:text>|04|Алтай_Респ|</xsl:text>
    <xsl:text>|05|Дагестан_Респ|</xsl:text>
    <xsl:text>|06|Ингушетия_Респ|</xsl:text>
    <xsl:text>|07|Кабардино-Балкарская_Респ|</xsl:text>
    <xsl:text>|08|Калмыкия_Респ|</xsl:text>
    <xsl:text>|09|Карачаево-Черкесская_Респ|</xsl:text>
    <xsl:text>|10|Карелия_Респ|</xsl:text>
    <xsl:text>|11|Коми_Респ|</xsl:text>
    <xsl:text>|12|Марий Эл_Респ|</xsl:text>
    <xsl:text>|13|Мордовия_Респ|</xsl:text>
    <xsl:text>|14|Саха /Якутия/_Респ|</xsl:text>
    <xsl:text>|15|Северная Осетия - Алания_Респ|</xsl:text>
    <xsl:text>|16|Татарстан_Респ|</xsl:text>
    <xsl:text>|17|Тыва_Респ|</xsl:text>
    <xsl:text>|18|Удмуртская_Респ|</xsl:text>
    <xsl:text>|19|Хакасия_Респ|</xsl:text>
    <xsl:text>|20|Чеченская_Респ|</xsl:text>
    <xsl:text>|21|Чувашская_Респ|</xsl:text>
    <xsl:text>|22|Алтайский_край|</xsl:text>
    <xsl:text>|23|Краснодарский_край|</xsl:text>
    <xsl:text>|24|Красноярский_край|</xsl:text>
    <xsl:text>|25|Приморский_край|</xsl:text>
    <xsl:text>|26|Ставропольский_край|</xsl:text>
    <xsl:text>|27|Хабаровский_край|</xsl:text>
    <xsl:text>|28|Амурская_обл|</xsl:text>
    <xsl:text>|29|Архангельская_обл|</xsl:text>
    <xsl:text>|30|Астраханская_обл|</xsl:text>
    <xsl:text>|31|Белгородская_обл|</xsl:text>
    <xsl:text>|32|Брянская_обл|</xsl:text>
    <xsl:text>|33|Владимирская_обл|</xsl:text>
    <xsl:text>|34|Волгоградская_обл|</xsl:text>
    <xsl:text>|35|Вологодская_обл|</xsl:text>
    <xsl:text>|36|Воронежская_обл|</xsl:text>
    <xsl:text>|37|Ивановская_обл|</xsl:text>
    <xsl:text>|38|Иркутская_обл|</xsl:text>
    <xsl:text>|39|Калининградская_обл|</xsl:text>
    <xsl:text>|40|Калужская_обл|</xsl:text>
    <xsl:text>|41|Камчатский_край|</xsl:text>
    <xsl:text>|42|Кемеровская_обл|</xsl:text>
    <xsl:text>|43|Кировская_обл|</xsl:text>
    <xsl:text>|44|Костромская_обл|</xsl:text>
    <xsl:text>|45|Курганская_обл|</xsl:text>
    <xsl:text>|46|Курская_обл|</xsl:text>
    <xsl:text>|47|Ленинградская_обл|</xsl:text>
    <xsl:text>|48|Липецкая_обл|</xsl:text>
    <xsl:text>|49|Магаданская_обл|</xsl:text>
    <xsl:text>|50|Московская_обл|</xsl:text>
    <xsl:text>|51|Мурманская_обл|</xsl:text>
    <xsl:text>|52|Нижегородская_обл|</xsl:text>
    <xsl:text>|53|Новгородская_обл|</xsl:text>
    <xsl:text>|54|Новосибирская_обл|</xsl:text>
    <xsl:text>|55|Омская_обл|</xsl:text>
    <xsl:text>|56|Оренбургская_обл|</xsl:text>
    <xsl:text>|57|Орловская_обл|</xsl:text>
    <xsl:text>|58|Пензенская_обл|</xsl:text>
    <xsl:text>|59|Пермский_край|</xsl:text>
    <xsl:text>|60|Псковская_обл|</xsl:text>
    <xsl:text>|61|Ростовская_обл|</xsl:text>
    <xsl:text>|62|Рязанская_обл|</xsl:text>
    <xsl:text>|63|Самарская_обл|</xsl:text>
    <xsl:text>|64|Саратовская_обл|</xsl:text>
    <xsl:text>|65|Сахалинская_обл|</xsl:text>
    <xsl:text>|66|Свердловская_обл|</xsl:text>
    <xsl:text>|67|Смоленская_обл|</xsl:text>
    <xsl:text>|68|Тамбовская_обл|</xsl:text>
    <xsl:text>|69|Тверская_обл|</xsl:text>
    <xsl:text>|70|Томская_обл|</xsl:text>
    <xsl:text>|71|Тульская_обл|</xsl:text>
    <xsl:text>|72|Тюменская_обл|</xsl:text>
    <xsl:text>|73|Ульяновская_обл|</xsl:text>
    <xsl:text>|74|Челябинская_обл|</xsl:text>
    <xsl:text>|75|Забайкальский_край|</xsl:text>
    <xsl:text>|76|Ярославская_обл|</xsl:text>
    <xsl:text>|77|Москва_г|</xsl:text>
    <xsl:text>|78|Санкт-Петербург_г|</xsl:text>
    <xsl:text>|79|Еврейская_Аобл|</xsl:text>
    <xsl:text>|83|Ненецкий_АО|</xsl:text>
    <xsl:text>|86|Ханты-Мансийский Автономный округ - Югра_АО|</xsl:text>
    <xsl:text>|87|Чукотский_АО|</xsl:text>
    <xsl:text>|89|Ямало-Ненецкий_АО|</xsl:text>
    <xsl:text>|99|Байконур_г|</xsl:text>
    <xsl:text>|91|Крым_Респ|</xsl:text>
    <xsl:text>|92|Севастополь_г|</xsl:text>
  </xsl:template>
  <xsl:template name="dFormingMethods">
    <xsl:text>|FILE|dFormingMethods.xsd|</xsl:text>
    <xsl:text>|NAME|Метод формирования СРЗУ|</xsl:text>
    <xsl:text>|1|Формирование из земель|</xsl:text>
    <xsl:text>|2|Перераспределение|</xsl:text>
    <xsl:text>|3|Раздел существующего участка|</xsl:text>
  </xsl:template>
  <xsl:template name="dReg_Doc_Type">
    <xsl:text>|FILE|dReg_Doc_Type.xsd|</xsl:text>
    <xsl:text>|NAME|Типы предоставленных документов|</xsl:text>
    <xsl:text>|001|Правоустанавливающий документ|</xsl:text>
    <xsl:text>|002|Документ, удостоверяющий личность ФЛ|</xsl:text>
    <xsl:text>|003|Документ, подтверждающий факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|004|Учредительный документ|</xsl:text>
    <xsl:text>|005|Документ о постановке на учет юридического лица в налоговом органе|</xsl:text>
    <xsl:text>|006|Описание земельных участков|</xsl:text>
    <xsl:text>|007|Платежный документ|</xsl:text>
    <xsl:text>|008|Заявление|</xsl:text>
    <xsl:text>|009|Доверенность|</xsl:text>
    <xsl:text>|010|Документы, входящие в состав землеустроительного дела|</xsl:text>
    <xsl:text>|011|Внебюджетные платежи|</xsl:text>
    <xsl:text>|012|Технический паспорт объекта капитального строительства|</xsl:text>
    <xsl:text>|017|Землеустроительное дело|</xsl:text>
    <xsl:text>|018|Документ, подтверждающий факт прекращения существования объекта|</xsl:text>
    <xsl:text>|999|Иное|</xsl:text>
    <xsl:text>|019|Межевой план|</xsl:text>
    <xsl:text>|020|Документ, подтверждающий разрешение земельного спора|</xsl:text>
    <xsl:text>|021|Документ, подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|022|Документ, подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|023|Документ, подтверждающий установленное или устанавливаемое ограничение (обременение) вещных прав на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|024|Документ об освобождении от уплаты государственной пошлины|</xsl:text>
  </xsl:template>
  <xsl:template name="Request_State">
    <xsl:text>|FILE|dRequest_State.xsd|</xsl:text>
    <xsl:text>|NAME|Состояния заявки|</xsl:text>
    <xsl:text>|000000001|Загружена|</xsl:text>
    <xsl:text>|001000000|Кадастровый учет ОН. Проект закона|</xsl:text>
    <xsl:text>|001001000|Заявка о постановке на ГКУ ЗУ|</xsl:text>
    <xsl:text>|001001001|Обращение учтено|</xsl:text>
    <xsl:text>|001001002|Заявка принята|</xsl:text>
    <xsl:text>|001001003|Отказано в приеме|</xsl:text>
    <xsl:text>|001001004|Проверка прошла успешно|</xsl:text>
    <xsl:text>|001001005|Недостаточно документов для определения полномочий|</xsl:text>
    <xsl:text>|001001006|Несоответствие акта формирования|</xsl:text>
    <xsl:text>|001001007|Решение о проведении ГКУ|</xsl:text>
    <xsl:text>|001001008|Объект внесен в кадастр|</xsl:text>
    <xsl:text>|001001009|КП изготовлен|</xsl:text>
    <xsl:text>|001001010|КП удостоверен|</xsl:text>
    <xsl:text>|001001011|Решение о приостановлении ГКУ|</xsl:text>
    <xsl:text>|001001012|Уведомление о приостановлении изготовлено|</xsl:text>
    <xsl:text>|001001013|Изменения предоставлены|</xsl:text>
    <xsl:text>|001001014|Решение об отказе в ГКУ|</xsl:text>
    <xsl:text>|001001015|Изменения не предоставлены в срок|</xsl:text>
    <xsl:text>|001001016|Уведомление об отказе выдано|</xsl:text>
    <xsl:text>|001001017|КП выдан|</xsl:text>
    <xsl:text>|001001018|Изменения зарегистрированы|</xsl:text>
    <xsl:text>|001001019|Ошибка при внесении в ГКН|</xsl:text>
    <xsl:text>|001001020|Уведомление о приостановлении удостоверено|</xsl:text>
    <xsl:text>|001001021|Уведомление о приостановлении выдано|</xsl:text>
    <xsl:text>|001001022|Уведомление об отказе изготовлено|</xsl:text>
    <xsl:text>|001001023|Уведомление об отказе удостоверено|</xsl:text>
    <xsl:text>|001001024|Уведомление о приеме изготовлено|</xsl:text>
    <xsl:text>|001001025|Уведомление о приеме удостоверено|</xsl:text>
    <xsl:text>|001001026|Уведомление о приеме выдано|</xsl:text>
    <xsl:text>|001001027|Сведения введены|</xsl:text>
    <xsl:text>|001001028|Полномочия заявителя подтверждены|</xsl:text>
    <xsl:text>|001001029|Сведения удостоверены|</xsl:text>
    <xsl:text>|002001001|Поиск земельного участка|</xsl:text>
    <xsl:text>|002001002|Изготовление справки об отсутствии сведений|</xsl:text>
    <xsl:text>|002001003|Удостоверение справки об отсутствии сведений|</xsl:text>
    <xsl:text>|002001004|Выдача справки об отсутствии сведений|</xsl:text>
    <xsl:text>|002001005|Формирование выписки|</xsl:text>
    <xsl:text>|002001006|Сведения ГЗК предоставлены|</xsl:text>
    <xsl:text>|002001007|Сведения ГЗК не предоставлены|</xsl:text>
    <xsl:text>|003001001|Выбор типа процедуры|</xsl:text>
    <xsl:text>|003001002|Выбор земельного участка|</xsl:text>
    <xsl:text>|003001003|Ввод сведений о земельном участке|</xsl:text>
    <xsl:text>|003001004|Внесение сведений в ГКН|</xsl:text>
    <xsl:text>|003001005|Изменение статусов|</xsl:text>
    <xsl:text>|003001006|ЗУ не найден|</xsl:text>
    <xsl:text>|003001010|Выбор удостоверенного ЗУ|</xsl:text>
    <xsl:text>|003001011|Ввод сведений об удостоверенном ЗУ|</xsl:text>
    <xsl:text>|003001012|Внесение сведений в ГКН об удостоверенном ЗУ|</xsl:text>
    <xsl:text>|003001013|Изменение статусов ЗУ|</xsl:text>
    <xsl:text>|003001020|Выбор зарегистрированного ЗУ|</xsl:text>
    <xsl:text>|003001021|Ввод сведений о зарегистрированном ЗУ|</xsl:text>
    <xsl:text>|003001022|Внесение сведений в ГКН о зарегистрированном ЗУ|</xsl:text>
    <xsl:text>|003001030|Выбор ЗУ с сервитутом (ограничением)|</xsl:text>
    <xsl:text>|003001031|Ввод сведений о ЗУ с сервитутом (ограничением)|</xsl:text>
    <xsl:text>|003001032|Внесение сведений в ГКН о ЗУ с сервитутом (ограничением)|</xsl:text>
    <xsl:text>|004000001|Принята (лично)|</xsl:text>
    <xsl:text>|004000002|Принята (по почте)|</xsl:text>
    <xsl:text>|004000003|Отказано в приеме (лично)|</xsl:text>
    <xsl:text>|004000004|Отказано в приеме (по почте)|</xsl:text>
    <xsl:text>|004000005|Отказано в учете|</xsl:text>
    <xsl:text>|004000006|Приостановление ТУ|</xsl:text>
    <xsl:text>|004000007|Сведения внесены в ЕГРОКС|</xsl:text>
    <xsl:text>|004000008|Сведения удостоверены в ЕГРОКС|</xsl:text>
    <xsl:text>|004000009|Ошибка при внесении в ЕГРОКС|</xsl:text>
    <xsl:text>|004000010|Внесение в ЕГРОКС аннулировано|</xsl:text>
    <xsl:text>|004000105|Отказ в учете не утвержден|</xsl:text>
    <xsl:text>|004000106|Приоставноление ТУ не утверждено|</xsl:text>
    <xsl:text>|004000107|Внесение в ЕГРОКС не утверждено|</xsl:text>
    <xsl:text>|004000205|Отказ в учете утвержден|</xsl:text>
    <xsl:text>|004000206|Приостановление утверждено|</xsl:text>
    <xsl:text>|004000207|Внесение в ЕГРОКС утверждено|</xsl:text>
    <xsl:text>|006000001|Сформирован|</xsl:text>
    <xsl:text>|006000002|Изготовлен|</xsl:text>
    <xsl:text>|006000003|Утвержден|</xsl:text>
    <xsl:text>|006000004|Не утвержден|</xsl:text>
    <xsl:text>|006000005|Выдан лично|</xsl:text>
    <xsl:text>|006000006|Выдан по почте|</xsl:text>
    <xsl:text>|006000007|Передан в архив|</xsl:text>
    <xsl:text>|006000008|Ожидается|</xsl:text>
    <xsl:text>|009000001|Проверка пройдена успешно|</xsl:text>
    <xsl:text>|009000002|Ошибки ввода данных|</xsl:text>
    <xsl:text>|009000003|Полномочия не подтверждены|</xsl:text>
    <xsl:text>|009000004|Требования законодательства не соблюдены|</xsl:text>
    <xsl:text>|009000005|Акт формирования противоречит сведениям ЕГРОКС|</xsl:text>
    <xsl:text>|009000006|Ошибки при проверке в кадастре|</xsl:text>
    <xsl:text>|009000007|Обнаружены ошибки при проверке|</xsl:text>
    <xsl:text>|011000006|Приостановление ГКУ|</xsl:text>
    <xsl:text>|011000007|Сведения внесены в ГКН|</xsl:text>
    <xsl:text>|011000008|Сведения удостоверены в ГКН|</xsl:text>
    <xsl:text>|011000009|Ошибка при внесении в ГКН|</xsl:text>
    <xsl:text>|011000010|Внесение в ГКН аннулировано|</xsl:text>
    <xsl:text>|011000105|Отказ в учете не утвержден|</xsl:text>
    <xsl:text>|011000106|Приостановление ГКУ не утверждено|</xsl:text>
    <xsl:text>|011000107|Внесение в ГКН не утверждено|</xsl:text>
    <xsl:text>|011000205|Отказ в учете утвержден|</xsl:text>
    <xsl:text>|011000206|Приостановление ГКУ утверждено|</xsl:text>
    <xsl:text>|011000207|Внесение в ГКН утверждено|</xsl:text>
    <xsl:text>|012000001|Границы КК были изменены|</xsl:text>
    <xsl:text>|012000002|Границы КК не изменялись|</xsl:text>
    <xsl:text>|021001001|Поиск объекта недвижимости|</xsl:text>
    <xsl:text>|021001002|Изготовление справки об отсутствии сведений|</xsl:text>
    <xsl:text>|021001005|Формирование выписки|</xsl:text>
    <xsl:text>|021001006|Сведения ЕГРОКС предоставлены|</xsl:text>
    <xsl:text>|021001007|Сведения ЕГРОКС не предоставлены|</xsl:text>
    <xsl:text>|022001001|Ввод сведений о ЗУ|</xsl:text>
    <xsl:text>|022001002|Проверка на правильность ввода|</xsl:text>
    <xsl:text>|022001003|Внесение сведений в кадастр|</xsl:text>
    <xsl:text>|022001004|Сведения внесены|</xsl:text>
    <xsl:text>|023001001|Ввод сведений об объектах|</xsl:text>
    <xsl:text>|023001002|Проверка на правильность ввода|</xsl:text>
    <xsl:text>|023001003|Внесение сведений в кадастр|</xsl:text>
    <xsl:text>|023001004|Сведения внесены|</xsl:text>
    <xsl:text>|024001001|Ввод сведений об ОКС|</xsl:text>
    <xsl:text>|024001002|Проверка на правильность ввода|</xsl:text>
    <xsl:text>|024001003|Внесение сведений в ЕГРОКС|</xsl:text>
    <xsl:text>|024001004|Сведения внесены|</xsl:text>
    <xsl:text>|024002001|Ввод сведений об ОКС|</xsl:text>
    <xsl:text>|024002002|Проверка на правильность ввода|</xsl:text>
    <xsl:text>|024002003|Внесение сведений в ЕГРОКС|</xsl:text>
    <xsl:text>|024002004|Сведения внесены|</xsl:text>
    <xsl:text>|027001001|Ввод декларации|</xsl:text>
    <xsl:text>|027001002|Проверка соответствия данных с ЕГРОКС|</xsl:text>
    <xsl:text>|999999999|Аварийное завершение процесса|</xsl:text>
    <xsl:text>|009000008|Возврат на проверку документов|</xsl:text>
    <xsl:text>|009000010|Пакет документов сформирован|</xsl:text>
    <xsl:text>|009000011|Ожидание ответа от АИС ГКН|</xsl:text>
    <xsl:text>|009000012|Отказ в загрузке в АИС ГКН|</xsl:text>
    <xsl:text>|009000013|Загружена в АИС ГКН|</xsl:text>
    <xsl:text>|009000014|Выгружена с ошибками|</xsl:text>
    <xsl:text>|023001005|Формирование выписки|</xsl:text>
    <xsl:text>|023001006|Выписка сформирована|</xsl:text>
    <xsl:text>|023001007|Утверждение решения|</xsl:text>
    <xsl:text>|023001008|Решение утверждено|</xsl:text>
    <xsl:text>|027001003|Формирование запроса|</xsl:text>
    <xsl:text>|027001004|Ожидание ответа на запрос|</xsl:text>
    <xsl:text>|027001005|Регистрация прекращена|</xsl:text>
    <xsl:text>|027001006|Ответ предоставлен|</xsl:text>
    <xsl:text>|027001015|Срок истек|</xsl:text>
    <xsl:text>|028001001|Аннулирование|</xsl:text>
  </xsl:template>
  <xsl:template name="dRequest_Type">
    <xsl:text>|FILE|dRequest_Type.xsd|</xsl:text>
    <xsl:text>|NAME|Типы заявок|</xsl:text>
    <xsl:text>|002001|Заявление о предоставлении сведений ГЗК|</xsl:text>
    <xsl:text>|003001|Документ, подтверждающий регистрацию прав|</xsl:text>
    <xsl:text>|011001|Заявка о постановке на государственный кадастровый учет|</xsl:text>
    <xsl:text>|011002|Заявка о внесении текущих изменений характеристик земельного участка|</xsl:text>
    <xsl:text>|016001|Заявка о постановке на технический учет ОКС|</xsl:text>
    <xsl:text>|016002|Заявление о внесении текущих изменений характеристик объекта капитального строительства|</xsl:text>
    <xsl:text>|016004|Заявление о снятии с учета объекта капитального строительства|</xsl:text>
    <xsl:text>|017001|Заявление об утверждении землеустроительной документации|</xsl:text>
    <xsl:text>|017002|Заявление о принятии землеустроительной документации на государственную экспертизу|</xsl:text>
    <xsl:text>|021001|Заявление о предоставлении сведений ЕГРОКС|</xsl:text>
    <xsl:text>|022001|Заявка о приеме дополнительных документов|</xsl:text>
    <xsl:text>|023001|Документ на внесение изменений в кадастр|</xsl:text>
    <xsl:text>|023002|Документ на внесение ранее учтенного участка в кадастр|</xsl:text>
    <xsl:text>|027001|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|032001|Заявление о предоставлении сведений ГЗК в форме кадастрового плана территории|</xsl:text>
    <xsl:text>|035001|Заявление о копий документов|</xsl:text>
    <xsl:text>|002002|Запрос в орган кадастрового учета о предоставлении сведений ГКН|</xsl:text>
    <xsl:text>|036001|Заявление о постановке на государственный кадастровый учет объекта недвижимости|</xsl:text>
    <xsl:text>|036002|Заявление о государственном учете изменений объекта недвижимости|</xsl:text>
    <xsl:text>|022002|Заявление о приеме дополнительных документов|</xsl:text>
    <xsl:text>|032002|Запрос в орган кадастрового учета о предоставлении сведений ГКН в форме кадастрового плана территории|</xsl:text>
    <xsl:text>|035002|Запрос в орган кадастрового учета о предоставлении копий документов|</xsl:text>
    <xsl:text>|036003|Заявление о снятии с государственного кадастрового учета объекта недвижимости|</xsl:text>
    <xsl:text>|036004|Заявление о внесении в ГКН сведений о ранее учтенном объекте недвижимости|</xsl:text>
    <xsl:text>|036005|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|032003|Запрос в орган кадастрового учета о предоставлении сведений ГКН в виде кадастровой справки|</xsl:text>
    <xsl:text>|558100000000|Заявление|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с кадастровым учетом|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесенных в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на кадастровый учет объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном учете изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101040000|Заявление о внесении в Единый государственный реестр объектов капитального строительства (ЕГРОКС) сведений об объекте капитального строительства (ОКС)|</xsl:text>
    <xsl:text>|558101050000|Заявление о предоставлении сведений об ОКС|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с кадастрового учета объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в ГКН сведений о ранее учтенном объекте недвижимости|</xsl:text>
    <xsl:text>|558101080000|Заявление об исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на кадастровый учет|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации ГКН|</xsl:text>
    <xsl:text>|558102000000|Заявления, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102020000|Заявление о внесении в ЕГРП записи о прекращении права (ограничения (обременения) права)|</xsl:text>
    <xsl:text>|558102030000|Заявление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558102040000|Заявление об исправлении технической ошибки, допущенной при государственной регистрации права|</xsl:text>
    <xsl:text>|558102050000|Заявление о представлении дополнительных документов для государственной регистрации прав|</xsl:text>
    <xsl:text>|558102060000|Заявление о приостановлении государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102070000|Заявление о возобновлении государственной регистрации|</xsl:text>
    <xsl:text>|558102080000|Заявление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558102090000|Заявление о повторной выдаче свидетельства о государственной регистрации права|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учет бесхозяйного имущества|</xsl:text>
    <xsl:text>|558102120000|Заявление о выдаче закладной (новой закладной, дубликата закладной, аннулированной закладной)|</xsl:text>
    <xsl:text>|558103000000|Заявления о государственном учете объектов капитального строительства и запросы о предоставлении сведений Единого государственного реестра объектов капитального строительства (ЕГРОКС)|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населенных пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558102130000|Заявление о выдаче копий договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558103010000|Заявление о постановке на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558103020000|Заявление о внесении в ЕГРОКС сведений о ранее учтенном объекте капитального строительства|</xsl:text>
    <xsl:text>|558103030000|Заявление о государственном учете изменений объекта капитального строительства|</xsl:text>
    <xsl:text>|558103040000|Заявление о снятии с государственного учёта в связи с прекращением существования объекта учёта|</xsl:text>
    <xsl:text>|558103050000|Заявление об исправлении технической ошибки в сведениях ЕГРОКС|</xsl:text>
    <xsl:text>|558103060000|Заявление о снятии с государственного учёта объектов учёта, сведения о которых носят временный характер|</xsl:text>
    <xsl:text>|558103070000|Запрос о предоставлении копии документа, на основании которого сведения об объекте капитального строительства внесены в ЕГРОКС|</xsl:text>
    <xsl:text>|558103080000|Запрос о предоставлении сведений ЕГРОКС в виде кадастровой выписки и кадастрового паспорта|</xsl:text>
    <xsl:text>|558103090000|Заявление о представлении дополнительных документов на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558199000000|Иное заявление|</xsl:text>
  </xsl:template>
  <xsl:template name="dRights">
    <xsl:text>|FILE|dRights.xsd|</xsl:text>
    <xsl:text>|NAME|Предмет регистрации и учета (вид права)|</xsl:text>
    <xsl:text>|001001000000|Собственность|</xsl:text>
    <xsl:text>|001001001000|Собственность|</xsl:text>
    <xsl:text>|001001001001|Государственная собственность|</xsl:text>
    <xsl:text>|001001001002|Муниципальная собственность|</xsl:text>
    <xsl:text>|001001001003|Собственность субъекта РФ|</xsl:text>
    <xsl:text>|001001001004|Собственность РФ|</xsl:text>
    <xsl:text>|001001002000|Общая долевая собственность|</xsl:text>
    <xsl:text>|001001003000|Общая совместная собственность|</xsl:text>
    <xsl:text>|001001004000|Хозяйственное ведение|</xsl:text>
    <xsl:text>|001001005000|Оперативное управление|</xsl:text>
    <xsl:text>|001001006000|Пожизненное наследуемое владение|</xsl:text>
    <xsl:text>|001001007000|Постоянное (бессрочное) пользование|</xsl:text>
    <xsl:text>|001001008000|Сервитут (право)|</xsl:text>
    <xsl:text>|001001009000|Иное вещное право|</xsl:text>
    <xsl:text>|001002000000|Долевая собственность|</xsl:text>
    <xsl:text>|001002001000|Арест|</xsl:text>
    <xsl:text>|001002002000|Запрещение|</xsl:text>
    <xsl:text>|001002003000|Аренда (в том числе субаренда)|</xsl:text>
    <xsl:text>|001002004000|Ипотека|</xsl:text>
    <xsl:text>|001002005000|Доверительное управление|</xsl:text>
    <xsl:text>|001002006000|Сервитут (ограничение)|</xsl:text>
    <xsl:text>|001002006001|Сервитут. Право прохода и проезда через земельный участок|</xsl:text>
    <xsl:text>|001002006002|Сервитут. Право проведения работ по прокладке ремонту и обслуживанию линий коммуникаций|</xsl:text>
    <xsl:text>|001002006003|Сервитут. Право проведения ремонтно-строительных работ|</xsl:text>
    <xsl:text>|001002006004|Сервитут. Право производства изыскательских и исследовательских работ на земельном участке|</xsl:text>
    <xsl:text>|001002007000|Безвозмездное пользование участком лесного фонда|</xsl:text>
    <xsl:text>|001002008000|Безвозмездное (срочное) пользование земельным участком|</xsl:text>
    <xsl:text>|001002009000|Концессия участка лесного фонда|</xsl:text>
    <xsl:text>|001002010000|Ограничение прав на землю, предусмотренное статьей 56 Земельного кодекса Российской Федерации|</xsl:text>
    <xsl:text>|001002010001|Особый режим использования земли. Охранная зона|</xsl:text>
    <xsl:text>|001002010002|Особый режим использования земли. Санитарно-защитная зона|</xsl:text>
    <xsl:text>|001002010003|Особый режим использования земли. Вторая зона округа санитарной охраны|</xsl:text>
    <xsl:text>|001002010004|Особый режим использования земли.Санитарно-защитная полоса|</xsl:text>
    <xsl:text>|001002010005|Особый режим использования земли. Особо охраняемая природная территория|</xsl:text>
    <xsl:text>|001002010006|Особый режим использования земли. Прибрежная защитная полоса|</xsl:text>
    <xsl:text>|001002010007|Особый режим использования земли. Зона регулирования застройки|</xsl:text>
    <xsl:text>|001002010008|Особый режим использования земли. Зона ограничений застройки|</xsl:text>
    <xsl:text>|001002010009|Особый режим использования земли. Зона охраняемого природного ландшафта|</xsl:text>
    <xsl:text>|001002010010|Особый режим использования земли. Территория памятника истории и культуры|</xsl:text>
    <xsl:text>|001002010011|Особый режим использования земли. Прочие|</xsl:text>
    <xsl:text>|001002010012|Особый режим использования земли. Вторая зона округа горно-санитарной охраны|</xsl:text>
    <xsl:text>|001002010013|Особый режим использования земли. Водоохранная зона|</xsl:text>
    <xsl:text>|001002010014|Особый режим использования земли. Второй пояс зоны санитарной охраны|</xsl:text>
    <xsl:text>|001002010015|Особый режим использования земли. Придорожная полоса|</xsl:text>
    <xsl:text>|001002011000|Обязательства по сохранению объекта культурного наследия (памятника истории и культуры) народов РФ или выявленного объекта культурного наследия, подлежащего государственной охране до принятия решения о включении его в ЕГР объектов культурного наследия|</xsl:text>
    <xsl:text>|001002012000|Иное ограничение (обременение)|</xsl:text>
    <xsl:text>|001003000000|Совместная собственность|</xsl:text>
    <xsl:text>|001003001000|Сделки об отчуждении объектов недвижимости|</xsl:text>
    <xsl:text>|001003001001|Купля-продажа|</xsl:text>
    <xsl:text>|001003001002|Мена|</xsl:text>
    <xsl:text>|001003001003|Дарение (в том числе пожертвование)|</xsl:text>
    <xsl:text>|001003001004|Рента|</xsl:text>
    <xsl:text>|001003002000|Сделки, на основании которых возникают ограничения (обременения) прав|</xsl:text>
    <xsl:text>|001003002001|Аренда (в том числе субаренда)|</xsl:text>
    <xsl:text>|001003002002|Ипотека|</xsl:text>
    <xsl:text>|001003002003|Безвозмездное пользование участком лесного фонда|</xsl:text>
    <xsl:text>|001003002004|Концессия участка лесного фонда|</xsl:text>
    <xsl:text>|001003002005|Безвозмездное (срочное) пользование земельным участком|</xsl:text>
    <xsl:text>|001003003000|Отказ одаряемого принять дар|</xsl:text>
    <xsl:text>|001003004000|Соглашение об изменении зарегистрированного договора|</xsl:text>
    <xsl:text>|001003005000|Уступка прав требования, перевод долга по зарегистрированному договору|</xsl:text>
    <xsl:text>|001003006000|Иные сделки, подлежащие государственной регистрации в соответствии с законодательством Российской Федерации|</xsl:text>
    <xsl:text>|001004000000|Хозяйственное ведение|</xsl:text>
    <xsl:text>|001005000000|Оперативное управление|</xsl:text>
    <xsl:text>|001020000000|Неопределено|</xsl:text>
    <xsl:text>|001030000000|Значение отсутствует|</xsl:text>
    <xsl:text>|001006000000|Пожизненное наследуемое владение|</xsl:text>
    <xsl:text>|001007000000|Постоянное (бессрочное) пользование|</xsl:text>
    <xsl:text>|001008000000|Сервитут (право)|</xsl:text>
    <xsl:text>|001099000000|Иные права|</xsl:text>
  </xsl:template>
  <xsl:template name="dSpecification">
    <xsl:text>|FILE|dSpecification.xsd|</xsl:text>
    <xsl:text>|NAME|Документы, являющиеся основанием для внесения уточнений в сведения ГЗК о разрешенном использовании земельного участка и о категории земель|</xsl:text>
    <xsl:text>|030001000000|Акт органа государственной власти о предоставлении земельного участка|</xsl:text>
    <xsl:text>|030002000000|Акт органа местного самоуправления о предоставлении земельного участка|</xsl:text>
    <xsl:text>|030003000000|Договор, предметом которого является земельный участок|</xsl:text>
    <xsl:text>|030004000000|Решение суда о признании права на земельный участок, вступившее в законную силу|</xsl:text>
    <xsl:text>|030005000000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|030006000000|Свидетельство о праве собственности на землю по форме, утвержденной Указом Президента Российской Федерации от 27 октября 1993 г. N 1767 "О регулировании земельных отношений и развитии аграрной реформы в России"|</xsl:text>
    <xsl:text>|030007000000|Государственный акт о праве пожизненного наследуемого владения земельным участком, праве постоянного (бессрочного) пользования земельным участком по формам, утвержденным Постановлением Совета Министров РСФСР от 17 сентября 1991 г. N 493 "Об утверждении форм государственного акта на право собственности на землю, пожизненного наследуемого владения, бессрочного (постоянного) пользования землей"|</xsl:text>
    <xsl:text>|030008000000|Свидетельство о праве собственности на землю по форме, утвержденной Постановлением Правительства РФ от 19 марта 1992 г. N 177 "Об утверждении форм свидетельства о праве собственности на землю, договора аренды земель сельскохозяйственного назначения и договора временного пользования землей сельскохозяйственного назначения"|</xsl:text>
    <xsl:text>|030009000000|Акт органа местного самоуправления об изменении разрешенного использования земельного участка (в отсутствии правил землепользования и застройки территории, принятых в соответствии с Градостроительным кодексом)|</xsl:text>
    <xsl:text>|030010000000|Правила землепользования и застройки территории, принятые в соответствии с Градостроительным кодексом|</xsl:text>
    <xsl:text>|030011000000|Акт органа государственной власти или местного самоуправления об установлении разрешенного использования земельного участка, на который действие градостроительного регламента не распространяется|</xsl:text>
    <xsl:text>|030012000000|Акт органа государственной власти о переводе земель или земельных участков из одной категории в другую|</xsl:text>
    <xsl:text>|030013000000|Акт о переводе земель или земельных участков в составе таких земель из одной категории в другую|</xsl:text>
    <xsl:text>|030014000000|Акт органа государственной власти об установлении или изменении черты поселения|</xsl:text>
    <xsl:text>|030015000000|Акт органа государственной власти об отнесении земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|030016000000|Нормативно правовой акт органа местного самоуправления об отнесении земельного участка к определенной категории земель|</xsl:text>
  </xsl:template>
  <xsl:template name="sPurposeKind">
    <xsl:text>|FILE|sPurposeKind.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь целей предоставления сведений|</xsl:text>
    <xsl:text>|001|Для государственной регистрации прав|</xsl:text>
    <xsl:text>|002|Для внесения уточнений в ЕГРП о...|</xsl:text>
    <xsl:text>|003|В соответствии с заявлением для ...|</xsl:text>
    <xsl:text>|004|В соответствии с заявлением|</xsl:text>
    <xsl:text>|005|Для иных целей|</xsl:text>
    <xsl:text>|006|Для предоставления сведений о кадастровой стоимости|</xsl:text>
    <xsl:text>|007|Для проведения кадастровых работ|</xsl:text>
    <xsl:text>|008|Для предоставления сведений об адресах правообладателей для согласования границ|</xsl:text>
    <xsl:text>|009|Для предоставления сведений о земельных участках в кадастровом квартале|</xsl:text>
    <xsl:text>|010|Для предоставления сведений о пунктах ОМС в кадастровом квартале|</xsl:text>
    <xsl:text>|011|Для предоставления сведений о земельных участках и пунктах ОМС в кадастровом квартале|</xsl:text>
  </xsl:template>
  <xsl:template name="dApplied_file_type">
    <xsl:text>|FILE|dAppliedFiles.xsd|</xsl:text>
    <xsl:text>|NAME|Типы приложенных файлов|</xsl:text>
    <xsl:text>|01|Файл технического паспорта ОКС (TUOKS)|</xsl:text>
    <xsl:text>|02|Файл межевого плана (GKUZU)|</xsl:text>
    <xsl:text>|03|Координаты в формате mif|</xsl:text>
    <xsl:text>|04|Координаты в формате txt|</xsl:text>
    <xsl:text>|05|Технический план|</xsl:text>
  </xsl:template>
  <xsl:template name="dCurrentChangesSubParcel">
    <xsl:text>|FILE|dCurrentChangesSubParcel.xsd|</xsl:text>
    <xsl:text>|NAME|Словарь текущих изменений|</xsl:text>
    <xsl:text>|001|Образование части|</xsl:text>
    <xsl:text>|002|Изменение части|</xsl:text>
    <xsl:text>|003|Прекращение существования части|</xsl:text>
  </xsl:template>
  <xsl:template name="dMethod01">
    <xsl:text>|FILE|dMethod.xsd|</xsl:text>
    <xsl:text>|NAME|Способ образования земельного участка|</xsl:text>
    <xsl:text>|1|Выдел|</xsl:text>
    <xsl:text>|2|Раздел|</xsl:text>
    <xsl:text>|3|Раздел единого землепользования|</xsl:text>
    <xsl:text>|4|Перераспределение|</xsl:text>
    <xsl:text>|5|Иной способ|</xsl:text>
    <xsl:text>|6|Объединение|</xsl:text>
  </xsl:template>
  <xsl:template name="dMethod">
    <xsl:text>|FILE|dMethod.xsd|</xsl:text>
    <xsl:text>|NAME|Способ образования земельного участка|</xsl:text>
    <xsl:text>|1|Выдел|</xsl:text>
    <xsl:text>|2|Раздел|</xsl:text>
    <xsl:text>|3|Раздел с измененным земельным участком|</xsl:text>
    <xsl:text>|4|Перераспределение|</xsl:text>
    <xsl:text>|5|Образование из земель|</xsl:text>
    <xsl:text>|6|Объединение|</xsl:text>
    <xsl:text>|7|Перераспределение с землями|</xsl:text>
  </xsl:template>
  <xsl:template name="dArea">
    <xsl:text>|FILE|dArea.xsd|</xsl:text>
    <xsl:text>|NAME|Виды площадей|</xsl:text>
    <xsl:text>|001|Площадь застройки|</xsl:text>
    <xsl:text>|002|Общая площадь|</xsl:text>
    <xsl:text>|003|Общая площадь без лоджии|</xsl:text>
    <xsl:text>|004|Общая площадь с лоджией|</xsl:text>
    <xsl:text>|005|Жилая площадь|</xsl:text>
    <xsl:text>|007|Основная площадь|</xsl:text>
    <xsl:text>|008|Декларированная площадь|</xsl:text>
    <xsl:text>|009|Уточненная площадь|</xsl:text>
    <xsl:text>|010|Фактическая площадь|</xsl:text>
    <xsl:text>|011|Вспомогательная площадь|</xsl:text>
    <xsl:text>|012|Площадь помещений общего пользования без лоджии|</xsl:text>
    <xsl:text>|013|Площадь помещений общего пользования с лоджией|</xsl:text>
    <xsl:text>|014|Технические помещения (Прочие) без лоджии|</xsl:text>
    <xsl:text>|015|Технические помещения (Прочие) с лоджией|</xsl:text>
    <xsl:text>|020|Застроенная площадь|</xsl:text>
    <xsl:text>|021|Незастроенная площадь|</xsl:text>
    <xsl:text>|022|Значение площади отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dCost">
    <xsl:text>|FILE|dCost.xsd|</xsl:text>
    <xsl:text>|NAME|Виды стоимости|</xsl:text>
    <xsl:text>|001|Инвентаризационная стоимость|</xsl:text>
    <xsl:text>|002|Действительная стоимость|</xsl:text>
    <xsl:text>|003|Восстановительная стоимость|</xsl:text>
    <xsl:text>|004|Рыночная стоимость|</xsl:text>
    <xsl:text>|005|Остаточная балансовая стоимость|</xsl:text>
    <xsl:text>|006|Балансовая стоимость на момент сдачи в эксплуатацию|</xsl:text>
    <xsl:text>|007|Кадастровая стоимость|</xsl:text>
  </xsl:template>
  <xsl:template name="dElements_Conctruct">
    <xsl:text>|FILE|dElements_Conctruct.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор конструктивных элементов строений|</xsl:text>
    <xsl:text>|062000000000|Конструкции строений|</xsl:text>
    <xsl:text>|062010000000|Фундамент|</xsl:text>
    <xsl:text>|062010100000|Каменный|</xsl:text>
    <xsl:text>|062010101000|Бутовый, бутобетонный|</xsl:text>
    <xsl:text>|062010101010|Ленточный|</xsl:text>
    <xsl:text>|062010101020|Столбчатый|</xsl:text>
    <xsl:text>|062010101030|Камни под углами стен|</xsl:text>
    <xsl:text>|062010102000|Кирпичный|</xsl:text>
    <xsl:text>|062010102010|Ленточный|</xsl:text>
    <xsl:text>|062010102020|Столбчатый|</xsl:text>
    <xsl:text>|062010200000|Железобетонный|</xsl:text>
    <xsl:text>|062010201000|Ленточный|</xsl:text>
    <xsl:text>|062010201010|Сборный|</xsl:text>
    <xsl:text>|062010201020|Монолитный|</xsl:text>
    <xsl:text>|062010201030|Сборно-монолитный|</xsl:text>
    <xsl:text>|062010202000|Столбчатый|</xsl:text>
    <xsl:text>|062010203000|Свайный|</xsl:text>
    <xsl:text>|062010204000|Сплошная монолитная плита|</xsl:text>
    <xsl:text>|062010300000|Деревянный|</xsl:text>
    <xsl:text>|062010301000|Сваи|</xsl:text>
    <xsl:text>|062010302000|Столбы|</xsl:text>
    <xsl:text>|062010303000|Лежни|</xsl:text>
    <xsl:text>|062010304000|Стулья|</xsl:text>
    <xsl:text>|062010400000|Грунтовое основание|</xsl:text>
    <xsl:text>|062010500000|Фундаменты опор и колонн|</xsl:text>
    <xsl:text>|062010501000|Железобетонные|</xsl:text>
    <xsl:text>|062010501010|Опорные плиты|</xsl:text>
    <xsl:text>|062010501020|Отдельно стоящие стаканные|</xsl:text>
    <xsl:text>|062010501030|Отдельно стоящие свайные|</xsl:text>
    <xsl:text>|062010501031|Монолитные|</xsl:text>
    <xsl:text>|062010501032|Сборные|</xsl:text>
    <xsl:text>|062010502000|Бетонные|</xsl:text>
    <xsl:text>|062010502010|Сборные|</xsl:text>
    <xsl:text>|062010502020|Монолитные|</xsl:text>
    <xsl:text>|062010600000|Днище|</xsl:text>
    <xsl:text>|062010601000|Железобетонная монолитная плита|</xsl:text>
    <xsl:text>|062010602000|Бетонная монолитная плита|</xsl:text>
    <xsl:text>|062020000000|Каркас|</xsl:text>
    <xsl:text>|062020100000|Железобетонный|</xsl:text>
    <xsl:text>|062020200000|Стальной|</xsl:text>
    <xsl:text>|062020300000|Деревянный|</xsl:text>
    <xsl:text>|062020400000|Смешанный|</xsl:text>
    <xsl:text>|062030000000|Колонны|</xsl:text>
    <xsl:text>|062030100000|Железобетонные|</xsl:text>
    <xsl:text>|062030200000|Кирпичные|</xsl:text>
    <xsl:text>|062030300000|Каменные|</xsl:text>
    <xsl:text>|062030400000|Стальные|</xsl:text>
    <xsl:text>|062030500000|Деревянные|</xsl:text>
    <xsl:text>|062040000000|Стены|</xsl:text>
    <xsl:text>|062040100000|Каменные|</xsl:text>
    <xsl:text>|062040101000|Кирпичные|</xsl:text>
    <xsl:text>|062040102000|Кирпичные облегченные|</xsl:text>
    <xsl:text>|062040103000|Из природного камня|</xsl:text>
    <xsl:text>|062040200000|Деревянные|</xsl:text>
    <xsl:text>|062040201000|Рубленые|</xsl:text>
    <xsl:text>|062040202000|Каркасно-засыпные|</xsl:text>
    <xsl:text>|062040203000|Каркасно-обшивные|</xsl:text>
    <xsl:text>|062040204000|Сборно-щитовые|</xsl:text>
    <xsl:text>|062040205000|Дощатые|</xsl:text>
    <xsl:text>|062040206000|Деревянный каркас без обшивки|</xsl:text>
    <xsl:text>|062040300000|Смешанные|</xsl:text>
    <xsl:text>|062040301000|Каменные и деревянные|</xsl:text>
    <xsl:text>|062040302000|Каменные и бетонные|</xsl:text>
    <xsl:text>|062040400000|Лёгкие из местных материалов|</xsl:text>
    <xsl:text>|062040500000|Из прочих материалов|</xsl:text>
    <xsl:text>|062040600000|Бетонные|</xsl:text>
    <xsl:text>|062040601000|Монолитные|</xsl:text>
    <xsl:text>|062040602000|Из мелких бетонных блоков|</xsl:text>
    <xsl:text>|062040603000|Из легкобетонных панелей|</xsl:text>
    <xsl:text>|062040700000|Железобетонные|</xsl:text>
    <xsl:text>|062040701000|Крупнопанельные|</xsl:text>
    <xsl:text>|062040702000|Каркаснопанельные|</xsl:text>
    <xsl:text>|062040703000|Монолитные|</xsl:text>
    <xsl:text>|062040704000|Крупноблочные|</xsl:text>
    <xsl:text>|062040705000|Из унифицированных железобетонных элементов|</xsl:text>
    <xsl:text>|062040706000|Из железобетонных сегментов|</xsl:text>
    <xsl:text>|062040800000|Шлакобетонные|</xsl:text>
    <xsl:text>|062040900000|Металлические|</xsl:text>
    <xsl:text>|062050000000|Перегородки|</xsl:text>
    <xsl:text>|062050100000|Бетонные|</xsl:text>
    <xsl:text>|062050101000|Монолитные|</xsl:text>
    <xsl:text>|062050102000|Сборные|</xsl:text>
    <xsl:text>|062050200000|Гипсовые и асбестовые|</xsl:text>
    <xsl:text>|062050300000|Шлакобетонные|</xsl:text>
    <xsl:text>|062050400000|Каменные|</xsl:text>
    <xsl:text>|062050401000|Из естественного камня|</xsl:text>
    <xsl:text>|062050402000|Кирпичные|</xsl:text>
    <xsl:text>|062050500000|Деревянные|</xsl:text>
    <xsl:text>|062050501000|Дощатые|</xsl:text>
    <xsl:text>|062050502000|Каркасно-засыпные|</xsl:text>
    <xsl:text>|062050503000|Каркасно-обшивные|</xsl:text>
    <xsl:text>|062050504000|Сборно-щитовые|</xsl:text>
    <xsl:text>|062050600000|Из прочих материалов|</xsl:text>
    <xsl:text>|062060000000|Перекрытия|</xsl:text>
    <xsl:text>|062060100000|Деревянные|</xsl:text>
    <xsl:text>|062060101000|По деревянным балкам|</xsl:text>
    <xsl:text>|062060102000|По металлическим балкам|</xsl:text>
    <xsl:text>|062060200000|Железобетонные|</xsl:text>
    <xsl:text>|062060201000|Сборные плиты|</xsl:text>
    <xsl:text>|062060202000|Монолитные|</xsl:text>
    <xsl:text>|062060203000|Сборно-монолитные|</xsl:text>
    <xsl:text>|062060300000|Кирпичные|</xsl:text>
    <xsl:text>|062060301000|Своды|</xsl:text>
    <xsl:text>|062060302000|Своды по металлическим балкам|</xsl:text>
    <xsl:text>|062060400000|Металлические|</xsl:text>
    <xsl:text>|062060500000|Без заполнения|</xsl:text>
    <xsl:text>|062060501000|Балки|</xsl:text>
    <xsl:text>|062060502000|Фермы|</xsl:text>
    <xsl:text>|062060503000|Пространственные конструкции|</xsl:text>
    <xsl:text>|062070000000|Покрытие|</xsl:text>
    <xsl:text>|062070100000|Железобетонное|</xsl:text>
    <xsl:text>|062070101000|Сборные плиты|</xsl:text>
    <xsl:text>|062070102000|Монолитное|</xsl:text>
    <xsl:text>|062070103000|Своды|</xsl:text>
    <xsl:text>|062070104000|Оболочки|</xsl:text>
    <xsl:text>|062070200000|Деревянное|</xsl:text>
    <xsl:text>|062070300000|Металлическое|</xsl:text>
    <xsl:text>|062080000000|Крыша|</xsl:text>
    <xsl:text>|062080100000|Кровля|</xsl:text>
    <xsl:text>|062080101000|Асбестоцементная|</xsl:text>
    <xsl:text>|062080102000|Металлическая|</xsl:text>
    <xsl:text>|062080102010|Сталь|</xsl:text>
    <xsl:text>|062080102011|Листовая|</xsl:text>
    <xsl:text>|062080102012|Профилированная|</xsl:text>
    <xsl:text>|062080102013|Металлочерепица|</xsl:text>
    <xsl:text>|062080102020|Алюминий|</xsl:text>
    <xsl:text>|062080102021|Металлочерепица|</xsl:text>
    <xsl:text>|062080102022|Профилированный|</xsl:text>
    <xsl:text>|062080102023|Листовой|</xsl:text>
    <xsl:text>|062080102030|Медь листовая|</xsl:text>
    <xsl:text>|062080103000|Рулонная|</xsl:text>
    <xsl:text>|062080104000|Черепица|</xsl:text>
    <xsl:text>|062080105000|Наливная|</xsl:text>
    <xsl:text>|062080105010|Мастика|</xsl:text>
    <xsl:text>|062080105020|Полимерные материалы|</xsl:text>
    <xsl:text>|062080106000|Деревянная|</xsl:text>
    <xsl:text>|062080107000|Из прочих материалов|</xsl:text>
    <xsl:text>|062080108000|Остекленная|</xsl:text>
    <xsl:text>|062080200000|Деревянная стропильная|</xsl:text>
    <xsl:text>|062080300000|Железобетонная стропильная|</xsl:text>
    <xsl:text>|062080400000|Металлическая стропильная|</xsl:text>
    <xsl:text>|062080500000|Железобетонная бесстропильная|</xsl:text>
    <xsl:text>|062080600000|Железобетонная совмещенная|</xsl:text>
    <xsl:text>|062090000000|Полы|</xsl:text>
    <xsl:text>|062090100000|Деревянные|</xsl:text>
    <xsl:text>|062090101000|Дощатые|</xsl:text>
    <xsl:text>|062090102000|Паркет|</xsl:text>
    <xsl:text>|062090102010|Дубовый|</xsl:text>
    <xsl:text>|062090102020|Буковый|</xsl:text>
    <xsl:text>|062090102030|Из мягких пород дерева|</xsl:text>
    <xsl:text>|062090102040|Из красного дерева|</xsl:text>
    <xsl:text>|062090103000|Из бруса|</xsl:text>
    <xsl:text>|062090104000|Из торцовой шашки|</xsl:text>
    <xsl:text>|062090105000|Ламинированные|</xsl:text>
    <xsl:text>|062090106000|Из плит ДВП|</xsl:text>
    <xsl:text>|062090107000|Из плит ДСП|</xsl:text>
    <xsl:text>|062090200000|Синтетические|</xsl:text>
    <xsl:text>|062090201000|Наливные|</xsl:text>
    <xsl:text>|062090202000|Плиточные|</xsl:text>
    <xsl:text>|062090203000|Рулонные|</xsl:text>
    <xsl:text>|062090300000|Керамические|</xsl:text>
    <xsl:text>|062090400000|Каменные|</xsl:text>
    <xsl:text>|062090500000|Из прочих материалов|</xsl:text>
    <xsl:text>|062090600000|Бетонные|</xsl:text>
    <xsl:text>|062090700000|Цементные|</xsl:text>
    <xsl:text>|062090800000|Металлические|</xsl:text>
    <xsl:text>|062090900000|Грунтовые|</xsl:text>
    <xsl:text>|062091000000|Асфальтобетонные|</xsl:text>
    <xsl:text>|062100000000|Заполнение проемов|</xsl:text>
    <xsl:text>|062100100000|Оконные блоки|</xsl:text>
    <xsl:text>|062100101000|Одинарные|</xsl:text>
    <xsl:text>|062100102000|Двойные|</xsl:text>
    <xsl:text>|062100103000|Тройные|</xsl:text>
    <xsl:text>|062100104000|Стеклопакет|</xsl:text>
    <xsl:text>|062100105000|Витражи|</xsl:text>
    <xsl:text>|062100106000|Ленточное сплошное остекление|</xsl:text>
    <xsl:text>|062100107000|Двойное остекление витрин|</xsl:text>
    <xsl:text>|062100200000|Материал заполнения|</xsl:text>
    <xsl:text>|062100201000|Дерево|</xsl:text>
    <xsl:text>|062100202000|Дерево твердолиственных пород|</xsl:text>
    <xsl:text>|062100203000|Металл|</xsl:text>
    <xsl:text>|062100204000|Пластик|</xsl:text>
    <xsl:text>|062110000000|Внутренняя отделка|</xsl:text>
    <xsl:text>|062110100000|Простая|</xsl:text>
    <xsl:text>|062110200000|Улучшенная|</xsl:text>
    <xsl:text>|062120000000|Архитектурное оформление фасада|</xsl:text>
    <xsl:text>|062120100000|Простое|</xsl:text>
    <xsl:text>|062120200000|Повышенной сложности|</xsl:text>
    <xsl:text>|062120300000|Сложное|</xsl:text>
    <xsl:text>|062130000000|Наружная отделка|</xsl:text>
    <xsl:text>|062130100000|Обшивка|</xsl:text>
    <xsl:text>|062130101000|Деревом|</xsl:text>
    <xsl:text>|062130102000|Асбестоцементными листами|</xsl:text>
    <xsl:text>|062130200000|Штукатурка|</xsl:text>
    <xsl:text>|062130300000|Окраска|</xsl:text>
    <xsl:text>|062130400000|Облицовка|</xsl:text>
    <xsl:text>|062130401000|Кирпичом|</xsl:text>
    <xsl:text>|062130402000|Природным камнем|</xsl:text>
    <xsl:text>|062130403000|Керамическими блоками|</xsl:text>
    <xsl:text>|062130404000|Керамическими плитками|</xsl:text>
    <xsl:text>|062130500000|Расшивка швов кладки|</xsl:text>
    <xsl:text>|062130600000|Отделочный слой панелей|</xsl:text>
    <xsl:text>|062140000000|Инженерные системы и элементы благоустройства|</xsl:text>
    <xsl:text>|062140100000|Отопление|</xsl:text>
    <xsl:text>|062140101000|Центральное водяное (паровое)|</xsl:text>
    <xsl:text>|062140102000|Автономное водяное (паровое)|</xsl:text>
    <xsl:text>|062140103000|Печное|</xsl:text>
    <xsl:text>|062140104000|Электрическое|</xsl:text>
    <xsl:text>|062140105000|Воздушное|</xsl:text>
    <xsl:text>|062140106000|Лучевое (инфракрасное)|</xsl:text>
    <xsl:text>|062140200000|Водопровод|</xsl:text>
    <xsl:text>|062140201000|От центральной сети|</xsl:text>
    <xsl:text>|062140202000|От местных источников|</xsl:text>
    <xsl:text>|062140300000|Канализация|</xsl:text>
    <xsl:text>|062140301000|Центральная|</xsl:text>
    <xsl:text>|062140302000|Местная|</xsl:text>
    <xsl:text>|062140400000|Горячее водоснабжение|</xsl:text>
    <xsl:text>|062140401000|Центральное|</xsl:text>
    <xsl:text>|062140402000|Местное|</xsl:text>
    <xsl:text>|062140500000|Пароснабжение|</xsl:text>
    <xsl:text>|062140600000|Газоснабжение|</xsl:text>
    <xsl:text>|062140601000|Сетевое|</xsl:text>
    <xsl:text>|062140601010|Центральное|</xsl:text>
    <xsl:text>|062140601020|Местное|</xsl:text>
    <xsl:text>|062140602000|Баллонное|</xsl:text>
    <xsl:text>|062140700000|Напольные электроплиты|</xsl:text>
    <xsl:text>|062140701000|Стационарные|</xsl:text>
    <xsl:text>|062140702000|Бытовые|</xsl:text>
    <xsl:text>|062140800000|Кухонные очаги|</xsl:text>
    <xsl:text>|062140900000|Электроснабжение|</xsl:text>
    <xsl:text>|062140901000|Центральное|</xsl:text>
    <xsl:text>|062140902000|Автономное|</xsl:text>
    <xsl:text>|062141000000|Телевидение|</xsl:text>
    <xsl:text>|062141100000|Радио|</xsl:text>
    <xsl:text>|062141200000|Телефон|</xsl:text>
    <xsl:text>|062141300000|Слаботочные устройства|</xsl:text>
    <xsl:text>|062141400000|Лифт|</xsl:text>
    <xsl:text>|062141401000|Встроенный|</xsl:text>
    <xsl:text>|062141401010|Грузовой|</xsl:text>
    <xsl:text>|062141401020|Пассажирский|</xsl:text>
    <xsl:text>|062141401030|Грузопассажирский|</xsl:text>
    <xsl:text>|062141402000|Пристроенный|</xsl:text>
    <xsl:text>|062141402010|Грузовой|</xsl:text>
    <xsl:text>|062141402020|Пассажирский|</xsl:text>
    <xsl:text>|062141402030|Грузопассажирский|</xsl:text>
    <xsl:text>|062141500000|Мусоропровод|</xsl:text>
    <xsl:text>|062141501000|В помещении|</xsl:text>
    <xsl:text>|062141502000|На лестничной клетке|</xsl:text>
    <xsl:text>|062141600000|Вентиляция|</xsl:text>
    <xsl:text>|062141601000|Вытяжная|</xsl:text>
    <xsl:text>|062141602000|Приточно-вытяжная|</xsl:text>
    <xsl:text>|062141700000|Кондиционирование|</xsl:text>
    <xsl:text>|062141701000|Центральное|</xsl:text>
    <xsl:text>|062141702000|Автономное|</xsl:text>
    <xsl:text>|062141800000|Газодымоудаление|</xsl:text>
    <xsl:text>|062141900000|Пылеудаление|</xsl:text>
    <xsl:text>|062150000000|Системы безопасности|</xsl:text>
    <xsl:text>|062150100000|Молние- и грозозащита|</xsl:text>
    <xsl:text>|062150200000|Система пожаротушения|</xsl:text>
    <xsl:text>|062150300000|Пожарная сигнализация|</xsl:text>
    <xsl:text>|062150400000|Охранная сигнализация|</xsl:text>
    <xsl:text>|062150500000|Охранно-пожарная сигнализация|</xsl:text>
    <xsl:text>|062150600000|Тревожная сигнализация (тревожная кнопка)|</xsl:text>
    <xsl:text>|062160000000|Прочие работы и конструктивные элементы строений|</xsl:text>
    <xsl:text>|062160100000|Балконы|</xsl:text>
    <xsl:text>|062160200000|Дымоотводы|</xsl:text>
    <xsl:text>|062160300000|Козырьки|</xsl:text>
    <xsl:text>|062160400000|Крыльца|</xsl:text>
    <xsl:text>|062160500000|Лестницы|</xsl:text>
    <xsl:text>|062160501000|Железобетонные|</xsl:text>
    <xsl:text>|062160502000|Металлические|</xsl:text>
    <xsl:text>|062160503000|Каменные|</xsl:text>
    <xsl:text>|062160504000|Деревянные|</xsl:text>
    <xsl:text>|062160600000|Подкрановые балки|</xsl:text>
    <xsl:text>|062160700000|Прочие работы|</xsl:text>
    <xsl:text>|062160800000|Брандмауэр|</xsl:text>
    <xsl:text>|062160900000|Входы|</xsl:text>
    <xsl:text>|062161000000|Лоджии|</xsl:text>
    <xsl:text>|062161100000|Пандус|</xsl:text>
    <xsl:text>|062161200000|Пожарные лестницы|</xsl:text>
  </xsl:template>
  <xsl:template name="dElements_Frame">
    <xsl:text>|FILE|dElements_Frame.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор конструктивных элементов сооружений|</xsl:text>
    <xsl:text>|063000000000|Конструкции сооружений|</xsl:text>
    <xsl:text>|063010000000|Основания сооружений|</xsl:text>
    <xsl:text>|063010100000|Земляное полотно|</xsl:text>
    <xsl:text>|063010101000|Вид земляного полотна|</xsl:text>
    <xsl:text>|063010101010|На промышленных площадках|</xsl:text>
    <xsl:text>|063010101020|Вне промышленных площадок|</xsl:text>
    <xsl:text>|063010101021|На перегоне|</xsl:text>
    <xsl:text>|063010101022|На раздельном пункте|</xsl:text>
    <xsl:text>|063010102000|Насыпь|</xsl:text>
    <xsl:text>|063010102010|Из мягкого грунта|</xsl:text>
    <xsl:text>|063010102020|Из скального грунта|</xsl:text>
    <xsl:text>|063010103000|Выемка|</xsl:text>
    <xsl:text>|063010103010|В мягком грунте|</xsl:text>
    <xsl:text>|063010103020|В скальном грунте|</xsl:text>
    <xsl:text>|063010200000|Постель|</xsl:text>
    <xsl:text>|063010201000|Каменная|</xsl:text>
    <xsl:text>|063010202000|Песчано-щебеночная|</xsl:text>
    <xsl:text>|063010203000|Гравийная|</xsl:text>
    <xsl:text>|063010204000|Песчаная|</xsl:text>
    <xsl:text>|063010300000|Основание|</xsl:text>
    <xsl:text>|063010301000|Щебеночное|</xsl:text>
    <xsl:text>|063010302000|Гравийное|</xsl:text>
    <xsl:text>|063010303000|Грунтовое|</xsl:text>
    <xsl:text>|063010304000|Деревянное|</xsl:text>
    <xsl:text>|063010305000|Бетонное|</xsl:text>
    <xsl:text>|063010306000|Железобетонное|</xsl:text>
    <xsl:text>|063010307000|Из стальных конструкций|</xsl:text>
    <xsl:text>|063010308000|Асфальтобетонное|</xsl:text>
    <xsl:text>|063020000000|Опоры сооружений|</xsl:text>
    <xsl:text>|063020100000|Опоры воздушных линий|</xsl:text>
    <xsl:text>|063020101000|Вид опор воздушной линии связи|</xsl:text>
    <xsl:text>|063020101010|Оконечные|</xsl:text>
    <xsl:text>|063020101020|Переходные|</xsl:text>
    <xsl:text>|063020101030|Промежуточные|</xsl:text>
    <xsl:text>|063020101040|Разрезные|</xsl:text>
    <xsl:text>|063020101050|Контрольные|</xsl:text>
    <xsl:text>|063020101060|Угловые|</xsl:text>
    <xsl:text>|063020101070|Комбинированные|</xsl:text>
    <xsl:text>|063020102000|Вид опор линии электропередачи|</xsl:text>
    <xsl:text>|063020102010|Промежуточные|</xsl:text>
    <xsl:text>|063020102011|Переходные|</xsl:text>
    <xsl:text>|063020102012|Транспозиционные|</xsl:text>
    <xsl:text>|063020102013|Ответвительные|</xsl:text>
    <xsl:text>|063020102020|Анкерно-угловые|</xsl:text>
    <xsl:text>|063020102021|Угловые|</xsl:text>
    <xsl:text>|063020102022|Концевые|</xsl:text>
    <xsl:text>|063020102030|Подставные столбы|</xsl:text>
    <xsl:text>|063020103000|Вид опор контактной сети|</xsl:text>
    <xsl:text>|063020103010|Промежуточные|</xsl:text>
    <xsl:text>|063020103020|Переходные|</xsl:text>
    <xsl:text>|063020103030|Фиксирующие|</xsl:text>
    <xsl:text>|063020103040|Консольные|</xsl:text>
    <xsl:text>|063020103041|Однопутные|</xsl:text>
    <xsl:text>|063020103042|Двухпутные|</xsl:text>
    <xsl:text>|063020103050|Анкерные стойки с подкосами|</xsl:text>
    <xsl:text>|063020103060|Опоры гибких поперечин|</xsl:text>
    <xsl:text>|063020103070|Опоры контактной сети трамвая (троллейбуса)|</xsl:text>
    <xsl:text>|063020104000|Вид стоек радиофикации фидерных|</xsl:text>
    <xsl:text>|063020104010|Оконечные|</xsl:text>
    <xsl:text>|063020104020|Однопарные|</xsl:text>
    <xsl:text>|063020104030|Двухпарные|</xsl:text>
    <xsl:text>|063020104040|Трехпарные|</xsl:text>
    <xsl:text>|063020104050|Четырехпарные|</xsl:text>
    <xsl:text>|063020104060|Шестипарные|</xsl:text>
    <xsl:text>|063020104070|Десятипарные|</xsl:text>
    <xsl:text>|063020105000|Тип опор воздушной линии связи|</xsl:text>
    <xsl:text>|063020105010|Одинарные|</xsl:text>
    <xsl:text>|063020105020|Сдвоенные|</xsl:text>
    <xsl:text>|063020105030|А-образные|</xsl:text>
    <xsl:text>|063020105040|Полуанкерные|</xsl:text>
    <xsl:text>|063020105050|Фидерные одностоечные|</xsl:text>
    <xsl:text>|063020105060|Фидерные двухстоечные|</xsl:text>
    <xsl:text>|063020105070|Фидерные трехстоечные|</xsl:text>
    <xsl:text>|063020105080|Фидерные нормальной высоты|</xsl:text>
    <xsl:text>|063020105090|Фидерные повышенной высоты|</xsl:text>
    <xsl:text>|063020106000|Тип опор линии электропередачи|</xsl:text>
    <xsl:text>|063020106010|Одностоечные|</xsl:text>
    <xsl:text>|063020106020|Двухстоечные|</xsl:text>
    <xsl:text>|063020106030|П-образные|</xsl:text>
    <xsl:text>|063020106040|П-образные с внутренними связями|</xsl:text>
    <xsl:text>|063020106050|С вибрированными стойками|</xsl:text>
    <xsl:text>|063020106060|С центифугированными стойками|</xsl:text>
    <xsl:text>|063020106070|С оттяжками|</xsl:text>
    <xsl:text>|063020106080|Свободностоящие|</xsl:text>
    <xsl:text>|063020107000|Тип опор контактной сети|</xsl:text>
    <xsl:text>|063020107010|Одиночные|</xsl:text>
    <xsl:text>|063020107020|Одиночные направленные|</xsl:text>
    <xsl:text>|063020107030|Одиночные ненаправленные|</xsl:text>
    <xsl:text>|063020107040|Сдвоенные|</xsl:text>
    <xsl:text>|063020107050|Анкерные|</xsl:text>
    <xsl:text>|063020107051|Одинарные|</xsl:text>
    <xsl:text>|063020107052|Сдвоенные|</xsl:text>
    <xsl:text>|063020107060|Без оттяжек|</xsl:text>
    <xsl:text>|063020107070|С оттяжками|</xsl:text>
    <xsl:text>|063020107080|В междупутье|</xsl:text>
    <xsl:text>|063020107090|Сбоку путей|</xsl:text>
    <xsl:text>|063020108000|Приставки опор|</xsl:text>
    <xsl:text>|063020108010|Одинарные|</xsl:text>
    <xsl:text>|063020108020|Двойные|</xsl:text>
    <xsl:text>|063020108030|Деревянные "ноги"|</xsl:text>
    <xsl:text>|063020108031|Одинарные|</xsl:text>
    <xsl:text>|063020108032|Двойные|</xsl:text>
    <xsl:text>|063020109000|Материал опор (приставок)|</xsl:text>
    <xsl:text>|063020109010|Железобетонные|</xsl:text>
    <xsl:text>|063020109020|Деревянные|</xsl:text>
    <xsl:text>|063020109030|Стальные|</xsl:text>
    <xsl:text>|063020109040|Стальные рельсовые|</xsl:text>
    <xsl:text>|063020109050|Фидерные шиферные|</xsl:text>
    <xsl:text>|063020109060|Фидерные из асбоцементных труб|</xsl:text>
    <xsl:text>|063020110000|Оттяжки опор и мачт|</xsl:text>
    <xsl:text>|063020110010|Одинарные|</xsl:text>
    <xsl:text>|063020110020|Двойные|</xsl:text>
    <xsl:text>|063020110030|Оттяжки мачт в один ярус|</xsl:text>
    <xsl:text>|063020110040|Оттяжки мачт в два яруса|</xsl:text>
    <xsl:text>|063020110050|На якоре|</xsl:text>
    <xsl:text>|063020110060|С оттяжной тумбой|</xsl:text>
    <xsl:text>|063020111000|Анкера опор|</xsl:text>
    <xsl:text>|063020111010|Деревянные с оттяжками|</xsl:text>
    <xsl:text>|063020111020|Бетонные|</xsl:text>
    <xsl:text>|063020111030|Железобетонные|</xsl:text>
    <xsl:text>|063020112000|Траверсы опор|</xsl:text>
    <xsl:text>|063020112010|Деревянные|</xsl:text>
    <xsl:text>|063020112011|Одинарные|</xsl:text>
    <xsl:text>|063020112012|Двойные|</xsl:text>
    <xsl:text>|063020112020|Стальные|</xsl:text>
    <xsl:text>|063020112021|Одинарные|</xsl:text>
    <xsl:text>|063020112022|Двойные|</xsl:text>
    <xsl:text>|063020112030|Из асбоцементных труб|</xsl:text>
    <xsl:text>|063020113000|Консоли опор контактной сети|</xsl:text>
    <xsl:text>|063020113010|Неизолированные|</xsl:text>
    <xsl:text>|063020113011|Однопутные|</xsl:text>
    <xsl:text>|063020113012|Двухпутные|</xsl:text>
    <xsl:text>|063020113020|Изолированные|</xsl:text>
    <xsl:text>|063020113021|Трубчатые оцинкованные|</xsl:text>
    <xsl:text>|063020113022|Швеллерные|</xsl:text>
    <xsl:text>|063020114000|Прочие элементы опорных конструкций|</xsl:text>
    <xsl:text>|063020114010|Кронштейны|</xsl:text>
    <xsl:text>|063020114011|Деревянные|</xsl:text>
    <xsl:text>|063020114012|Стальные|</xsl:text>
    <xsl:text>|063020114013|Железобетонные|</xsl:text>
    <xsl:text>|063020114020|Изоляторы|</xsl:text>
    <xsl:text>|063020114021|Штыревые|</xsl:text>
    <xsl:text>|063020114022|Подвесные|</xsl:text>
    <xsl:text>|063020114023|Секционные трехпроводные|</xsl:text>
    <xsl:text>|063020114030|Крюки|</xsl:text>
    <xsl:text>|063020114040|Штыри|</xsl:text>
    <xsl:text>|063020200000|Опоры прочих сооружений|</xsl:text>
    <xsl:text>|063020201000|Вид опор|</xsl:text>
    <xsl:text>|063020201010|Мостовые|</xsl:text>
    <xsl:text>|063020201020|Опоры эстакадные|</xsl:text>
    <xsl:text>|063020201030|Трубопроводные отдельностоящие|</xsl:text>
    <xsl:text>|063020201040|Опоры ограждений|</xsl:text>
    <xsl:text>|063020201050|Опоры прочих сооружений|</xsl:text>
    <xsl:text>|063020201060|Эстакада|</xsl:text>
    <xsl:text>|063020202000|Тип опор|</xsl:text>
    <xsl:text>|063020202010|Стоечные|</xsl:text>
    <xsl:text>|063020202020|Свайные|</xsl:text>
    <xsl:text>|063020202030|Рамные|</xsl:text>
    <xsl:text>|063020202040|Седловидные|</xsl:text>
    <xsl:text>|063020202050|Сборные|</xsl:text>
    <xsl:text>|063020202060|Монолитные|</xsl:text>
    <xsl:text>|063020202070|Одиночные|</xsl:text>
    <xsl:text>|063020202080|Сдвоенные|</xsl:text>
    <xsl:text>|063020203000|Материал опор|</xsl:text>
    <xsl:text>|063020203010|Железобетонные|</xsl:text>
    <xsl:text>|063020203020|Бетонные|</xsl:text>
    <xsl:text>|063020203030|Бутовые|</xsl:text>
    <xsl:text>|063020203040|Бутобетонные|</xsl:text>
    <xsl:text>|063020203050|Кирпичные|</xsl:text>
    <xsl:text>|063020203060|Стальные|</xsl:text>
    <xsl:text>|063020203070|Чугунные|</xsl:text>
    <xsl:text>|063020203080|Деревянные|</xsl:text>
    <xsl:text>|063020204000|Облицовка опор|</xsl:text>
    <xsl:text>|063020204010|Массивная гранитная грубой тески|</xsl:text>
    <xsl:text>|063020204020|Массивная гранитная чистой и получистой тески|</xsl:text>
    <xsl:text>|063020204030|Навесная гранитная грубой тески|</xsl:text>
    <xsl:text>|063020204040|Навесная гранитная чистой и получистой тески|</xsl:text>
    <xsl:text>|063020204050|Бетонные плиты|</xsl:text>
    <xsl:text>|063020204060|Керамическая плитка|</xsl:text>
    <xsl:text>|063030000000|Ограждающие конструкции сооружений|</xsl:text>
    <xsl:text>|063030100000|Железобетонные|</xsl:text>
    <xsl:text>|063030101000|Монолитные|</xsl:text>
    <xsl:text>|063030102000|Сборные|</xsl:text>
    <xsl:text>|063030200000|Бетонные|</xsl:text>
    <xsl:text>|063030201000|Монолитные|</xsl:text>
    <xsl:text>|063030202000|Сборные|</xsl:text>
    <xsl:text>|063030300000|Кирпичные|</xsl:text>
    <xsl:text>|063030400000|Стальные|</xsl:text>
    <xsl:text>|063030500000|Деревянные|</xsl:text>
    <xsl:text>|063040000000|Воздушные и подземные электрические сети и лини связи|</xsl:text>
    <xsl:text>|063040100000|Подвеска контактной сети|</xsl:text>
    <xsl:text>|063040101000|Железнодорожного пути|</xsl:text>
    <xsl:text>|063040101010|Цепная полукомпенсированная|</xsl:text>
    <xsl:text>|063040101020|Цепная компенсированная|</xsl:text>
    <xsl:text>|063040101030|Цепная эластичная|</xsl:text>
    <xsl:text>|063040101040|Жесткая|</xsl:text>
    <xsl:text>|063040101050|Армирование жестких поперечин|</xsl:text>
    <xsl:text>|063040101060|Поперечины гибкие|</xsl:text>
    <xsl:text>|063040101070|Поперечины жесткие|</xsl:text>
    <xsl:text>|063040102000|Трамвая (троллейбуса)|</xsl:text>
    <xsl:text>|063040102010|Продольно-цепная|</xsl:text>
    <xsl:text>|063040102020|Поперечно-цепная|</xsl:text>
    <xsl:text>|063040102030|Жесткая на кронштейнах|</xsl:text>
    <xsl:text>|063040200000|Несущие тросы подвесов воздушных линий|</xsl:text>
    <xsl:text>|063040201000|Из стального несущего троса|</xsl:text>
    <xsl:text>|063040202000|Из биметаллического несущего троса|</xsl:text>
    <xsl:text>|063040203000|Из медного несущего троса|</xsl:text>
    <xsl:text>|063040204000|Алюминиевые|</xsl:text>
    <xsl:text>|063040300000|Провода и кабели электрических сетей и линий связи|</xsl:text>
    <xsl:text>|063040301000|Провода воздушных линий|</xsl:text>
    <xsl:text>|063040301010|Стальные|</xsl:text>
    <xsl:text>|063040301020|Стальные многопроволочные|</xsl:text>
    <xsl:text>|063040301030|Алюминиевые|</xsl:text>
    <xsl:text>|063040301040|Сталеалюминевые|</xsl:text>
    <xsl:text>|063040301050|Медные|</xsl:text>
    <xsl:text>|063040301060|Бронзовые|</xsl:text>
    <xsl:text>|063040301070|Биметаллические|</xsl:text>
    <xsl:text>|063040301080|ПСБА|</xsl:text>
    <xsl:text>|063040301090|Контактный провод стальной|</xsl:text>
    <xsl:text>|063040301100|Провода усиливающие стальные|</xsl:text>
    <xsl:text>|063040301110|Провода сигнальные стальные|</xsl:text>
    <xsl:text>|063040301120|Питающая и отсасывающая сети трамвая (троллейбуса)|</xsl:text>
    <xsl:text>|063040302000|Кабель воздушный|</xsl:text>
    <xsl:text>|063040302010|Телефонный|</xsl:text>
    <xsl:text>|063040302020|Радиотрансляции|</xsl:text>
    <xsl:text>|063040302030|Сигнализации и блокировки|</xsl:text>
    <xsl:text>|063040303000|Кабель подземный|</xsl:text>
    <xsl:text>|063040303010|Электрический|</xsl:text>
    <xsl:text>|063040303020|Связи магистральный|</xsl:text>
    <xsl:text>|063040303030|Телефонный|</xsl:text>
    <xsl:text>|063040303040|Радиотрансляции|</xsl:text>
    <xsl:text>|063040303050|Электрической централизации|</xsl:text>
    <xsl:text>|063040303060|Сигнализации и блокировки|</xsl:text>
    <xsl:text>|063040303070|Автоблокировки|</xsl:text>
    <xsl:text>|063040303080|Сигнальный|</xsl:text>
    <xsl:text>|063040303090|Телефонный подводный|</xsl:text>
    <xsl:text>|063040400000|Арматура уличного освещения|</xsl:text>
    <xsl:text>|063040401000|Светильники|</xsl:text>
    <xsl:text>|063040402000|Прожекторы|</xsl:text>
    <xsl:text>|063040500000|Защитные устройства воздушных линий|</xsl:text>
    <xsl:text>|063040501000|Каскадная защита|</xsl:text>
    <xsl:text>|063040502000|Линейный молниеотвод|</xsl:text>
    <xsl:text>|063040503000|Высокочастотная защита линии электропередачи|</xsl:text>
    <xsl:text>|063040504000|Искровой разрядник|</xsl:text>
    <xsl:text>|063040505000|Разрядники|</xsl:text>
    <xsl:text>|063040506000|Разъединители секционные|</xsl:text>
    <xsl:text>|063040506010|Переменного тока|</xsl:text>
    <xsl:text>|063040506020|Постоянного тока|</xsl:text>
    <xsl:text>|063040507000|Заземление|</xsl:text>
    <xsl:text>|063040507010|Опор одиночное|</xsl:text>
    <xsl:text>|063040507020|Групповое из троса|</xsl:text>
    <xsl:text>|063040600000|Защитные устройства кабеля|</xsl:text>
    <xsl:text>|063040601000|Устройство электрохимической защиты|</xsl:text>
    <xsl:text>|063040602000|Контур заземления кабеля|</xsl:text>
    <xsl:text>|063040603000|Устройство грозозащиты кабеля|</xsl:text>
    <xsl:text>|063040604000|Компрессорно-сигнальная установка|</xsl:text>
    <xsl:text>|063040700000|Регулирующие устройства воздушных и кабельных сетей|</xsl:text>
    <xsl:text>|063040701000|Трансформатор|</xsl:text>
    <xsl:text>|063040702000|Автотрансформатор|</xsl:text>
    <xsl:text>|063040703000|Катушка|</xsl:text>
    <xsl:text>|063040704000|Комплект пупинизации линии связи|</xsl:text>
    <xsl:text>|063040705000|Контрольно-измерительный пункт|</xsl:text>
    <xsl:text>|063040800000|Прочие элементы воздушных и кабельных сетей|</xsl:text>
    <xsl:text>|063040801000|Воздушные стрелки контактной сети|</xsl:text>
    <xsl:text>|063040802000|Соединительные муфты кабельные|</xsl:text>
    <xsl:text>|063040803000|Коробка кабельная|</xsl:text>
    <xsl:text>|063040804000|Дорожное покрытие кабельной линии|</xsl:text>
    <xsl:text>|063040805000|Переход кабеля под дорогой|</xsl:text>
    <xsl:text>|063040806000|Оттяжки фиксирующие контактной сети|</xsl:text>
    <xsl:text>|063040807000|Воздушные вводы|</xsl:text>
    <xsl:text>|063040808000|Кабельные вводы|</xsl:text>
    <xsl:text>|063040809000|Кабельные вставки|</xsl:text>
    <xsl:text>|063040810000|Кабельные боксы|</xsl:text>
    <xsl:text>|063040811000|Кабельные ящики|</xsl:text>
    <xsl:text>|063040812000|Шкаф телефонный|</xsl:text>
    <xsl:text>|063040813000|Шкаф батарейный железобетонный|</xsl:text>
    <xsl:text>|063040814000|Кабина телефонная|</xsl:text>
    <xsl:text>|063040815000|Замерные столбики|</xsl:text>
    <xsl:text>|063040816000|Указательные и предупредительные знаки|</xsl:text>
    <xsl:text>|063040817000|Накладки|</xsl:text>
    <xsl:text>|063050000000|Трубопроводы|</xsl:text>
    <xsl:text>|063050100000|Вид трубопровода|</xsl:text>
    <xsl:text>|063050101000|Трубопровод|</xsl:text>
    <xsl:text>|063050102000|Водовод теплоснабжения|</xsl:text>
    <xsl:text>|063050103000|Паропровод|</xsl:text>
    <xsl:text>|063050104000|Конденсатопровод|</xsl:text>
    <xsl:text>|063050105000|Водовод водозабора|</xsl:text>
    <xsl:text>|063050106000|Трубопровод водоснабжения|</xsl:text>
    <xsl:text>|063050107000|Трубопровод поливочный|</xsl:text>
    <xsl:text>|063050108000|Трубопровод газоснабжения|</xsl:text>
    <xsl:text>|063050108010|Низкого давления|</xsl:text>
    <xsl:text>|063050108020|Среднего давления|</xsl:text>
    <xsl:text>|063050108030|Высокого давления|</xsl:text>
    <xsl:text>|063050109000|Газопровод|</xsl:text>
    <xsl:text>|063050110000|Нефтепровод|</xsl:text>
    <xsl:text>|063050111000|Продуктопровод|</xsl:text>
    <xsl:text>|063050112000|Переход трубопровода русловой части реки|</xsl:text>
    <xsl:text>|063050113000|Переход трубопровода пойменной части реки|</xsl:text>
    <xsl:text>|063050114000|Переход газопровода через водную преграду|</xsl:text>
    <xsl:text>|063050115000|Коллектор канализации|</xsl:text>
    <xsl:text>|063050116000|Трубопровод дренажный|</xsl:text>
    <xsl:text>|063050117000|Трубы оросительной сети|</xsl:text>
    <xsl:text>|063050118000|Трубопровод кабельный|</xsl:text>
    <xsl:text>|063050200000|Материал трубопровода|</xsl:text>
    <xsl:text>|063050201000|Из стальных труб|</xsl:text>
    <xsl:text>|063050202000|Из чугунных труб|</xsl:text>
    <xsl:text>|063050203000|Из бетонных сборных труб|</xsl:text>
    <xsl:text>|063050204000|Из бетонных монолитных труб|</xsl:text>
    <xsl:text>|063050205000|Из железобетонных напорных труб|</xsl:text>
    <xsl:text>|063050206000|Из железобетонных безнапорных труб|</xsl:text>
    <xsl:text>|063050207000|Из асбестоцементных труб|</xsl:text>
    <xsl:text>|063050208000|Из асбестоцементных безнапорных труб|</xsl:text>
    <xsl:text>|063050209000|Из керамических труб|</xsl:text>
    <xsl:text>|063050210000|Из композитных труб|</xsl:text>
    <xsl:text>|063050211000|Из полиэтиленовых труб|</xsl:text>
    <xsl:text>|063050300000|Запорное оборудование трубопроводов|</xsl:text>
    <xsl:text>|063050301000|Задвижка|</xsl:text>
    <xsl:text>|063050302000|Вентиль|</xsl:text>
    <xsl:text>|063050303000|Кран пробковый проходной|</xsl:text>
    <xsl:text>|063050304000|Гидравлический затвор|</xsl:text>
    <xsl:text>|063050305000|Противопожарный гидрант|</xsl:text>
    <xsl:text>|063050400000|Защита трубопроводов от электрокоррозии|</xsl:text>
    <xsl:text>|063050401000|Протекторная|</xsl:text>
    <xsl:text>|063050402000|Электроперемычки|</xsl:text>
    <xsl:text>|063050403000|Обычные электродренажи|</xsl:text>
    <xsl:text>|063050404000|Усиленные электродренажи|</xsl:text>
    <xsl:text>|063050405000|Поляризованный дренаж|</xsl:text>
    <xsl:text>|063050406000|Катодные станции|</xsl:text>
    <xsl:text>|063050407000|Контрольные пункты|</xsl:text>
    <xsl:text>|063050500000|Теплоизоляция трубопроводов|</xsl:text>
    <xsl:text>|063050501000|Сегментная|</xsl:text>
    <xsl:text>|063050502000|Оберточная|</xsl:text>
    <xsl:text>|063050503000|Набивная|</xsl:text>
    <xsl:text>|063050504000|Литая|</xsl:text>
    <xsl:text>|063050600000|Прочие элементы трубопроводов|</xsl:text>
    <xsl:text>|063050601000|Переход в стальных футлярах|</xsl:text>
    <xsl:text>|063050602000|Траншея с креплением|</xsl:text>
    <xsl:text>|063050603000|Подводная траншея|</xsl:text>
    <xsl:text>|063050604000|Попутный дренаж|</xsl:text>
    <xsl:text>|063050605000|Компенсатор стальной|</xsl:text>
    <xsl:text>|063050606000|Фасонные части|</xsl:text>
    <xsl:text>|063050607000|Колонка водоразборная|</xsl:text>
    <xsl:text>|063050608000|Фонтанчик питьевой|</xsl:text>
    <xsl:text>|063050609000|Вводы|</xsl:text>
    <xsl:text>|063050610000|Футеровка по изоляции рейками|</xsl:text>
    <xsl:text>|063050611000|Балластировка грузами|</xsl:text>
    <xsl:text>|063050612000|Створные знаки|</xsl:text>
    <xsl:text>|063050613000|Сборник конденсата|</xsl:text>
    <xsl:text>|063050614000|Контрольные трубки|</xsl:text>
    <xsl:text>|063050615000|Настенные указатели|</xsl:text>
    <xsl:text>|063060000000|Кабельная и трубопроводная канализация|</xsl:text>
    <xsl:text>|063060100000|Конструкции канализации|</xsl:text>
    <xsl:text>|063060101000|Вид канализации|</xsl:text>
    <xsl:text>|063060101010|Тоннель трубопроводный|</xsl:text>
    <xsl:text>|063060101020|Тоннель кабельный|</xsl:text>
    <xsl:text>|063060101030|Канал трубопроводный|</xsl:text>
    <xsl:text>|063060101040|Канал кабельный|</xsl:text>
    <xsl:text>|063060101050|Коллектор кабельный|</xsl:text>
    <xsl:text>|063060101060|Коллектор канализационный|</xsl:text>
    <xsl:text>|063060101070|Лоток водоотводный|</xsl:text>
    <xsl:text>|063060101080|Желоб для кабеля|</xsl:text>
    <xsl:text>|063060102000|Материал конструкций канализации|</xsl:text>
    <xsl:text>|063060102010|Каменные|</xsl:text>
    <xsl:text>|063060102020|Бетонные|</xsl:text>
    <xsl:text>|063060102030|Железобетонные|</xsl:text>
    <xsl:text>|063060102040|Кирпичные|</xsl:text>
    <xsl:text>|063060102050|Из керамических блоков|</xsl:text>
    <xsl:text>|063060102060|Деревянные|</xsl:text>
    <xsl:text>|063060200000|Колодцы смотровые, водоприемные, пожарные и пожарные|</xsl:text>
    <xsl:text>|063060201000|Вид колодца телефонного|</xsl:text>
    <xsl:text>|063060201010|Линейный|</xsl:text>
    <xsl:text>|063060201020|Стационарный|</xsl:text>
    <xsl:text>|063060202000|Тип колодца|</xsl:text>
    <xsl:text>|063060202010|Круглый|</xsl:text>
    <xsl:text>|063060202020|Прямоугольный|</xsl:text>
    <xsl:text>|063060202030|Шатровый|</xsl:text>
    <xsl:text>|063060203000|Конструкции колодца|</xsl:text>
    <xsl:text>|063060203010|Ствол колодца|</xsl:text>
    <xsl:text>|063060203011|Железобетонный|</xsl:text>
    <xsl:text>|063060203012|Бетонный|</xsl:text>
    <xsl:text>|063060203013|Кирпичный|</xsl:text>
    <xsl:text>|063060203020|Камера|</xsl:text>
    <xsl:text>|063060203021|Железобетонная|</xsl:text>
    <xsl:text>|063060203022|Бетонная|</xsl:text>
    <xsl:text>|063060203023|Кирпичная|</xsl:text>
    <xsl:text>|063060203030|Горловина|</xsl:text>
    <xsl:text>|063060203031|Железобетонная|</xsl:text>
    <xsl:text>|063060203032|Бетонная|</xsl:text>
    <xsl:text>|063060203040|Обечайка|</xsl:text>
    <xsl:text>|063060203041|Бетонная|</xsl:text>
    <xsl:text>|063060203042|Чугунная|</xsl:text>
    <xsl:text>|063060203050|Крышка люка чугунная|</xsl:text>
    <xsl:text>|063060300000|Прочие элементы кабельной и трубопроводной канализации|</xsl:text>
    <xsl:text>|063060301000|Опоры для трубопроводов|</xsl:text>
    <xsl:text>|063060301010|Стальные|</xsl:text>
    <xsl:text>|063060301020|Бетонные|</xsl:text>
    <xsl:text>|063060301030|Из кирпича|</xsl:text>
    <xsl:text>|063060302000|Запорная арматура|</xsl:text>
    <xsl:text>|063060302010|Стальная|</xsl:text>
    <xsl:text>|063060302020|Чугунная|</xsl:text>
    <xsl:text>|063060302030|Латунная|</xsl:text>
    <xsl:text>|063060303000|Фасонные части|</xsl:text>
    <xsl:text>|063060303010|Стальные|</xsl:text>
    <xsl:text>|063060303020|Чугунные|</xsl:text>
    <xsl:text>|063060304000|Гидроизоляция|</xsl:text>
    <xsl:text>|063060304010|Оклеечная|</xsl:text>
    <xsl:text>|063060304020|Обмазочная|</xsl:text>
    <xsl:text>|063060305000|Вентиляционные устройства|</xsl:text>
    <xsl:text>|063060306000|Смотровые люки|</xsl:text>
    <xsl:text>|063060307000|Монтажные окна|</xsl:text>
    <xsl:text>|063060308000|Решетки чугунные|</xsl:text>
    <xsl:text>|063060309000|Лотки бетонные|</xsl:text>
    <xsl:text>|063060310000|Лестницы стальные|</xsl:text>
    <xsl:text>|063070000000|Ограждения|</xsl:text>
    <xsl:text>|063070100000|Заполнение ограждения|</xsl:text>
    <xsl:text>|063070101000|Бетонное|</xsl:text>
    <xsl:text>|063070102000|Деревянное|</xsl:text>
    <xsl:text>|063070102010|Решетчатое|</xsl:text>
    <xsl:text>|063070102020|Сплошное|</xsl:text>
    <xsl:text>|063070103000|Стальное|</xsl:text>
    <xsl:text>|063070104000|Чугунная решетка|</xsl:text>
    <xsl:text>|063070200000|Охранный периметр ограждения|</xsl:text>
    <xsl:text>|063070201000|Колючая проволока на кронштейнах|</xsl:text>
    <xsl:text>|063070202000|Проволока под напряжением|</xsl:text>
    <xsl:text>|063070203000|Спираль из колючей проволоки|</xsl:text>
    <xsl:text>|063070204000|Стальная штыревая надстройка|</xsl:text>
    <xsl:text>|063080000000|Дорожные одежды, покрытия и замощения|</xsl:text>
    <xsl:text>|063080100000|Подготовка|</xsl:text>
    <xsl:text>|063080101000|Битумно-песчаная|</xsl:text>
    <xsl:text>|063080102000|Из бумаги, пропитанной битумом|</xsl:text>
    <xsl:text>|063080103000|Из стеклоткани|</xsl:text>
    <xsl:text>|063080104000|Переходная грунтово-щебеночная полоса|</xsl:text>
    <xsl:text>|063080200000|Подстилающий слой|</xsl:text>
    <xsl:text>|063080201000|Песчаный|</xsl:text>
    <xsl:text>|063080202000|Щебеночный|</xsl:text>
    <xsl:text>|063080203000|Гравийный|</xsl:text>
    <xsl:text>|063080204000|Из карьерной песчано-гравийной смеси|</xsl:text>
    <xsl:text>|063080205000|Из булыжного камня|</xsl:text>
    <xsl:text>|063080206000|Из колотого камня|</xsl:text>
    <xsl:text>|063080207000|Бетонный|</xsl:text>
    <xsl:text>|063080208000|Шлаковый|</xsl:text>
    <xsl:text>|063080209000|Строительный мусор|</xsl:text>
    <xsl:text>|063080300000|Покрытие|</xsl:text>
    <xsl:text>|063080301000|Вид покрытия|</xsl:text>
    <xsl:text>|063080301010|Однослойное|</xsl:text>
    <xsl:text>|063080301020|Двухслойное|</xsl:text>
    <xsl:text>|063080301030|Многослойное|</xsl:text>
    <xsl:text>|063080301040|Дорожное покрытие трамвайного пути|</xsl:text>
    <xsl:text>|063080301050|Дорожное покрытие трубопроводов|</xsl:text>
    <xsl:text>|063080301060|Дорожное покрытие кабеля|</xsl:text>
    <xsl:text>|063080302000|Материал покрытия|</xsl:text>
    <xsl:text>|063080302010|Бетонное|</xsl:text>
    <xsl:text>|063080302020|Железобетонное|</xsl:text>
    <xsl:text>|063080302030|Цементно-бетонное|</xsl:text>
    <xsl:text>|063080302040|Цементно-песчаное|</xsl:text>
    <xsl:text>|063080302050|Каменное|</xsl:text>
    <xsl:text>|063080302060|Асфальтобетонное|</xsl:text>
    <xsl:text>|063080302070|Асфальтовое|</xsl:text>
    <xsl:text>|063080302080|Щебеночное|</xsl:text>
    <xsl:text>|063080302090|Гравийное|</xsl:text>
    <xsl:text>|063080302100|Грунтовое|</xsl:text>
    <xsl:text>|063080302110|Деревянное|</xsl:text>
    <xsl:text>|063080302120|Гаревое|</xsl:text>
    <xsl:text>|063080302130|Тартановое|</xsl:text>
    <xsl:text>|063080302140|Из битого кирпича|</xsl:text>
    <xsl:text>|063080302150|Металлическое|</xsl:text>
    <xsl:text>|063080302160|На основе каучука|</xsl:text>
    <xsl:text>|063080400000|Прочие элементы дорожных одежд и замощений|</xsl:text>
    <xsl:text>|063080401000|Укрепительные полосы у кромок дорожной одежды|</xsl:text>
    <xsl:text>|063080401010|Щебеночные|</xsl:text>
    <xsl:text>|063080401020|Цементно-бетонные|</xsl:text>
    <xsl:text>|063080402000|Крепление обочин|</xsl:text>
    <xsl:text>|063080402010|Щебеночное|</xsl:text>
    <xsl:text>|063080402020|Гравийное|</xsl:text>
    <xsl:text>|063080402030|Мощеные подзоры|</xsl:text>
    <xsl:text>|063080402040|Отмостки|</xsl:text>
    <xsl:text>|063080403000|Асфальтовое усиление покрытия|</xsl:text>
    <xsl:text>|063080403010|Верхний слой|</xsl:text>
    <xsl:text>|063080403020|Нижний слой|</xsl:text>
    <xsl:text>|063080403030|Сопряжения|</xsl:text>
    <xsl:text>|063080404000|Армирование покрытия|</xsl:text>
    <xsl:text>|063080404010|Каркас|</xsl:text>
    <xsl:text>|063080404020|Сетка|</xsl:text>
    <xsl:text>|063080404030|Высокопрочная проволока|</xsl:text>
    <xsl:text>|063080404040|Штыревые соединения плит|</xsl:text>
    <xsl:text>|063090000000|Водопропуск и водоотвод|</xsl:text>
    <xsl:text>|063090100000|Трубы водопропускные|</xsl:text>
    <xsl:text>|063090101000|Овоидальные из монолитного железобетона|</xsl:text>
    <xsl:text>|063090102000|Сборные железобетонные|</xsl:text>
    <xsl:text>|063090103000|Из железобетонных блоков|</xsl:text>
    <xsl:text>|063090104000|Бетонные|</xsl:text>
    <xsl:text>|063090105000|Каменные|</xsl:text>
    <xsl:text>|063090106000|Металлические|</xsl:text>
    <xsl:text>|063090107000|Деревянные|</xsl:text>
    <xsl:text>|063090200000|Оголовки труб водопропускных|</xsl:text>
    <xsl:text>|063090201000|Бетонные|</xsl:text>
    <xsl:text>|063090202000|Бутовые|</xsl:text>
    <xsl:text>|063090203000|Бутобетонные|</xsl:text>
    <xsl:text>|063090204000|Металлические|</xsl:text>
    <xsl:text>|063090205000|Деревянные|</xsl:text>
    <xsl:text>|063090300000|Лотки водопропускные|</xsl:text>
    <xsl:text>|063090301000|Вид лотков|</xsl:text>
    <xsl:text>|063090301010|Кюветные|</xsl:text>
    <xsl:text>|063090301020|Междупутные|</xsl:text>
    <xsl:text>|063090301030|Под железнодорожными путями|</xsl:text>
    <xsl:text>|063090301040|Междушпальные|</xsl:text>
    <xsl:text>|063090302000|Материал лотков|</xsl:text>
    <xsl:text>|063090302010|Железобетонные|</xsl:text>
    <xsl:text>|063090302020|Бетонные|</xsl:text>
    <xsl:text>|063090302030|Деревянные|</xsl:text>
    <xsl:text>|063090400000|Быстротоки железобетонные|</xsl:text>
    <xsl:text>|063090500000|Водобойные колодцы железобетонные|</xsl:text>
    <xsl:text>|063090600000|Дюкеры железобетонные|</xsl:text>
    <xsl:text>|063090700000|Сифонные водосбросы железобетонные|</xsl:text>
    <xsl:text>|063090800000|Селеспуск|</xsl:text>
    <xsl:text>|063090900000|Подкюветный дренаж|</xsl:text>
    <xsl:text>|063091000000|Насыпь фильтрующая|</xsl:text>
    <xsl:text>|063091100000|Поперечные осушительные полосы|</xsl:text>
    <xsl:text>|063091200000|Прочие элементы водопропускных сооружений|</xsl:text>
    <xsl:text>|063091201000|Крепление бъефа оголовков|</xsl:text>
    <xsl:text>|063091201010|Бетонными плитами|</xsl:text>
    <xsl:text>|063091201020|Двойным каменным мощением|</xsl:text>
    <xsl:text>|063091201030|Гравийное|</xsl:text>
    <xsl:text>|063091202000|Гидроизоляция|</xsl:text>
    <xsl:text>|063091203000|Металлоконструкции|</xsl:text>
    <xsl:text>|063091204000|Засыпка песчаная|</xsl:text>
    <xsl:text>|063091205000|Подушки щебеночные|</xsl:text>
    <xsl:text>|063100000000|Крепление берега, откосов, кюветов и канав|</xsl:text>
    <xsl:text>|063100100000|Планировка откоса|</xsl:text>
    <xsl:text>|063100200000|Подготовка под одежду крепления|</xsl:text>
    <xsl:text>|063100201000|Каменная постель|</xsl:text>
    <xsl:text>|063100202000|Щебень|</xsl:text>
    <xsl:text>|063100203000|Гравий|</xsl:text>
    <xsl:text>|063100204000|Песок|</xsl:text>
    <xsl:text>|063100205000|Раствор|</xsl:text>
    <xsl:text>|063100206000|Солома|</xsl:text>
    <xsl:text>|063100300000|Обратный фильтр|</xsl:text>
    <xsl:text>|063100301000|Щебеночный|</xsl:text>
    <xsl:text>|063100302000|Гравийный|</xsl:text>
    <xsl:text>|063100303000|Песчаный|</xsl:text>
    <xsl:text>|063100400000|Одежда крепления|</xsl:text>
    <xsl:text>|063100401000|Каменная|</xsl:text>
    <xsl:text>|063100401010|Каменная наброска|</xsl:text>
    <xsl:text>|063100401020|Каменная отсыпка|</xsl:text>
    <xsl:text>|063100401030|Каменный банкет|</xsl:text>
    <xsl:text>|063100401040|Каменное мощение|</xsl:text>
    <xsl:text>|063100401050|Подводная упорная призма|</xsl:text>
    <xsl:text>|063100401060|Щебеночная наброска|</xsl:text>
    <xsl:text>|063100402000|Бетонная|</xsl:text>
    <xsl:text>|063100402010|Тетраподы|</xsl:text>
    <xsl:text>|063100402020|Облегченные бетонные массивы|</xsl:text>
    <xsl:text>|063100402030|Железобетонные заанкеренные сваи|</xsl:text>
    <xsl:text>|063100402040|Армированные железобетонные плиты|</xsl:text>
    <xsl:text>|063100402050|Грибковое покрытие из железобетонных плит|</xsl:text>
    <xsl:text>|063100402060|Бетонная облицовка|</xsl:text>
    <xsl:text>|063100402070|Бетонные плиты|</xsl:text>
    <xsl:text>|063100402080|Анкерные упоры|</xsl:text>
    <xsl:text>|063100402090|Парапет|</xsl:text>
    <xsl:text>|063100403000|Хворостяная|</xsl:text>
    <xsl:text>|063100404000|Плетневые клетки|</xsl:text>
    <xsl:text>|063100405000|Габионная кладка|</xsl:text>
    <xsl:text>|063100406000|Одерновка|</xsl:text>
    <xsl:text>|063100500000|Стенка подпорная|</xsl:text>
    <xsl:text>|063100501000|Бутовая|</xsl:text>
    <xsl:text>|063100502000|Бутобетонная|</xsl:text>
    <xsl:text>|063100503000|Бетонная|</xsl:text>
    <xsl:text>|063100504000|Железобетонная|</xsl:text>
    <xsl:text>|063100600000|Галерея противообвальная|</xsl:text>
    <xsl:text>|063100700000|Лестничные сходы|</xsl:text>
    <xsl:text>|063100701000|Лестничные площадки железобетонные|</xsl:text>
    <xsl:text>|063100702000|Диафрагмы и ступени железобетонные|</xsl:text>
    <xsl:text>|063100703000|Дорожки асфальтобетонные|</xsl:text>
    <xsl:text>|063110000000|Железнодорожные и трамвайные пути|</xsl:text>
    <xsl:text>|063110100000|Вид въезда на внутреннем железнодорожном пути|</xsl:text>
    <xsl:text>|063110101000|При путевом развитии, не оборудованном устройствами централизации|</xsl:text>
    <xsl:text>|063110102000|На бункерные эстакады|</xsl:text>
    <xsl:text>|063110103000|На приемные ямы|</xsl:text>
    <xsl:text>|063110104000|При путевом развитии, оборудованном устройствами централизации|</xsl:text>
    <xsl:text>|063110105000|У переезда, не оборудованного устройствами автоматической сигнализации|</xsl:text>
    <xsl:text>|063110106000|При совмещении железнодорожного и автодорожного въездов|</xsl:text>
    <xsl:text>|063110200000|Балласт|</xsl:text>
    <xsl:text>|063110201000|Вид балласта|</xsl:text>
    <xsl:text>|063110201010|С открытым балластным слоем|</xsl:text>
    <xsl:text>|063110201020|С заглубленным балластным слоем|</xsl:text>
    <xsl:text>|063110202000|Материал балласта|</xsl:text>
    <xsl:text>|063110202010|Асбестовый|</xsl:text>
    <xsl:text>|063110202020|Из карьерного гравия|</xsl:text>
    <xsl:text>|063110202030|Из сортированного гравия|</xsl:text>
    <xsl:text>|063110202040|Песчаный|</xsl:text>
    <xsl:text>|063110202050|Из щебня|</xsl:text>
    <xsl:text>|063110202060|Из металлургического шлака|</xsl:text>
    <xsl:text>|063110300000|Рельсовый путь|</xsl:text>
    <xsl:text>|063110301000|Шпалы|</xsl:text>
    <xsl:text>|063110301010|Деревянные|</xsl:text>
    <xsl:text>|063110301020|Железобетонные|</xsl:text>
    <xsl:text>|063110302000|Рельсы со скреплениями|</xsl:text>
    <xsl:text>|063110303000|Соединители рельсовые|</xsl:text>
    <xsl:text>|063110304000|Глухие пересечения|</xsl:text>
    <xsl:text>|063110305000|Стрелочные переводы|</xsl:text>
    <xsl:text>|063110306000|Перекрестные съезды|</xsl:text>
    <xsl:text>|063120000000|Мостовые пролетные сооружения и тоннели|</xsl:text>
    <xsl:text>|063120100000|Вид и материал пролетного строения|</xsl:text>
    <xsl:text>|063120101000|Железобетонное|</xsl:text>
    <xsl:text>|063120102000|Металлическое|</xsl:text>
    <xsl:text>|063120103000|Деревянное|</xsl:text>
    <xsl:text>|063120104000|Каменное|</xsl:text>
    <xsl:text>|063120105000|Смешанное|</xsl:text>
    <xsl:text>|063120105010|Железобетонное и кирпичное|</xsl:text>
    <xsl:text>|063120105020|Железобетонное и стальное|</xsl:text>
    <xsl:text>|063120200000|Конструкции пролетного строения|</xsl:text>
    <xsl:text>|063120201000|Траверсы|</xsl:text>
    <xsl:text>|063120201010|Железобетонные|</xsl:text>
    <xsl:text>|063120201020|Стальные|</xsl:text>
    <xsl:text>|063120202000|Прогоны железобетонные|</xsl:text>
    <xsl:text>|063120203000|Ригели железобетонные|</xsl:text>
    <xsl:text>|063120204000|Настил железобетонный сборный|</xsl:text>
    <xsl:text>|063120205000|Плиты прохожей части железобетонные|</xsl:text>
    <xsl:text>|063120206000|Мостовое железнодорожное полотно|</xsl:text>
    <xsl:text>|063120206010|На балласте|</xsl:text>
    <xsl:text>|063120206020|На железобетонной плите без балласта|</xsl:text>
    <xsl:text>|063120206030|На деревянных мостовых брусьях|</xsl:text>
    <xsl:text>|063120206040|На металлических поперечинах|</xsl:text>
    <xsl:text>|063120207000|Покрытие проезжей части|</xsl:text>
    <xsl:text>|063120207010|Асфальтобетонное|</xsl:text>
    <xsl:text>|063120207020|Бетонное|</xsl:text>
    <xsl:text>|063120208000|Конструкции тротуаров железобетонные|</xsl:text>
    <xsl:text>|063120209000|Покрытие прохожей части асфальтовое|</xsl:text>
    <xsl:text>|063120210000|Ограждение пролетов|</xsl:text>
    <xsl:text>|063120210010|Бетонное|</xsl:text>
    <xsl:text>|063120210020|Стальное|</xsl:text>
    <xsl:text>|063120210030|Чугунное|</xsl:text>
    <xsl:text>|063120210040|Деревянные|</xsl:text>
    <xsl:text>|063120210050|Бордюрный камень|</xsl:text>
    <xsl:text>|063120300000|Элементы наплавных мостов|</xsl:text>
    <xsl:text>|063120301000|Металлические понтоны|</xsl:text>
    <xsl:text>|063120302000|Рамно-свайная эстакада|</xsl:text>
    <xsl:text>|063120303000|Шатровые ледорезы|</xsl:text>
    <xsl:text>|063120304000|Электролебедка|</xsl:text>
    <xsl:text>|063120400000|Элементы тоннелей и переходов|</xsl:text>
    <xsl:text>|063120401000|Обделка ствола тоннеля|</xsl:text>
    <xsl:text>|063120401010|Чугунная|</xsl:text>
    <xsl:text>|063120401020|Бетонная|</xsl:text>
    <xsl:text>|063120401030|Железобетонная|</xsl:text>
    <xsl:text>|063120402000|Пандус тоннеля железобетонный|</xsl:text>
    <xsl:text>|063120403000|Сходы|</xsl:text>
    <xsl:text>|063120403010|Ступени сходов гранитные|</xsl:text>
    <xsl:text>|063120403020|Цоколь сходов гранитный|</xsl:text>
    <xsl:text>|063120404000|Шахта с подъемником бетонная|</xsl:text>
    <xsl:text>|063120405000|Будка над шахтой тоннеля|</xsl:text>
    <xsl:text>|063120405010|Кирпичная|</xsl:text>
    <xsl:text>|063120405020|Бетонная|</xsl:text>
    <xsl:text>|063120406000|Павильон над сходами|</xsl:text>
    <xsl:text>|063120407000|Противопожарные устройства ствола тоннеля|</xsl:text>
    <xsl:text>|063120408000|Гидроизоляция ствола оклеечная|</xsl:text>
    <xsl:text>|063120409000|Гидроизоляция рампы оклеечная|</xsl:text>
    <xsl:text>|063120500000|Прочие элементы мостов|</xsl:text>
    <xsl:text>|063120501000|Башни подъемного пролета|</xsl:text>
    <xsl:text>|063120502000|Подъемный пролет|</xsl:text>
    <xsl:text>|063120503000|Оборудование и механизмы подъемного пролета|</xsl:text>
    <xsl:text>|063120504000|Автопроезды на железнодорожных мостах|</xsl:text>
    <xsl:text>|063120505000|Площадки, лестницы|</xsl:text>
    <xsl:text>|063120505010|Стальные|</xsl:text>
    <xsl:text>|063120505020|Бетонные|</xsl:text>
    <xsl:text>|063120600000|Прочие элементы платформ|</xsl:text>
    <xsl:text>|063120601000|Пандус железобетонный|</xsl:text>
    <xsl:text>|063120602000|Лестничные сходы железобетонные|</xsl:text>
    <xsl:text>|063120603000|Подпорная стенка железобетонная сборная|</xsl:text>
    <xsl:text>|063120604000|Грунтовая засыпка|</xsl:text>
    <xsl:text>|063120605000|Дренирующий грунт|</xsl:text>
    <xsl:text>|063130000000|Оборудование и обстановка железнодорожного пути|</xsl:text>
    <xsl:text>|063130100000|Переезд через железнодорожный путь|</xsl:text>
    <xsl:text>|063130101000|Тип переезда|</xsl:text>
    <xsl:text>|063130101010|Без пропуска воды|</xsl:text>
    <xsl:text>|063130101020|С пропуском воды с одной стороны|</xsl:text>
    <xsl:text>|063130101030|С пропуском воды с двух сторон|</xsl:text>
    <xsl:text>|063130102000|Конструкции переезда|</xsl:text>
    <xsl:text>|063130102010|Настил|</xsl:text>
    <xsl:text>|063130102011|Деревянный|</xsl:text>
    <xsl:text>|063130102012|Из железобетонных плит|</xsl:text>
    <xsl:text>|063130102013|Металлический|</xsl:text>
    <xsl:text>|063130102020|Шлагбаум механизированный|</xsl:text>
    <xsl:text>|063130103000|Ограждение переезда|</xsl:text>
    <xsl:text>|063130103010|Ограда|</xsl:text>
    <xsl:text>|063130103011|Деревянная|</xsl:text>
    <xsl:text>|063130103012|Стальная|</xsl:text>
    <xsl:text>|063130103013|Железобетонная|</xsl:text>
    <xsl:text>|063130103020|Столбики бетонные|</xsl:text>
    <xsl:text>|063130103030|Перила|</xsl:text>
    <xsl:text>|063130103031|Деревянные|</xsl:text>
    <xsl:text>|063130103032|Стальные|</xsl:text>
    <xsl:text>|063130103033|Железобетонные|</xsl:text>
    <xsl:text>|063130200000|Устройства автоматической блокировки|</xsl:text>
    <xsl:text>|063130201000|Консоли светофорные металлические|</xsl:text>
    <xsl:text>|063130202000|Мостики светофорные на железобетонных опорах|</xsl:text>
    <xsl:text>|063130300000|Устройство автоматической сигнализации|</xsl:text>
    <xsl:text>|063130301000|На переезде|</xsl:text>
    <xsl:text>|063130302000|На въезде|</xsl:text>
    <xsl:text>|063130303000|При пересечении людских потоков|</xsl:text>
    <xsl:text>|063130400000|Устройства централизации|</xsl:text>
    <xsl:text>|063130401000|Устройства электроключевой зависимости стрелок|</xsl:text>
    <xsl:text>|063130402000|Устройства электрической централизации стрелок|</xsl:text>
    <xsl:text>|063130500000|Тяговые устройства|</xsl:text>
    <xsl:text>|063130501000|Столбики опорные железобетонные|</xsl:text>
    <xsl:text>|063130502000|Шкивы с основаниями и фундаментами|</xsl:text>
    <xsl:text>|063130503000|Тяги гибкие сигнальные|</xsl:text>
    <xsl:text>|063130504000|Тяги гибкие или стрелочные|</xsl:text>
    <xsl:text>|063130505000|Желоба для гибких тяг|</xsl:text>
    <xsl:text>|063130600000|Путевая защита и принадлежности пути|</xsl:text>
    <xsl:text>|063130601000|Знак путевой|</xsl:text>
    <xsl:text>|063130601010|На железобетонном столбе|</xsl:text>
    <xsl:text>|063130601020|На деревянном столбе|</xsl:text>
    <xsl:text>|063130602000|Знак сигнальный|</xsl:text>
    <xsl:text>|063130602010|На железобетонном столбе|</xsl:text>
    <xsl:text>|063130602020|На деревянном столбе|</xsl:text>
    <xsl:text>|063130603000|Упоры путевые|</xsl:text>
    <xsl:text>|063130603010|Железобетонные|</xsl:text>
    <xsl:text>|063130603020|Металлические|</xsl:text>
    <xsl:text>|063130603030|Деревянные|</xsl:text>
    <xsl:text>|063130604000|Переводные брусья|</xsl:text>
    <xsl:text>|063130605000|Откидные брусья|</xsl:text>
    <xsl:text>|063130606000|Противоугоны|</xsl:text>
    <xsl:text>|063130607000|Приборы уравнительные|</xsl:text>
    <xsl:text>|063130608000|Башмакосбрасыватели|</xsl:text>
    <xsl:text>|063140000000|Обстановка автомобильной дороги|</xsl:text>
    <xsl:text>|063140100000|Дорожные автомобильные знаки|</xsl:text>
    <xsl:text>|063140101000|Предупреждающие|</xsl:text>
    <xsl:text>|063140102000|Запрещающие|</xsl:text>
    <xsl:text>|063140103000|Указательные|</xsl:text>
    <xsl:text>|063140104000|Километровые|</xsl:text>
    <xsl:text>|063140200000|Маршрутные указатели|</xsl:text>
    <xsl:text>|063140300000|Дорожные указатели со щитами|</xsl:text>
    <xsl:text>|063140400000|Дорожные сигнальные знаки|</xsl:text>
    <xsl:text>|063140401000|Железобетонные|</xsl:text>
    <xsl:text>|063140402000|Деревянные|</xsl:text>
    <xsl:text>|063140500000|Дорожные путевые знаки|</xsl:text>
    <xsl:text>|063140501000|Железобетонные|</xsl:text>
    <xsl:text>|063140502000|Деревянные|</xsl:text>
    <xsl:text>|063140600000|Ограждение дороги|</xsl:text>
    <xsl:text>|063140601000|Металлическое типа ОРУД|</xsl:text>
    <xsl:text>|063140602000|Криволинейным брусом|</xsl:text>
    <xsl:text>|063140603000|Перила деревянные|</xsl:text>
    <xsl:text>|063140604000|Тумбы ограждения|</xsl:text>
    <xsl:text>|063140604010|Железобетонные|</xsl:text>
    <xsl:text>|063140604020|Деревянные|</xsl:text>
    <xsl:text>|063140605000|Парапеты|</xsl:text>
    <xsl:text>|063140605010|Каменные|</xsl:text>
    <xsl:text>|063140605020|Бетонные|</xsl:text>
    <xsl:text>|063140606000|Бетонные бортовые камни|</xsl:text>
    <xsl:text>|063150000000|Емкости, хранилища, заглубленные сооружения|</xsl:text>
    <xsl:text>|063150100000|Цистерна металлическая|</xsl:text>
    <xsl:text>|063150101000|Вертикальная|</xsl:text>
    <xsl:text>|063150102000|Горизонтальная|</xsl:text>
    <xsl:text>|063150200000|Мазутохранилище|</xsl:text>
    <xsl:text>|063150300000|Насосная|</xsl:text>
    <xsl:text>|063150400000|Надземная часть железобетонная|</xsl:text>
    <xsl:text>|063150500000|Колодец бетонный|</xsl:text>
    <xsl:text>|063150600000|Горловина бетонная|</xsl:text>
    <xsl:text>|063150700000|Расходный вентиль|</xsl:text>
    <xsl:text>|063160000000|Мачты и башни|</xsl:text>
    <xsl:text>|063160100000|Ствол|</xsl:text>
    <xsl:text>|063160101000|Из дерева|</xsl:text>
    <xsl:text>|063160102000|Из кирпича|</xsl:text>
    <xsl:text>|063160103000|Из прочих местных материалов|</xsl:text>
    <xsl:text>|063160104000|Из железобетона|</xsl:text>
    <xsl:text>|063160105000|Из асбоцементных труб|</xsl:text>
    <xsl:text>|063160106000|Из стальных труб|</xsl:text>
    <xsl:text>|063160107000|Из круглой стали|</xsl:text>
    <xsl:text>|063160108000|Из прокатного профиля|</xsl:text>
    <xsl:text>|063160109000|Из угловой стали|</xsl:text>
    <xsl:text>|063160110000|Из листовой стали|</xsl:text>
    <xsl:text>|063160200000|Оборудование|</xsl:text>
    <xsl:text>|063160201000|Лифт пассажирский|</xsl:text>
    <xsl:text>|063160202000|Освещение сигнальное|</xsl:text>
    <xsl:text>|063160202010|Светильник сигнального освещения|</xsl:text>
    <xsl:text>|063160202020|Трансформатор СОМ малоемкостной|</xsl:text>
    <xsl:text>|063160203000|Траверсы для синфазных антенн|</xsl:text>
    <xsl:text>|063160204000|Изоляторы оттяжечного типа|</xsl:text>
    <xsl:text>|063160205000|Молниеприемник|</xsl:text>
    <xsl:text>|063160205010|Стержневой|</xsl:text>
    <xsl:text>|063160205020|Тросовый|</xsl:text>
    <xsl:text>|063160206000|Токоотвод|</xsl:text>
    <xsl:text>|063160207000|Контур заземления|</xsl:text>
    <xsl:text>|063170000000|Антенно-фидерные устройства|</xsl:text>
    <xsl:text>|063170100000|Антенная система мачты (башни)|</xsl:text>
    <xsl:text>|063170101000|Для тропосферной связи|</xsl:text>
    <xsl:text>|063170102000|Для ионосферной связи|</xsl:text>
    <xsl:text>|063170200000|Тип фидера|</xsl:text>
    <xsl:text>|063170201000|Для коротковолновых антенн|</xsl:text>
    <xsl:text>|063170202000|Для антенн средних и длинных волн|</xsl:text>
    <xsl:text>|063170203000|Концентрический|</xsl:text>
    <xsl:text>|063170300000|Полотно антенное|</xsl:text>
    <xsl:text>|063170301000|Из четырех диполей|</xsl:text>
    <xsl:text>|063170302000|Промежуточное кранное|</xsl:text>
    <xsl:text>|063170400000|Прочие элементы АФУ|</xsl:text>
    <xsl:text>|063170401000|Передатчик|</xsl:text>
    <xsl:text>|063170402000|Трансформатор фидерный экспоненциальный|</xsl:text>
    <xsl:text>|063170403000|Леерные уравновешивающие канаты антенн|</xsl:text>
    <xsl:text>|063170404000|Заземление фидерной линии|</xsl:text>
    <xsl:text>|063180000000|Сооружения водоснабжения|</xsl:text>
    <xsl:text>|063180100000|Каналы, водоводы водозабора|</xsl:text>
    <xsl:text>|063180101000|Профильная выемка канала|</xsl:text>
    <xsl:text>|063180102000|Канал закрытый|</xsl:text>
    <xsl:text>|063180102010|Железобетонный|</xsl:text>
    <xsl:text>|063180102020|Бетонный|</xsl:text>
    <xsl:text>|063180103000|Оголовок водозабора|</xsl:text>
    <xsl:text>|063180103010|Сваи основания оголовка|</xsl:text>
    <xsl:text>|063180103011|Деревянные|</xsl:text>
    <xsl:text>|063180103012|Железобетонные|</xsl:text>
    <xsl:text>|063180103020|Раструб оголовка|</xsl:text>
    <xsl:text>|063180103021|Деревянный|</xsl:text>
    <xsl:text>|063180103022|Железобетонный|</xsl:text>
    <xsl:text>|063180103023|Бетонный|</xsl:text>
    <xsl:text>|063180103030|Ряж оголовка деревянный|</xsl:text>
    <xsl:text>|063180103040|Направляющая рама оголовка стальная|</xsl:text>
    <xsl:text>|063180103050|Решетка оголовка стальная|</xsl:text>
    <xsl:text>|063180103060|Каменная загрузка оголовка|</xsl:text>
    <xsl:text>|063180103070|Каменная обсыпка оголовка|</xsl:text>
    <xsl:text>|063180200000|Скважины артезианские|</xsl:text>
    <xsl:text>|063180201000|Труба обсадная стальная|</xsl:text>
    <xsl:text>|063180202000|Насосная установка|</xsl:text>
    <xsl:text>|063180203000|Фильтр|</xsl:text>
    <xsl:text>|063180300000|Колодцы питьевые|</xsl:text>
    <xsl:text>|063180301000|Ствол|</xsl:text>
    <xsl:text>|063180301010|Из борных железобетонных колец|</xsl:text>
    <xsl:text>|063180301020|Деревянный рубленый|</xsl:text>
    <xsl:text>|063180301030|Дощатый|</xsl:text>
    <xsl:text>|063180302000|Будка|</xsl:text>
    <xsl:text>|063180302010|Деревянная|</xsl:text>
    <xsl:text>|063180302020|Металлическая|</xsl:text>
    <xsl:text>|063180303000|Оголовок|</xsl:text>
    <xsl:text>|063180303010|Железобетонный|</xsl:text>
    <xsl:text>|063180303020|Деревянный|</xsl:text>
    <xsl:text>|063180304000|Фильтр|</xsl:text>
    <xsl:text>|063180304010|Песчаный|</xsl:text>
    <xsl:text>|063180304020|Щебеночный|</xsl:text>
    <xsl:text>|063180304030|Гравийный|</xsl:text>
    <xsl:text>|063180400000|Башни водонапорные|</xsl:text>
    <xsl:text>|063180401000|Ствол|</xsl:text>
    <xsl:text>|063180401010|Железобетонный|</xsl:text>
    <xsl:text>|063180401020|Кирпичный|</xsl:text>
    <xsl:text>|063180401030|Деревянный рубленый|</xsl:text>
    <xsl:text>|063180401040|Стальной|</xsl:text>
    <xsl:text>|063180402000|Шатер|</xsl:text>
    <xsl:text>|063180402010|Деревянный из брусьев|</xsl:text>
    <xsl:text>|063180402020|Кирпичный|</xsl:text>
    <xsl:text>|063180402030|Из легкобетонных блоков|</xsl:text>
    <xsl:text>|063180402040|Металлический|</xsl:text>
    <xsl:text>|063180403000|Бак|</xsl:text>
    <xsl:text>|063180403010|Стальной|</xsl:text>
    <xsl:text>|063180403020|Железобетонный|</xsl:text>
    <xsl:text>|063180404000|Прочие элементы башни|</xsl:text>
    <xsl:text>|063180404010|Утеплитель|</xsl:text>
    <xsl:text>|063180404020|Антикоррозионное покрытие бака|</xsl:text>
    <xsl:text>|063180404030|Лестницы и площадки|</xsl:text>
    <xsl:text>|063180404040|Трубопроводы стальные|</xsl:text>
    <xsl:text>|063180405000|Резервуар|</xsl:text>
    <xsl:text>|063180405010|Железобетонный|</xsl:text>
    <xsl:text>|063180405020|Металлический|</xsl:text>
    <xsl:text>|063180406000|Фильтры железобетонные|</xsl:text>
    <xsl:text>|063190000000|Элементы очистных сооружений|</xsl:text>
    <xsl:text>|063190100000|Камеры и колодцы|</xsl:text>
    <xsl:text>|063190101000|Железобетонные|</xsl:text>
    <xsl:text>|063190102000|Бетонные|</xsl:text>
    <xsl:text>|063190200000|Лотки|</xsl:text>
    <xsl:text>|063190201000|Железобетонные|</xsl:text>
    <xsl:text>|063190202000|Бетонные|</xsl:text>
    <xsl:text>|063190300000|Иловые камеры|</xsl:text>
    <xsl:text>|063190301000|Железобетонные|</xsl:text>
    <xsl:text>|063190302000|Бетонные|</xsl:text>
    <xsl:text>|063190400000|Каналы|</xsl:text>
    <xsl:text>|063190401000|Железобетонные|</xsl:text>
    <xsl:text>|063190402000|Бетонные|</xsl:text>
    <xsl:text>|063190500000|Бункеры|</xsl:text>
    <xsl:text>|063190501000|Железобетонные|</xsl:text>
    <xsl:text>|063190502000|Бетонные|</xsl:text>
    <xsl:text>|063190600000|Венткамера|</xsl:text>
    <xsl:text>|063190601000|Железобетонная|</xsl:text>
    <xsl:text>|063190602000|Бетонная|</xsl:text>
    <xsl:text>|063190700000|Воздуховоды|</xsl:text>
    <xsl:text>|063190701000|Стальные|</xsl:text>
    <xsl:text>|063190702000|Бетонные|</xsl:text>
    <xsl:text>|063190800000|Распределительные чаши|</xsl:text>
    <xsl:text>|063190801000|Железобетонные|</xsl:text>
    <xsl:text>|063190802000|Бетонные|</xsl:text>
    <xsl:text>|063190900000|Жиросборник|</xsl:text>
    <xsl:text>|063190901000|Железобетонный|</xsl:text>
    <xsl:text>|063190902000|Бетонный|</xsl:text>
    <xsl:text>|063191000000|Иловая площадка|</xsl:text>
    <xsl:text>|063191100000|Биофильтр|</xsl:text>
    <xsl:text>|063191200000|Ороситель|</xsl:text>
    <xsl:text>|063191201000|Из асбоцементных листов|</xsl:text>
    <xsl:text>|063191202000|Из деревянных щитов|</xsl:text>
    <xsl:text>|063191300000|Прочие элементы очистных сооружений|</xsl:text>
    <xsl:text>|063191301000|Внутренние трубопроводы|</xsl:text>
    <xsl:text>|063191302000|Наружные трубопроводы|</xsl:text>
    <xsl:text>|063191303000|Будка|</xsl:text>
    <xsl:text>|063191304000|Загрузка фильтров и дренажа|</xsl:text>
    <xsl:text>|063191305000|Септик|</xsl:text>
    <xsl:text>|063191306000|Песколовка|</xsl:text>
    <xsl:text>|063191307000|Трубопроводы и воздуховоды аэротенка|</xsl:text>
    <xsl:text>|063191308000|Фасонные части стальные|</xsl:text>
    <xsl:text>|063191309000|Фильтроносные пластины|</xsl:text>
    <xsl:text>|063191310000|Теплоизоляционная стенка|</xsl:text>
    <xsl:text>|063191311000|Гидроизоляция|</xsl:text>
    <xsl:text>|063191312000|Колосниковые решетки железобетонные|</xsl:text>
    <xsl:text>|063191313000|Настил дощатый|</xsl:text>
    <xsl:text>|063191314000|Стулья, шиберы и щиты деревянные|</xsl:text>
    <xsl:text>|063191315000|Загрузка щебнем|</xsl:text>
    <xsl:text>|063191316000|Грунтовая обваловка|</xsl:text>
    <xsl:text>|063200000000|Гидротехнические и водохозяйственные сооружения|</xsl:text>
    <xsl:text>|063200100000|Земляные работы|</xsl:text>
    <xsl:text>|063200101000|Выемка|</xsl:text>
    <xsl:text>|063200102000|Насыпь|</xsl:text>
    <xsl:text>|063200102010|Напорная|</xsl:text>
    <xsl:text>|063200102020|Безнапорная|</xsl:text>
    <xsl:text>|063200103000|Полувыемка|</xsl:text>
    <xsl:text>|063200104000|Полунасыпь|</xsl:text>
    <xsl:text>|063200105000|Выравнивающий слой|</xsl:text>
    <xsl:text>|063200105010|Из щебня|</xsl:text>
    <xsl:text>|063200105020|Из гравия|</xsl:text>
    <xsl:text>|063200106000|Противофильтрационная глиняная подушка|</xsl:text>
    <xsl:text>|063200107000|Обратный фильтр|</xsl:text>
    <xsl:text>|063200107010|Из щебня|</xsl:text>
    <xsl:text>|063200107020|Из гравия|</xsl:text>
    <xsl:text>|063200107030|Из песка|</xsl:text>
    <xsl:text>|063200108000|Застойный дренаж|</xsl:text>
    <xsl:text>|063200200000|Корневая часть сооружения|</xsl:text>
    <xsl:text>|063200201000|Из монолитного бетона|</xsl:text>
    <xsl:text>|063200202000|Насыпь из рефулированного грунта|</xsl:text>
    <xsl:text>|063200203000|Тюфяк из хвороста|</xsl:text>
    <xsl:text>|063200204000|Крепление тюфяка|</xsl:text>
    <xsl:text>|063200300000|Подводная часть сооружения|</xsl:text>
    <xsl:text>|063200301000|Из сборных железобетонных блоков|</xsl:text>
    <xsl:text>|063200302000|Каменная наброска|</xsl:text>
    <xsl:text>|063200303000|Каменная отсыпь|</xsl:text>
    <xsl:text>|063200304000|Каменная кладка|</xsl:text>
    <xsl:text>|063200305000|Бутобетонная кладка|</xsl:text>
    <xsl:text>|063200306000|Из массивовой кладки|</xsl:text>
    <xsl:text>|063200307000|Из рефулированного грунта|</xsl:text>
    <xsl:text>|063200400000|Надводная часть сооружения|</xsl:text>
    <xsl:text>|063200401000|Из монолитного бетона|</xsl:text>
    <xsl:text>|063200402000|Из монолитного армированного бетона|</xsl:text>
    <xsl:text>|063200403000|Из сборных железобетонных блоков|</xsl:text>
    <xsl:text>|063200404000|Из массивовой кладки|</xsl:text>
    <xsl:text>|063200405000|Из массивов гигантов|</xsl:text>
    <xsl:text>|063200406000|Тонкостенные железобетонные конструкции|</xsl:text>
    <xsl:text>|063200407000|Бутобетонная|</xsl:text>
    <xsl:text>|063200408000|Каменная наброска|</xsl:text>
    <xsl:text>|063200409000|Каменная отсыпь|</xsl:text>
    <xsl:text>|063200410000|Каменная кладка|</xsl:text>
    <xsl:text>|063200411000|Глинобетонные конструкции|</xsl:text>
    <xsl:text>|063200412000|Из рефулированного грунта|</xsl:text>
    <xsl:text>|063200413000|Из хворостяных тюфяков|</xsl:text>
    <xsl:text>|063200413010|Из хвороста|</xsl:text>
    <xsl:text>|063200413020|Прошивка сваями|</xsl:text>
    <xsl:text>|063200413030|Пригрузка камнем|</xsl:text>
    <xsl:text>|063200414000|Прижимные брусья деревянные|</xsl:text>
    <xsl:text>|063200415000|Оттяжки металлические|</xsl:text>
    <xsl:text>|063200500000|Ограждающая стенка|</xsl:text>
    <xsl:text>|063200501000|Из монолитного железобетона|</xsl:text>
    <xsl:text>|063200502000|Из монолитного бетона|</xsl:text>
    <xsl:text>|063200503000|Из железобетонных плит|</xsl:text>
    <xsl:text>|063200504000|Из железобетонного шпунта|</xsl:text>
    <xsl:text>|063200505000|Из свай-оболочек|</xsl:text>
    <xsl:text>|063200506000|Из труб-оболочек|</xsl:text>
    <xsl:text>|063200507000|Из сборных оболочек большого диаметра|</xsl:text>
    <xsl:text>|063200508000|Из стального шпунта|</xsl:text>
    <xsl:text>|063200509000|Из стальных труб|</xsl:text>
    <xsl:text>|063200510000|Из правильной массивовой кладки|</xsl:text>
    <xsl:text>|063200511000|Из деревянного брусчатого шпунта|</xsl:text>
    <xsl:text>|063200512000|Контрфорсы железобетонные|</xsl:text>
    <xsl:text>|063200513000|Анкерное устройство|</xsl:text>
    <xsl:text>|063200513010|Железобетонные плиты|</xsl:text>
    <xsl:text>|063200513020|Железобетонные сваи|</xsl:text>
    <xsl:text>|063200513030|Стальной шпунт|</xsl:text>
    <xsl:text>|063200513040|Стальные анкерные тяги|</xsl:text>
    <xsl:text>|063200513050|Плита из деревянных пластин|</xsl:text>
    <xsl:text>|063200513060|Козловые деревянные сваи|</xsl:text>
    <xsl:text>|063200600000|Заполнение надводных частей сооружений|</xsl:text>
    <xsl:text>|063200601000|Бетонное|</xsl:text>
    <xsl:text>|063200602000|Каменное ядро|</xsl:text>
    <xsl:text>|063200603000|Каменная разгрузочная призма|</xsl:text>
    <xsl:text>|063200604000|Песчаная засыпка|</xsl:text>
    <xsl:text>|063200700000|Верхнее строение сооружения|</xsl:text>
    <xsl:text>|063200701000|Каменное|</xsl:text>
    <xsl:text>|063200702000|Бетонное|</xsl:text>
    <xsl:text>|063200703000|Железобетонное|</xsl:text>
    <xsl:text>|063200704000|Стальные балки|</xsl:text>
    <xsl:text>|063200705000|Деревянное|</xsl:text>
    <xsl:text>|063200705010|Деревянные балки|</xsl:text>
    <xsl:text>|063200705020|Прогоны|</xsl:text>
    <xsl:text>|063200705030|Лежни|</xsl:text>
    <xsl:text>|063200705040|Насадки|</xsl:text>
    <xsl:text>|063200705050|Фахбаумы|</xsl:text>
    <xsl:text>|063200705060|Деревянные ряжи|</xsl:text>
    <xsl:text>|063200705070|Полы дощатые|</xsl:text>
    <xsl:text>|063200706000|Покрытие|</xsl:text>
    <xsl:text>|063200706010|Деревянный настил|</xsl:text>
    <xsl:text>|063200706020|Цементно-бетонное|</xsl:text>
    <xsl:text>|063200707000|Надстройка железобетонная монолитная|</xsl:text>
    <xsl:text>|063200708000|Пал железобетонный|</xsl:text>
    <xsl:text>|063200709000|Бычки железобетонные|</xsl:text>
    <xsl:text>|063200710000|Шапочный брус железобетонный|</xsl:text>
    <xsl:text>|063200711000|Перильное ограждение|</xsl:text>
    <xsl:text>|063200712000|Отбойные устройства|</xsl:text>
    <xsl:text>|063200713000|Швартовные устройства|</xsl:text>
    <xsl:text>|063200800000|Перегораживающие и регулирующие конструкции и устройства|</xsl:text>
    <xsl:text>|063200801000|Плотина|</xsl:text>
    <xsl:text>|063200801010|Земляная|</xsl:text>
    <xsl:text>|063200801020|Ячеистая из железобетонных блоков|</xsl:text>
    <xsl:text>|063200801030|Монолитная бетонная|</xsl:text>
    <xsl:text>|063200801040|Бетонная с бутобетонным флютбетом|</xsl:text>
    <xsl:text>|063200801050|Из бутовой кладки|</xsl:text>
    <xsl:text>|063200801060|Каменно-набросная|</xsl:text>
    <xsl:text>|063200801070|Деревянная|</xsl:text>
    <xsl:text>|063200801080|Смешанная|</xsl:text>
    <xsl:text>|063200802000|Струенаправляющая дамба каменная|</xsl:text>
    <xsl:text>|063200803000|Водосбросы|</xsl:text>
    <xsl:text>|063200803010|Бетонные|</xsl:text>
    <xsl:text>|063200803020|Железобетонные|</xsl:text>
    <xsl:text>|063200803030|Каменные|</xsl:text>
    <xsl:text>|063200804000|Водовыпуски|</xsl:text>
    <xsl:text>|063200804010|Бетонные|</xsl:text>
    <xsl:text>|063200804020|Железобетонные|</xsl:text>
    <xsl:text>|063200804030|Каменные|</xsl:text>
    <xsl:text>|063200804040|Деревянные|</xsl:text>
    <xsl:text>|063200805000|Флюгбет|</xsl:text>
    <xsl:text>|063200805010|Бетонный|</xsl:text>
    <xsl:text>|063200805020|Железобетонный|</xsl:text>
    <xsl:text>|063200806000|Затворы с подъемниками|</xsl:text>
    <xsl:text>|063200806010|Стальные|</xsl:text>
    <xsl:text>|063200806020|Деревянные|</xsl:text>
    <xsl:text>|063200807000|Ворота запорные деревянные|</xsl:text>
    <xsl:text>|063200807010|Ригельные|</xsl:text>
    <xsl:text>|063200807020|Стоечные|</xsl:text>
    <xsl:text>|063200900000|Прочие элементы гидротехнических сооружений|</xsl:text>
    <xsl:text>|063200901000|Переходной мостик|</xsl:text>
    <xsl:text>|063200902000|Подъемная платформа|</xsl:text>
    <xsl:text>|063200903000|Сопряжение с берегом|</xsl:text>
    <xsl:text>|063200904000|Сопряжение с набережной|</xsl:text>
    <xsl:text>|063200905000|Стальные диафрагмы|</xsl:text>
    <xsl:text>|063200906000|Надолбы|</xsl:text>
    <xsl:text>|063200906010|Бетонные|</xsl:text>
    <xsl:text>|063200906020|Каменные|</xsl:text>
    <xsl:text>|063210000000|Электротехническое оборудование|</xsl:text>
    <xsl:text>|063210100000|Комплектные трансформаторные подстанции|</xsl:text>
    <xsl:text>|063210101000|Вид КТП|</xsl:text>
    <xsl:text>|063210101010|Однотрансформаторная|</xsl:text>
    <xsl:text>|063210101020|Двухтрансформаторная|</xsl:text>
    <xsl:text>|063210102000|Вид трансформатора|</xsl:text>
    <xsl:text>|063210102010|Силовой|</xsl:text>
    <xsl:text>|063210102020|Собственных нужд|</xsl:text>
    <xsl:text>|063210102030|Автотрансформатор силовой|</xsl:text>
    <xsl:text>|063210102040|Шунтирующий реактор|</xsl:text>
    <xsl:text>|063210103000|Пуско-регулирующие устройства|</xsl:text>
    <xsl:text>|063210103010|Предохранители|</xsl:text>
    <xsl:text>|063210103020|Отделители|</xsl:text>
    <xsl:text>|063210103030|Короткозамыкатели|</xsl:text>
    <xsl:text>|063210103040|Перемычка "Н"|</xsl:text>
    <xsl:text>|063210103050|Выключатель|</xsl:text>
    <xsl:text>|063210103060|Пружинный привод|</xsl:text>
    <xsl:text>|063210103070|Разрядник|</xsl:text>
    <xsl:text>|063210104000|Прочие элементы КТП|</xsl:text>
    <xsl:text>|063210104010|Порталы|</xsl:text>
    <xsl:text>|063210104020|Шкафы отводящих линий|</xsl:text>
    <xsl:text>|063210104030|Шкафы ввода|</xsl:text>
    <xsl:text>|063210104040|Заземление|</xsl:text>
    <xsl:text>|063210200000|Трансформаторы и автотрансформаторы силовые|</xsl:text>
    <xsl:text>|063210201000|Трансформатор силовой|</xsl:text>
    <xsl:text>|063210202000|Автотрансформатор силовой|</xsl:text>
    <xsl:text>|063210203000|Вольтодобавочный трансформатор|</xsl:text>
    <xsl:text>|063210204000|Шинопроводы трансформаторных порталов|</xsl:text>
    <xsl:text>|063210205000|Шинный мост|</xsl:text>
    <xsl:text>|063210206000|Ошиновки|</xsl:text>
    <xsl:text>|063210207000|Конструкции гибких связей|</xsl:text>
    <xsl:text>|063210208000|Кабельные каналы|</xsl:text>
    <xsl:text>|063210209000|Установки пожаротушения|</xsl:text>
    <xsl:text>|063210210000|Противопожарные стенки|</xsl:text>
    <xsl:text>|063210300000|Комплектные распределительные устройства|</xsl:text>
    <xsl:text>|063210301000|Шкаф|</xsl:text>
    <xsl:text>|063210302000|Отходящие линии|</xsl:text>
    <xsl:text>|063210303000|Кабельные каналы|</xsl:text>
    <xsl:text>|063210304000|Заземление|</xsl:text>
    <xsl:text>|063210400000|Открытые распределительные устройства|</xsl:text>
    <xsl:text>|063210401000|Тип ОРУ|</xsl:text>
    <xsl:text>|063210401010|Блочной схемы|</xsl:text>
    <xsl:text>|063210401020|Блочной и мостиковой схемы|</xsl:text>
    <xsl:text>|063210401030|Кольцевой схемы|</xsl:text>
    <xsl:text>|063210401040|Со сборными шинами|</xsl:text>
    <xsl:text>|063210401050|С выключателями|</xsl:text>
    <xsl:text>|063210402000|Ячейки ОРУ|</xsl:text>
    <xsl:text>|063210402010|Ячейка автотрансформатора по схеме "Шины - трансформатор"|</xsl:text>
    <xsl:text>|063210402020|Ячейка обходного выключателя|</xsl:text>
    <xsl:text>|063210402030|Ячейка секционного выключателя|</xsl:text>
    <xsl:text>|063210402040|Ячейка отходящей линии по схеме "Шины-трансформатор"|</xsl:text>
    <xsl:text>|063210402050|Ячейка отходящей линии, силового трансформатора и выключателей|</xsl:text>
    <xsl:text>|063210402060|Ячейка с разрядниками без разъединителей|</xsl:text>
    <xsl:text>|063210402070|Ячейка с разрядниками, присоединяемыми через разъединитель|</xsl:text>
    <xsl:text>|063210402080|Ячейка с трансформаторами и разрядниками|</xsl:text>
    <xsl:text>|063210402090|Ячейка силового трансформатора с отделителем|</xsl:text>
    <xsl:text>|063210402100|Ячейка трансформаторов напряжения|</xsl:text>
    <xsl:text>|063220000000|Прочие сооружения|</xsl:text>
    <xsl:text>|063220100000|Дымовые трубы|</xsl:text>
    <xsl:text>|063220101000|Зольный бункер|</xsl:text>
    <xsl:text>|063220101010|Бетонный|</xsl:text>
    <xsl:text>|063220101020|Кирпичный|</xsl:text>
    <xsl:text>|063220102000|Ствол дымовой трубы|</xsl:text>
    <xsl:text>|063220102010|Бетонный|</xsl:text>
    <xsl:text>|063220102020|Кирпичный|</xsl:text>
    <xsl:text>|063220102030|Стальной|</xsl:text>
    <xsl:text>|063220103000|Оттяжки стальные|</xsl:text>
    <xsl:text>|063220104000|Лестница стальная|</xsl:text>
    <xsl:text>|063220105000|Грозозащита|</xsl:text>
    <xsl:text>|063220106000|Светоограждение|</xsl:text>
    <xsl:text>|063220200000|Паромные переправы|</xsl:text>
    <xsl:text>|063220201000|Паром|</xsl:text>
    <xsl:text>|063220202000|Благоустройство территории|</xsl:text>
    <xsl:text>|063220203000|Павильоны|</xsl:text>
    <xsl:text>|063220204000|Хозяйственный сарай|</xsl:text>
    <xsl:text>|063220205000|Лебедочная|</xsl:text>
    <xsl:text>|063220206000|Уборная|</xsl:text>
    <xsl:text>|063220207000|Бычки|</xsl:text>
    <xsl:text>|063220208000|Опора подъемного моста|</xsl:text>
    <xsl:text>|063220209000|Подъемный мост|</xsl:text>
    <xsl:text>|063220210000|Берегоукрепление|</xsl:text>
    <xsl:text>|063220211000|Пирс для пассажиров|</xsl:text>
    <xsl:text>|063220212000|Пешеходные мостики|</xsl:text>
    <xsl:text>|063220300000|Установки газоснабжения|</xsl:text>
    <xsl:text>|063220301000|Шкаф металлический|</xsl:text>
    <xsl:text>|063220302000|Резервуар|</xsl:text>
    <xsl:text>|063220303000|Баллоны|</xsl:text>
    <xsl:text>|063220304000|Регуляторы давления газа|</xsl:text>
    <xsl:text>|063220305000|Диафрагмы|</xsl:text>
    <xsl:text>|063220306000|Трубная обвязка|</xsl:text>
    <xsl:text>|063220307000|Предохранительные клапаны|</xsl:text>
    <xsl:text>|063220308000|Запорная арматура|</xsl:text>
    <xsl:text>|063220309000|Теплоизоляция|</xsl:text>
    <xsl:text>|063220400000|Бассейны|</xsl:text>
    <xsl:text>|063220401000|Розетки бассейна железобетонные монолитные|</xsl:text>
    <xsl:text>|063220402000|Система наполнения и спуска воды|</xsl:text>
    <xsl:text>|063220402010|Насос|</xsl:text>
    <xsl:text>|063220402020|Трубопровод стальной|</xsl:text>
    <xsl:text>|063220402030|Задвижка|</xsl:text>
    <xsl:text>|063220402040|Вентиль|</xsl:text>
    <xsl:text>|063220402050|Фильтр|</xsl:text>
    <xsl:text>|063230000000|Прочие конструкции и элементы сооружений|</xsl:text>
    <xsl:text>|063230100000|Путевой дренаж с засыпкой|</xsl:text>
    <xsl:text>|063230200000|Площадки и лестницы|</xsl:text>
    <xsl:text>|063230300000|Колодцы смотровые|</xsl:text>
    <xsl:text>|063230400000|Запорно-ругулирующие устройства|</xsl:text>
    <xsl:text>|063230500000|Газоходы|</xsl:text>
    <xsl:text>|063230600000|Эстакады|</xsl:text>
    <xsl:text>|063230700000|Резервуары|</xsl:text>
    <xsl:text>|063230800000|Гидроизоляция|</xsl:text>
    <xsl:text>|063230900000|Теплоизоляция|</xsl:text>
    <xsl:text>|063231000000|Железобетонные конструкции|</xsl:text>
    <xsl:text>|063231100000|Металлоконструкции|</xsl:text>
    <xsl:text>|063231200000|Деревянные конструкции|</xsl:text>
    <xsl:text>|063231300000|Каменные конструкции|</xsl:text>
    <xsl:text>|063231400000|Обваловка грунтом|</xsl:text>
    <xsl:text>|063231500000|Подушки щебеночные|</xsl:text>
    <xsl:text>|063231600000|Засыпка песчаная|</xsl:text>
    <xsl:text>|063231700000|Земляные работы|</xsl:text>
  </xsl:template>
  <xsl:template name="dGeopoint_Opred">
    <xsl:text>|FILE|dGeopoint_Opred.xsd|</xsl:text>
    <xsl:text>|NAME|Способы определения точки|</xsl:text>
    <xsl:text>|001|Спутниковый (GPS-технология)|</xsl:text>
    <xsl:text>|002|Навигационного построения|</xsl:text>
    <xsl:text>|003|Триангуляция|</xsl:text>
    <xsl:text>|004|Полигонометрия|</xsl:text>
    <xsl:text>|005|Геодезический|</xsl:text>
    <xsl:text>|006|Фотограмметрия|</xsl:text>
    <xsl:text>|007|Ручной картометрический|</xsl:text>
    <xsl:text>|008|Цифровой картометрический|</xsl:text>
    <xsl:text>|009|Другие|</xsl:text>
  </xsl:template>
  <xsl:template name="dGeopoint_Zacrep">
    <xsl:text>|FILE|dGeopoint_Zacrep.xsd|</xsl:text>
    <xsl:text>|NAME|Виды закрепления точки|</xsl:text>
    <xsl:text>|026001000000|Уголок (металлический)|</xsl:text>
    <xsl:text>|026002000000|Труба (металлическая, асбоцементная, бетонная)|</xsl:text>
    <xsl:text>|026003000000|Пилон (железобетонный)|</xsl:text>
    <xsl:text>|026004000000|Столб (деревянный, бетонный, кирпичный)|</xsl:text>
    <xsl:text>|026005000000|Угол забора (изгороди, ограды, металлической сеткой)|</xsl:text>
    <xsl:text>|026006000000|Угол здания (сооружения)|</xsl:text>
    <xsl:text>|026007000000|Примыкание забора к зданию|</xsl:text>
    <xsl:text>|026008000000|Марка, дюбель, штырь на горизонтальной поверхности|</xsl:text>
    <xsl:text>|026009000000|Марка, дюбель, метал. штырь на вертикальной поверхности|</xsl:text>
    <xsl:text>|026010000000|Угол поребрика|</xsl:text>
    <xsl:text>|026012000000|Швеллер (Т-образный, металлический)|</xsl:text>
    <xsl:text>|026013000000|Маркировка на здании (сооружении, заборе)|</xsl:text>
    <xsl:text>|026014000000|Штырь, арматура, стержень|</xsl:text>
    <xsl:text>|026015000000|Иные способы закрепления границ|</xsl:text>
    <xsl:text>|026016000000|Нет закрепления|</xsl:text>
  </xsl:template>
  <xsl:template name="dGeopoint_OpredCP">
    <xsl:text>|FILE|dGeopoint_Opred.xsd|</xsl:text>
    <xsl:text>|NAME|Способы определения характерных точек|</xsl:text>
    <xsl:text>|692001000000|Геодезический|</xsl:text>
    <xsl:text>|692002000000|Фотограмметрия|</xsl:text>
    <xsl:text>|692003000000|Картометрический|</xsl:text>
    <xsl:text>|692004000000|Иное описание|</xsl:text>
  </xsl:template>
  <xsl:template name="dGeopoint_Zacrep03">
    <xsl:text>|FILE|dGeopoint_Zacrep.xsd|</xsl:text>
    <xsl:text>|NAME|Способы закрепления точек границы на местности|</xsl:text>
    <xsl:text>|626001000000|Долговременный межевой знак|</xsl:text>
    <xsl:text>|626002000000|Временный межевой знак|</xsl:text>
    <xsl:text>|626003000000|Закрепление отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dGovernance">
    <xsl:text>|FILE|dGovernance.xsd|</xsl:text>
    <xsl:text>|NAME|Виды правообладателей|</xsl:text>
    <xsl:text>|007001000000|Публичное образование|</xsl:text>
    <xsl:text>|007001001000|Российская Федерация, субъект Российской федерации или муниципальное образование|</xsl:text>
    <xsl:text>|007001001001|Российская Федерация|</xsl:text>
    <xsl:text>|007001001002|Субъект Российской Федерации|</xsl:text>
    <xsl:text>|007001002000|Иностранное государство|</xsl:text>
    <xsl:text>|007001003000|Владельцы инвестиционных паев|</xsl:text>
    <xsl:text>|007002000000|Юридическое лицо|</xsl:text>
    <xsl:text>|007002001000|Юридическое лицо, зарегистрированное в Российской Федерации|</xsl:text>
    <xsl:text>|007002002000|Юридическое лицо, зарегистрированное в иностранном государстве|</xsl:text>
    <xsl:text>|007002003000|Международная организация|</xsl:text>
    <xsl:text>|007003000000|Физическое лицо|</xsl:text>
    <xsl:text>|007003001000|Гражданин Российской Федерации|</xsl:text>
    <xsl:text>|007003002000|Иностранный гражданин|</xsl:text>
    <xsl:text>|007003003000|Лицо без гражданства|</xsl:text>
    <xsl:text>|007003004000|Лицо без гражданства|</xsl:text>
    <xsl:text>|007001001003|Муниципальное образование|</xsl:text>
    <xsl:text>|007001001004|Собственники помещений многоквартирного дома|</xsl:text>
  </xsl:template>
  <xsl:template name="dModification">
    <xsl:text>|FILE|dModification.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор причин изменения объектов технического учета|</xsl:text>
    <xsl:text>|065000000000|Классификатор причин изменения|</xsl:text>
    <xsl:text>|065001000000|Новое строительство, введено ЮЛ|</xsl:text>
    <xsl:text>|065002000000|Новое строительство, введено ФЛ|</xsl:text>
    <xsl:text>|065003000000|Переоборудование из жилого фонда в нежилой|</xsl:text>
    <xsl:text>|065004000000|Переоборудование из нежилого фонда в жилой|</xsl:text>
    <xsl:text>|065005000000|Реконструкция|</xsl:text>
    <xsl:text>|065006000000|Изменение территориальных границ|</xsl:text>
    <xsl:text>|065007000000|Уточнение в ходе инвентаризации|</xsl:text>
    <xsl:text>|065008000000|Узаконение|</xsl:text>
    <xsl:text>|065009000000|Ликвидация ветхих и аварийных домов|</xsl:text>
    <xsl:text>|065010000000|Разрушения при стихийных бедствиях|</xsl:text>
    <xsl:text>|065011000000|Снос в связи с отводом под застройку|</xsl:text>
    <xsl:text>|065012000000|Передача в муниципальный фонд|</xsl:text>
  </xsl:template>
  <xsl:template name="dParameters">
    <xsl:text>|FILE|dParameters.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор параметров конструктивных элементов|</xsl:text>
    <xsl:text>|064000000000|Классификатор параметров конструктивных элементов объектов|</xsl:text>
    <xsl:text>|064001000000|Параметры общие|</xsl:text>
    <xsl:text>|064001001000|Номер|</xsl:text>
    <xsl:text>|064001002000|Количество|</xsl:text>
    <xsl:text>|064001003000|Начало эксплуатации|</xsl:text>
    <xsl:text>|064001004000|Доля в площади (объеме)|</xsl:text>
    <xsl:text>|064001005000|Ценностный коэффициент|</xsl:text>
    <xsl:text>|064001006000|Удельный вес (по стоимости)|</xsl:text>
    <xsl:text>|064001007000|Удельный вес (по аналогу)|</xsl:text>
    <xsl:text>|064001008000|Процент износа|</xsl:text>
    <xsl:text>|064001009000|Стоимость|</xsl:text>
    <xsl:text>|064002000000|Параметры технические|</xsl:text>
    <xsl:text>|064002001000|Длина|</xsl:text>
    <xsl:text>|064002002000|Толщина|</xsl:text>
    <xsl:text>|064002003000|Высота|</xsl:text>
    <xsl:text>|064002004000|Площадь|</xsl:text>
  </xsl:template>
  <xsl:template name="dStates">
    <xsl:text>|FILE|dStates.xsd|</xsl:text>
    <xsl:text>|NAME|Статус  объекта недвижимости |</xsl:text>
    <xsl:text>|01|Ранее учтенный|</xsl:text>
    <xsl:text>|03|Условный|</xsl:text>
    <xsl:text>|04|Внесенный|</xsl:text>
    <xsl:text>|05|Временный|</xsl:text>
    <xsl:text>|06|Учтенный|</xsl:text>
    <xsl:text>|07|Снят с учета|</xsl:text>
    <xsl:text>|08|Аннулированный|</xsl:text>
  </xsl:template>
  <xsl:template name="dType_Storey">
    <xsl:text>|FILE|dType_Storey.xsd|</xsl:text>
    <xsl:text>|NAME|Тип этажа|</xsl:text>
    <xsl:text>|01|Этаж|</xsl:text>
    <xsl:text>|02|Мансарда|</xsl:text>
    <xsl:text>|03|Мезонин|</xsl:text>
    <xsl:text>|04|Подвал|</xsl:text>
    <xsl:text>|05|Техническое подполье|</xsl:text>
    <xsl:text>|06|Цокольный этаж|</xsl:text>
    <xsl:text>|07|Надстроенный этаж|</xsl:text>
    <xsl:text>|08|Технический этаж|</xsl:text>
    <xsl:text>|09|Чердак|</xsl:text>
    <xsl:text>|10|Антресоль|</xsl:text>
    <xsl:text>|11|Светелка|</xsl:text>
    <xsl:text>|12|Полуподвал|</xsl:text>
    <xsl:text>|13|Антресоль подвала|</xsl:text>
    <xsl:text>|14|Антресоль цокольного этажа|</xsl:text>
    <xsl:text>|15|Чердачная надстройка|</xsl:text>
    <xsl:text>|16|Подземный этаж|</xsl:text>
    <xsl:text>|17|Значение отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dUnit">
    <xsl:text>|FILE|dUnit.xsd|</xsl:text>
    <xsl:text>|NAME|Единицы измерений по ОКЕИ|</xsl:text>
    <xsl:text>|003|Миллиметр|</xsl:text>
    <xsl:text>|004|Сантиметр|</xsl:text>
    <xsl:text>|005|Дециметр|</xsl:text>
    <xsl:text>|006|Метр|</xsl:text>
    <xsl:text>|008|Километр|</xsl:text>
    <xsl:text>|009|Мегаметр|</xsl:text>
    <xsl:text>|047|Морская миля|</xsl:text>
    <xsl:text>|050|Квадратный миллиметр|</xsl:text>
    <xsl:text>|051|Квадратный сантиметр|</xsl:text>
    <xsl:text>|053|Квадратный дециметр|</xsl:text>
    <xsl:text>|055|Квадратный метр|</xsl:text>
    <xsl:text>|058|Тысяча квадратных метров|</xsl:text>
    <xsl:text>|059|Гектар|</xsl:text>
    <xsl:text>|061|Квадратный километр|</xsl:text>
    <xsl:text>|109|Ар (100 м2)|</xsl:text>
    <xsl:text>|359|Сутки|</xsl:text>
    <xsl:text>|360|Неделя|</xsl:text>
    <xsl:text>|361|Декада|</xsl:text>
    <xsl:text>|362|Месяц|</xsl:text>
    <xsl:text>|364|Квартал|</xsl:text>
    <xsl:text>|365|Полугодие|</xsl:text>
    <xsl:text>|356|Час|</xsl:text>
    <xsl:text>|355|Минута|</xsl:text>
    <xsl:text>|366|Год|</xsl:text>
    <xsl:text>|383|Рубль|</xsl:text>
    <xsl:text>|384|Тысяча рублей|</xsl:text>
    <xsl:text>|385|Миллион рублей|</xsl:text>
    <xsl:text>|386|Миллиард рублей|</xsl:text>
    <xsl:text>|1000|Неопределено|</xsl:text>
    <xsl:text>|1001|Значение отсутствует|</xsl:text>
    <xsl:text>|1002|Рублей за кв. метр|</xsl:text>
    <xsl:text>|1003|Рублей за ар|</xsl:text>
    <xsl:text>|1004|Рублей за гектар|</xsl:text>
    <xsl:text>|1005|Иные|</xsl:text>
    <xsl:text>|1006|Рублей за кв. км|</xsl:text>
    <xsl:text>|1007|Рабочий день|</xsl:text>
  </xsl:template>
  <xsl:template name="sPayDocType">
    <xsl:text>|FILE|dPayDocType.xsd|</xsl:text>
    <xsl:text>|NAME|Назначение платежного документа|</xsl:text>
    <xsl:text>|001|Предоставление сведений государственного земельного кадастра|</xsl:text>
    <xsl:text>|002|Копирование (документирование) сведений государственного земельного кадастра|</xsl:text>
    <xsl:text>|003|Государственная пошлина за осуществление кадастрового учета|</xsl:text>
  </xsl:template>
  <xsl:template name="sExist">
    <xsl:text>|FILE|dExist.xsd|</xsl:text>
    <xsl:text>|NAME|Признак существования объекта|</xsl:text>
    <xsl:text>|yes|Существующий|</xsl:text>
    <xsl:text>|no|Образующийся|</xsl:text>
    <xsl:text>|neighbour|Смежный|</xsl:text>
  </xsl:template>
  <xsl:template name="sPochta">
    <xsl:text>|FILE|dPochta.xsd|</xsl:text>
    <xsl:text>|NAME|Вид почты|</xsl:text>
    <xsl:text>|01|по почте|</xsl:text>
    <xsl:text>|02|по электронной почте|</xsl:text>
  </xsl:template>
  <xsl:template name="sRecipient">
    <xsl:text>|FILE|dRecipient.xsd|</xsl:text>
    <xsl:text>|NAME|Получатель|</xsl:text>
    <xsl:text>|01|заявитель|</xsl:text>
    <xsl:text>|02|доверенное лицо|</xsl:text>
  </xsl:template>
  <xsl:template name="sSection_KV">
    <xsl:text>|FILE|dSection_KV.xsd|</xsl:text>
    <xsl:text>|NAME|Разделы кадастровой выписки|</xsl:text>
    <xsl:text>|01|КВ.1|</xsl:text>
    <xsl:text>|02|КВ.2|</xsl:text>
    <xsl:text>|03|КВ.3|</xsl:text>
    <xsl:text>|04|КВ.4|</xsl:text>
    <xsl:text>|05|КВ.5|</xsl:text>
    <xsl:text>|06|КВ.6|</xsl:text>
  </xsl:template>
  <xsl:template name="dCategories">
    <xsl:text>|FILE|dCategories.xsd|</xsl:text>
    <xsl:text>|NAME|Категории земель|</xsl:text>
    <xsl:text>|003001000000|Земли сельскохозяйственного назначения|</xsl:text>
    <xsl:text>|003002000000|Земли населенных пунктов|</xsl:text>
    <xsl:text>|003003000000|Земли промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, земли для обеспечения космической деятельности, земли обороны, безопасности и земли иного специального назначения|</xsl:text>
    <xsl:text>|003004000000|Земли особо охраняемых территорий и объектов|</xsl:text>
    <xsl:text>|003005000000|Земли лесного фонда|</xsl:text>
    <xsl:text>|003006000000|Земли водного фонда|</xsl:text>
    <xsl:text>|003007000000|Земли запаса|</xsl:text>
    <xsl:text>|003008000000|Категория не установлена|</xsl:text>
  </xsl:template>
  <xsl:template name="dEncumbrances01">
    <xsl:text>|FILE|dEncumbrances.xsd|</xsl:text>
    <xsl:text>|NAME|Ограничения (обременения). Другой вариант|</xsl:text>
    <xsl:text>|022001000000|Публичный сервитут|</xsl:text>
    <xsl:text>|022001001000|Право прохода или проезда через земельный участок|</xsl:text>
    <xsl:text>|022001002000|Право использования земельного участка в целях ремонта коммунальных, инженерных, электрических и других линий и сетей, а также объектов транспортной инфраструктуры|</xsl:text>
    <xsl:text>|022001003000|Право размещения на земельном участке межевых и геодезических знаков и подъездов к ним|</xsl:text>
    <xsl:text>|022001004000|Право проведения дренажных работ на земельном участке|</xsl:text>
    <xsl:text>|022001005000|Право забора воды и водопоя|</xsl:text>
    <xsl:text>|022001006000|Право прогона скота через земельный участок|</xsl:text>
    <xsl:text>|022001007000|Право сенокоса или пастьбы скота на земельных участках в сроки продолжительность которых соответствует местным условиям, обычаям, за исключением таких земельных участков в пределах земель лесного фонда|</xsl:text>
    <xsl:text>|022001008000|Право временного пользования земельным участком в целях проведения изыскательских, исследовательских и других работ|</xsl:text>
    <xsl:text>|022001009000|Право использования земельного участка в целях охоты, ловли рыбы в расположенном на земельном участке замкнутом водоеме, сбора дикорастущих растений в установленные сроки и в установленном порядке|</xsl:text>
    <xsl:text>|022001010000|Право временного пользования земельным участком в целях проведения изыскательских, исследовательских и других работ|</xsl:text>
    <xsl:text>|022001011000|Право свободного доступа к прибрежной полосе|</xsl:text>
    <xsl:text>|022001012000|Иные виды сервитутов|</xsl:text>
    <xsl:text>|022002000000|Частный сервитут|</xsl:text>
    <xsl:text>|022003000000|Арест|</xsl:text>
    <xsl:text>|022004000000|Запрещение|</xsl:text>
    <xsl:text>|022005000000|Аренда (в том числе субаренда)|</xsl:text>
    <xsl:text>|022006000000|Неопределено|</xsl:text>
    <xsl:text>|022007000000|Значение отсутствует|</xsl:text>
    <xsl:text>|022008000000|Ипотека|</xsl:text>
    <xsl:text>|022009000000|Безвозмездное (срочное) пользование земельным участком|</xsl:text>
    <xsl:text>|022010000000|Сервитут. Право проведения ремонтно-строительных работ|</xsl:text>
    <xsl:text>|022011000000|Сервитут. Право строительства здания (строения сооружения) на соседнем участке, определенной высоты|</xsl:text>
    <xsl:text>|022012000000|Сервитут. Право природоохранной деятельности на земельном участке|</xsl:text>
    <xsl:text>|022013000000|Особый режим использования земли|</xsl:text>
    <xsl:text>|022013001000|Особый режим использования земли. Запретная зона|</xsl:text>
    <xsl:text>|022013002000|Особый режим использования земли. Охранная зона|</xsl:text>
    <xsl:text>|022013003000|Особый режим использования земли. Санитарно-защитная зона|</xsl:text>
    <xsl:text>|022013004000|Особый режим использования земли. Первая зона округа санитарной охраны|</xsl:text>
    <xsl:text>|022013005000|Особый режим использования земли. Вторая зона округа санитарной охраны|</xsl:text>
    <xsl:text>|022013006000|Особый режим использования земли.Третья зона округа санитарной охраны|</xsl:text>
    <xsl:text>|022013007000|Особый режим использования земли. Первая зона округа горно-санитарной охраны|</xsl:text>
    <xsl:text>|022013008000|Особый режим использования земли.Санитарно-защитная полоса|</xsl:text>
    <xsl:text>|022013009000|Особый режим использования земли. Третья зона округа горно-санитарной охраны|</xsl:text>
    <xsl:text>|022013010000|Особый режим использования земли. Особо охраняемая природная территория|</xsl:text>
    <xsl:text>|022013011000|Особый режим использования земли. Прибрежная защитная полоса|</xsl:text>
    <xsl:text>|022013012000|Особый режим использования земли. Зона регулирования застройки|</xsl:text>
    <xsl:text>|022013013000|Особый режим использования земли. Зона ограничений застройки|</xsl:text>
    <xsl:text>|022013014000|Особый режим использования земли. Зона охраняемого природного ландшафта|</xsl:text>
    <xsl:text>|022013015000|Особый режим использования земли. Запретный район|</xsl:text>
    <xsl:text>|022013016000|Особый режим использования земли. Территория памятника истории и культуры|</xsl:text>
    <xsl:text>|022013017000|Особый режим использования земли. Прочие|</xsl:text>
    <xsl:text>|022013018000|Особый режим использования земли. Территория деградированных и загрязненных земель|</xsl:text>
    <xsl:text>|022013019000|Особый режим использования земли. Вторая зона округа горно-санитарной охраны|</xsl:text>
    <xsl:text>|022013020000|Особый режим использования земли. Водоохранная зона|</xsl:text>
    <xsl:text>|022013021000|Особый режим использования земли. Первый пояс зоны санитарной охраны|</xsl:text>
    <xsl:text>|022013022000|Особый режим использования земли. Второй пояс зоны санитарной охраны|</xsl:text>
    <xsl:text>|022013023000|Особый режим использования земли. Третий пояс зоны санитарной охраны|</xsl:text>
    <xsl:text>|022013024000|Особый режим использования земли. Придорожная полоса|</xsl:text>
    <xsl:text>|022013025000|Особый режим использования земли. Зона минимальных расстояний|</xsl:text>
    <xsl:text>|022013026000|Особый режим использования земли. Резервная территория|</xsl:text>
    <xsl:text>|022014000000|Иное ограничение (обременение)|</xsl:text>
  </xsl:template>
  <xsl:template name="dEncumbrances">
    <!--Info: D:\Создание справочников\Requests\V02_STD_MP\dEncumbrances.xsd-->
    <xsl:text>|FILE|dEncumbrances.xsd|</xsl:text>
    <xsl:text>|NAME|Обременения (ограничения)|</xsl:text>
    <!--02-->
    <xsl:text>|022001000000|Сервитут|</xsl:text>
    <xsl:text>|022001001000|Публичный сервитут|</xsl:text>
    <xsl:text>|022001002000|Частный сервитут|</xsl:text>
    <xsl:text>|022002000000|Арест|</xsl:text>
    <xsl:text>|022003000000|Запрещение|</xsl:text>
    <xsl:text>|022004000000|Ограничение прав на землю, предусмотренное статьей 56 Земельного кодекса Российской Федерации (Особый режим использования земли)|</xsl:text>
    <xsl:text>|022005000000|Решение об изъятии земельного участка, жилого помещения|</xsl:text>
    <xsl:text>|022006000000|Аренда (в том числе субаренда, лизинг)|</xsl:text>
    <xsl:text>|022007000000|Ипотека|</xsl:text>
    <xsl:text>|022008000000|Залог|</xsl:text>
    <!--03-->
    <xsl:text>|022009000000|Безвозмездное (срочное) пользование земельным/лесным участком|</xsl:text>
    <xsl:text>|022010000000|Доверительное управление|</xsl:text>
    <xsl:text>|022011000000|Рента|</xsl:text>
    <!--02 и 03-->
    <xsl:text>|022099000000|Иные ограничения (обременения) прав|</xsl:text>
  </xsl:template>
  <xsl:template name="dEncumbrances05">
    <!--Info: D:\Создание справочников\Requests\V02_STD_MP\dEncumbrances.xsd-->
    <xsl:text>|FILE|dEncumbrances.xsd|</xsl:text>
    <xsl:text>|NAME|Обременения (ограничения)|</xsl:text>
    <!--02-->
    <xsl:text>|022001000000|Сервитут|</xsl:text>
    <xsl:text>|022001001000|Публичный сервитут|</xsl:text>
    <xsl:text>|022001002000|Частный сервитут|</xsl:text>
    <xsl:text>|022002000000|Арест|</xsl:text>
    <xsl:text>|022003000000|Запрещение|</xsl:text>
    <xsl:text>|022004000000|Ограничение прав на землю, предусмотренное статьей 56 Земельного кодекса Российской Федерации (Особый режим использования земли)|</xsl:text>
    <xsl:text>|022005000000|Решение об изъятии земельного участка, жилого помещения|</xsl:text>
    <xsl:text>|022006000000|Аренда (в том числе субаренда, лизинг)|</xsl:text>
    <xsl:text>|022007000000|Ипотека|</xsl:text>
    <xsl:text>|022008000000|Залог|</xsl:text>
    <!--03-->
    <xsl:text>|022009000000|Безвозмездное (срочное) пользование земельным/лесным участком|</xsl:text>
    <xsl:text>|022010000000|Доверительное управление|</xsl:text>
    <xsl:text>|022011000000|Рента|</xsl:text>
    <!--02 и 03-->
    <xsl:text>|022099000000|Иные ограничения (обременения) прав|</xsl:text>
    <!-- 05 -->
    <xsl:text>|022012000000|Запрет на совершение действий в сфере ГКУ в отношении ОН|</xsl:text>

  </xsl:template>
  <xsl:template name="dNatural_Objects">
    <xsl:text>|FILE|dNatural_Objects.xsd|</xsl:text>
    <xsl:text>|NAME|Природные объекты|</xsl:text>
    <xsl:text>|033001000000|Лес|</xsl:text>
    <xsl:text>|033002000000|Водный объект|</xsl:text>
    <xsl:text>|033003000000|Иной природный объект|</xsl:text>
  </xsl:template>
  <xsl:template name="dNatural_Objects03">
    <xsl:text>|FILE|dNatural_Objects.xsd|</xsl:text>
    <xsl:text>|NAME|Природные объекты|</xsl:text>
    <xsl:text>|233001000000|Лес|</xsl:text>
    <xsl:text>|233002000000|Водный объект|</xsl:text>
    <xsl:text>|233003000000|Иной природный объект|</xsl:text>
  </xsl:template>
  <xsl:template name="dUtilizations0">
    <!-- 01 -->
    <xsl:text>|FILE|dUtilizations.xsd|</xsl:text>
    <xsl:text>|NAME|Разрешенное использование|</xsl:text>
    <xsl:text>|014001000000|Земли жилой застройки|</xsl:text>
    <xsl:text>|014001001000|Земли под жилыми домами многоэтажной и повышенной этажности застройки|</xsl:text>
    <xsl:text>|014001002000|Земли под домами индивидуальной жилой застройкой|</xsl:text>
    <xsl:text>|014001003000|Незанятые земли, отведенные под жилую застройку|</xsl:text>
    <xsl:text>|014002000000|Земли общественно-деловой застройки|</xsl:text>
    <xsl:text>|014002001000|Земли гаражей и автостоянок|</xsl:text>
    <xsl:text>|014002002000|Земли под объектами торговли, общественного питания, бытового обслуживания, автозаправочными и газонаполнительными станциями, предприятиями автосервиса|</xsl:text>
    <xsl:text>|014002003000|Земли учреждений и организаций народного образования, земли под объектами здравоохранения и социального обеспечения физической культуры и спорта, культуры и искусства, религиозными объектами|</xsl:text>
    <xsl:text>|014002004000|Земли под административно-управлен-ческими и общественными объектами, земли предприятий, организаций, учреждений финансирования, кредитования, страхования и пенсионного обеспечения|</xsl:text>
    <xsl:text>|014002005000|Земли под зданиями (строениями) рекреации|</xsl:text>
    <xsl:text>|014003000000|Земли под объектами промышленности|</xsl:text>
    <xsl:text>|014004000000|Земли общего пользования (геонимы в поселениях)|</xsl:text>
    <xsl:text>|014005000000|Земли под объектами транспорта, связи, инженерных коммуникаций|</xsl:text>
    <xsl:text>|014005001000|Под объектами железнодорожного транспорта|</xsl:text>
    <xsl:text>|014005002000|Под объектами автомобильного транспорта|</xsl:text>
    <xsl:text>|014005003000|Под объектами морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|014005004000|Под объектами воздушного транспорта|</xsl:text>
    <xsl:text>|014005005000|Под объектами иного транспорта, связи, инженерных коммуникаций|</xsl:text>
    <xsl:text>|014006000000|Земли сельскохозяйственного использования|</xsl:text>
    <xsl:text>|014006001000|Земли под крестьянскими (фермерскими) хозяйствами|</xsl:text>
    <xsl:text>|014006002000|Земли под предприятиями, занимающимися сельскохозяйственным производством|</xsl:text>
    <xsl:text>|014006003000|Земли под садоводческими объединениями и индивидуальными садоводами|</xsl:text>
    <xsl:text>|014006004000|Земли под огородническими объединениями и индивидуальными огородниками|</xsl:text>
    <xsl:text>|014006005000|Земли под дачными объединениями|</xsl:text>
    <xsl:text>|014006006000|Земли под личными подсобными хозяйствами|</xsl:text>
    <xsl:text>|014006007000|Земли под служебными наделами|</xsl:text>
    <xsl:text>|014006008000|Земли оленьих пастбищ|</xsl:text>
    <xsl:text>|014006009000|Для других сельскохозяйственных целей|</xsl:text>
    <xsl:text>|014007000000|Земли под лесами в поселениях (в том числе городскими лесами), под древесно-кустарниковой растительностью, не входящей в лесной фонд (в том числе лесопарками, парками, скверами, бульварами)|</xsl:text>
    <xsl:text>|014008000000|Земли, занятые водными объектами, земли водоохранных зон водных объектов, а также земли, выделяемые для установления полос отвода и зон охраны водозаборов, гидротехнических сооружений и иных водохозяйственных сооружений, объектов.|</xsl:text>
    <xsl:text>|014009000000|Земли под военными и иными режимными объектами|</xsl:text>
    <xsl:text>|014010000000|Земли под объектами иного специального назначения|</xsl:text>
    <xsl:text>|014011000000|Земли, не вовлеченные в градостроительную или иную деятельность (земли – резерв)|</xsl:text>
    <xsl:text>|014012000000|Неопределено|</xsl:text>
    <xsl:text>|014013000000|Значение отсутствует|</xsl:text>
  </xsl:template>

  <xsl:template name="dUtilizations">
    <!-- 02 -->
    <!--Info: \\Saturn\razrabotka po\Проект Абонент-Росреестр\Официальные документы\_Схемы ГКН\Answers\03_V03_STD_Region_Cadastr_KP\dUtilizations.xsd-->
    <xsl:text>|FILE|dUtilizations.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор видов использования земель|</xsl:text>
    <xsl:text>|014001000000|Земли жилой застройки|</xsl:text>
    <xsl:text>|014001001000|Земли под жилыми домами многоэтажной и повышенной этажности застройки|</xsl:text>
    <xsl:text>|014001002000|Земли под домами индивидуальной жилой застройкой|</xsl:text>
    <xsl:text>|014001003000|Незанятые земли, отведенные под жилую застройку|</xsl:text>
    <xsl:text>|014002000000|Земли общественно-деловой застройки|</xsl:text>
    <xsl:text>|014002001000|Земли гаражей и автостоянок|</xsl:text>
    <xsl:text>|014002002000|Земли под объектами торговли, общественного питания, бытового обслуживания, автозаправочными и газонаполнительными станциями, предприятиями автосервиса|</xsl:text>
    <xsl:text>|014002003000|Земли учреждений и организаций народного образования, земли под объектами здравоохранения и социального обеспечения физической культуры и спорта, культуры и искусства, религиозными объектами|</xsl:text>
    <xsl:text>|014002004000|Земли под административно-управлен-ческими и общественными объектами, земли предприятий, организаций, учреждений финансирования, кредитования, страхования и пенсионного обеспечения|</xsl:text>
    <xsl:text>|014002005000|Земли под зданиями (строениями) рекреации|</xsl:text>
    <xsl:text>|014003000000|Земли под объектами промышленности|</xsl:text>
    <xsl:text>|014004000000|Земли общего пользования (геонимы в поселениях)|</xsl:text>
    <xsl:text>|014005000000|Земли под объектами транспорта, связи, инженерных коммуникаций|</xsl:text>
    <xsl:text>|014005001000|Под объектами железнодорожного транспорта|</xsl:text>
    <xsl:text>|014005002000|Под объектами автомобильного транспорта|</xsl:text>
    <xsl:text>|014005003000|Под объектами морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|014005004000|Под объектами воздушного транспорта|</xsl:text>
    <xsl:text>|014005005000|Под объектами иного транспорта, связи, инженерных коммуникаций|</xsl:text>
    <xsl:text>|014006000000|Земли сельскохозяйственного использования|</xsl:text>
    <xsl:text>|014006001000|Земли под крестьянскими (фермерскими) хозяйствами|</xsl:text>
    <xsl:text>|014006002000|Земли под предприятиями, занимающимися сельскохозяйственным производством|</xsl:text>
    <xsl:text>|014006003000|Земли под садоводческими объединениями и индивидуальными садоводами|</xsl:text>
    <xsl:text>|014006004000|Земли под огородническими объединениями и индивидуальными огородниками|</xsl:text>
    <xsl:text>|014006005000|Земли под дачными объединениями|</xsl:text>
    <xsl:text>|014006006000|Земли под личными подсобными хозяйствами|</xsl:text>
    <xsl:text>|014006007000|Земли под служебными наделами|</xsl:text>
    <xsl:text>|014006008000|Земли оленьих пастбищ|</xsl:text>
    <xsl:text>|014006009000|Для других сельскохозяйственных целей|</xsl:text>
    <xsl:text>|014007000000|Земли под лесами в поселениях (в том числе городскими лесами), под древесно-кустарниковой растительностью, не входящей в лесной фонд (в том числе лесопарками, парками, скверами, бульварами)|</xsl:text>
    <xsl:text>|014008000000|Земли, занятые водными объектами, земли водоохранных зон водных объектов, а также земли, выделяемые для установления полос отвода и зон охраны водозаборов, гидротехнических сооружений и иных водохозяйственных сооружений, объектов.|</xsl:text>
    <xsl:text>|014009000000|Земли под военными и иными режимными объектами|</xsl:text>
    <xsl:text>|014010000000|Земли под объектами иного специального назначения|</xsl:text>
    <xsl:text>|014011000000|Земли, не вовлеченные в градостроительную или иную деятельность (земли – резерв)|</xsl:text>
    <xsl:text>|014012000000|Неопределено|</xsl:text>
    <xsl:text>|014013000000|Значение отсутствует|</xsl:text>
    <xsl:text>|141000000000|Для размещения объектов сельскохозяйственного назначения и сельскохозяйственных угодий|</xsl:text>
    <xsl:text>|141001000000|Для сельскохозяйственного производства|</xsl:text>
    <xsl:text>|141001010000|Для использования в качестве сельскохозяйственных угодий|</xsl:text>
    <xsl:text>|141001020000|Для размещения зданий, строений, сооружений, используемых для производства, хранения и первичной переработки сельскохозяйственной продукции|</xsl:text>
    <xsl:text>|141001030000|Для размещения внутрихозяйственных дорог и коммуникаций|</xsl:text>
    <xsl:text>|141001040000|Для размещения водных объектов|</xsl:text>
    <xsl:text>|141002000000|Для ведения крестьянского (фермерского) хозяйства|</xsl:text>
    <xsl:text>|141003000000|Для ведения личного подсобного хозяйства|</xsl:text>
    <xsl:text>|141004000000|Для ведения гражданами садоводства и огородничества|</xsl:text>
    <xsl:text>|141005000000|Для ведения гражданами животноводства|</xsl:text>
    <xsl:text>|141006000000|Для дачного строительства|</xsl:text>
    <xsl:text>|141007000000|Для размещения древесно-кустарниковой растительности, предназначенной для защиты земель от воздействия негативных (вредных) природных, антропогенных и техногенных явлений|</xsl:text>
    <xsl:text>|141008000000|Для научно-исследовательских целей|</xsl:text>
    <xsl:text>|141009000000|Для учебных целей|</xsl:text>
    <xsl:text>|141010000000|Для сенокошения и выпаса скота гражданами|</xsl:text>
    <xsl:text>|141011000000|Фонд перераспределения|</xsl:text>
    <xsl:text>|141012000000|Для размещения объектов охотничьего хозяйства|</xsl:text>
    <xsl:text>|141013000000|Для размещения объектов рыбного хозяйства|</xsl:text>
    <xsl:text>|141014000000|Для иных видов сельскохозяйственного использования|</xsl:text>
    <xsl:text>|142000000000|Для размещения объектов, характерных для населенных пунктов|</xsl:text>
    <xsl:text>|142001000000|Для объектов жилой застройки|</xsl:text>
    <xsl:text>|142001010000|Для индивидуальной жилой застройки|</xsl:text>
    <xsl:text>|142001020000|Для многоквартирной застройки|</xsl:text>
    <xsl:text>|142001020100|Для малоэтажной застройки|</xsl:text>
    <xsl:text>|142001020200|Для среднеэтажной застройки|</xsl:text>
    <xsl:text>|142001020300|Для многоэтажной застройки|</xsl:text>
    <xsl:text>|142001020400|Для иных видов жилой застройки|</xsl:text>
    <xsl:text>|142001030000|Для размещения объектов дошкольного, начального, общего и среднего (полного) общего образования|</xsl:text>
    <xsl:text>|142001040000|Для размещения иных объектов, допустимых в жилых зонах и не перечисленных в классификаторе|</xsl:text>
    <xsl:text>|142002000000|Для объектов общественно-делового значения|</xsl:text>
    <xsl:text>|142002010000|Для размещения объектов социального и коммунально-бытового назначения|</xsl:text>
    <xsl:text>|142002020000|Для размещения объектов здравоохранения|</xsl:text>
    <xsl:text>|142002030000|Для размещения объектов культуры|</xsl:text>
    <xsl:text>|142002040000|Для размещения объектов торговли|</xsl:text>
    <xsl:text>|142002040100|Для размещения объектов розничной торговли|</xsl:text>
    <xsl:text>|142002040200|Для размещения объектов оптовой торговли|</xsl:text>
    <xsl:text>|142002050000|Для размещения объектов общественного питания|</xsl:text>
    <xsl:text>|142002060000|Для размещения объектов предпринимательской деятельности|</xsl:text>
    <xsl:text>|142002070000|Для размещения объектов среднего профессионального и высшего профессионального образования|</xsl:text>
    <xsl:text>|142002080000|Для размещения административных зданий|</xsl:text>
    <xsl:text>|142002090000|Для размещения научно-исследовательских учреждений|</xsl:text>
    <xsl:text>|142002100000|Для размещения культовых зданий|</xsl:text>
    <xsl:text>|142002110000|Для стоянок автомобильного транспорта|</xsl:text>
    <xsl:text>|142002120000|Для размещения объектов делового назначения, в том числе офисных центров|</xsl:text>
    <xsl:text>|142002130000|Для размещения объектов финансового назначения|</xsl:text>
    <xsl:text>|142002140000|Для размещения гостиниц|</xsl:text>
    <xsl:text>|142002150000|Для размещения подземных или многоэтажных гаражей|</xsl:text>
    <xsl:text>|142002160000|Для размещения индивидуальных гаражей|</xsl:text>
    <xsl:text>|142002170000|Для размещения иных объектов общественно-делового значения, обеспечивающих жизнь граждан|</xsl:text>
    <xsl:text>|142003000000|Для общего пользования (уличная сеть)|</xsl:text>
    <xsl:text>|142004000000|Для размещения объектов специального назначения|</xsl:text>
    <xsl:text>|142004010000|Для размещения кладбищ|</xsl:text>
    <xsl:text>|142004020000|Для размещения крематориев|</xsl:text>
    <xsl:text>|142004030000|Для размещения скотомогильников|</xsl:text>
    <xsl:text>|142004040000|Под объектами размещения отходов потребления|</xsl:text>
    <xsl:text>|142004050000|Под иными объектами специального назначения|</xsl:text>
    <xsl:text>|142005000000|Для размещения коммунальных, складских объектов|</xsl:text>
    <xsl:text>|142006000000|Для размещения объектов жилищно-коммунального хозяйства|</xsl:text>
    <xsl:text>|142007000000|Для иных видов использования, характерных для населенных пунктов|</xsl:text>
    <xsl:text>|143000000000|Для размещения объектов промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, обеспечения космической деятельности, обороны, безопасности и иного специального назначения|</xsl:text>
    <xsl:text>|143001000000|Для размещения промышленных объектов|</xsl:text>
    <xsl:text>|143001010000|Для размещения производственных и административных зданий, строений, сооружений и обслуживающих их объектов|</xsl:text>
    <xsl:text>|143001010100|Для размещения производственных зданий|</xsl:text>
    <xsl:text>|143001010200|Для размещения коммуникаций|</xsl:text>
    <xsl:text>|143001010300|Для размещения подъездных путей|</xsl:text>
    <xsl:text>|143001010400|Для размещения складских помещений|</xsl:text>
    <xsl:text>|143001010500|Для размещения административных зданий|</xsl:text>
    <xsl:text>|143001010600|Для размещения культурно-бытовых зданий|</xsl:text>
    <xsl:text>|143001010700|Для размещения иных сооружений промышленности|</xsl:text>
    <xsl:text>|143001020000|Для добычи и разработки полезных ископаемых|</xsl:text>
    <xsl:text>|143001030000|Для размещения иных объектов промышленности|</xsl:text>
    <xsl:text>|143002000000|Для размещения объектов энергетики|</xsl:text>
    <xsl:text>|143002010000|Для размещения электростанций и обслуживающих сооружений и объектов|</xsl:text>
    <xsl:text>|143002010100|Для размещения гидроэлектростанций|</xsl:text>
    <xsl:text>|143002010200|Для размещения атомных станций|</xsl:text>
    <xsl:text>|143002010300|Для размещения ядерных установок|</xsl:text>
    <xsl:text>|143002010400|Для размещения пунктов хранения ядерных материалов и радиоактивных веществ энергетики|</xsl:text>
    <xsl:text>|143002010500|Для размещения хранилищ радиоактивных отходов|</xsl:text>
    <xsl:text>|143002010600|Для размещения тепловых станций|</xsl:text>
    <xsl:text>|143002010700|Для размещения иных типов электростанций|</xsl:text>
    <xsl:text>|143002010800|Для размещения иных обслуживающих сооружений и объектов|</xsl:text>
    <xsl:text>|143002020000|Для размещения объектов электросетевого хозяйства|</xsl:text>
    <xsl:text>|143002020100|Для размещения воздушных линий электропередачи|</xsl:text>
    <xsl:text>|143002020200|Для размещения наземных сооружений кабельных линий электропередачи|</xsl:text>
    <xsl:text>|143002020300|Для размещения подстанций|</xsl:text>
    <xsl:text>|143002020400|Для размещения распределительных пунктов|</xsl:text>
    <xsl:text>|143002020500|Для размещения других сооружений и объектов электросетевого хозяйства|</xsl:text>
    <xsl:text>|143002030000|Для размещения иных объектов энергетики|</xsl:text>
    <xsl:text>|143003000000|Для размещения объектов транспорта|</xsl:text>
    <xsl:text>|143003010000|Для размещения и эксплуатации объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003010100|Для размещения железнодорожных путей и их конструктивных элементов|</xsl:text>
    <xsl:text>|143003010200|Для размещения полос отвода железнодорожных путей|</xsl:text>
    <xsl:text>|143003010300|Для размещения, эксплуатации, расширения и реконструкции строений, зданий, сооружений, в том числе железнодорожных вокзалов, железнодорожных станций, а также устройств и других объектов, необходимых для эксплуатации, содержания, строительства, реконструкции, ремонта, развития наземных и подземных зданий, строений, сооружений, устройств и других объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003010301|Для размещения железнодорожных вокзалов|</xsl:text>
    <xsl:text>|143003010302|Для размещения железнодорожных станций|</xsl:text>
    <xsl:text>|143003010303|Для размещения устройств и других объектов, необходимых для эксплуатации, содержания, строительства, реконструкции, ремонта, развития наземных и подземных зданий, строений, сооружений, устройств и других объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003020000|Для размещения и эксплуатации объектов автомобильного транспорта и объектов дорожного хозяйства|</xsl:text>
    <xsl:text>|143003020100|Для размещения автомобильных дорог и их конструктивных элементов|</xsl:text>
    <xsl:text>|143003020200|Для размещения полос отвода|</xsl:text>
    <xsl:text>|143003020300|Для размещения объектов дорожного сервиса в полосах отвода автомобильных дорог|</xsl:text>
    <xsl:text>|143003020400|Для размещения дорожных сооружений|</xsl:text>
    <xsl:text>|143003020500|Для размещения автовокзалов и автостанций|</xsl:text>
    <xsl:text>|143003020600|Для размещения иных объектов автомобильного транспорта и дорожного хозяйства|</xsl:text>
    <xsl:text>|143003030000|Для размещения и эксплуатации объектов морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|143003030100|Для размещения искусственно созданных внутренних водных путей|</xsl:text>
    <xsl:text>|143003030200|Для размещения морских и речных портов, причалов, пристаней|</xsl:text>
    <xsl:text>|143003030300|Для размещения иных объектов морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|143003030400|Для выделения береговой полосы|</xsl:text>
    <xsl:text>|143003040000|Для размещения и эксплуатации объектов воздушного транспорта|</xsl:text>
    <xsl:text>|143003040100|Для размещения аэропортов и аэродромов|</xsl:text>
    <xsl:text>|143003040200|Для размещения аэровокзалов|</xsl:text>
    <xsl:text>|143003040300|Для размещения взлетно-посадочных полос|</xsl:text>
    <xsl:text>|143003040400|Для размещения иных наземных объектов воздушного транспорта|</xsl:text>
    <xsl:text>|143003050000|Для размещения и эксплуатации объектов трубопроводного транспорта|</xsl:text>
    <xsl:text>|143003050100|Для размещения нефтепроводов|</xsl:text>
    <xsl:text>|143003050200|Для размещения газопроводов|</xsl:text>
    <xsl:text>|143003050300|Для размещения иных трубопроводов|</xsl:text>
    <xsl:text>|143003050400|Для размещения иных объектов трубопроводного транспорта|</xsl:text>
    <xsl:text>|143003060000|Для размещения и эксплуатации иных объектов транспорта|</xsl:text>
    <xsl:text>|143004000000|Для размещения объектов связи, радиовещания, телевидения, информатики|</xsl:text>
    <xsl:text>|143004010000|Для размещения эксплуатационных предприятий связи и обслуживания линий связи|</xsl:text>
    <xsl:text>|143004020000|Для размещения кабельных, радиорелейных и воздушных линий связи и линий радиофикации на трассах кабельных и воздушных линий связи и радиофикации и их охранные зоны|</xsl:text>
    <xsl:text>|143004030000|Для размещения подземных кабельных и воздушных линий связи и радиофикации и их охранные зоны|</xsl:text>
    <xsl:text>|143004040000|Для размещения наземных и подземных необслуживаемых усилительных пунктов на кабельных линиях связи и их охранные зоны|</xsl:text>
    <xsl:text>|143004050000|Для размещения наземных сооружений и инфраструктур спутниковой связи|</xsl:text>
    <xsl:text>|143004060000|Для размещения иных объектов связи, радиовещания, телевидения, информатики|</xsl:text>
    <xsl:text>|143005000000|Для размещения объектов, предназначенных для обеспечения космической деятельности|</xsl:text>
    <xsl:text>|143005010000|Для размещения космодромов, стартовых комплексов и пусковых установок|</xsl:text>
    <xsl:text>|143005020000|Для размещения командно-измерительных комплексов, центров и пунктов управления полетами космических объектов, приема, хранения и переработки информации|</xsl:text>
    <xsl:text>|143005030000|Для размещения баз хранения космической техники|</xsl:text>
    <xsl:text>|143005040000|Для размещения полигонов приземления космических объектов и взлетно-посадочных полос|</xsl:text>
    <xsl:text>|143005050000|Для размещения объектов экспериментальной базы для отработки космической техники|</xsl:text>
    <xsl:text>|143005060000|Для размещения центров и оборудования для подготовки космонавтов|</xsl:text>
    <xsl:text>|143005070000|Для размещения других наземных сооружений и техники, используемых при осуществлении космической деятельности|</xsl:text>
    <xsl:text>|143006000000|Для размещения объектов, предназначенных для обеспечения обороны и безопасности|</xsl:text>
    <xsl:text>|143006010000|Для обеспечения задач обороны|</xsl:text>
    <xsl:text>|143006010100|Для размещения военных организаций, учреждений и других объектов|</xsl:text>
    <xsl:text>|143006010200|Для дислокации войск и сил флота|</xsl:text>
    <xsl:text>|143006010300|Для проведения учений и иных мероприятий|</xsl:text>
    <xsl:text>|143006010400|Для испытательных полигонов|</xsl:text>
    <xsl:text>|143006010500|Для мест уничтожения оружия и захоронения отходов|</xsl:text>
    <xsl:text>|143006010600|Для создания запасов материальных ценностей в государственном и мобилизационном резервах (хранилища, склады и другие)|</xsl:text>
    <xsl:text>|143006010700|Для размещения иных объектов обороны|</xsl:text>
    <xsl:text>|143006020000|Для размещения объектов (территорий), обеспечивающих защиту и охрану Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|143006020100|Для обустройства и содержания инженерно-технических сооружений и заграждений|</xsl:text>
    <xsl:text>|143006020200|Для обустройства и содержания пограничных знаков|</xsl:text>
    <xsl:text>|143006020300|Для обустройства и содержания пограничных просек|</xsl:text>
    <xsl:text>|143006020400|Для обустройства и содержания коммуникаций|</xsl:text>
    <xsl:text>|143006020500|Для обустройства и содержания пунктов пропуска через Государственную границу Российской Федерации|</xsl:text>
    <xsl:text>|143006020600|Для размещения иных объектов для защиты и охраны Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|143006030000|Для размещения иных объектов обороны и безопасности|</xsl:text>
    <xsl:text>|143007000000|Для размещения иных объектов промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, обеспечения космической деятельности, обороны, безопасности и иного специального назначения|</xsl:text>
    <xsl:text>|144000000000|Для размещения особо охраняемых историко-культурных и природных объектов (территорий)|</xsl:text>
    <xsl:text>|144001000000|Для размещения особо охраняемых природных объектов (территорий)|</xsl:text>
    <xsl:text>|144001010000|Для размещения государственных природных заповедников (в том числе биосферных)|</xsl:text>
    <xsl:text>|144001020000|Для размещения государственных природных заказников|</xsl:text>
    <xsl:text>|144001030000|Для размещения национальных парков|</xsl:text>
    <xsl:text>|144001040000|Для размещения природных парков|</xsl:text>
    <xsl:text>|144001050000|Для размещения дендрологических парков|</xsl:text>
    <xsl:text>|144001060000|Для размещения ботанических садов|</xsl:text>
    <xsl:text>|144001070000|Для размещения объектов санаторного и курортного назначения|</xsl:text>
    <xsl:text>|144001080000|Территории месторождений минеральных вод, лечебных грязей, рапы лиманов и озер|</xsl:text>
    <xsl:text>|144001090000|Для традиционного природопользования|</xsl:text>
    <xsl:text>|144001100000|Для размещения иных особо охраняемых природных территорий (объектов)|</xsl:text>
    <xsl:text>|144002000000|Для размещения объектов (территорий) природоохранного назначения|</xsl:text>
    <xsl:text>|144003000000|Для размещения объектов (территорий) рекреационного назначения|</xsl:text>
    <xsl:text>|144003010000|Для размещения домов отдыха, пансионатов, кемпингов|</xsl:text>
    <xsl:text>|144003020000|Для размещения объектов физической культуры и спорта|</xsl:text>
    <xsl:text>|144003030000|Для размещения туристических баз, стационарных и палаточных туристско-оздоровительных лагерей, домов рыболова и охотника, детских туристических станций|</xsl:text>
    <xsl:text>|144003040000|Для размещения туристических парков|</xsl:text>
    <xsl:text>|144003050000|Для размещения лесопарков|</xsl:text>
    <xsl:text>|144003060000|Для размещения учебно-туристических троп и трасс|</xsl:text>
    <xsl:text>|144003070000|Для размещения детских и спортивных лагерей|</xsl:text>
    <xsl:text>|144003080000|Для размещения скверов, парков, городских садов|</xsl:text>
    <xsl:text>|144003090000|Для размещения пляжей|</xsl:text>
    <xsl:text>|144003100000|Для размещения иных объектов (территорий) рекреационного назначения|</xsl:text>
    <xsl:text>|144004000000|Для размещения объектов историко-культурного назначения|</xsl:text>
    <xsl:text>|144004010000|Для размещения объектов культурного наследия народов Российской Федерации (памятников истории и культуры), в том числе объектов археологического наследия|</xsl:text>
    <xsl:text>|144004020000|Для размещения военных и гражданских захоронений|</xsl:text>
    <xsl:text>|144005000000|Для размещения иных особо охраняемых историко-культурных и природных объектов (территорий)|</xsl:text>
    <xsl:text>|145000000000|Для размещения объектов лесного фонда|</xsl:text>
    <xsl:text>|145001000000|Для размещения лесной растительности|</xsl:text>
    <xsl:text>|145002000000|Для восстановления лесной растительности|</xsl:text>
    <xsl:text>|145003000000|Для прочих объектов лесного хозяйства|</xsl:text>
    <xsl:text>|146000000000|Для размещения объектов водного фонда|</xsl:text>
    <xsl:text>|146001000000|Под водными объектами|</xsl:text>
    <xsl:text>|146002000000|Для размещения гидротехнических сооружений|</xsl:text>
    <xsl:text>|146003000000|Для размещения иных сооружений, расположенных на водных объектах|</xsl:text>
    <xsl:text>|147000000000|Земли запаса (неиспользуемые)|</xsl:text>
  </xsl:template>

  <xsl:template name="dUtilizations03">
    <!-- 03 -->
    <xsl:text>|FILE|dUtilizations.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор видов использования земель|</xsl:text>
    <xsl:text>|141000000000|Для размещения объектов сельскохозяйственного назначения и сельскохозяйственных угодий|</xsl:text>
    <xsl:text>|141001000000|Для сельскохозяйственного производства|</xsl:text>
    <xsl:text>|141001010000|Для использования в качестве сельскохозяйственных угодий|</xsl:text>
    <xsl:text>|141001020000|Для размещения зданий, строений, сооружений, используемых для производства, хранения и первичной переработки сельскохозяйственной продукции|</xsl:text>
    <xsl:text>|141001030000|Для размещения внутрихозяйственных дорог и коммуникаций|</xsl:text>
    <xsl:text>|141001040000|Для размещения водных объектов|</xsl:text>
    <xsl:text>|141002000000|Для ведения крестьянского (фермерского) хозяйства|</xsl:text>
    <xsl:text>|141003000000|Для ведения личного подсобного хозяйства|</xsl:text>
    <xsl:text>|141004000000|Для ведения гражданами садоводства и огородничества|</xsl:text>
    <xsl:text>|141005000000|Для ведения гражданами животноводства|</xsl:text>
    <xsl:text>|141006000000|Для дачного строительства|</xsl:text>
    <xsl:text>|141007000000|Для размещения древесно-кустарниковой растительности, предназначенной для защиты земель от воздействия негативных (вредных) природных, антропогенных и техногенных явлений|</xsl:text>
    <xsl:text>|141008000000|Для научно-исследовательских целей|</xsl:text>
    <xsl:text>|141009000000|Для учебных целей|</xsl:text>
    <xsl:text>|141010000000|Для сенокошения и выпаса скота гражданами|</xsl:text>
    <xsl:text>|141011000000|Фонд перераспределения|</xsl:text>
    <xsl:text>|141012000000|Для размещения объектов охотничьего хозяйства|</xsl:text>
    <xsl:text>|141013000000|Для размещения объектов рыбного хозяйства|</xsl:text>
    <xsl:text>|141014000000|Для иных видов сельскохозяйственного использования|</xsl:text>
    <xsl:text>|142000000000|Для размещения объектов, характерных для населенных пунктов|</xsl:text>
    <xsl:text>|142001000000|Для объектов жилой застройки|</xsl:text>
    <xsl:text>|142001010000|Для индивидуальной жилой застройки|</xsl:text>
    <xsl:text>|142001020000|Для многоквартирной застройки|</xsl:text>
    <xsl:text>|142001020100|Для малоэтажной застройки|</xsl:text>
    <xsl:text>|142001020200|Для среднеэтажной застройки|</xsl:text>
    <xsl:text>|142001020300|Для многоэтажной застройки|</xsl:text>
    <xsl:text>|142001020400|Для иных видов жилой застройки|</xsl:text>
    <xsl:text>|142001030000|Для размещения объектов дошкольного, начального, общего и среднего (полного) общего образования|</xsl:text>
    <xsl:text>|142001040000|Для размещения иных объектов, допустимых в жилых зонах и не перечисленных в классификаторе|</xsl:text>
    <xsl:text>|142002000000|Для объектов общественно-делового значения|</xsl:text>
    <xsl:text>|142002010000|Для размещения объектов социального и коммунально-бытового назначения|</xsl:text>
    <xsl:text>|142002020000|Для размещения объектов здравоохранения|</xsl:text>
    <xsl:text>|142002030000|Для размещения объектов культуры|</xsl:text>
    <xsl:text>|142002040000|Для размещения объектов торговли|</xsl:text>
    <xsl:text>|142002040100|Для размещения объектов розничной торговли|</xsl:text>
    <xsl:text>|142002040200|Для размещения объектов оптовой торговли|</xsl:text>
    <xsl:text>|142002050000|Для размещения объектов общественного питания|</xsl:text>
    <xsl:text>|142002060000|Для размещения объектов предпринимательской деятельности|</xsl:text>
    <xsl:text>|142002070000|Для размещения объектов среднего профессионального и высшего профессионального образования|</xsl:text>
    <xsl:text>|142002080000|Для размещения административных зданий|</xsl:text>
    <xsl:text>|142002090000|Для размещения научно-исследовательских учреждений|</xsl:text>
    <xsl:text>|142002100000|Для размещения культовых зданий|</xsl:text>
    <xsl:text>|142002110000|Для стоянок автомобильного транспорта|</xsl:text>
    <xsl:text>|142002120000|Для размещения объектов делового назначения, в том числе офисных центров|</xsl:text>
    <xsl:text>|142002130000|Для размещения объектов финансового назначения|</xsl:text>
    <xsl:text>|142002140000|Для размещения гостиниц|</xsl:text>
    <xsl:text>|142002150000|Для размещения подземных или многоэтажных гаражей|</xsl:text>
    <xsl:text>|142002160000|Для размещения индивидуальных гаражей|</xsl:text>
    <xsl:text>|142002170000|Для размещения иных объектов общественно-делового значения, обеспечивающих жизнь граждан|</xsl:text>
    <xsl:text>|142003000000|Для общего пользования (уличная сеть)|</xsl:text>
    <xsl:text>|142004000000|Для размещения объектов специального назначения|</xsl:text>
    <xsl:text>|142004010000|Для размещения кладбищ|</xsl:text>
    <xsl:text>|142004020000|Для размещения крематориев|</xsl:text>
    <xsl:text>|142004030000|Для размещения скотомогильников|</xsl:text>
    <xsl:text>|142004040000|Под объектами размещения отходов потребления|</xsl:text>
    <xsl:text>|142004050000|Под иными объектами специального назначения|</xsl:text>
    <xsl:text>|142005000000|Для размещения коммунальных, складских объектов|</xsl:text>
    <xsl:text>|142006000000|Для размещения объектов жилищно-коммунального хозяйства|</xsl:text>
    <xsl:text>|142007000000|Для иных видов использования, характерных для населенных пунктов|</xsl:text>
    <xsl:text>|143000000000|Для размещения объектов промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, обеспечения космической деятельности, обороны, безопасности и иного специального назначения|</xsl:text>
    <xsl:text>|143001000000|Для размещения промышленных объектов|</xsl:text>
    <xsl:text>|143001010000|Для размещения производственных и административных зданий, строений, сооружений и обслуживающих их объектов|</xsl:text>
    <xsl:text>|143001010100|Для размещения производственных зданий|</xsl:text>
    <xsl:text>|143001010200|Для размещения коммуникаций|</xsl:text>
    <xsl:text>|143001010300|Для размещения подъездных путей|</xsl:text>
    <xsl:text>|143001010400|Для размещения складских помещений|</xsl:text>
    <xsl:text>|143001010500|Для размещения административных зданий|</xsl:text>
    <xsl:text>|143001010600|Для размещения культурно-бытовых зданий|</xsl:text>
    <xsl:text>|143001010700|Для размещения иных сооружений промышленности|</xsl:text>
    <xsl:text>|143001020000|Для добычи и разработки полезных ископаемых|</xsl:text>
    <xsl:text>|143001030000|Для размещения иных объектов промышленности|</xsl:text>
    <xsl:text>|143002000000|Для размещения объектов энергетики|</xsl:text>
    <xsl:text>|143002010000|Для размещения электростанций и обслуживающих сооружений и объектов|</xsl:text>
    <xsl:text>|143002010100|Для размещения гидроэлектростанций|</xsl:text>
    <xsl:text>|143002010200|Для размещения атомных станций|</xsl:text>
    <xsl:text>|143002010300|Для размещения ядерных установок|</xsl:text>
    <xsl:text>|143002010400|Для размещения пунктов хранения ядерных материалов и радиоактивных веществ энергетики|</xsl:text>
    <xsl:text>|143002010500|Для размещения хранилищ радиоактивных отходов|</xsl:text>
    <xsl:text>|143002010600|Для размещения тепловых станций|</xsl:text>
    <xsl:text>|143002010700|Для размещения иных типов электростанций|</xsl:text>
    <xsl:text>|143002010800|Для размещения иных обслуживающих сооружений и объектов|</xsl:text>
    <xsl:text>|143002020000|Для размещения объектов электросетевого хозяйства|</xsl:text>
    <xsl:text>|143002020100|Для размещения воздушных линий электропередачи|</xsl:text>
    <xsl:text>|143002020200|Для размещения наземных сооружений кабельных линий электропередачи|</xsl:text>
    <xsl:text>|143002020300|Для размещения подстанций|</xsl:text>
    <xsl:text>|143002020400|Для размещения распределительных пунктов|</xsl:text>
    <xsl:text>|143002020500|Для размещения других сооружений и объектов электросетевого хозяйства|</xsl:text>
    <xsl:text>|143002030000|Для размещения иных объектов энергетики|</xsl:text>
    <xsl:text>|143003000000|Для размещения объектов транспорта|</xsl:text>
    <xsl:text>|143003010000|Для размещения и эксплуатации объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003010100|Для размещения железнодорожных путей и их конструктивных элементов|</xsl:text>
    <xsl:text>|143003010200|Для размещения полос отвода железнодорожных путей|</xsl:text>
    <xsl:text>|143003010300|Для размещения, эксплуатации, расширения и реконструкции строений, зданий, сооружений, в том числе железнодорожных вокзалов, железнодорожных станций, а также устройств и других объектов, необходимых для эксплуатации, содержания, строительства, реконструкции, ремонта, развития наземных и подземных зданий, строений, сооружений, устройств и других объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003010301|Для размещения железнодорожных вокзалов|</xsl:text>
    <xsl:text>|143003010302|Для размещения железнодорожных станций|</xsl:text>
    <xsl:text>|143003010303|Для размещения устройств и других объектов, необходимых для эксплуатации, содержания, строительства, реконструкции, ремонта, развития наземных и подземных зданий, строений, сооружений, устройств и других объектов железнодорожного транспорта|</xsl:text>
    <xsl:text>|143003020000|Для размещения и эксплуатации объектов автомобильного транспорта и объектов дорожного хозяйства|</xsl:text>
    <xsl:text>|143003020100|Для размещения автомобильных дорог и их конструктивных элементов|</xsl:text>
    <xsl:text>|143003020200|Для размещения полос отвода|</xsl:text>
    <xsl:text>|143003020300|Для размещения объектов дорожного сервиса в полосах отвода автомобильных дорог|</xsl:text>
    <xsl:text>|143003020400|Для размещения дорожных сооружений|</xsl:text>
    <xsl:text>|143003020500|Для размещения автовокзалов и автостанций|</xsl:text>
    <xsl:text>|143003020600|Для размещения иных объектов автомобильного транспорта и дорожного хозяйства|</xsl:text>
    <xsl:text>|143003030000|Для размещения и эксплуатации объектов морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|143003030100|Для размещения искусственно созданных внутренних водных путей|</xsl:text>
    <xsl:text>|143003030200|Для размещения морских и речных портов, причалов, пристаней|</xsl:text>
    <xsl:text>|143003030300|Для размещения иных объектов морского, внутреннего водного транспорта|</xsl:text>
    <xsl:text>|143003030400|Для выделения береговой полосы|</xsl:text>
    <xsl:text>|143003040000|Для размещения и эксплуатации объектов воздушного транспорта|</xsl:text>
    <xsl:text>|143003040100|Для размещения аэропортов и аэродромов|</xsl:text>
    <xsl:text>|143003040200|Для размещения аэровокзалов|</xsl:text>
    <xsl:text>|143003040300|Для размещения взлетно-посадочных полос|</xsl:text>
    <xsl:text>|143003040400|Для размещения иных наземных объектов воздушного транспорта|</xsl:text>
    <xsl:text>|143003050000|Для размещения и эксплуатации объектов трубопроводного транспорта|</xsl:text>
    <xsl:text>|143003050100|Для размещения нефтепроводов|</xsl:text>
    <xsl:text>|143003050200|Для размещения газопроводов|</xsl:text>
    <xsl:text>|143003050300|Для размещения иных трубопроводов|</xsl:text>
    <xsl:text>|143003050400|Для размещения иных объектов трубопроводного транспорта|</xsl:text>
    <xsl:text>|143003060000|Для размещения и эксплуатации иных объектов транспорта|</xsl:text>
    <xsl:text>|143004000000|Для размещения объектов связи, радиовещания, телевидения, информатики|</xsl:text>
    <xsl:text>|143004010000|Для размещения эксплуатационных предприятий связи и обслуживания линий связи|</xsl:text>
    <xsl:text>|143004020000|Для размещения кабельных, радиорелейных и воздушных линий связи и линий радиофикации на трассах кабельных и воздушных линий связи и радиофикации и их охранные зоны|</xsl:text>
    <xsl:text>|143004030000|Для размещения подземных кабельных и воздушных линий связи и радиофикации и их охранные зоны|</xsl:text>
    <xsl:text>|143004040000|Для размещения наземных и подземных необслуживаемых усилительных пунктов на кабельных линиях связи и их охранные зоны|</xsl:text>
    <xsl:text>|143004050000|Для размещения наземных сооружений и инфраструктур спутниковой связи|</xsl:text>
    <xsl:text>|143004060000|Для размещения иных объектов связи, радиовещания, телевидения, информатики|</xsl:text>
    <xsl:text>|143005000000|Для размещения объектов, предназначенных для обеспечения космической деятельности|</xsl:text>
    <xsl:text>|143005010000|Для размещения космодромов, стартовых комплексов и пусковых установок|</xsl:text>
    <xsl:text>|143005020000|Для размещения командно-измерительных комплексов, центров и пунктов управления полетами космических объектов, приема, хранения и переработки информации|</xsl:text>
    <xsl:text>|143005030000|Для размещения баз хранения космической техники|</xsl:text>
    <xsl:text>|143005040000|Для размещения полигонов приземления космических объектов и взлетно-посадочных полос|</xsl:text>
    <xsl:text>|143005050000|Для размещения объектов экспериментальной базы для отработки космической техники|</xsl:text>
    <xsl:text>|143005060000|Для размещения центров и оборудования для подготовки космонавтов|</xsl:text>
    <xsl:text>|143005070000|Для размещения других наземных сооружений и техники, используемых при осуществлении космической деятельности|</xsl:text>
    <xsl:text>|143006000000|Для размещения объектов, предназначенных для обеспечения обороны и безопасности|</xsl:text>
    <xsl:text>|143006010000|Для обеспечения задач обороны|</xsl:text>
    <xsl:text>|143006010100|Для размещения военных организаций, учреждений и других объектов|</xsl:text>
    <xsl:text>|143006010200|Для дислокации войск и сил флота|</xsl:text>
    <xsl:text>|143006010300|Для проведения учений и иных мероприятий|</xsl:text>
    <xsl:text>|143006010400|Для испытательных полигонов|</xsl:text>
    <xsl:text>|143006010500|Для мест уничтожения оружия и захоронения отходов|</xsl:text>
    <xsl:text>|143006010600|Для создания запасов материальных ценностей в государственном и мобилизационном резервах (хранилища, склады и другие)|</xsl:text>
    <xsl:text>|143006010700|Для размещения иных объектов обороны|</xsl:text>
    <xsl:text>|143006020000|Для размещения объектов (территорий), обеспечивающих защиту и охрану Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|143006020100|Для обустройства и содержания инженерно-технических сооружений и заграждений|</xsl:text>
    <xsl:text>|143006020200|Для обустройства и содержания пограничных знаков|</xsl:text>
    <xsl:text>|143006020300|Для обустройства и содержания пограничных просек|</xsl:text>
    <xsl:text>|143006020400|Для обустройства и содержания коммуникаций|</xsl:text>
    <xsl:text>|143006020500|Для обустройства и содержания пунктов пропуска через Государственную границу Российской Федерации|</xsl:text>
    <xsl:text>|143006020600|Для размещения иных объектов для защиты и охраны Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|143006030000|Для размещения иных объектов обороны и безопасности|</xsl:text>
    <xsl:text>|143007000000|Для размещения иных объектов промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, обеспечения космической деятельности, обороны, безопасности и иного специального назначения|</xsl:text>
    <xsl:text>|144000000000|Для размещения особо охраняемых историко-культурных и природных объектов (территорий)|</xsl:text>
    <xsl:text>|144001000000|Для размещения особо охраняемых природных объектов (территорий)|</xsl:text>
    <xsl:text>|144001010000|Для размещения государственных природных заповедников (в том числе биосферных)|</xsl:text>
    <xsl:text>|144001020000|Для размещения государственных природных заказников|</xsl:text>
    <xsl:text>|144001030000|Для размещения национальных парков|</xsl:text>
    <xsl:text>|144001040000|Для размещения природных парков|</xsl:text>
    <xsl:text>|144001050000|Для размещения дендрологических парков|</xsl:text>
    <xsl:text>|144001060000|Для размещения ботанических садов|</xsl:text>
    <xsl:text>|144001070000|Для размещения объектов санаторного и курортного назначения|</xsl:text>
    <xsl:text>|144001080000|Территории месторождений минеральных вод, лечебных грязей, рапы лиманов и озер|</xsl:text>
    <xsl:text>|144001090000|Для традиционного природопользования|</xsl:text>
    <xsl:text>|144001100000|Для размещения иных особо охраняемых природных территорий (объектов)|</xsl:text>
    <xsl:text>|144002000000|Для размещения объектов (территорий) природоохранного назначения|</xsl:text>
    <xsl:text>|144003000000|Для размещения объектов (территорий) рекреационного назначения|</xsl:text>
    <xsl:text>|144003010000|Для размещения домов отдыха, пансионатов, кемпингов|</xsl:text>
    <xsl:text>|144003020000|Для размещения объектов физической культуры и спорта|</xsl:text>
    <xsl:text>|144003030000|Для размещения туристических баз, стационарных и палаточных туристско-оздоровительных лагерей, домов рыболова и охотника, детских туристических станций|</xsl:text>
    <xsl:text>|144003040000|Для размещения туристических парков|</xsl:text>
    <xsl:text>|144003050000|Для размещения лесопарков|</xsl:text>
    <xsl:text>|144003060000|Для размещения учебно-туристических троп и трасс|</xsl:text>
    <xsl:text>|144003070000|Для размещения детских и спортивных лагерей|</xsl:text>
    <xsl:text>|144003080000|Для размещения скверов, парков, городских садов|</xsl:text>
    <xsl:text>|144003090000|Для размещения пляжей|</xsl:text>
    <xsl:text>|144003100000|Для размещения иных объектов (территорий) рекреационного назначения|</xsl:text>
    <xsl:text>|144004000000|Для размещения объектов историко-культурного назначения|</xsl:text>
    <xsl:text>|144004010000|Для размещения объектов культурного наследия народов Российской Федерации (памятников истории и культуры), в том числе объектов археологического наследия|</xsl:text>
    <xsl:text>|144004020000|Для размещения военных и гражданских захоронений|</xsl:text>
    <xsl:text>|144005000000|Для размещения иных особо охраняемых историко-культурных и природных объектов (территорий)|</xsl:text>
    <xsl:text>|145000000000|Для размещения объектов лесного фонда|</xsl:text>
    <xsl:text>|145001000000|Для размещения лесной растительности|</xsl:text>
    <xsl:text>|145002000000|Для восстановления лесной растительности|</xsl:text>
    <xsl:text>|145003000000|Для прочих объектов лесного хозяйства|</xsl:text>
    <xsl:text>|146000000000|Для размещения объектов водного фонда|</xsl:text>
    <xsl:text>|146001000000|Под водными объектами|</xsl:text>
    <xsl:text>|146002000000|Для размещения гидротехнических сооружений|</xsl:text>
    <xsl:text>|146003000000|Для размещения иных сооружений, расположенных на водных объектах|</xsl:text>
    <xsl:text>|147000000000|Земли запаса (неиспользуемые)|</xsl:text>
  </xsl:template>

  <xsl:template name="dAllowedUse">
    <xsl:text>|FILE|dAllowedUse_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор видов разрешенного использования земельных участков|</xsl:text>
    <xsl:text>|214001000000|Сельскохозяйственное использование|</xsl:text>
    <xsl:text>|214001001000|Растениеводство|</xsl:text>
    <xsl:text>|214001001001|Выращивание зерновых и иных сельскохозяйственных культур|</xsl:text>
    <xsl:text>|214001001002|Овощеводство|</xsl:text>
    <xsl:text>|214001001003|Выращивание тонизирующих, лекарственных, цветочных культур|</xsl:text>
    <xsl:text>|214001001004|Садоводство|</xsl:text>
    <xsl:text>|214001001005|Выращивание льна и конопли|</xsl:text>
    <xsl:text>|214001002000|Животноводство|</xsl:text>
    <xsl:text>|214001002001|Скотоводство|</xsl:text>
    <xsl:text>|214001002002|Звероводство|</xsl:text>
    <xsl:text>|214001002003|Птицеводство|</xsl:text>
    <xsl:text>|214001002004|Свиноводство|</xsl:text>
    <xsl:text>|214001003000|Пчеловодство|</xsl:text>
    <xsl:text>|214001004000|Рыбоводство|</xsl:text>
    <xsl:text>|214001005000|Научное обеспечение сельского хозяйства|</xsl:text>
    <xsl:text>|214001006000|Хранение и переработка сельскохозяйственной продукции|</xsl:text>
    <xsl:text>|214001007000|Ведение личного подсобного хозяйства на полевых участках|</xsl:text>
    <xsl:text>|214001008000|Питомники|</xsl:text>
    <xsl:text>|214001009000|Обеспечение сельскохозяйственного производства|</xsl:text>
    <xsl:text>|214002000000|Жилая застройка|</xsl:text>
    <xsl:text>|214002001000|Малоэтажная жилая застройка (индивидуальное жилищное строительство; размещение дачных домов и садовых домов)|</xsl:text>
    <xsl:text>|214002002000|Приусадебный участок личного подсобного хозяйства|</xsl:text>
    <xsl:text>|214002003000|Блокированная жилая застройка|</xsl:text>
    <xsl:text>|214002004000|Передвижное жилье|</xsl:text>
    <xsl:text>|214002005000|Среднеэтажная жилая застройка|</xsl:text>
    <xsl:text>|214002006000|Многоэтажная жилая застройка (высотная застройка)|</xsl:text>
    <xsl:text>|214002007000|Обслуживание жилой застройки|</xsl:text>
    <xsl:text>|214003000000|Общественное использование объектов капитального строительства|</xsl:text>
    <xsl:text>|214003001000|Коммунальное обслуживание|</xsl:text>
    <xsl:text>|214003002000|Социальное обслуживание|</xsl:text>
    <xsl:text>|214003003000|Бытовое обслуживание|</xsl:text>
    <xsl:text>|214003004000|Здравоохранение|</xsl:text>
    <xsl:text>|214003005000|Образование и просвещение|</xsl:text>
    <xsl:text>|214003006000|Культурное развитие|</xsl:text>
    <xsl:text>|214003007000|Религиозное использование|</xsl:text>
    <xsl:text>|214003008000|Общественное управление|</xsl:text>
    <xsl:text>|214003009000|Обеспечение научной деятельности|</xsl:text>
    <xsl:text>|214003010000|Ветеринарное обслуживание|</xsl:text>
    <xsl:text>|214004000000|Предпринимательство|</xsl:text>
    <xsl:text>|214004001000|Деловое управление|</xsl:text>
    <xsl:text>|214004002000|Торговые центры (Торгово-развлекательные центры)|</xsl:text>
    <xsl:text>|214004003000|Рынки|</xsl:text>
    <xsl:text>|214004004000|Магазины|</xsl:text>
    <xsl:text>|214004005000|Банковская и страховая деятельность|</xsl:text>
    <xsl:text>|214004006000|Общественное питание|</xsl:text>
    <xsl:text>|214004007000|Гостиничное обслуживание|</xsl:text>
    <xsl:text>|214004008000|Развлечения|</xsl:text>
    <xsl:text>|214004009000|Обслуживание автотранспорта|</xsl:text>
    <xsl:text>|214005000000|Отдых (рекреация)|</xsl:text>
    <xsl:text>|214005001000|Спорт|</xsl:text>
    <xsl:text>|214005002000|Природно-познавательный туризм|</xsl:text>
    <xsl:text>|214005003000|Охота и рыбалка|</xsl:text>
    <xsl:text>|214005004000|Причалы для маломерных судов|</xsl:text>
    <xsl:text>|214005005000|Поля для гольфа или конных прогулок|</xsl:text>
    <xsl:text>|214006000000|Производственная деятельность|</xsl:text>
    <xsl:text>|214006001000|Недропользование|</xsl:text>
    <xsl:text>|214006002000|Тяжелая промышленность|</xsl:text>
    <xsl:text>|214006003000|Легкая промышленность|</xsl:text>
    <xsl:text>|214006004000|Пищевая промышленность|</xsl:text>
    <xsl:text>|214006005000|Нефтехимическая промышленность|</xsl:text>
    <xsl:text>|214006006000|Строительная промышленность|</xsl:text>
    <xsl:text>|214006007000|Энергетика|</xsl:text>
    <xsl:text>|214006008000|Связь|</xsl:text>
    <xsl:text>|214006009000|Склады|</xsl:text>
    <xsl:text>|214007000000|Обеспечение космической деятельности|</xsl:text>
    <xsl:text>|214008000000|Транспорт|</xsl:text>
    <xsl:text>|214008001000|Железнодорожный транспорт|</xsl:text>
    <xsl:text>|214008002000|Автомобильный транспорт|</xsl:text>
    <xsl:text>|214008003000|Водный транспорт|</xsl:text>
    <xsl:text>|214008004000|Воздушный транспорт|</xsl:text>
    <xsl:text>|214008005000|Трубопроводный транспорт|</xsl:text>
    <xsl:text>|214009000000|Обеспечение обороны и безопасности|</xsl:text>
    <xsl:text>|214010000000|Обеспечение вооруженных сил|</xsl:text>
    <xsl:text>|214011000000|Охрана Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|214012000000|Обеспечение внутреннего правопорядка|</xsl:text>
    <xsl:text>|214013000000|Обеспечение деятельности по исполнению наказаний|</xsl:text>
    <xsl:text>|214014000000|Деятельность по особой охране и изучению природы|</xsl:text>
    <xsl:text>|214015000000|Охрана природных территорий|</xsl:text>
    <xsl:text>|214016000000|Курортная деятельность|</xsl:text>
    <xsl:text>|214017000000|Историческая|</xsl:text>
    <xsl:text>|214018000000|Лесная|</xsl:text>
    <xsl:text>|214018001000|Заготовка древесины|</xsl:text>
    <xsl:text>|214018002000|Лесные плантации|</xsl:text>
    <xsl:text>|214018003000|Заготовка лесных ресурсов|</xsl:text>
    <xsl:text>|214018004000|Резервные леса|</xsl:text>
    <xsl:text>|214019000000|Водные объекты|</xsl:text>
    <xsl:text>|214020000000|Общее пользование водными объектами|</xsl:text>
    <xsl:text>|214021000000|Специальное пользование водными объектами|</xsl:text>
    <xsl:text>|214022000000|Гидротехнические сооружения|</xsl:text>
    <xsl:text>|214023000000|Общее пользование территории|</xsl:text>
    <xsl:text>|214024000000|Ритуальная деятельность|</xsl:text>
    <xsl:text>|214025000000|Специальная|</xsl:text>
    <xsl:text>|214026000000|Запас|</xsl:text>
    <xsl:text>|214099000000|Сведения отсутствуют|</xsl:text>
  </xsl:template>

  <xsl:template name="dAllowedUse2">
    <xsl:text>|FILE|dAllowedUse_v02.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор видов разрешенного использования земельных участков|</xsl:text>
    <xsl:text>|214001000000|Сельскохозяйственное использование|</xsl:text>
    <xsl:text>|214001001000|Растениеводство|</xsl:text>
    <xsl:text>|214001001001|Выращивание зерновых и иных сельскохозяйственных культур|</xsl:text>
    <xsl:text>|214001001002|Овощеводство|</xsl:text>
    <xsl:text>|214001001003|Выращивание тонизирующих, лекарственных, цветочных культур|</xsl:text>
    <xsl:text>|214001001004|Садоводство|</xsl:text>
    <xsl:text>|214001001005|Выращивание льна и конопли|</xsl:text>
    <xsl:text>|214001002000|Животноводство|</xsl:text>
    <xsl:text>|214001002001|Скотоводство|</xsl:text>
    <xsl:text>|214001002002|Звероводство|</xsl:text>
    <xsl:text>|214001002003|Птицеводство|</xsl:text>
    <xsl:text>|214001002004|Свиноводство|</xsl:text>
    <xsl:text>|214001003000|Пчеловодство|</xsl:text>
    <xsl:text>|214001004000|Рыбоводство|</xsl:text>
    <xsl:text>|214001005000|Научное обеспечение сельского хозяйства|</xsl:text>
    <xsl:text>|214001006000|Хранение и переработка сельскохозяйственной продукции|</xsl:text>
    <xsl:text>|214001007000|Ведение личного подсобного хозяйства на полевых участках|</xsl:text>
    <xsl:text>|214001008000|Питомники|</xsl:text>
    <xsl:text>|214001009000|Обеспечение сельскохозяйственного производства|</xsl:text>
    <xsl:text>|214002000000|Жилая застройка|</xsl:text>
    <xsl:text>|214002001000|Для индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|214002001001|Малоэтажная многоквартирная жилая застройка|</xsl:text>
    <xsl:text>|214002002000|Для ведения личного подсобного хозяйства|</xsl:text>
    <xsl:text>|214002003000|Блокированная жилая застройка|</xsl:text>
    <xsl:text>|214002004000|Передвижное жилье|</xsl:text>
    <xsl:text>|214002005000|Среднеэтажная жилая застройка|</xsl:text>
    <xsl:text>|214002006000|Многоэтажная жилая застройка (высотная застройка)|</xsl:text>
    <xsl:text>|214002007000|Обслуживание жилой застройки|</xsl:text>
    <xsl:text>|214002007001|Объекты гаражного назначения|</xsl:text>
    <xsl:text>|214003000000|Общественное использование объектов капитального строительства|</xsl:text>
    <xsl:text>|214003001000|Коммунальное обслуживание|</xsl:text>
    <xsl:text>|214003002000|Социальное обслуживание|</xsl:text>
    <xsl:text>|214003003000|Бытовое обслуживание|</xsl:text>
    <xsl:text>|214003004000|Здравоохранение|</xsl:text>
    <xsl:text>|214003004001|Амбулаторно-поликлиническое обслуживание|</xsl:text>
    <xsl:text>|214003004002|Стационарное медицинское обслуживание|</xsl:text>
    <xsl:text>|214003005000|Образование и просвещение|</xsl:text>
    <xsl:text>|214003005001|Дошкольное, начальное и среднее общее образование|</xsl:text>
    <xsl:text>|214003005002|Среднее и высшее профессиональное образование|</xsl:text>
    <xsl:text>|214003006000|Культурное развитие|</xsl:text>
    <xsl:text>|214003007000|Религиозное использование|</xsl:text>
    <xsl:text>|214003008000|Общественное управление|</xsl:text>
    <xsl:text>|214003009000|Обеспечение научной деятельности|</xsl:text>
    <xsl:text>|214003009001|Обеспечение деятельности в области гидрометеорологии и смежных с ней областях|</xsl:text>
    <xsl:text>|214003010000|Ветеринарное обслуживание|</xsl:text>
    <xsl:text>|214003010001|Амбулаторное ветеринарное обслуживание|</xsl:text>
    <xsl:text>|214003010002|Приюты для животных|</xsl:text>
    <xsl:text>|214004000000|Предпринимательство|</xsl:text>
    <xsl:text>|214004001000|Деловое управление|</xsl:text>
    <xsl:text>|214004002000|Объекты торговли (торговые центры, торгово-развлекательные центры (комплексы)|</xsl:text>
    <xsl:text>|214004003000|Рынки|</xsl:text>
    <xsl:text>|214004004000|Магазины|</xsl:text>
    <xsl:text>|214004005000|Банковская и страховая деятельность|</xsl:text>
    <xsl:text>|214004006000|Общественное питание|</xsl:text>
    <xsl:text>|214004007000|Гостиничное обслуживание|</xsl:text>
    <xsl:text>|214004008000|Развлечения|</xsl:text>
    <xsl:text>|214004009000|Обслуживание автотранспорта|</xsl:text>
    <xsl:text>|214004009001|Объекты придорожного сервиса|</xsl:text>
    <xsl:text>|214004010000|Выставочно-ярмарочная деятельность|</xsl:text>
    <xsl:text>|214005000000|Отдых (рекреация)|</xsl:text>
    <xsl:text>|214005001000|Спорт|</xsl:text>
    <xsl:text>|214005002000|Природно-познавательный туризм|</xsl:text>
    <xsl:text>|214005002001|Туристическое обслуживание|</xsl:text>
    <xsl:text>|214005003000|Охота и рыбалка|</xsl:text>
    <xsl:text>|214005004000|Причалы для маломерных судов|</xsl:text>
    <xsl:text>|214005005000|Поля для гольфа или конных прогулок|</xsl:text>
    <xsl:text>|214006000000|Производственная деятельность|</xsl:text>
    <xsl:text>|214006001000|Недропользование|</xsl:text>
    <xsl:text>|214006002000|Тяжелая промышленность|</xsl:text>
    <xsl:text>|214006002001|Автомобилестроительная промышленность|</xsl:text>
    <xsl:text>|214006003000|Легкая промышленность|</xsl:text>
    <xsl:text>|214006003001|Фармацевтическая промышленность|</xsl:text>
    <xsl:text>|214006004000|Пищевая промышленность|</xsl:text>
    <xsl:text>|214006005000|Нефтехимическая промышленность|</xsl:text>
    <xsl:text>|214006006000|Строительная промышленность|</xsl:text>
    <xsl:text>|214006007000|Энергетика|</xsl:text>
    <xsl:text>|214006007001|Атомная энергетика|</xsl:text>
    <xsl:text>|214006008000|Связь|</xsl:text>
    <xsl:text>|214006009000|Склады|</xsl:text>
    <xsl:text>|214007000000|Обеспечение космической деятельности|</xsl:text>
    <xsl:text>|214006011000|Целлюлозно-бумажная промышленность|</xsl:text>
    <xsl:text>|214008000000|Транспорт|</xsl:text>
    <xsl:text>|214008001000|Железнодорожный транспорт|</xsl:text>
    <xsl:text>|214008002000|Автомобильный транспорт|</xsl:text>
    <xsl:text>|214008003000|Водный транспорт|</xsl:text>
    <xsl:text>|214008004000|Воздушный транспорт|</xsl:text>
    <xsl:text>|214008005000|Трубопроводный транспорт|</xsl:text>
    <xsl:text>|214009000000|Обеспечение обороны и безопасности|</xsl:text>
    <xsl:text>|214010000000|Обеспечение вооруженных сил|</xsl:text>
    <xsl:text>|214011000000|Охрана Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|214012000000|Обеспечение внутреннего правопорядка|</xsl:text>
    <xsl:text>|214013000000|Обеспечение деятельности по исполнению наказаний|</xsl:text>
    <xsl:text>|214014000000|Деятельность по особой охране и изучению природы|</xsl:text>
    <xsl:text>|214015000000|Охрана природных территорий|</xsl:text>
    <xsl:text>|214016000000|Курортная деятельность|</xsl:text>
    <xsl:text>|214016001000|Санаторная деятельность|</xsl:text>
    <xsl:text>|214017000000|Историко-культурная деятельность|</xsl:text>
    <xsl:text>|214018000000|Использование лесов|</xsl:text>
    <xsl:text>|214018001000|Заготовка древесины|</xsl:text>
    <xsl:text>|214018002000|Лесные плантации|</xsl:text>
    <xsl:text>|214018003000|Заготовка лесных ресурсов|</xsl:text>
    <xsl:text>|214018004000|Резервные леса|</xsl:text>
    <xsl:text>|214019000000|Водные объекты|</xsl:text>
    <xsl:text>|214020000000|Общее пользование водными объектами|</xsl:text>
    <xsl:text>|214021000000|Специальное пользование водными объектами|</xsl:text>
    <xsl:text>|214022000000|Гидротехнические сооружения|</xsl:text>
    <xsl:text>|214023000000|Земельные участки (территории) общего пользования|</xsl:text>
    <xsl:text>|214024000000|Ритуальная деятельность|</xsl:text>
    <xsl:text>|214025000000|Специальная деятельность|</xsl:text>
    <xsl:text>|214026000000|Запас|</xsl:text>
    <xsl:text>|214027001000|Ведение огородничества|</xsl:text>
    <xsl:text>|214027002000|Ведение садоводства|</xsl:text>
    <xsl:text>|214027003000|Ведение дачного хозяйства|</xsl:text>
    <xsl:text>|214099000000|Сведения отсутствуют|</xsl:text>
  </xsl:template>

  <xsl:template name="dAction">
    <xsl:text>|FILE|dAction.xsd|</xsl:text>
    <xsl:text>|NAME|Справочник учетных и регистрационных действий по обращениям|</xsl:text>
    <xsl:text>|659001000000|Действия при кадастровом учете|</xsl:text>
    <xsl:text>|659001001000|Внесение в ГКН сведений о ранее учтенном земельном участке|</xsl:text>
    <xsl:text>|659001002000|Кадастровый учет земельного участка|</xsl:text>
    <xsl:text>|659001003000|Кадастровый учет изменений земельного участка (кроме учета изменений адреса правообладателя)|</xsl:text>
    <xsl:text>|659001004000|Учет изменения адреса правообладателя земельного участка|</xsl:text>
    <xsl:text>|659001005000|Снятие с кадастрового учета земельного участка, сведения о котором имеют временный характер|</xsl:text>
    <xsl:text>|659001006000|Исправление кадастровой ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|659001007000|Исправление технической ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|659002000000|Действия при регистрации вещного права|</xsl:text>
    <xsl:text>|659002001000|Регистрация ранее возникшего вещного права|</xsl:text>
    <xsl:text>|659002002000|Регистрация права собственности|</xsl:text>
    <xsl:text>|659002003000|Регистрация права общей долевой собственности|</xsl:text>
    <xsl:text>|659002004000|Регистрация права общей совместной собственности|</xsl:text>
    <xsl:text>|659002005000|Регистрация вещного права (кроме права собственности)|</xsl:text>
    <xsl:text>|659002005001|Регистрация права пожизненного наследуемого владения|</xsl:text>
    <xsl:text>|659002005002|Регистрация права постоянного (бессрочного) пользования|</xsl:text>
    <xsl:text>|659002005003|Регистрация права хозяйственного ведения|</xsl:text>
    <xsl:text>|659002005004|Регистрация права оперативного управления|</xsl:text>
    <xsl:text>|659002005005|Регистрация сервитута (права ограниченного пользования чужим земельным участком)|</xsl:text>
    <xsl:text>|659002006000|Регистрация иного права|</xsl:text>
    <xsl:text>|659002007000|Регистрация прекращения права (без перехода права)|</xsl:text>
    <xsl:text>|659003000000|Действия при регистрации сделок|</xsl:text>
    <xsl:text>|659003001000|Регистрация договора об отчуждении|</xsl:text>
    <xsl:text>|659003001001|Регистрация договора купли-продажи|</xsl:text>
    <xsl:text>|659003001002|Регистрация договора мены|</xsl:text>
    <xsl:text>|659003001003|Регистрация договора дарения|</xsl:text>
    <xsl:text>|659003001004|Регистрация договора ренты|</xsl:text>
    <xsl:text>|659003001005|Регистрация договора пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|659003002000|Регистрация договора, влекущего возникновение ограничения (обременения)|</xsl:text>
    <xsl:text>|659003002001|Регистрация договора аренды (субаренды)|</xsl:text>
    <xsl:text>|659003002002|Регистрация договора об ипотеке|</xsl:text>
    <xsl:text>|659003002003|Регистрация договора безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|659003003000|Регистрация договора участия в долевом строительстве|</xsl:text>
    <xsl:text>|659003004000|Регистрация соглашения об изменении условий договора|</xsl:text>
    <xsl:text>|659003005000|Регистрация соглашения об уступке требований (переводе долга) по договору|</xsl:text>
    <xsl:text>|659003006000|Регистрация соглашения о расторжении договора|</xsl:text>
    <xsl:text>|659003007000|Регистрация соглашения об изменении содержания закладной|</xsl:text>
    <xsl:text>|659003008000|Регистрация иной сделки|</xsl:text>
    <xsl:text>|659004000000|Действия при регистрации ограничений (обременений)|</xsl:text>
    <xsl:text>|659004001000|Регистрация сервитута|</xsl:text>
    <xsl:text>|659004002000|Регистрация ипотеки (возникающей на основании закона)|</xsl:text>
    <xsl:text>|659004003000|Регистрация ареста|</xsl:text>
    <xsl:text>|659004004000|Регистрация иного ограничения (обременения)|</xsl:text>
    <xsl:text>|659004005000|Выдача закладной|</xsl:text>
    <xsl:text>|659004006000|Регистрация передачи имущества в доверительное управление|</xsl:text>
    <xsl:text>|659004007000|Регистрация прекращения сделки (без заключения соглашения о расторжении сделки)|</xsl:text>
    <xsl:text>|659004008000|Регистрация прекращения ограничения (обременения)|</xsl:text>
    <xsl:text>|659005000000|Учет бесхозяйного имущества|</xsl:text>
    <xsl:text>|659005001000|Постановка на учет бесхозяйного имущества|</xsl:text>
    <xsl:text>|659005002000|Снятие с учета бесхозяйного имущества|</xsl:text>
    <xsl:text>|659006000000|Действия при внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|659006001000|Внесение изменений в ЕГРП|</xsl:text>
    <xsl:text>|659006002000|Исправление технической ошибки|</xsl:text>
    <xsl:text>|659007000000|Иные действия|</xsl:text>
    <xsl:text>|659007001000|Принятие дополнительных документов на регистрацию прав|</xsl:text>
    <xsl:text>|659007002000|Принятие дополнительных документов на кадастровый учет|</xsl:text>
    <xsl:text>|659007003000|Приостановление регистрации|</xsl:text>
    <xsl:text>|659007004000|Прекращение регистрации|</xsl:text>
    <xsl:text>|659007005000|Возобновление регистрации|</xsl:text>
    <xsl:text>|659007006000|Повторная выдача нового свидетельства|</xsl:text>
    <xsl:text>|659008000000|Действия по предоставлению информации|</xsl:text>
    <xsl:text>|659008001000|Предоставление сведений ГКН|</xsl:text>
    <xsl:text>|659008001001|Предоставление сведений о земельном участке|</xsl:text>
    <xsl:text>|659008001002|Предоставление сведений о территории кадастрового квартала|</xsl:text>
    <xsl:text>|659008001003|Предоставление сведений о земельных участках на территории|</xsl:text>
    <xsl:text>|659008001004|Предоставление сведений ГКН в виде копии документа|</xsl:text>
    <xsl:text>|659008001005|Предоставление сведений ГКН по внутриведомственному запросу|</xsl:text>
    <xsl:text>|659008002000|Предоставление сведений ЕГРП|</xsl:text>
    <xsl:text>|659008002001|Предоставление сведений о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|659008002002|Предоставление справки о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|659008002003|Предоставление обобщенных сведений о правах отдельного лица на имеющиеся у него объекты недвижимости|</xsl:text>
    <xsl:text>|659008002004|Предоставление выписки о переходе прав на объект недвижимости|</xsl:text>
    <xsl:text>|659008002005|Предоставление выписки о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|659008002006|Предоставление информации о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|659008002007|Выдача копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|659008002008|Иное действие|</xsl:text>
    <xsl:text>|659007007000|Принятие дополнительных документов на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|659008002099|Иное действие|</xsl:text>
    <xsl:text>|659008003000|Предоставление сведений ЕГРОКС|</xsl:text>
    <xsl:text>|659008003001|Предоставление копии документа, на основании которого сведения об объекте капитального строительства внесены в ЕГРОКС|</xsl:text>
    <xsl:text>|659008003002|Предоставление сведений ЕГРОКС в виде кадастровой выписки и кадастрового паспорта|</xsl:text>
    <xsl:text>|659009000000|Учетные действия при внесении сведений об объектах капитального строительства в ЕГРОКС|</xsl:text>
    <xsl:text>|659009001000|Постановка на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|659009002000|Внесение в ЕГРОКС сведений о ранее учтенном объекте капитального строительства|</xsl:text>
    <xsl:text>|659009003000|Государственный учет изменений объекта капитального строительства (кроме учета изменений адреса правообладателя)|</xsl:text>
    <xsl:text>|659009004000|Снятие с государственного учета объекта капитального строительства|</xsl:text>
    <xsl:text>|659009005000|Исправление технической ошибки в сведениях ЕГРОКС|</xsl:text>
    <xsl:text>|659009006000|Исключение сведений из ЕГРОКС, носящих временный характер|</xsl:text>
    <xsl:text>|659009007000|Учет изменения адреса правообладателя объекта капитального строительства|</xsl:text>
    <xsl:text>|659009008000|Исправление кадастровой ошибки в сведениях ЕГРОКС|</xsl:text>
    <xsl:text>|659010000000|Действия при информационном взаимодействии|</xsl:text>
    <xsl:text>|659010001000|Внесение сведений о зарегистрированных правах и (или) их ограничениях (обременениях)|</xsl:text>
    <xsl:text>|659010002000|Внесение сведений государственной кадастровой оценки земель|</xsl:text>
    <xsl:text>|659010003000|Внесение сведений об установлении Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|659010004000|Внесение сведений об изменении прохождения Государственной границы Российской Федерации (включая аннулирование кадастровых сведений)|</xsl:text>
    <xsl:text>|659010005000|Внесение сведений об установлении границы между субъектами Российской Федерации, границы муниципального образования, границы населенного пункта|</xsl:text>
    <xsl:text>|659010006000|Внесение сведений об изменении границы между субъектами Российской Федерации, границы муниципального образования, границы населенного пункта (включая аннулирование кадастровых сведений)|</xsl:text>
    <xsl:text>|659010007000|Внесение сведений об установлении территориальной зоны или зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659010008000|Внесение сведений об изменении территориальной зоны или зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659010009000|Внесение сведений об отмене установления территориальной зоны или зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659010010000|Внесение сведений о природных объектах (лесах, водных объектах)|</xsl:text>
    <xsl:text>|659010011000|Внесение изменений в сведения о природных объектах (лесах, водных объектах)|</xsl:text>
    <xsl:text>|659010012000|Внесение изменений в сведения о земельных участках|</xsl:text>
    <xsl:text>|659010013000|Внесение изменений в сведения об объектах капитального строительства|</xsl:text>
    <xsl:text>|659011001000|Исправление технических ошибок внесения сведений в ГКН|</xsl:text>
    <xsl:text>|659011001001|Исправление технической ошибки в сведениях о прохождении участка Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|659011001002|Исправление технической ошибки в сведениях о границах между субъектами Российской Федерации, о границе муниципального образования, о границе населенного пункта|</xsl:text>
    <xsl:text>|659011001003|Исправление технической ошибки в сведениях о территориальной зоне или зоне с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659011001004|Исправление технической ошибки о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|659012000000|Возврат платежа|</xsl:text>
  </xsl:template>
  <xsl:template name="dActionReestr">
    <!--Info: D:\Dictionary3\dAction.xsd-->
    <xsl:text>|FILE|dAction.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор учётных, регистрационных и иных действий по обращениям|</xsl:text>
    <xsl:text>|659001000000|Действия при государственном кадастровом учёте земельных участков по заявлениям|</xsl:text>
    <xsl:text>|659001001000|Внесение в ГКН сведений о ранее учтённом земельном участке|</xsl:text>
    <xsl:text>|659001002000|Государственный кадастровый учёт земельного участка|</xsl:text>
    <xsl:text>|659001003000|Государственный кадастровый учёт изменений земельного участка (кроме учёта изменений адреса правообладателя)|</xsl:text>
    <xsl:text>|659001004000|Государственный кадастровый учёт изменения адреса правообладателя земельного участка|</xsl:text>
    <xsl:text>|659001005000|Снятие с государственного кадастрового учёта земельного участка, сведения о котором имеют временный характер|</xsl:text>
    <xsl:text>|659001006000|Исправление кадастровой ошибки в сведениях ГКН о земельном участке|</xsl:text>
    <xsl:text>|659001007000|Исправление технической ошибки в сведениях ГКН о земельном участке|</xsl:text>
    <xsl:text>|659002000000|Действия при регистрации вещного права|</xsl:text>
    <xsl:text>|659002001000|Регистрация ранее возникшего вещного права|</xsl:text>
    <xsl:text>|659002002000|Регистрация права собственности|</xsl:text>
    <xsl:text>|659002003000|Регистрация права общей долевой собственности|</xsl:text>
    <xsl:text>|659002004000|Регистрация права общей совместной собственности|</xsl:text>
    <xsl:text>|659002005000|Регистрация вещного права (кроме права собственности)|</xsl:text>
    <xsl:text>|659002005001|Регистрация права пожизненного наследуемого владения|</xsl:text>
    <xsl:text>|659002005002|Регистрация права постоянного (бессрочного) пользования|</xsl:text>
    <xsl:text>|659002005003|Регистрация права хозяйственного ведения|</xsl:text>
    <xsl:text>|659002005004|Регистрация права оперативного управления|</xsl:text>
    <xsl:text>|659002005005|Регистрация сервитута (права ограниченного пользования чужим земельным участком)|</xsl:text>
    <xsl:text>|659002007000|Регистрация прекращения права (без перехода права)|</xsl:text>
    <xsl:text>|659002008000|Регистрация прекращения права собственности на земельный участок или земельную долю вследствие отказа от права собственности|</xsl:text>
    <xsl:text>|659002009000|Регистрация прекращения права в связи с прекращением существования объекта недвижимости|</xsl:text>
    <xsl:text>|659002010000|Регистрация права без заявления по решению суда|</xsl:text>
    <xsl:text>|659003000000|Действия при регистрации сделок|</xsl:text>
    <xsl:text>|659003001000|Регистрация договора об отчуждении|</xsl:text>
    <xsl:text>|659003001001|Регистрация договора купли-продажи|</xsl:text>
    <xsl:text>|659003001002|Регистрация договора мены|</xsl:text>
    <xsl:text>|659003001003|Регистрация договора дарения|</xsl:text>
    <xsl:text>|659003001004|Регистрация договора ренты|</xsl:text>
    <xsl:text>|659003001005|Регистрация договора пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|659003002000|Регистрация договора, влекущего возникновение ограничения (обременения)|</xsl:text>
    <xsl:text>|659003002001|Регистрация договора аренды (субаренды)|</xsl:text>
    <xsl:text>|659003002002|Регистрация договора об ипотеке|</xsl:text>
    <xsl:text>|659003002003|Регистрация договора безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|659003003000|Регистрация договора участия в долевом строительстве|</xsl:text>
    <xsl:text>|659003004000|Регистрация соглашения об изменении условий договора|</xsl:text>
    <xsl:text>|659003005000|Регистрация соглашения об уступке требований (переводе долга) по договору|</xsl:text>
    <xsl:text>|659003006000|Регистрация соглашения о расторжении договора|</xsl:text>
    <xsl:text>|659003007000|Регистрация соглашения об изменении содержания закладной|</xsl:text>
    <xsl:text>|659004000000|Действия при регистрации ограничений (обременений)|</xsl:text>
    <xsl:text>|659004001000|Регистрация сервитута|</xsl:text>
    <xsl:text>|659004002000|Регистрация ипотеки (возникающей на основании закона)|</xsl:text>
    <xsl:text>|659004003000|Регистрация ареста|</xsl:text>
    <xsl:text>|659004004000|Регистрация иного ограничения (обременения)|</xsl:text>
    <xsl:text>|659004005000|Выдача закладной|</xsl:text>
    <xsl:text>|659004006000|Регистрация передачи имущества в доверительное управление|</xsl:text>
    <xsl:text>|659004008000|Регистрация прекращения ограничения (обременения)|</xsl:text>
    <xsl:text>|659004009000|Регистрация аренды (субаренды)|</xsl:text>
    <xsl:text>|659005000000|Учёт бесхозяйного имущества|</xsl:text>
    <xsl:text>|659005001000|Постановка на учёт бесхозяйного имущества|</xsl:text>
    <xsl:text>|659005002000|Принятие имущества вновь во владение, пользование или распоряжение|</xsl:text>
    <xsl:text>|659006000000|Действия при внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|659006001000|Внесение изменений в ЕГРП|</xsl:text>
    <xsl:text>|659006002000|Исправление технической ошибки по заявлению|</xsl:text>
    <xsl:text>|659006003000|Исправление технической ошибки по решению регистратора|</xsl:text>
    <xsl:text>|659006004000|Внесение изменений в ЕГРП в порядке межведомственного взаимодействия|</xsl:text>
    <xsl:text>|659007000000|Иные действия|</xsl:text>
    <xsl:text>|659007001000|Принятие дополнительных документов на регистрацию прав|</xsl:text>
    <xsl:text>|659007002000|Принятие дополнительных документов на кадастровый учёт|</xsl:text>
    <xsl:text>|659007003000|Приостановление регистрации|</xsl:text>
    <xsl:text>|659007004000|Прекращение регистрации|</xsl:text>
    <xsl:text>|659007005000|Возобновление регистрации|</xsl:text>
    <xsl:text>|659007006000|Повторная выдача нового свидетельства|</xsl:text>
    <xsl:text>|659007008000|Выдача ранее не выданного свидетельства|</xsl:text>
    <xsl:text>|659007009000|Внесение в государственный реестр отметки о наличии судебного спора в отношении зарегистрированного права|</xsl:text>
    <xsl:text>|659007010000|Внесение в государственный реестр отметки о возражении лица, право которого было зарегистрировано ранее|</xsl:text>
    <xsl:text>|659008000000|Действия по предоставлению информации|</xsl:text>
    <xsl:text>|659008001000|Предоставление сведений ГКН|</xsl:text>
    <xsl:text>|659008001001|Предоставление сведений о земельном участке|</xsl:text>
    <xsl:text>|659008001002|Предоставление сведений в виде кадастрового плана территории|</xsl:text>
    <xsl:text>|659008001004|Предоставление сведений ГКН в виде копии документа, на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|659008001005|Предоставление сведений ГКН в порядке межведомственного взаимодействия|</xsl:text>
    <xsl:text>|659008001006|Предоставление сведений, внесённых в ГКН, посредством обеспечения доступа к информационному ресурсу|</xsl:text>
    <xsl:text>|659008002000|Предоставление сведений ЕГРП|</xsl:text>
    <xsl:text>|659008002001|Предоставление общедоступных сведений о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|659008002002|Предоставление сведений о содержании правоустанавливающих документов|</xsl:text>
    <xsl:text>|659008002003|Предоставление обобщенных сведений (выписки) о правах отдельного лица на имеющиеся и имевшиеся у него объекты недвижимости|</xsl:text>
    <xsl:text>|659008002004|Предоставление выписки о переходе прав на объект недвижимости|</xsl:text>
    <xsl:text>|659008002005|Предоставление сведений о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|659008002006|Предоставление информации (справки) о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|659008002007|Выдача копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|659008002008|Предоставление сведений ЕГРП в порядке межведомственного взаимодействия|</xsl:text>
    <xsl:text>|659008002009|Предоставление сведений, содержащихся в ЕГРП, посредством обеспечения доступа к информационному ресурсу|</xsl:text>
    <xsl:text>|659008002010|Предоставление обобщенных сведений о правах отдельного лица на имеющиеся у него объекты недвижимости|</xsl:text>
    <xsl:text>|659008003000|Предоставление сведений ГКН (кроме земельных участков)|</xsl:text>
    <xsl:text>|659008003001|Предоставление копии документа, на основании которого сведения о здании, сооружении, помещении, объекте незавершённого строительства внесены в ГКН|</xsl:text>
    <xsl:text>|659008003002|Предоставление сведений, о здании, сооружении, помещении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|659009000000|Действия при государственном кадастровом учёте зданий, сооружений, помещений, объектов незавершённого строительства|</xsl:text>
    <xsl:text>|659009001000|Государственный кадастровый учёт здания, сооружения, помещения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|659009002000|Внесение в ГКН сведений о ранее учтённом здании, сооружении, помещении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|659009003000|Государственный кадастровый учёт изменений здания, сооружения, помещения, объекта незавершённого строительства (кроме учёта изменений адреса правообладателя)|</xsl:text>
    <xsl:text>|659009004000|Снятие с государственного кадастрового учёта здания, сооружения, помещения или объекта незавершённого строительства в связи с прекращением его существования|</xsl:text>
    <xsl:text>|659009004001|Снятие с государственного кадастрового учёта помещения в связи с регистрацией права собственности на здание или сооружение|</xsl:text>
    <xsl:text>|659009005000|Исправление технической ошибки в сведениях ГКН о здании, сооружении, помещении или об объекте незавершённого строительства|</xsl:text>
    <xsl:text>|659009006000|Снятие с государственного кадастрового учёта здания, сооружения, помещения или объекта незавершённого строительства, сведения о котором носят временный характер|</xsl:text>
    <xsl:text>|659009007000|Государственный кадастровый учёт изменения адреса правообладателя здания, сооружения, помещения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|659009008000|Исправление кадастровой ошибки в сведениях ГКН о здании, сооружении, помещении или об объекте незавершённого строительства|</xsl:text>
    <xsl:text>|659010000000|Действия по внесению в ГКН сведений в процессе информационного взаимодействия|</xsl:text>
    <xsl:text>|659010001000|Внесение сведений о зарегистрированных правах и (или) их ограничениях (обременениях)|</xsl:text>
    <xsl:text>|659010002000|Внесение сведений государственной кадастровой оценки|</xsl:text>
    <xsl:text>|659010003000|Внесение сведений о прохождении Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|659010004000|Внесение сведений об изменении прохождения Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|659010005000|Внесение сведений об установлении границы между субъектами Российской Федерации, границы муниципального образования, границы населённого пункта|</xsl:text>
    <xsl:text>|659010006000|Внесение сведений об изменении границы между субъектами Российской Федерации, границы муниципального образования, границы населённого пункта|</xsl:text>
    <xsl:text>|659010007000|Внесение сведений об установлении территориальной зоны или зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659010008000|Внесение сведений об изменении территориальной зоны или зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659010010000|Внесение сведений о природных объектах (лесах, водных объектах)|</xsl:text>
    <xsl:text>|659010011000|Внесение изменений в сведения о природных объектах (лесах, водных объектах)|</xsl:text>
    <xsl:text>|659010012000|Внесение изменений в сведения о земельных участках|</xsl:text>
    <xsl:text>|659010013000|Внесение изменений в сведения о зданиях, сооружениях, помещениях, объектах незавершённого строительства|</xsl:text>
    <xsl:text>|659010014000|Аннулирование сведений о границе между субъектами Российской Федерации, границе муниципального образования, границе населённого пункта|</xsl:text>
    <xsl:text>|659010015000|Аннулирование сведений о территориальной зоне или зоне с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659011001000|Исправление технических ошибок в сведениях о границах, зонах, а также о картографической и геодезической основах ГКН|</xsl:text>
    <xsl:text>|659011001001|Исправление технической ошибки в сведениях о прохождении участка Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|659011001002|Исправление технической ошибки в сведениях о границах между субъектами Российской Федерации, о границе муниципального образования, о границе населённого пункта|</xsl:text>
    <xsl:text>|659011001003|Исправление технической ошибки в сведениях о территориальной зоне или зоне с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|659011001004|Исправление технической ошибки о картографической и геодезической основах ГКН|</xsl:text>
    <xsl:text>|659012000000|Возврат платежа|</xsl:text>
    <xsl:text>|659013000000|Действия по внесению изменений в сведения ГКН об объектах недвижимости по обстоятельствам, не предполагающим наличие заявления|</xsl:text>
    <xsl:text>|659013001000|Аннулирование кадастровых сведений о земельных участках (их частях) по истечении срока «временного» статуса сведений ГКН|</xsl:text>
    <xsl:text>|659013002000|Аннулирование кадастровых сведений о зданиях, сооружениях, помещениях, объектах незавершённого строительства (их частях) по истечении срока «временного» статуса сведений ГКН|</xsl:text>
    <xsl:text>|659013003000|Исправление технических ошибок в сведениях ГКН о земельных участках по решению ОКУ|</xsl:text>
    <xsl:text>|659013004000|Исправление технических ошибок в сведениях ГКН о зданиях, сооружениях, помещениях, объектах незавершённого строительства по решению ОКУ|</xsl:text>
    <xsl:text>|659013005000|Исправление технической ошибки в сведениях о прохождении участка Государственной границы Российской Федерации по решению ОКУ|</xsl:text>
    <xsl:text>|659013006000|Исправление технической ошибки в сведениях о границах между субъектами Российской Федерации, о границе муниципального образования, о границе населённого пункта по решению ОКУ|</xsl:text>
    <xsl:text>|659013007000|Исправление технической ошибки в сведениях о территориальной зоне или зоне с особыми условиями использования территорий по решению ОКУ|</xsl:text>
    <xsl:text>|659013008000|Исправление технической ошибки о картографической и геодезической основах ГКН по решению ОКУ|</xsl:text>
    <xsl:text>|659013009000|Внесение изменений в сведения ГКН об объектах недвижимости по решению суда|</xsl:text>
    <xsl:text>|659014000000|Внесение сведений о картографической и геодезической основах ГКН|</xsl:text>
  </xsl:template>
  <xsl:template name="dAllDocuments">
    <!-- Расшифровки кодов документов:
      558401020500
      558401020600
      558401020700
      558401020800
      558401030200
      558502011200
      изменены в соотвествии с новыми схемами, старые расшифровки в комментариях.
    -->
    <xsl:text>|FILE|dAllDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны Российской Федерации, Министерства внутренних дел Российской Федерации и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учёт в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платёжное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558100000000|ЗАЯВЛЕНИЯ|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с государственным кадастровым учётом|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, в виде кадастровой выписки об объекте недвижимости, кадастрового паспорта объекта недвижимости и кадастрового плана территории, кадастровой справки о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на государственный кадастровый учёт объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном кадастровом учёте изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101040000|Заявление о внесении в Единый государственный реестр объектов капитального строительства (ЕГРОКС) сведений об объекте капитального строительства (ОКС)|</xsl:text>
    <xsl:text>|558101050000|Запрос о предоставлении сведений об ОКС|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с государственного кадастрового учёта объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в государственный кадастр недвижимости сведений о ранее учтённом объекте недвижимости|</xsl:text>
    <xsl:text>|558101080000|Заявление об исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населённых пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на государственный кадастровый учёт|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101130000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, посредством обеспечения доступа к информационному ресурсу, содержащему сведения государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101140000|Запрос о предоставлении перечня объектов недвижимости, подлежащих государственной кадастровой оценке|</xsl:text>
    <xsl:text>|558101150000|Заявление о прекращении осуществления кадастрового учёта|</xsl:text>
    <xsl:text>|558101160000|Межведомственный запрос документов в органах государственной власти и органах местного самоуправления|</xsl:text>
    <xsl:text>|558101170000|Запрос документов о ранее учтённом объекте недвижимости в органах государственной власти, органах местного самоуправления или органах и организациях по государственному техническому учёту и (или) технической инвентаризации|</xsl:text>
    <xsl:text>|558102000000|Заявления и запросы, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации права на недвижимое имущество, сделки с ним, ограничения (обременения), перехода, прекращения права на недвижимое имущество|</xsl:text>
    <xsl:text>|558102020000|Заявление о государственной регистрации прекращения права (ограничения (обременения) права)|</xsl:text>
    <xsl:text>|558102030000|Заявление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558102040000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558102050000|Заявление о представлении дополнительных документов для государственной регистрации прав|</xsl:text>
    <xsl:text>|558102060000|Заявление о приостановлении государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102070000|Заявление о возобновлении государственной регистрации|</xsl:text>
    <xsl:text>|558102080000|Заявление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558102090000|Заявление о повторной выдаче свидетельства о государственной регистрации права|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учёт бесхозяйного имущества|</xsl:text>
    <xsl:text>|558102120000|Заявление о выдаче закладной (новой закладной, дубликата закладной, аннулированной закладной)|</xsl:text>
    <xsl:text>|558102130000|Запрос о выдаче копий договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558102140000|Заявление о приостановлении государственной регистрации, возврате документов без проведения государственной регистрации, представлении дополнительных документов, о возобновлении государственной регистрации, ранее приостановленной по заявлению правообладателя, стороны (сторон) сделки (их представителя)|</xsl:text>
    <xsl:text>|558102150000|Заявление о повторной выдаче нового свидетельства о государственной регистрации права, выдаче закладной, внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, погашении регистрационной записи об ипотеке|</xsl:text>
    <xsl:text>|558102160000|Заявление о принятии имущества вновь во владение, пользование или распоряжение|</xsl:text>
    <xsl:text>|558102170000|Заявление о внесении в Единый государственный реестр прав на недвижимое имущество и сделок с ним отметки о наличии судебного спора в отношении зарегистрированного права|</xsl:text>
    <xsl:text>|558102180000|Заявление об исправлении технической ошибки в записях Единого государственного реестра прав на недвижимое имущество и сделок с ним, о наличии возражения в отношении зарегистрированного права на объект недвижимости, о погашении записи в Едином государственном реестре прав на недвижимое имущество и сделок с ним о наличии возражения в отношении зарегистрированного права на объект недвижимости, о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя), об отзыве ранее представленного заявления о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя)|</xsl:text>
    <xsl:text>|558102190000|Заявление о скреплении добавочного листа (добавочных листов) с закладной|</xsl:text>
    <xsl:text>|558102200000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним, посредством обеспечения доступа к информационному ресурсу, содержащему сведения Единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102210000|Заявление о государственной регистрации законного владельца закладной|</xsl:text>
    <xsl:text>|558102220000|Заявление о внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, погашении регистрационной записи об ипотеке|</xsl:text>
    <xsl:text>|558103000000|Заявления о государственном учёте зданий, сооружений, помещений, объектов незавершённого строительства (объектов учёта) и запросы о предоставлении сведений, внесённых в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103010000|Заявление о постановке на государственный учёт объекта учёта|</xsl:text>
    <xsl:text>|558103020000|Заявление о внесении в ЕГРОКС сведений о ранее учтённом объекте капитального строительства|</xsl:text>
    <xsl:text>|558103030000|Заявление о государственном учёте изменений объекта учёта|</xsl:text>
    <xsl:text>|558103040000|Заявление о снятии с государственного учёта объекта учёта|</xsl:text>
    <xsl:text>|558103050000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558103060000|Заявление об исключении сведений из ЕГРОКС, носящих временный характер|</xsl:text>
    <xsl:text>|558103070000|Запрос о предоставлении копии документа, на основании которого сведения об объекте внесены в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103080000|Запрос о предоставлении сведений, внесенных в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103090000|Заявление о представлении дополнительных документов на государственный учёт|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558199000000|Иное заявление|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт (техническая документация) объекта учёта|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558205050000|Технический паспорт сооружения|</xsl:text>
    <xsl:text>|558205060000|Технический паспорт объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимости|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения (выписка из ГКН)|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558214020000|Кадастровая выписка о здании, сооружении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|558215000000|Разрешение (копия) на ввод объекта капитального строительства в эксплуатацию|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания, помещения или сооружения, наименования сооружения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта учёта|</xsl:text>
    <xsl:text>|558220000000|Документы, в виде которых предоставляются сведения Единого государственного реестра|</xsl:text>
    <xsl:text>|558220010000|Выписка из Реестра, содержащая относящиеся к информации ограниченного доступа сведения об объекте учёта|</xsl:text>
    <xsl:text>|558220020000|Справка, содержащая, внесённые в Единый государственный реестр сведения о прекращении существования объекта учёта|</xsl:text>
    <xsl:text>|558220030000|Выписка из Реестра, подтверждающая факт отсутствия в Реестре сведений об объекте учета|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Решение о необходимости устранения кадастровой ошибки|</xsl:text>
    <xsl:text>|558221020000|Международный договор Российской Федерации, в соответствии с которым установлено или изменено прохождение государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Решение о присвоении, изменении адреса|</xsl:text>
    <xsl:text>|558221060000|Документы органов, осуществляющих ведение лесного и водного кадастра, содержащие сведения о природных объектах|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Акт об утверждении результатов определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558222000000|Документ, воспроизводящий сведения, содержащиеся в международном договоре Российской Федерации, в соответствии с которым установлено или изменено прохождение государственной границы Российской Федерации, а также сведения о федеральном законе, которым ратифицирован международный договор Российской Федерации, и об официальном опубликовании такого федерального закона|</xsl:text>
    <xsl:text>|558223000000|Соглашение об изменении границ между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|558224000000|Закон субъекта Российской Федерации об установлении или изменении границ муниципальных образований либо о преобразовании муниципальных образований|</xsl:text>
    <xsl:text>|558225000000|Акт уполномоченного органа об установлении или изменении границ населённых пунктов|</xsl:text>
    <xsl:text>|558226000000|Документ, воспроизводящий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта, содержащиеся в утверждённых органами власти документах|</xsl:text>
    <xsl:text>|558227000000|Решение об установлении или изменении границ зон с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|558228000000|Правовой акт, которым утверждены или изменены правила землепользования и застройки|</xsl:text>
    <xsl:text>|558229000000|Документ, подтверждающий изменение назначения помещения|</xsl:text>
    <xsl:text>|558230000000|Решение о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение|</xsl:text>
    <xsl:text>|558231000000|Акт приемочной комиссии, подтверждающем завершение переустройства и (или) перепланировки и (или) иных работ|</xsl:text>
    <xsl:text>|558232000000|Документы, воспроизводящие сведения об изменении назначения помещения|</xsl:text>
    <xsl:text>|558233000000|Документ, воспроизводящий сведения, содержащиеся в решении о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение|</xsl:text>
    <xsl:text>|558234000000|Документ, воспроизводящий сведения, содержащиеся в акте приемочной комиссии, подтверждающем завершение переустройства и (или) перепланировки и (или) иных работ|</xsl:text>
    <xsl:text>|558235000000|Документ, подтверждающий изменение назначения здания|</xsl:text>
    <xsl:text>|558236000000|Документ, подтверждающий изменение назначения сооружения|</xsl:text>
    <xsl:text>|558237000000|Решение о предоставлении разрешения на условно разрешенный вид использования|</xsl:text>
    <xsl:text>|558238000000|Решение об определении (изменении) вида разрешенного использования|</xsl:text>
    <xsl:text>|558239000000|Документ (копия), воспроизводящий сведения о предоставлении разрешения на условно разрешенный вид использования, об определении (изменении) вида разрешенного использования|</xsl:text>
    <xsl:text>|558240000000|Документ, воспроизводящий сведения, содержащиеся в решении о присвоении, изменении адреса|</xsl:text>
    <xsl:text>|558241000000|Документ, воспроизводящий содержащиеся в разрешении на ввод объекта капитального строительства в эксплуатацию сведения|</xsl:text>
    <xsl:text>|558242000000|Документ, воспроизводящий сведения, содержащиеся в реестре объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558243000000|Документ, воспроизводящий сведения, содержащиеся в акте Правительства Российской Федерации об исключении объекта недвижимости из единого государственного реестра объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558244000000|Документ, содержащий сведения о дате поступления документов, предусмотренных статьей 17 Федерального закона "Об объектах культурного наследия (памятниках истории и культуры) народов Российской Федерации", в отношении объекта недвижимости|</xsl:text>
    <xsl:text>|558245000000|Решение (копия решения) соответствующего органа государственной власти об отказе включить объект недвижимости в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558246000000|Акт Правительства Российской Федерации об исключении объекта недвижимости из единого государственного реестра объектов культурного наследия|</xsl:text>
    <xsl:text>|558247000000|Документ, воспроизводящий сведения о наименовании водного объекта и установленных параметрах водоохранных зон и прибрежных защитных полос, зон затопления, подтопления и других зон с особыми условиями их использования|</xsl:text>
    <xsl:text>|558248000000|Документ, воспроизводящий содержащиеся в государственном лесном реестре сведения в отношении лесного участка|</xsl:text>
    <xsl:text>|558249000000|Документ, воспроизводящий сведения, содержащиеся во вступившем в силу акте об утверждении результатов определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558250000000|Документ, воспроизводящий сведения, содержащиеся в решении об установлении или изменении границ зон с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|558251000000|Документ, воспроизводящий сведения, содержащиеся в правовом акте, которым утверждены или изменены правила землепользования и застройки, включая сведения о территориальных зонах|</xsl:text>
    <xsl:text>|558252000000|Карта (план) объекта землеустройства|</xsl:text>
    <xsl:text>|558253000000|Декларация заинтересованного лица о выбранном виде разрешенного использования земельного участка|</xsl:text>
    <xsl:text>|558254000000|Документы, определяющие (определявшие) в соответствии с законодательством Российской Федерации местоположение границ земельного участка (земельных участков)|</xsl:text>
    <xsl:text>|558254010000|Землеустроительная документация|</xsl:text>
    <xsl:text>|558254020000|Лесоустроительная документация|</xsl:text>
    <xsl:text>|558254030000|Документы градостроительного зонирования (Правила землепользования и застройки)|</xsl:text>
    <xsl:text>|558254040000|Документация по планировке территории (проекты межевания территорий), в т.ч. документ по планировке территории в планируемых границах искусственного земельного участка|</xsl:text>
    <xsl:text>|558254050000|Копия проекта межевания земельных участков|</xsl:text>
    <xsl:text>|558254060000|Акт отвода земельных участков в натуре|</xsl:text>
    <xsl:text>|558254070000|Проект границ земельных участков|</xsl:text>
    <xsl:text>|558254080000|Проект (копии отдельных составных частей) организации и застройки территорий садоводческих, огороднических или дачных некоммерческих объединений граждан|</xsl:text>
    <xsl:text>|558254090000|Проект (копии отдельных составных частей) перераспределения сельскохозяйственных угодий и иных земель сельскохозяйственного назначения|</xsl:text>
    <xsl:text>|558254100000|Решение о предварительном согласовании мест размещения объектов|</xsl:text>
    <xsl:text>|558254110000|Копия решения общего собрания участников долевой собственности на земельный участок из земель сельскохозяйственного назначения об утверждении проекта межевания земельных участков, перечня собственников образуемых земельных участков и размеров их долей в праве общей собственности на такие земельные участки|</xsl:text>
    <xsl:text>|558254120000|Копия документа, подтверждающий согласование проекта межевания земельного участка|</xsl:text>
    <xsl:text>|558254130000|Возражения заинтересованных лиц по поводу местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558254140000|Документ, свидетельствующий о снятии возражений заинтересованных лиц по поводу местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558254150000|Схема расположения земельных участков на кадастровых планах или кадастровых картах соответствующих территорий|</xsl:text>
    <xsl:text>|558254990000|Прочие документы, определяющие (определявшие) в соответствии с законодательством Российской Федерации местоположение границ земельного участка (земельных участков)|</xsl:text>
    <xsl:text>|558255000000|Картографические материалы|</xsl:text>
    <xsl:text>|558256000000|Материалы картографо-геодезического фонда|</xsl:text>
    <xsl:text>|558257000000|Документы, устанавливающие предельные минимальные и максимальные размеры, соответствующие виду разрешенного использования земельного участка|</xsl:text>
    <xsl:text>|558257010000|Федеральный закон|</xsl:text>
    <xsl:text>|558257020000|Закон субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558257030000|Нормативный правовой акт органа местного самоуправления|</xsl:text>
    <xsl:text>|558258000000|Документ, содержащий информацию о ранее присвоенных государственных учетных номерах объекта недвижимости|</xsl:text>
    <xsl:text>|558259000000|Протокол образования земельных участков|</xsl:text>
    <xsl:text>|558260000000|Чертеж (абрис) помещения|</xsl:text>
    <xsl:text>|558261000000|Проектная документация здания|</xsl:text>
    <xsl:text>|558262000000|Проектная документация сооружения|</xsl:text>
    <xsl:text>|558263000000|Решение комиссии по рассмотрению споров о результатах определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558264000000|Решение суда|</xsl:text>
    <xsl:text>|558299000000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие и правоудостоверяющие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента Российской Федерации|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства Российской Федерации|</xsl:text>
    <xsl:text>|558401020400|Закон (законы Российской Федерации, субъекта Российской Федерации)|</xsl:text>
    <xsl:text>|558401020500|Документ о предоставлении земельных участков|</xsl:text>
    <xsl:text>|558401020600|Решение об образовании земельных участков|</xsl:text>
    <xsl:text>|558401020700|Акт об установлении сервитута|</xsl:text>
    <xsl:text>|558401020800|Акт об установлении ограничения (обременения)|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401040100|Судебный акт, устанавливающий запрет на совершение действий в сфере государственного кадастрового учета в отношении объекта недвижимости|</xsl:text>
    <xsl:text>|558401040200|Судебный акт о восстановлении аннулированных и исключенных из государственного кадастра недвижимости сведений об объекте недвижимости|</xsl:text>
    <xsl:text>|558401040300|Судебный акт об установлении обременения (ограничении) в использовании объекта недвижимости (части объекта недвижимости)|</xsl:text>
    <xsl:text>|558401049900|Иные предусмотренные законодательством судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401060400|Копия решения о создании искусственного земельного участка|</xsl:text>
    <xsl:text>|558401069900|Иные документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий наличие, возникновение, переход ограничения (обременения) вещного права на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ И ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта Российской Федерации при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (акт оценки)|</xsl:text>
    <xsl:text>|558402290000|Договор|</xsl:text>
    <xsl:text>|558402300000|Соглашение|</xsl:text>
    <xsl:text>|558402310000|Письмо|</xsl:text>
    <xsl:text>|558402320000|Справка|</xsl:text>
    <xsl:text>|558402330000|Протокол|</xsl:text>
    <xsl:text>|558402340000|Акт|</xsl:text>
    <xsl:text>|558402350000|Выписка|</xsl:text>
    <xsl:text>|558402360000|Уведомление|</xsl:text>
    <xsl:text>|558402370000|Расписка|</xsl:text>
    <xsl:text>|558402380000|Заявление|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из ЕГРП о бесхозяйном объекте недвижимого имущества, принятом на учёт|</xsl:text>
    <xsl:text>|558403120000|Выписка из единого государственного реестра прав на недвижимое имущество и сделок с ним, удостоверяющей проведение государственной регистрации возникновения и (или) перехода прав на недвижимое имущество|</xsl:text>
    <xsl:text>|558403130000|ВЫПИСКА из Единого государственного реестра прав на недвижимое имущество и сделок с ним об одном из объектов предприятия|</xsl:text>
    <xsl:text>|558403140000|ВЫПИСКА из Единого государственного реестра прав на недвижимое имущество и сделок с ним о предприятии при прекращении предприятия как объекта права|</xsl:text>
    <xsl:text>|558403150000|ИНФОРМАЦИЯ о правах на объект недвижимого имущества, а также об ограничениях (обременениях) прав на него|</xsl:text>
    <xsl:text>|558403160000|ИНФОРМАЦИЯ о правах на объект недвижимого имущества, а также об ограничениях (обременениях) прав на него из книги учета арестов|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558404000000|Соглашения и согласия об образовании земельных участков|</xsl:text>
    <xsl:text>|558404010000|Соглашение о разделе, об объединении, о перераспределении земельных участков или о выделе из земельных участков|</xsl:text>
    <xsl:text>|558404020000|Согласие на образование земельных участков|</xsl:text>
    <xsl:text>|558404030000|Соглашение об образовании общей долевой собственности на земельный участок, образуемый при выделе его в счет земельной доли или земельных долей|</xsl:text>
    <xsl:text>|558404040000|Соглашение об образовании общей совместной собственности на земельный участок, образуемый при выделе его в счет земельной доли или земельных долей|</xsl:text>
    <xsl:text>|558405000000|Документы, подтверждающие возникновение права собственности в отношении земельного участка в силу федерального закона вне зависимости от момента государственной регистрации этого права в ЕГРП|</xsl:text>
    <xsl:text>|558405010000|Копия решения о безвозмездной передаче военного недвижимого имущества из федеральной собственности в собственность субъекта Российской Федерации - города федерального значения Москвы или Санкт-Петербурга либо муниципальную собственность|</xsl:text>
    <xsl:text>|558405020000|Подлинник или копия письма органа исполнительной власти субъекта Российской Федерации - города федерального значения Москвы или Санкт-Петербурга либо органа местного самоуправления муниципального образования о согласовании границ образуемого земельного участка с приложением согласованного проекта границ земельного участка в случае, если акт согласования границ земельного участка не заверен подписью уполномоченного должностного лица соответствующего органа.|</xsl:text>
    <xsl:text>|558405030000|Решение об изъятии земельных участков и (или) расположенных на них иных объектов недвижимого имущества в целях размещения олимпийских объектов|</xsl:text>
    <xsl:text>|558405040000|Копия акта приема-передачи объектов недвижимого имущества, в отношении которых принято решение об изъятии в целях размещения олимпийских объектов|</xsl:text>
    <xsl:text>|558405990000|Иные документы, подтверждающие возникновение права собственности в отношении земельного участка в силу федерального закона вне зависимости от момента государственной регистрации этого права в ЕГРП|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010200|Решение об отказе в исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010300|Решение об отказе в исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501010400|Решение об исправлении технической и кадастровой ошибок|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010800|Решение о снятии с кадастрового учёта земельных участков со статусом «временные» по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта|</xsl:text>
    <xsl:text>|558501011000|Решение об осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501011100|Решение об аннулировании кадастровых сведений|</xsl:text>
    <xsl:text>|558501011200|Решение об отклонении заявления об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501011300|Решение о внесении записи о наличии возражения|</xsl:text>
    <xsl:text>|558501011400|Решение о погашении записи о наличии возражения|</xsl:text>
    <xsl:text>|558501011500|Решение о внесении записи о заявлении о невозможности государственной регистрации|</xsl:text>
    <xsl:text>|558501011600|Решение о погашении записи о заявлении о невозможности государственной регистрации|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществлённом кадастровом учёте|</xsl:text>
    <xsl:text>|558501020300|Уведомление об отказе в приеме документов для внесения в Единый государственный реестр объектов капитального строительства (далее - Единый государственный реестр) сведений об ОКС|</xsl:text>
    <xsl:text>|558501020400|Уведомление об отказе в приеме документов для предоставления из Единого государственного реестра сведений об ОКС|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|558501020600|Уведомление об отказе в выдаче сведений об ОКС|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020900|Уведомление о регистрации права|</xsl:text>
    <xsl:text>|558501021000|Уведомление о приостановлении принятия на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021100|Сообщение об отказе в принятии на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021200|Уведомление о снятии с учёта имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021300|Уведомление о возврате заявления о наличии возражения в отношении зарегистрированного права на объект недвижимости без рассмотрения|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501030200|Протокол проверки документов|</xsl:text>
    <xsl:text>|558501030300|Акт определения кадастровой стоимости земельных участков|</xsl:text>
    <xsl:text>|558501030400|Протокол выявления технической ошибки|</xsl:text>
    <xsl:text>|558501030500|Акт определения кадастровой стоимости объектов недвижимости|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502000000|ДОКУМЕНТЫ О РЕЗУЛЬТАТАХ РЕГИСТРАЦИИ ПРАВ|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010300|Уведомление о зарегистрированных ограничениях (обременениях) прав|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки в записях единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении сведений из ЕГРП|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|Сообщение о приёме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|Сообщение о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о государственной регистрации прекращения ограничения (обременения)|</xsl:text>
    <xsl:text>|558502011300|Уведомление об отсутствии сведений о лицах, получивших сведения об объектах недвижимого имущества|</xsl:text>
    <xsl:text>|558502011400|Уведомлений о государственной регистрации права собственности субъекта российской федерации или муниципального образования на земельный участок или земельную долю вследствие отказа от соответствующего права правообладателем|</xsl:text>
    <xsl:text>|558502011500|Уведомление о поступлении решения суда, вступившего в законную силу, с указанием срока окончания осуществления государственной регистрации прав, в случае если отказ в государственной регистрации прав признан судом необоснованным|</xsl:text>
    <xsl:text>|558502011600|Уведомление о внесении изменений в единый государственный реестр прав на недвижимое имущество и сделок с ним в связи с изменением содержащихся в базовых государственных информационных ресурсах сведений о правообладателе (правообладателях)|</xsl:text>
    <xsl:text>|558502011700|Уведомлений о возврате документов без рассмотрения при отказе в осуществлении государственного кадастрового учета|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию прав|</xsl:text>
    <xsl:text>|558502029900|Иной документ|</xsl:text>
    <xsl:text>|558601000000|Расписка в получении извещений о проведении собрания о согласовании местоположения границ|</xsl:text>
    <xsl:text>|558602000000|Уведомление о вручении извещения о проведении собрания о согласовании местоположения границ|</xsl:text>
    <xsl:text>|558603000000|Копия страницы печатного издания, содержащей извещение о проведении собрания о согласовании местоположения границ земельного участка, включая первый лист, содержащего реквизиты такого печатного издания|</xsl:text>
    <xsl:text>|558699000000|Иные документы, свидетельствующие о соблюдении установленного порядка извещения заинтересованных лиц о проведении собрания о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558273000000|Текстовое и графическое описание местоположения границ территории объекта культурного наследия или зон его охраны с перечнем координат характерных точек этих границ|</xsl:text>
  </xsl:template>
  <xsl:template name="dAllDocuments_m4">
    <xsl:text>|FILE|dAllDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны Российской Федерации, Министерства внутренних дел Российской Федерации и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учет в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платежное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558100000000|ЗАЯВЛЕНИЯ|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с кадастровым учетом|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесенных в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на кадастровый учет объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном учете изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101040000|Заявление о внесении в Единый государственный реестр объектов капитального строительства (ЕГРОКС) сведений об объекте капитального строительства (ОКС)|</xsl:text>
    <xsl:text>|558101050000|Заявление о предоставлении сведений об ОКС|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с кадастрового учета объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в ГКН сведений о ранее учтенном объекте недвижимости|</xsl:text>
    <xsl:text>|558101080000|Заявление об исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населенных пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на кадастровый учет|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации ГКН|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558102000000|Заявления, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102020000|Заявление о внесении в ЕГРП записи о прекращении права (ограничения (обременения) права)|</xsl:text>
    <xsl:text>|558102030000|Заявление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558102040000|Заявление об исправлении технической ошибки, допущенной при государственной регистрации права|</xsl:text>
    <xsl:text>|558102050000|Заявление о представлении дополнительных документов для государственной регистрации прав|</xsl:text>
    <xsl:text>|558102060000|Заявление о приостановлении государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102070000|Заявление о возобновлении государственной регистрации|</xsl:text>
    <xsl:text>|558102080000|Заявление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558102090000|Заявление о повторной выдаче свидетельства о государственной регистрации права|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учет бесхозяйного имущества|</xsl:text>
    <xsl:text>|558102120000|Заявление о выдаче закладной (новой закладной, дубликата закладной, аннулированной закладной)|</xsl:text>
    <xsl:text>|558102130000|Заявление о выдаче копий договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558103000000|Заявления о государственном учете объектов капитального строительства и запросы о предоставлении сведений Единого государственного реестра объектов капитального строительства (ЕГРОКС)|</xsl:text>
    <xsl:text>|558103010000|Заявление о постановке на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558103020000|Заявление о внесении в ЕГРОКС сведений о ранее учтенном объекте капитального строительства|</xsl:text>
    <xsl:text>|558103030000|Заявление о государственном учете изменений объекта капитального строительства|</xsl:text>
    <xsl:text>|558103040000|Заявление о снятии с государственного учета объекта капитального строительства|</xsl:text>
    <xsl:text>|558103050000|Заявление об исправлении технической ошибки в сведениях ЕГРОКС|</xsl:text>
    <xsl:text>|558103060000|Заявление об исключении сведений из ЕГРОКС, носящих временный характер|</xsl:text>
    <xsl:text>|558103070000|Запрос о предоставлении копии документа, на основании которого сведения об объекте капитального строительства внесены в ЕГРОКС|</xsl:text>
    <xsl:text>|558103080000|Запрос о предоставлении сведений ЕГРОКС в виде кадастровой выписки и кадастрового паспорта|</xsl:text>
    <xsl:text>|558103090000|Заявление о представлении дополнительных документов на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558199000000|Иное заявление|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершенного строительства (поэтажный план)|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершенного строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558220000000|Выписки из Реестра|</xsl:text>
    <xsl:text>|558220010000|Выписка из Реестра, содержащая относящиеся к информации ограниченного доступа сведения об объекте учета|</xsl:text>
    <xsl:text>|558220020000|Выписка из Реестра, содержащая сведения об объекте учета|</xsl:text>
    <xsl:text>|558220030000|Выписка из Реестра, подтверждающая факт отсутствия в Реестре сведений об объекте учета|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Документы об исправлении кадастровой ошибки, направляемые в государственные органы|</xsl:text>
    <xsl:text>|558221020000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах РФ|</xsl:text>
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границе между субъектами Российской Федерации, границе муниципального образования, границе населенного пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <xsl:text>|558221060000|Документы органов, осуществляющих ведение лесного и водного кадастра, содержащие сведения о природных объектах|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Документ, содержащий сведения о кадастровой стоимости объекта|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558252000000|Карта (план) объекта землеустройства|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента Российской Федерации|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства Российской Федерации|</xsl:text>
    <xsl:text>|558401020400|Закон (законы Российской Федерации, субъекта Российской Федерации)|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий наличие, возникновение, переход ограничения (обременения) вещного права на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ И ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта Российской Федерации при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (акт оценки)|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из ЕГРП о принятии на учет бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из ЕГРП о принятии на учет бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из ЕГРП о бесхозяйном объекте недвижимого имущества, принятом на учет|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах кадастрового учета|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010200|Решение об отказе в исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010300|Решение об отказе в исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501010400|Решение об исправлении технической и кадастровой ошибок|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в учете|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении учета|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010800|Решение о снятии с кадастрового учета земельных участков со статусом «временные» по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта и выдаче вместо него кадастровой выписки|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществленном кадастровом учете|</xsl:text>
    <xsl:text>|558501020300|Уведомление об отказе в приеме документов для внесения в ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020400|Уведомление об отказе в приеме документов для предоставления из ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях|</xsl:text>
    <xsl:text>|558501020600|Уведомление об отказе в выдаче сведений об ОКС|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастрового учета|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастрового учета|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения государственного кадастрового учета|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502000000|Документы о результатах регистрации прав|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558502010300|Уведомление о проведении государственной регистрации ограничения (обременения) права|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|Сообщение о приеме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|Сообщение о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о погашении регистрационной записи|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию|</xsl:text>
    <xsl:text>|558502029900|Иной документ|</xsl:text>
  </xsl:template>

  <xsl:template name="dAllDocumentsReestr">
    <!--Info: D:\Dictionary3\dAllDocuments.xsd-->
    <xsl:text>|FILE|dAllDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны Российской Федерации, Министерства внутренних дел Российской Федерации и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учёт в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платёжное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558100000000|ЗАЯВЛЕНИЯ|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с государственным кадастровым учётом|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесенных в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на государственный кадастровый учёт объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном кадастровом учёте изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с государственного кадастрового учёта объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в ГКН сведений о ранее учтённом объекте недвижимости|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населённых пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на государственный кадастровый учёт|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации ГКН|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101130000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, посредством обеспечения доступа к информационному ресурсу, содержащему сведения государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558102000000|Заявления и запросы, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации права, ограничения (обременения) права на недвижимое имущество, сделки с недвижимым имуществом, государственной регистрации законного владельца закладной|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учёт бесхозяйного имущества|</xsl:text>
    <xsl:text>|558102140000|Заявление о приостановлении государственной регистрации, возврате документов без проведения государственной регистрации, представлении дополнительных документов, о возобновлении государственной регистрации, ранее приостановленной по заявлению правообладателя, стороны (сторон) сделки (их представителя)|</xsl:text>
    <xsl:text>|558102150000|Заявление о повторной выдаче нового свидетельства о государственной регистрации права, выдаче закладной, внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, исправлении технической ошибки, погашении регистрационной записи об ипотеке|</xsl:text>
    <xsl:text>|558102160000|Заявление о принятии имущества вновь во владение, пользование или распоряжение|</xsl:text>
    <xsl:text>|558102170000|Заявление о внесении в государственный реестр отметки о наличии судебного спора в отношении зарегистрированного права|</xsl:text>
    <xsl:text>|558102180000|Заявление о возражении лица, право которого было зарегистрировано ранее|</xsl:text>
    <xsl:text>|558102190000|Заявление о скреплении добавочного листа (добавочных листов) с закладной|</xsl:text>
    <xsl:text>|558102200000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним, посредством обеспечения доступа к информационному ресурсу, содержащему сведения Единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учёта|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения (выписка из ГКН)|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558214020000|Кадастровая выписка о здании, сооружении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания, помещения или сооружения, наименования сооружения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка о кадастровой стоимости земельного участка|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта учёта|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Решение о необходимости исправления кадастровой ошибки, направляемое в государственные органы|</xsl:text>
    <xsl:text>|558221020000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о государственной границе Российской Федерации|</xsl:text>
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <xsl:text>|558221060000|Документы органов, осуществляющих ведение лесного и водного кадастра, содержащие сведения о природных объектах|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Документ, содержащий сведения о кадастровой стоимости объекта|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента Российской Федерации|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства Российской Федерации|</xsl:text>
    <xsl:text>|558401020400|Закон (законы Российской Федерации, субъекта Российской Федерации)|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий наличие, возникновение, переход ограничения (обременения) вещного права на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ И ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта Российской Федерации при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (акт оценки)|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из ЕГРП о бесхозяйном объекте недвижимого имущества, принятом на учёт|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта|</xsl:text>
    <xsl:text>|558501011000|Решение об осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501011100|Решение об аннулировании кадастровых сведений|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществлённом кадастровом учёте|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020900|Уведомление о регистрации права|</xsl:text>
    <xsl:text>|558501021000|Уведомление о приостановлении принятия на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021100|Сообщение об отказе в принятии на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021200|Уведомление о снятии с учёта имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501030200|Протокол проверки документов|</xsl:text>
    <xsl:text>|558501030300|Акт определения кадастровой стоимости земельных участков|</xsl:text>
    <xsl:text>|558501030400|Протокол выявления технической ошибки|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502000000|ДОКУМЕНТЫ О РЕЗУЛЬТАТАХ РЕГИСТРАЦИИ ПРАВ|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558502010300|Уведомление о проведении государственной регистрации ограничения (обременения) права|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки в сведениях ЕГРП|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении сведений из ЕГРП|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|Сообщение о приёме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|Сообщение о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о погашении регистрационной записи|</xsl:text>
    <xsl:text>|558502011300|Уведомление об отсутствии сведений о лицах, получивших сведения об объектах недвижимого имущества|</xsl:text>
    <xsl:text>|558502011400|Уведомление о государственной регистрации права собственности субъекта Российской Федерации или муниципального образования на земельный участок или земельную долю вследствие отказа от права собственности|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию|</xsl:text>
    <xsl:text>|558502029900|Иной документ|</xsl:text>
  </xsl:template>
  <xsl:template name="dAllDocuments_Out">
    <xsl:text>|FILE|dAllDocuments_Out.xsd|</xsl:text>
    <xsl:text>|NAME|Исходящие документы|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА НЕДВИЖИМОСТИ|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающего разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (Выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершенного строительства (поэтажный план)|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558212000000|Декларация (копия) об объекте недвижимости|</xsl:text>
    <xsl:text>|558212010000|Декларация об объекте недвижимости, созданном на дачном или садовом земельном участке|</xsl:text>
    <xsl:text>|558212020000|Декларация о гараже или ином объекте недвижимости, для строительства, реконструкции которого выдача разрешения на строительство не требуется|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершенного строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558215000000|Разрешение (копия) на ввод объекта капитального строительства в эксплуатацию|</xsl:text>
    <xsl:text>|558216000000|Документ (копия), подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558220000000|Выписки из Реестра|</xsl:text>
    <xsl:text>|558220010000|Выписка из Реестра, содержащая сведения об объекте учета, относящиеся к информации ограниченного доступа|</xsl:text>
    <xsl:text>|558220020000|Выписка из реестра, содержащая сведения об объекте учета|</xsl:text>
    <xsl:text>|558220030000|Выписка из реестра, подтверждающая факт отсутствия в Реестре сведений об объекте учета|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Документы об исправлении кадастровой ошибки, направляемые в государственные органы|</xsl:text>
    <xsl:text>|558221020000|Иной документ, содержащий описание объекта недвижимости|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания членов ТСЖ|</xsl:text>
    <xsl:text>|558301140000|Иной документ|</xsl:text>
    <xsl:text>|008002000000|Документы, подтверждающие факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002003000|Учредительный документ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учет в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающий документ|</xsl:text>
    <xsl:text>|558401010000|Договоры/соглашения|</xsl:text>
    <xsl:text>|558401010100|Договоры/соглашения о сделках об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (Договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Договоры об иных сделках|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (Договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (Договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (Договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента РФ|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства РФ|</xsl:text>
    <xsl:text>|558401020400|Закон (Закон РФ, субъекта РФ)|</xsl:text>
    <xsl:text>|558401020500|Распоряжение|</xsl:text>
    <xsl:text>|558401020600|Приказ|</xsl:text>
    <xsl:text>|558401020700|Постановление|</xsl:text>
    <xsl:text>|558401020800|Решение|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401040100|Постановление суда|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства)|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий установленное или устанавливаемое ограничение (обременение) вещных прав на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401081300|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ, ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (Справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (Сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (Лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта РФ при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании (Решение о создании хозяйственного общества)|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации (Решение о реорганизации хозяйственного общества)|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации (Решение о ликвидации хозяйственного общества)|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (Решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федеральной собственности|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (Акт оценки)|</xsl:text>
    <xsl:text>|558402290000|Договор|</xsl:text>
    <xsl:text>|558402300000|Соглашение|</xsl:text>
    <xsl:text>|558402310000|Письмо|</xsl:text>
    <xsl:text>|558402320000|Справка|</xsl:text>
    <xsl:text>|558402330000|Протокол|</xsl:text>
    <xsl:text>|558402340000|Акт|</xsl:text>
    <xsl:text>|558402350000|Выписка|</xsl:text>
    <xsl:text>|558402360000|Уведомление|</xsl:text>
    <xsl:text>|558402370000|Расписка|</xsl:text>
    <xsl:text>|558402380000|Заявление|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402410000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о принятии на учет бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о бесхозяйном объекте недвижимого имущества, принятом на учет (право зарегистрировано)|</xsl:text>
    <xsl:text>|558403110000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о бесхозяйном объекте недвижимого имущества, принятом на учет (право не зарегистрировано)|</xsl:text>
    <xsl:text>|558403120000|ВЫПИСКА из Единого государственного реестра прав на недвижимое имущество и сделок с ним о предприятии после проведения государственной регистрации|</xsl:text>
    <xsl:text>|558403130000|ВЫПИСКА из Единого государственного реестра прав на недвижимое имущество и сделок с ним об одном из объектов предприятия|</xsl:text>
    <xsl:text>|558403140000|ВЫПИСКА из Единого государственного реестра прав на недвижимое имущество и сделок с ним о предприятии при прекращении предприятия как объекта права|</xsl:text>
    <xsl:text>|558403150000|ИНФОРМАЦИЯ о правах на объект недвижимого имущества, а также об ограничениях (обременениях) прав на него|</xsl:text>
    <xsl:text>|558403160000|ИНФОРМАЦИЯ о правах на объект недвижимого имущества, а также об ограничениях (обременениях) прав на него из книги учета арестов|</xsl:text>
    <xsl:text>|558403170000|Иной документ|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах кадастрового учета|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010200|Решение об отказе в исправлении кадастровой ошибки.|</xsl:text>
    <xsl:text>|558501010300|Решение об отказе в исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501010400|Решение об исправлении технической и кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в учете|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении учета|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010800|Решение о снятии с кадастрового учета земельных участков со статусом «временные» по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта и выдаче вместо него кадастровой выписки|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в государственном кадастре недвижимости запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществленном кадастровом учете|</xsl:text>
    <xsl:text>|558501020300|Уведомление об отказе в приеме документов для внесения в ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020400|Уведомление об отказе в приеме документов для предоставления из ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях|</xsl:text>
    <xsl:text>|558501020600|УВЕДОМЛЕНИЕ об отказе в выдаче сведений об ОКС|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастрового учета|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастрового учета|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения ГКУ|</xsl:text>
    <xsl:text>|558501030200|Акт утверждения кадастровой стоимости|</xsl:text>
    <xsl:text>|558501030300|Иные документы|</xsl:text>
    <xsl:text>|558502000000|Документы о результатах регистрации прав|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558502010300|Уведомление о проведении государственной регистрации ограничения (обременения) права|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|СООБЩЕНИЕ о приеме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|СООБЩЕНИЕ о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию|</xsl:text>
    <xsl:text>|558502020200|Другие документы|</xsl:text>
  </xsl:template>

  <xsl:template name="dAllDocuments_SubSchemas">
    <xsl:text>|FILE|dAllDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны, Министерства внутренних дел и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учет в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платежное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558100000000|ЗАЯВЛЕНИЯ|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с кадастровым учетом|</xsl:text>
    <xsl:text>|558101010000|Запрос в орган кадастрового учета о предоставлении сведений ГКН|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на кадастровый учет объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном учете изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101040000|Заявление о внесении в Единый государственный реестр объектов капитального строительства сведений об объекте капитального строительства|</xsl:text>
    <xsl:text>|558101050000|Заявление о предоставлении сведений об объектах капитального строительства|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с кадастрового учета объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в ГКН сведений о ранее учтенном объекте недвижимости|</xsl:text>
    <xsl:text>|558101080000|Заявление об исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населенных пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представление дополнительных документов на кадастровый учет|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации ГКН|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558102000000|Заявления, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102020000|Заявление о внесении в Единый государственный реестр прав на недвижимое имущество и сделок с ним записи о прекращении права (ограничения (обременения) права)|</xsl:text>
    <xsl:text>|558102030000|Заявление о внесении изменений в Единый государственный реестр прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102040000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558102050000|Заявление о представлении дополнительных документов для государственной регистрации прав|</xsl:text>
    <xsl:text>|558102060000|Заявление о приостановлении государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102070000|Заявление о возобновлении государственной регистрации|</xsl:text>
    <xsl:text>|558102080000|Заявление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558102090000|Заявление о повторной выдаче свидетельства о государственной регистрации права|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учет бесхозяйного имущества|</xsl:text>
    <xsl:text>|558102120000|Заявление о выдаче закладной (новой закладной, дубликата закладной, аннулированной закладной)|</xsl:text>
    <xsl:text>|558102130000|Заявление о выдаче копий договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558103000000|Иное заявление|</xsl:text>
    <xsl:text>|558103010000|Заявление о постановке на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558103020000|Заявление о внесении в ЕГРОКС сведений о ранее учтенном объекте капитального строительства|</xsl:text>
    <xsl:text>|558103030000|Заявление о государственном учете изменений объекта капитального строительства|</xsl:text>
    <xsl:text>|558103040000|Заявление о снятии с государственного учёта в связи с прекращением существования объекта учёта|</xsl:text>
    <xsl:text>|558103050000|Заявление об исправлении технической ошибки в сведениях ЕГРОКС|</xsl:text>
    <xsl:text>|558103060000|Заявление о снятии с государственного учёта объектов учёта, сведения о которых носят временный характер|</xsl:text>
    <xsl:text>|558103070000|Запрос о предоставлении копии документа, на основании которого сведения об объекте капитального строительства внесены в ЕГРОКС|</xsl:text>
    <xsl:text>|558103080000|Запрос о предоставлении сведений ЕГРОКС в виде кадастровой выписки и кадастрового паспорта|</xsl:text>
    <xsl:text>|558103090000|Заявление о представлении дополнительных документов на государственный учет объекта капитального строительства|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558199000000|Иное заявление|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558206010000|Выписка из технического паспорта на здание (строение)|</xsl:text>
    <xsl:text>|558206020000|Выписка из технического паспорта БТИ|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (Выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершенного строительства (поэтажный план)|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершенного строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558216000000|Документ (копия), подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558220000000|Выписки из Реестра|</xsl:text>
    <xsl:text>|558220010000|Выписка из Реестра, содержащая сведения об объекте учета, относящиеся к информации ограниченного доступа|</xsl:text>
    <xsl:text>|558220020000|Выписка из реестра, содержащая сведения об объекте учета|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Документы об исправлении кадастровой ошибки, направляемые в государственные органы|</xsl:text>
    <xsl:text>|558221020000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах РФ|</xsl:text>
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границе между субъектами Российской Федерации, границе муниципального образования, границе населенного пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <xsl:text>|558221060000|Документы, содержащие сведения о природных объектах органов, осуществляющих ведение лесного и водного кадастра|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Документ, содержащий сведения о кадастровой стоимости объекта|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания членов ТСЖ|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401010000|Договоры/соглашения|</xsl:text>
    <xsl:text>|558401010100|Договоры/соглашения (сделки об отчуждении)|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (Договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Договоры/соглашения (иные сделки)|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (Договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (Договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (Договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010299|Договоры, соглашения об иных сделках|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента РФ|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства РФ|</xsl:text>
    <xsl:text>|558401020400|Закон (Закон РФ, субъекта РФ)|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства)|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты (свидетельства)|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий установленное или устанавливаемое ограничение (обременение) вещных прав на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ, ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (Справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (Сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (Лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта РФ при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (Решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (Акт оценки)|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о принятии на учет бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о принятии на учет бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из Единого государственного реестра прав на недвижимое имущество и сделок с ним о бесхозяйном объекте недвижимого имущества, принятом на учет|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах кадастрового учета|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010200|Решение об отказе в исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010300|Решение об отказе в исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501010400|Решение об исправлении технической и кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в учете|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении учета|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010800|Решение о снятии с кадастрового учета земельных участков со статусом "временные" по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта и выдаче вместо него кадастровой выписки|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в государственном кадастре недвижимости запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществленном кадастровом учете|</xsl:text>
    <xsl:text>|558501020300|Уведомление об отказе в приеме документов для внесения в ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020400|Уведомление об отказе в приеме документов для предоставления из ЕГРОКС сведений об ОКС|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях|</xsl:text>
    <xsl:text>|558501020600|УВЕДОМЛЕНИЕ об отказе в выдаче сведений об ОКС|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастрового учета|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастрового учета|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения ГКУ|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502000000|Документы о результатах регистрации прав|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558502010300|Уведомление о проведении государственной регистрации ограничения (обременения) права|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|СООБЩЕНИЕ о приеме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|СООБЩЕНИЕ о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о погашении регистрационной записи|</xsl:text>
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию|</xsl:text>
    <xsl:text>|558502029900|Другие документы|</xsl:text>
  </xsl:template>

  <xsl:template name="dGiven_Doc_Type">
    <xsl:text>|FILE|dGiven_Doc_Type.xsd|</xsl:text>
    <xsl:text>|NAME|Типы предоставленных документов|</xsl:text>
    <xsl:text>|55840100000|Правоустанавливающий документ|</xsl:text>
    <xsl:text>|008001000000|Документ, удостоверяющий личность ФЛ|</xsl:text>
    <xsl:text>|008002000000|Документ, подтверждающий факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|558100000000|Заявление|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА НЕДВИЖИМОСТИ|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учета|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающего разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558302000000|Документы ЮЛ|</xsl:text>
    <xsl:text>|558302010000|Учредительный документ|</xsl:text>
    <xsl:text>|558302050000|Свидетельство (или уведомление) о постановке на учет в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающий документ|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий установленное или устанавливаемое ограничение (обременение) вещных прав на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|555004000001|Тип платежного документа|</xsl:text>
    <xsl:text>|555004000000|Прочие документы|</xsl:text>
    <xsl:text>|558403170000|Иной документ|</xsl:text>
  </xsl:template>
  <xsl:template name="dGovernance_Code">
    <xsl:text>|FILE|dGovernance_Code.xsd|</xsl:text>
    <xsl:text>|NAME|Типы субъектов публичного права|</xsl:text>
    <xsl:text>|007001000000|Публично-правовое образование|</xsl:text>
    <xsl:text>|007001001000|Российская Федерация, субъект Российской Федерации или муниципальное образование|</xsl:text>
    <xsl:text>|007001001001|Российская Федерация|</xsl:text>
    <xsl:text>|007001001002|Субъект Российской Федерации|</xsl:text>
    <xsl:text>|007001001003|Муниципальное образование|</xsl:text>
    <xsl:text>|007001002000|Иностранное государство|</xsl:text>
    <xsl:text>|007002000000|Юридическое лицо|</xsl:text>
    <xsl:text>|007002001000|Юридическое лицо, зарегистрированное в Российской Федерации|</xsl:text>
    <xsl:text>|007002002000|Юридическое лицо, зарегистрированное в иностранном государстве|</xsl:text>
    <xsl:text>|007002003000|Международная организация|</xsl:text>
    <xsl:text>|007003000000|Физическое лицо|</xsl:text>
    <xsl:text>|007003001000|Гражданин Российской Федерации|</xsl:text>
    <xsl:text>|007003002000|Иностранный гражданин|</xsl:text>
    <xsl:text>|007003003000|Лицо без гражданства|</xsl:text>
    <xsl:text>|007004000000|Иной субъект отношений, возникающих при регистрации права|</xsl:text>
    <xsl:text>|007004001000|Собственники помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|007004002000|Владельцы инвестиционных паев|</xsl:text>
    <xsl:text>|007004003000|Участники долевого строительства|</xsl:text>
    <xsl:text>|007004004000|Владельцы ипотечных сертификатов участия|</xsl:text>
  </xsl:template>
  <xsl:template name="dMethodAccordance">
    <xsl:text>|FILE|dMethodAccordance.xsd|</xsl:text>
    <xsl:text>|NAME|Способ предоставления сведений|</xsl:text>
    <xsl:text>|786001000000|На бумажном носителе|</xsl:text>
    <xsl:text>|786002000000|В электронном виде|</xsl:text>
  </xsl:template>
  <xsl:template name="dPayDocKind">
    <xsl:text>|FILE|dPayDocKind.xsd|</xsl:text>
    <xsl:text>|NAME|Тип платежного документа|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платежное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <!-- из 18 версии: -->
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
  </xsl:template>
  <xsl:template name="dWayReception">
    <xsl:text>|FILE|dWayReception.xsd|</xsl:text>
    <xsl:text>|NAME|Способ получения сведений|</xsl:text>
    <xsl:text>|785001000000|Лично в офисе|</xsl:text>
    <xsl:text>|785002000000|Почтовым отправлением|</xsl:text>
    <xsl:text>|785003000000|По адресу электронной почты|</xsl:text>
    <xsl:text>|785004000000|В персональном разделе заявителя на официальном сайте|</xsl:text>
    <!-- из 18 версии: -->
    <xsl:text>|785005000000|Посредством веб-сервиса|</xsl:text>
  </xsl:template>
  <xsl:template name="dGroundPayments">
    <xsl:text>|FILE|dGroundPayments.xsd|</xsl:text>
    <xsl:text>|NAME|Экономические характеристики|</xsl:text>
    <xsl:text>|016001000000|Нормативная цена земли|</xsl:text>
    <xsl:text>|016002000000|Рыночная стоимость земельного участка|</xsl:text>
    <xsl:text>|016003000000|Залоговая стоимость земельного участка|</xsl:text>
    <xsl:text>|016004000000|Земельный налог|</xsl:text>
    <xsl:text>|016005000000|Арендная плата за земельный участок|</xsl:text>
    <xsl:text>|016006000000|Номер оценочной зоны|</xsl:text>
    <xsl:text>|016007000000|Год оценки земель|</xsl:text>
    <xsl:text>|016008000000|Ставка земельного налога|</xsl:text>
    <xsl:text>|016009000000|Базовая ставка арендной платы|</xsl:text>
    <xsl:text>|016010000000|Кадастровая стоимость земельного участка|</xsl:text>
    <xsl:text>|016011000000|Удельный показатель стоимости земель|</xsl:text>
    <xsl:text>|016012000000|Неопределено|</xsl:text>
    <xsl:text>|016013000000|Значение отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dForest_Use">
    <xsl:text>|FILE|dForest_Use.xsd|</xsl:text>
    <xsl:text>|NAME|Целевое назначение лесов|</xsl:text>
    <xsl:text>|034001000000|Защитные леса|</xsl:text>
    <xsl:text>|034002000000|Эксплуатационные леса|</xsl:text>
    <xsl:text>|034003000000|Резервные леса|</xsl:text>
  </xsl:template>
  <xsl:template name="dForest_Use03">
    <xsl:text>|FILE|dForest_Use.xsd|</xsl:text>
    <xsl:text>|NAME|Целевое назначение лесов|</xsl:text>
    <xsl:text>|234001000000|Защитные леса|</xsl:text>
    <xsl:text>|234002000000|Эксплуатационные леса|</xsl:text>
    <xsl:text>|234003000000|Резервные леса|</xsl:text>
  </xsl:template>
  <xsl:template name="dNaturalObjects">
    <xsl:text>|FILE|dNaturalObjects.xsd|</xsl:text>
    <xsl:text>|NAME|Целевое назначение лесов|</xsl:text>
    <xsl:text>|233001000000|Лес|</xsl:text>
    <xsl:text>|233002000000|Водный объект|</xsl:text>
    <xsl:text>|233003000000|Иной природный объект|</xsl:text>
  </xsl:template>
  <xsl:template name="dService">
    <xsl:text>|FILE|dService.xsd|</xsl:text>
    <xsl:text>|NAME|Перечень услуг|</xsl:text>
    <xsl:text>|10000011206|государственная регистрация прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|10000013633|предоставление сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|10000012269|постановка объектов недвижимости на государственный кадастровый учет|</xsl:text>
    <xsl:text>|10000013628|предоставление сведений, содержащихся в государственном кадастре недвижимости, размещение публичных кадастровых карт в сети Интернет|</xsl:text>
    <xsl:text>|10001460306|государственная функция по осуществлению государственного земельного контроля|</xsl:text>
    <xsl:text>|10001274465|осуществление контроля за проведением землеустройства|</xsl:text>
    <xsl:text>|10001259099|государственная услуга по предоставлению сведений из государственного фонда данных, полученных в результате проведения землеустройства|</xsl:text>
    <xsl:text>|10001259569|проведение государственной экспертизы землеустроительной документации|</xsl:text>
    <xsl:text>|10001266484|лицензирование геодезической деятельности|</xsl:text>
    <xsl:text>|10001268703|лицензирование картографической деятельности|</xsl:text>
    <xsl:text>|10001686019|осуществление государственного геодезического надзора за геодезической и картографической деятельностью|</xsl:text>
    <xsl:text>|10001260293|осуществление контроля (надзора) за соблюдением саморегулируемыми организациями арбитражных управляющих федеральных законов и иных нормативных правовых актов, регулирующих деятельность саморегулируемых организаций|</xsl:text>
    <xsl:text>|10001260403|осуществление надзора за исполнением саморегулируемыми организациями оценщиков требований Федерального закона «Об оценочной деятельности в Российской Федерации»|</xsl:text>
    <xsl:text>|10001257952|предоставление сведений из государственного реестра кадастровых инженеров|</xsl:text>
    <xsl:text>|10001506793|предоставление сведений из государственного реестра саморегулируемых организаций, в отношении которых не определен уполномоченный федеральный орган исполнительной власти, осуществляющий функции по контролю (надзору) за их деятельностью|</xsl:text>
    <xsl:text>|10001259628|предоставление сведений из единого государственного реестра саморегулируемых организаций арбитражных управляющих|</xsl:text>
    <xsl:text>|10001258018|предоставление сведений из единого государственного реестра саморегулируемых организаций оценщиков|</xsl:text>
    <xsl:text>|10001259592|предоставление данных картографо-геодезических фондов Российской Федерации и предоставление в пользование материалов, содержащихся в федеральных и территориальных картографо-геодезических фондах Российской Федерации|</xsl:text>
    <xsl:text>|10001783066|предоставление заинтересованным лицам сведений об объектах капитального строительства|</xsl:text>
    <xsl:text>|10002059154|ведение государственного технического учета объектов капитального строительства|</xsl:text>
    <xsl:text>|10001506076|организация приема граждан, обеспечение своевременного и в полном объеме рассмотрения их устных и письменных обращений с уведомлением граждан о принятии решений в установленный законодательством Российской Федерации срок|</xsl:text>
    <xsl:text>|10001756663|ведение государственного реестра кадастровых инженеров|</xsl:text>
    <xsl:text>|10001761628|ведение государственного реестра саморегулируемых организаций, в отношении которых не определен уполномоченный федеральный орган исполнительной власти, осуществляющий функции по контролю (надзору) за их деятельностью|</xsl:text>
    <xsl:text>|10001760297|ведение единого государственного реестра саморегулируемых организаций арбитражных управляющих|</xsl:text>
    <xsl:text>|10001759926|ведение единого государственного реестра саморегулируемых организаций оценщиков|</xsl:text>
    <xsl:text>|10001759996|ведение сводного государственного реестра арбитражных управляющих|</xsl:text>
  </xsl:template>
  <xsl:template name="dAreaEGRP">
    <xsl:text>|FILE|dArea.xsd|</xsl:text>
    <xsl:text>|NAME|Виды площадей|</xsl:text>
    <xsl:text>|001|Площадь застройки|</xsl:text>
    <xsl:text>|002|Общая площадь|</xsl:text>
    <xsl:text>|003|Общая площадь без лоджии|</xsl:text>
    <xsl:text>|004|Общая площадь с лоджией|</xsl:text>
    <xsl:text>|005|Жилая площадь|</xsl:text>
    <xsl:text>|007|Основная площадь|</xsl:text>
    <xsl:text>|008|Декларированная площадь|</xsl:text>
    <xsl:text>|009|Уточненная площадь|</xsl:text>
    <xsl:text>|010|Фактическая площадь|</xsl:text>
    <xsl:text>|011|Вспомогательная площадь|</xsl:text>
    <xsl:text>|012|Площадь помещений общего пользования без лоджии|</xsl:text>
    <xsl:text>|013|Площадь помещений общего пользования с лоджией|</xsl:text>
    <xsl:text>|014|Технические помещения (Прочие) без лоджии|</xsl:text>
    <xsl:text>|015|Технические помещения (Прочие) с лоджией|</xsl:text>
    <xsl:text>|020|Застроенная площадь|</xsl:text>
    <xsl:text>|021|Незастроенная площадь|</xsl:text>
    <xsl:text>|022|Значение площади отсутствует|</xsl:text>
  </xsl:template>
  <xsl:template name="dAssignation">
    <xsl:text>|FILE|dAssignation.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор назначений объектов технического учета|</xsl:text>
    <xsl:text>|005001000000|Жилое|</xsl:text>
    <xsl:text>|005001001000|Постоянного проживания|</xsl:text>
    <xsl:text>|005001001001|Общежитие|</xsl:text>
    <xsl:text>|005001002000|Временного проживания|</xsl:text>
    <xsl:text>|005002000000|Нежилое|</xsl:text>
    <xsl:text>|005002001000|Общественное|</xsl:text>
    <xsl:text>|005002001001|Административно-управленческое|</xsl:text>
    <xsl:text>|005002001002|Народного образования|</xsl:text>
    <xsl:text>|005002001003|Науки и научного обслуживания|</xsl:text>
    <xsl:text>|005002001004|Здравоохранения, физической культуры и социального обеспечения|</xsl:text>
    <xsl:text>|005002001005|Торговли и общественного питания|</xsl:text>
    <xsl:text>|005002001006|Коммунально-бытового обслуживания|</xsl:text>
    <xsl:text>|005002001007|Культуры и искусства|</xsl:text>
    <xsl:text>|005002001008|Отдыха и развлечений|</xsl:text>
    <xsl:text>|005002001009|Финансирования и страхования|</xsl:text>
    <xsl:text>|005002001010|Городского благоустройства|</xsl:text>
    <xsl:text>|005002001011|Дачно-садоводческое|</xsl:text>
    <xsl:text>|005002001012|Гаражное|</xsl:text>
    <xsl:text>|005002001013|Культовое|</xsl:text>
    <xsl:text>|005002001014|Ритуальное|</xsl:text>
    <xsl:text>|005002001015|Не определено|</xsl:text>
    <xsl:text>|005002002000|Производственное (промышленное)|</xsl:text>
    <xsl:text>|005002002001|Электроэнергетики|</xsl:text>
    <xsl:text>|005002002002|Топливной промышленности|</xsl:text>
    <xsl:text>|005002002003|Черной металлургии|</xsl:text>
    <xsl:text>|005002002004|Цветной металлургии|</xsl:text>
    <xsl:text>|005002002005|Химической и нефтехимической промышленности|</xsl:text>
    <xsl:text>|005002002006|Химико-фармацевтической промышленности|</xsl:text>
    <xsl:text>|005002002007|Тяжелого машиностроения|</xsl:text>
    <xsl:text>|005002002008|Станкостроительной промышленности|</xsl:text>
    <xsl:text>|005002002009|Автотракторной промышленности|</xsl:text>
    <xsl:text>|005002002010|Легкого машиностроения и бытовых приборов|</xsl:text>
    <xsl:text>|005002002011|Электротехнической, приборостроительной и радиопромышленности|</xsl:text>
    <xsl:text>|005002002012|Судостроительной промышленности|</xsl:text>
    <xsl:text>|005002002013|Авиационной промышленности|</xsl:text>
    <xsl:text>|005002002014|Межотраслевых производств машиностроения|</xsl:text>
    <xsl:text>|005002002015|Лесозаготовительной промышленности|</xsl:text>
    <xsl:text>|005002002016|Деревообрабатывающей промышленности|</xsl:text>
    <xsl:text>|005002002017|Целлюлозно-бумажной и лесохимической промышленности|</xsl:text>
    <xsl:text>|005002002018|Промышленности строительных материалов|</xsl:text>
    <xsl:text>|005002002019|Стекольной и фарфорофаянсовой промышленности|</xsl:text>
    <xsl:text>|005002002020|Полиграфического производства|</xsl:text>
    <xsl:text>|005002002021|Текстильной промышленности|</xsl:text>
    <xsl:text>|005002002022|Швейной, кожевенной, меховой, обувной промышленности|</xsl:text>
    <xsl:text>|005002002023|Пищевкусовой промышленности|</xsl:text>
    <xsl:text>|005002002024|Мясной и молочной промышленности|</xsl:text>
    <xsl:text>|005002002025|Рыбоперерабатывающей и плодоовощной промышленности|</xsl:text>
    <xsl:text>|005002002026|Микробиологической промышленности|</xsl:text>
    <xsl:text>|005002002027|Строительной индустрии|</xsl:text>
    <xsl:text>|005002002028|Не определено|</xsl:text>
    <xsl:text>|005002003000|Транспортное|</xsl:text>
    <xsl:text>|005002003001|Железнодорожного транспорта|</xsl:text>
    <xsl:text>|005002003002|Автомобильного транспорта|</xsl:text>
    <xsl:text>|005002003003|Водного транспорта|</xsl:text>
    <xsl:text>|005002003004|Воздушного транспорта|</xsl:text>
    <xsl:text>|005002003005|Городского надземного электротранспорта|</xsl:text>
    <xsl:text>|005002003006|Городского подземного транспорта|</xsl:text>
    <xsl:text>|005002003007|Магистрального трубопроводного транспорта|</xsl:text>
    <xsl:text>|005002004000|Сельскохозяйственное|</xsl:text>
    <xsl:text>|005002005000|Лесного хозяйства|</xsl:text>
    <xsl:text>|005002006000|Рыбного хозяйства|</xsl:text>
    <xsl:text>|005002007000|Добычи полезных ископаемых|</xsl:text>
    <xsl:text>|005002008000|Строительное|</xsl:text>
    <xsl:text>|005002009000|Связи|</xsl:text>
    <xsl:text>|005002010000|Материально-технического снабжения и сбыта|</xsl:text>
    <xsl:text>|005002011000|Гидротехническое|</xsl:text>
    <xsl:text>|005002012000|Водохозяйственное|</xsl:text>
    <xsl:text>|005002013000|Передаточное|</xsl:text>
    <xsl:text>|005002013001|Электропередачи|</xsl:text>
    <xsl:text>|005002013002|Теплопередачи|</xsl:text>
    <xsl:text>|005002013003|Водопередачи|</xsl:text>
    <xsl:text>|005002014000|Городского коммунального хозяйства|</xsl:text>
    <xsl:text>|005002014001|Электроснабжения|</xsl:text>
    <xsl:text>|005002014002|Теплоснабжения|</xsl:text>
    <xsl:text>|005002014003|Водоснабжения и водоотведения|</xsl:text>
    <xsl:text>|005002014004|Газоснабжения|</xsl:text>
    <xsl:text>|005002014005|Перерабатывающее|</xsl:text>
    <xsl:text>|005002015000|Рекреационное|</xsl:text>
    <xsl:text>|005002016000|Специальное|</xsl:text>
    <xsl:text>|005002017000|Не определено|</xsl:text>
    <xsl:text>|005003000000|Помещение общего пользования|</xsl:text>
    <xsl:text>|005004000000|Техническое помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="dCategoriesEGRP">
    <xsl:text>|FILE|dCategories.xsd|</xsl:text>
    <xsl:text>|NAME|Категории земель|</xsl:text>
    <xsl:text>|003001000000|Земли сельскохозяйственного назначения|</xsl:text>
    <xsl:text>|003002000000|Земли населенных пунктов|</xsl:text>
    <xsl:text>|003003000000|Земли промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, земли для обеспечения космической деятельности, земли обороны, безопасности и земли иного специального назначения|</xsl:text>
    <xsl:text>|003004000000|Земли особо охраняемых территорий и объектов|</xsl:text>
    <xsl:text>|003005000000|Земли лесного фонда|</xsl:text>
    <xsl:text>|003006000000|Земли водного фонда|</xsl:text>
    <xsl:text>|003007000000|Земли запаса|</xsl:text>
    <xsl:text>|003008000000|Категория не установлена|</xsl:text>
  </xsl:template>
  <xsl:template name="dCertificatesEGRP">
    <xsl:text>|FILE|dCertificates.xsd|</xsl:text>
    <xsl:text>|NAME|Виды документов, удостоверяющих личность субъекта|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны, Министерства внутренних дел и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001021000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, подтверждающие факт внесения записи о юридическом лице в Единый государственный реестр юридических лиц|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в Единый государственный реестр юридических лиц|</xsl:text>
  </xsl:template>
  <xsl:template name="dCityEGRP">
    <xsl:text>|FILE|dCity.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_3|</xsl:text>
    <xsl:text>|волость|Волость|</xsl:text>
    <xsl:text>|г|Город|</xsl:text>
    <xsl:text>|дп|Дачный поселок|</xsl:text>
    <xsl:text>|кп|Курортный поселок|</xsl:text>
    <xsl:text>|пгт|Поселок городского типа|</xsl:text>
    <xsl:text>|п/о|Почтовое отделение|</xsl:text>
    <xsl:text>|рп|Рабочий (заводской) поселок|</xsl:text>
    <xsl:text>|с/а|Сельская администрация|</xsl:text>
    <xsl:text>|с/пос|Сельское поселение|</xsl:text>
    <xsl:text>|с/тер|Сельская территория|</xsl:text>
    <xsl:text>|с/о|Сельский округ|</xsl:text>
    <xsl:text>|с/мо|Сельское муницип. образование|</xsl:text>
    <xsl:text>|с/с|Сельсовет|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
  </xsl:template>
  <xsl:template name="dDistrictEGRP">
    <xsl:text>|FILE|dDistrict.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_2|</xsl:text>
    <xsl:text>|р-н|Район|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|у|Улус|</xsl:text>
  </xsl:template>
  <xsl:template name="dDocumentsEGRP">
    <xsl:text>|FILE|dDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Документы, содержащие сведения о правах|</xsl:text>
    <xsl:text>|010001000000|Закон|</xsl:text>
    <xsl:text>|010001001000|Федеральный закон|</xsl:text>
    <xsl:text>|010001002000|Закон субъекта РФ|</xsl:text>
    <xsl:text>|010002000000|Акт|</xsl:text>
    <xsl:text>|010002001000|Акт, изданный органом государственной власти|</xsl:text>
    <xsl:text>|010002001001|Акт, изданный органом государственной власти Российской Федерации|</xsl:text>
    <xsl:text>|010002001002|Акт, изданный органом государственной власти субъекта Российской Федерации|</xsl:text>
    <xsl:text>|010002002000|Акт, изданный органом местного самоуправления|</xsl:text>
    <xsl:text>|010002003000|Передаточный акт|</xsl:text>
    <xsl:text>|010002004000|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|010003000000|Договор|</xsl:text>
    <xsl:text>|010003001000|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|010003002000|Инвестиционный договор|</xsl:text>
    <xsl:text>|010003003000|Договор передачи жилья в собственность|</xsl:text>
    <xsl:text>|010003004000|Договор аренды (в том числе с правом выкупа, субаренда, лизинг)|</xsl:text>
    <xsl:text>|010003005000|Договор дарения (в том числе пожертвования)|</xsl:text>
    <xsl:text>|010003006000|Договор об ипотеке|</xsl:text>
    <xsl:text>|010003007000|Договор купли-продажи|</xsl:text>
    <xsl:text>|010003008000|Договор мены|</xsl:text>
    <xsl:text>|010003009000|Договор ренты (постоянной, пожизненной)|</xsl:text>
    <xsl:text>|010003009001|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|010003010000|Брачный договор|</xsl:text>
    <xsl:text>|010003011000|Договор уступки права требования|</xsl:text>
    <xsl:text>|010003012000|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|010003013000|Договор безвозмездного пользования участком лесного фонда|</xsl:text>
    <xsl:text>|010003014000|Договор концессии участка лесного фонда|</xsl:text>
    <xsl:text>|010003015000|Договор доверительного управления имуществом|</xsl:text>
    <xsl:text>|010003016000|Иные договоры|</xsl:text>
    <xsl:text>|010004000000|Соглашение|</xsl:text>
    <xsl:text>|010005000000|Судебные акты|</xsl:text>
    <xsl:text>|010005001000|Определение|</xsl:text>
    <xsl:text>|010005002000|Постановление|</xsl:text>
    <xsl:text>|010005003000|Решение|</xsl:text>
    <xsl:text>|010006000000|Прочие документы|</xsl:text>
    <xsl:text>|010006001000|План приватизации|</xsl:text>
    <xsl:text>|010006002000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|010006003000|Разделительный баланс|</xsl:text>
    <xsl:text>|010006004000|Свидетельство на право собственности на землю|</xsl:text>
    <xsl:text>|010006005000|Свидетельство на право постоянного (бессрочного) пользования землей|</xsl:text>
    <xsl:text>|010006006000|Государственный акт на право собственности на землю, пожизненного наследуемого владения, бессрочного (постоянного) пользования землей|</xsl:text>
    <xsl:text>|010006007000|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|010006008000|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|010006009000|Справка потребительского кооператива (жилищного, жилищно-строительного, дачного, гаражного, иного)|</xsl:text>
    <xsl:text>|010006010000|Документ, подтверждающий отказ одаряемого принять дар|</xsl:text>
    <xsl:text>|010006011000|Документ, подтверждающий внесение имущества в уставный капитал|</xsl:text>
    <xsl:text>|010006012000|Постановление судебного пристава|</xsl:text>
    <xsl:text>|010007000000|Иные документы о правах|</xsl:text>
    <xsl:text>|010007001000|Свидетельство о регистрации права|</xsl:text>
    <xsl:text>|010007002000|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|010007003000|Выписка из похозяйственной книги о наличии у гражданина прав на землю|</xsl:text>
    <xsl:text>|010007004000|Прочие иные документы о правах|</xsl:text>
  </xsl:template>
  <xsl:template name="dEncumbrancesEGRP">
    <xsl:text>|FILE|dEncumbrances.xsd|</xsl:text>
    <xsl:text>|NAME|Обременения (ограничения)|</xsl:text>
    <xsl:text>|022001000000|Сервитут|</xsl:text>
    <xsl:text>|022001001000|Публичный сервитут|</xsl:text>
    <xsl:text>|022001002000|Частный сервитут|</xsl:text>
    <xsl:text>|022002000000|Арест|</xsl:text>
    <xsl:text>|022003000000|Запрещение|</xsl:text>
    <xsl:text>|022004000000|Ограничение прав на землю, предусмотренное статьей 56 Земельного кодекса Российской Федерации (Особый режим использования земли)|</xsl:text>
    <xsl:text>|022005000000|Решение об изъятии земельного участка, жилого помещения|</xsl:text>
    <xsl:text>|022006000000|Аренда (в том числе субаренда, лизинг)|</xsl:text>
    <xsl:text>|022007000000|Ипотека|</xsl:text>
    <xsl:text>|022008000000|Залог|</xsl:text>
    <xsl:text>|022099000000|Иные ограничения (обременения) прав|</xsl:text>
  </xsl:template>
  <xsl:template name="dGovernanceEGRP">
    <xsl:text>|FILE|dGovernance.xsd|</xsl:text>
    <xsl:text>|NAME|Тип субъекта правоотношений|</xsl:text>
    <xsl:text>|007001000000|Публичное образование|</xsl:text>
    <xsl:text>|007001001000|Российская Федерация, Субъект РФ или муниципальное образование|</xsl:text>
    <xsl:text>|007001001001|Российская Федерация|</xsl:text>
    <xsl:text>|007001001002|Субъект Российской Федерации|</xsl:text>
    <xsl:text>|007001001003|Муниципальное образование|</xsl:text>
    <xsl:text>|007001002000|Иностранное государство|</xsl:text>
    <xsl:text>|007001003000|Владельцы инвестиционных паев|</xsl:text>
    <xsl:text>|007002000000|Юридическое лицо|</xsl:text>
    <xsl:text>|007002001000|Юридическое лицо, зарегистрированное в Российской Федерации|</xsl:text>
    <xsl:text>|007002002000|Юридическое лицо, зарегистрированное в иностранном государстве|</xsl:text>
    <xsl:text>|007002003000|Международная организация|</xsl:text>
    <xsl:text>|007003000000|Физическое лицо|</xsl:text>
    <xsl:text>|007003001000|Гражданин Российской Федерации|</xsl:text>
    <xsl:text>|007003002000|Иностранный гражданин|</xsl:text>
    <xsl:text>|007003003000|Лицо без гражданства|</xsl:text>
  </xsl:template>
  <xsl:template name="dInhabitedLocalities">
    <xsl:text>|FILE|dInhabitedLocalities.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_4|</xsl:text>
    <xsl:text>|аал|Аал|</xsl:text>
    <xsl:text>|аул|Аул|</xsl:text>
    <xsl:text>|волость|Волость|</xsl:text>
    <xsl:text>|высел|Выселки(ок)|</xsl:text>
    <xsl:text>|г|Город|</xsl:text>
    <xsl:text>|городок|Городок|</xsl:text>
    <xsl:text>|дп|Дачный поселок|</xsl:text>
    <xsl:text>|д|Деревня|</xsl:text>
    <xsl:text>|ж/д_оп|ж/д остановочный (обгонный) пункт|</xsl:text>
    <xsl:text>|ж/д_будка|Железнодорожная будка|</xsl:text>
    <xsl:text>|ж/д_казарм|Железнодорожная казарма|</xsl:text>
    <xsl:text>|ж/д-платф|Железнодорожная платформа|</xsl:text>
    <xsl:text>|ж/д_ст|Железнодорожная станция|</xsl:text>
    <xsl:text>|ж/д_пост|Железнодорожный пост|</xsl:text>
    <xsl:text>|ж/д_рзд|Железнодорожный разъезд|</xsl:text>
    <xsl:text>|заимка|Заимка|</xsl:text>
    <xsl:text>|казарма|Казарма|</xsl:text>
    <xsl:text>|кп|Курортный поселок|</xsl:text>
    <xsl:text>|м|Местечко|</xsl:text>
    <xsl:text>|мкр|Микрорайон|</xsl:text>
    <xsl:text>|нп|Населенный пункт|</xsl:text>
    <xsl:text>|остров|Остров|</xsl:text>
    <xsl:text>|п/р|Планировочный район|</xsl:text>
    <xsl:text>|пгт|Поселок городского типа|</xsl:text>
    <xsl:text>|п/ст|Поселок и(при) станция(и)|</xsl:text>
    <xsl:text>|п|Поселок сельского типа|</xsl:text>
    <xsl:text>|починок|Починок|</xsl:text>
    <xsl:text>|п/о|Почтовое отделение|</xsl:text>
    <xsl:text>|промзона|Промышленная зона|</xsl:text>
    <xsl:text>|рп|Рабочий (заводской) поселок|</xsl:text>
    <xsl:text>|рзд|Разъезд|</xsl:text>
    <xsl:text>|с|Село|</xsl:text>
    <xsl:text>|сл|Слобода|</xsl:text>
    <xsl:text>|ст-ца|Станица|</xsl:text>
    <xsl:text>|ст|Станция|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|у|Улус|</xsl:text>
    <xsl:text>|х|Хутор|</xsl:text>
    <xsl:text>|ж/д_платф|Железнодорожная платформа|</xsl:text>
    <xsl:text>|кв-л|Квартал|</xsl:text>
    <xsl:text>|арбан|Арбан|</xsl:text>
    <xsl:text>|снт|Садовое некоммерческое товарищество|</xsl:text>
    <xsl:text>|лпх|Леспромхоз|</xsl:text>
    <xsl:text>|погост|Погост|</xsl:text>
    <xsl:text>|кордон|Кордон|</xsl:text>
    <xsl:text>|автодорога|Автодорога|</xsl:text>
    <xsl:text>|жилрайон|Жилой район|</xsl:text>
    <xsl:text>|жилзона|Жилая зона|</xsl:text>
    <xsl:text>|массив|Массив|</xsl:text>
  </xsl:template>
  <xsl:template name="dOPFEGRP">
    <xsl:text>|FILE|dOPF.xsd|</xsl:text>
    <xsl:text>|NAME|Организационно-правовые формы юридических лиц|</xsl:text>
    <xsl:text>|009001000000|Юридические лица, являющиеся коммерческими организациями|</xsl:text>
    <xsl:text>|009001001000|Полное товарищество|</xsl:text>
    <xsl:text>|009001002000|Товарищество на вере (коммандитное товарищество)|</xsl:text>
    <xsl:text>|009001003000|Общество с ограниченной ответственностью|</xsl:text>
    <xsl:text>|009001004000|Общество с дополнительной ответственностью|</xsl:text>
    <xsl:text>|009001005000|Открытое акционерное общество|</xsl:text>
    <xsl:text>|009001006000|Закрытое акционерное общество|</xsl:text>
    <xsl:text>|009001007000|Производственный кооператив (артель)|</xsl:text>
    <xsl:text>|009001008000|Унитарное предприятие, основанное на праве хозяйственного ведения|</xsl:text>
    <xsl:text>|009001009000|Унитарное предприятие, основанное на праве оперативного управления|</xsl:text>
    <xsl:text>|009001010000|Крестьянское (фермерское) хозяйство|</xsl:text>
    <xsl:text>|009002000000|Юридические лица, являющиеся некоммерческими организациями|</xsl:text>
    <xsl:text>|009002001000|Потребительский кооператив (потребительское общество)|</xsl:text>
    <xsl:text>|009002002000|Общественная или религиозная организация (объединение)|</xsl:text>
    <xsl:text>|009002003000|Общественное движение (политическая партия)|</xsl:text>
    <xsl:text>|009002004000|Фонд|</xsl:text>
    <xsl:text>|009002005000|Учреждение|</xsl:text>
    <xsl:text>|009002006000|Государственная корпорация|</xsl:text>
    <xsl:text>|009002007000|Некоммерческое партнерство|</xsl:text>
    <xsl:text>|009002008000|Автономная некоммерческая организация|</xsl:text>
    <xsl:text>|009002009000|Объединение юридических (физических) лиц (ассоциация и союз)|</xsl:text>
    <xsl:text>|009002010000|Территориальное общественное самоуправление|</xsl:text>
    <xsl:text>|009002011000|Товарищество собственников жилья|</xsl:text>
    <xsl:text>|009002012000|Садоводческое, огородническое или дачное некоммерческое товарищество|</xsl:text>
    <xsl:text>|009002013000|Иная некоммерческая организация|</xsl:text>
    <xsl:text>|009003000000|Иные юридические лица, созданные до вступления в силу ч.1 Гражданского Кодекса РФ|</xsl:text>
  </xsl:template>
  <xsl:template name="dOPF03">
    <xsl:text>|FILE|dOPF.xsd|</xsl:text>
    <xsl:text>|NAME|Организационно-правовые формы|</xsl:text>
    <xsl:text>|809000000039|Юридические лица, являющиеся коммерческими организациями|</xsl:text>
    <xsl:text>|809000000040|Унитарные предприятия|</xsl:text>
    <xsl:text>|809000000041|Унитарные предприятия, основанные на праве оперативного управления|</xsl:text>
    <xsl:text>|809000000042|Унитарные предприятия, основанные на праве хозяйственного ведения|</xsl:text>
    <xsl:text>|809000000047|Открытые акционерные общества|</xsl:text>
    <xsl:text>|809000000048|Хозяйственные товарищества и общества|</xsl:text>
    <xsl:text>|809000000051|Полные товарищества|</xsl:text>
    <xsl:text>|809000000052|Производственные кооперативы|</xsl:text>
    <xsl:text>|809000000053|Крестьянские (фермерские) хозяйства|</xsl:text>
    <xsl:text>|809000000060|Акционерные общества|</xsl:text>
    <xsl:text>|809000000064|Товарищества на вере|</xsl:text>
    <xsl:text>|809000000065|Общества с ограниченной ответственностью|</xsl:text>
    <xsl:text>|809000000066|Общества с дополнительной ответственностью|</xsl:text>
    <xsl:text>|809000000067|Закрытые акционерные общества|</xsl:text>
    <xsl:text>|809000000070|Юридические лица, являющиеся некоммерческими организациями|</xsl:text>
    <xsl:text>|809000000071|Частные учреждения|</xsl:text>
    <xsl:text>|809000000072|Бюджетные учреждения|</xsl:text>
    <xsl:text>|809000000073|Автономные учреждения|</xsl:text>
    <xsl:text>|809000000076|Садоводческие, огороднические или дачные некоммерческие товарищества|</xsl:text>
    <xsl:text>|809000000077|Объединения крестьянских (фермерских) хозяйств|</xsl:text>
    <xsl:text>|809000000078|Органы общественной самодеятельности|</xsl:text>
    <xsl:text>|809000000080|Территориальные общественные самоуправления|</xsl:text>
    <xsl:text>|809000000081|Учреждения|</xsl:text>
    <xsl:text>|809000000082|Государственные корпорации|</xsl:text>
    <xsl:text>|809000000083|Общественные и религиозные организации (объединения)|</xsl:text>
    <xsl:text>|809000000084|Общественные движения|</xsl:text>
    <xsl:text>|809000000085|Потребительские кооперативы|</xsl:text>
    <xsl:text>|809000000087|Простые товарищества|</xsl:text>
    <xsl:text>|809000000088|Фонды|</xsl:text>
    <xsl:text>|809000000089|Прочие некоммерческие организации|</xsl:text>
    <xsl:text>|809000000090|Представительства и филиалы|</xsl:text>
    <xsl:text>|809000000091|Индивидуальные предприниматели|</xsl:text>
    <xsl:text>|809000000092|Паевые инвестиционные фонды|</xsl:text>
    <xsl:text>|809000000093|Объединения юридических лиц (ассоциации и союзы)|</xsl:text>
    <xsl:text>|809000000094|Товарищества собственников жилья|</xsl:text>
    <xsl:text>|809000000095|Крестьянские (фермерские) хозяйства|</xsl:text>
    <xsl:text>|809000000096|Некоммерческие партнерства|</xsl:text>
    <xsl:text>|809000000097|Автономные некоммерческие организации|</xsl:text>
    <xsl:text>|809000000098|Иные неюридические лица|</xsl:text>
    <xsl:text>|809000000099|Организации без прав юридического лица|</xsl:text>
  </xsl:template>
  <xsl:template name="dRealtyEGRP">
    <xsl:text>|FILE|dRealty.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор типов объектов недвижимости|</xsl:text>
    <xsl:text>|002001000000|Земли|</xsl:text>
    <xsl:text>|002001001000|Земельный участок|</xsl:text>
    <xsl:text>|002001002000|Иные земли|</xsl:text>
    <xsl:text>|002002000000|Объекты капитального строительства|</xsl:text>
    <xsl:text>|002002001000|Здание|</xsl:text>
    <xsl:text>|002002002000|Помещение|</xsl:text>
    <xsl:text>|002002004000|Сооружение|</xsl:text>
    <xsl:text>|002002005000|Объект незавершенного строительства|</xsl:text>
    <xsl:text>|002003000000|Границы|</xsl:text>
    <xsl:text>|002003001000|Государственная граница Российской Федерации|</xsl:text>
    <xsl:text>|002003002000|Граница между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|002003003000|Граница муниципального образования|</xsl:text>
    <xsl:text>|002003004000|Граница населенного пункта|</xsl:text>
    <xsl:text>|002004000000|Зоны|</xsl:text>
    <xsl:text>|002004001000|Зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|002004003000|Территориальные зоны|</xsl:text>
  </xsl:template>
  <xsl:template name="dRefusal">
    <xsl:text>|FILE|dRefusal.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор типов отказов запросов информации ЕГРП|</xsl:text>
    <xsl:text>|001|запись об объекте отсутствует в ЕГРП|</xsl:text>
    <xsl:text>|002|записи о правах субъекта отсутствуют в ЕГРП|</xsl:text>
    <xsl:text>|003|содержание запроса не позволяет однозначно идентифицировать объект|</xsl:text>
    <xsl:text>|004|содержание запроса не позволяет однозначно идентифицировать субъекта|</xsl:text>
    <xsl:text>|005|непредставление документа, подтверждающего оплату выдаваемой информации|</xsl:text>
    <xsl:text>|006|заявитель не подпадает под категорию лиц, имеющих право на получение информации|</xsl:text>
    <xsl:text>|007|отсутствие ссылки на № дела для правоохранительных органов (МВД)|</xsl:text>
    <xsl:text>|008|отсутствие ссылки на № дела для судебных и т.п.органов|</xsl:text>
    <xsl:text>|009|нарушение юрисдикции для налоговых органов|</xsl:text>
    <xsl:text>|010|нарушение порядка подачи заявления (запроса)|</xsl:text>
    <xsl:text>|999|иной|</xsl:text>
  </xsl:template>
  <xsl:template name="dRightsEGRP">
    <xsl:text>|FILE|dRights.xsd|</xsl:text>
    <xsl:text>|NAME|Права|</xsl:text>
    <xsl:text>|001001000000|Собственность|</xsl:text>
    <xsl:text>|001002000000|Долевая собственность|</xsl:text>
    <xsl:text>|001003000000|Совместная собственность|</xsl:text>
    <xsl:text>|001004000000|Хозяйственное ведение|</xsl:text>
    <xsl:text>|001005000000|Оперативное управление|</xsl:text>
    <xsl:text>|001006000000|Пожизненное наследуемое владение|</xsl:text>
    <xsl:text>|001007000000|Постоянное (бессрочное) пользование|</xsl:text>
    <xsl:text>|001008000000|Сервитут (право)|</xsl:text>
    <xsl:text>|001099000000|Иные права|</xsl:text>
  </xsl:template>
  <xsl:template name="dSignatureInspect">
    <xsl:text>|FILE|dSignatureInspect.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор типов результатов проверки ЭЦП|</xsl:text>
    <xsl:text>|001|Проверка ЭЦП прошла успешно|</xsl:text>
    <xsl:text>|002|ЭЦП не соответствует пакету|</xsl:text>
    <xsl:text>|003|файл с ЭЦП не найден|</xsl:text>
    <xsl:text>|004|архивный файл поврежден|</xsl:text>
    <xsl:text>|999|иная ошибка проверки подписи|</xsl:text>
  </xsl:template>
  <xsl:template name="dStreets">
    <xsl:text>|FILE|dStreets.xsd|</xsl:text>
    <xsl:text>|NAME|Адрес_КЛАДР_5|</xsl:text>
    <xsl:text>|аал|Аал|</xsl:text>
    <xsl:text>|аллея|Аллея|</xsl:text>
    <xsl:text>|аул|Аул|</xsl:text>
    <xsl:text>|б-р|Бульвар|</xsl:text>
    <xsl:text>|въезд|Въезд|</xsl:text>
    <xsl:text>|дор|Дорога|</xsl:text>
    <xsl:text>|жт|Животноводческая точка|</xsl:text>
    <xsl:text>|заезд|Заезд|</xsl:text>
    <xsl:text>|кв-л|Квартал|</xsl:text>
    <xsl:text>|км|Километр|</xsl:text>
    <xsl:text>|кольцо|Кольцо|</xsl:text>
    <xsl:text>|линия|Линия|</xsl:text>
    <xsl:text>|наб|Набережная|</xsl:text>
    <xsl:text>|остров|Остров|</xsl:text>
    <xsl:text>|пер|Переулок|</xsl:text>
    <xsl:text>|переезд|Переезд|</xsl:text>
    <xsl:text>|пл|Площадь|</xsl:text>
    <xsl:text>|пл-ка|Площадка|</xsl:text>
    <xsl:text>|проезд|Проезд|</xsl:text>
    <xsl:text>|пр-кт|Проспект|</xsl:text>
    <xsl:text>|просек|Просек|</xsl:text>
    <xsl:text>|просёлок|Просёлок|</xsl:text>
    <xsl:text>|проулок|Проулок|</xsl:text>
    <xsl:text>|сад|Сад|</xsl:text>
    <xsl:text>|сквер|Сквер|</xsl:text>
    <xsl:text>|стр|Строение|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|тракт|Тракт|</xsl:text>
    <xsl:text>|туп|Тупик|</xsl:text>
    <xsl:text>|ул|Улица|</xsl:text>
    <xsl:text>|уч-к|Участок|</xsl:text>
    <xsl:text>|ш|Шоссе|</xsl:text>
    <xsl:text>|высел|Выселки(ок)|</xsl:text>
    <xsl:text>|городок|Городок|</xsl:text>
    <xsl:text>|д|Деревня|</xsl:text>
    <xsl:text>|ж/д_оп|ж/д остановочный (обгонный) пункт|</xsl:text>
    <xsl:text>|ж/д_будка|Железнодорожная будка|</xsl:text>
    <xsl:text>|ж/д_казарм|Железнодорожная казарма|</xsl:text>
    <xsl:text>|ж/д-платф|Железнодорожная платформа|</xsl:text>
    <xsl:text>|ж/д_ст|Железнодорожная станция|</xsl:text>
    <xsl:text>|ж/д_пост|Железнодорожный пост|</xsl:text>
    <xsl:text>|ж/д_рзд|Железнодорожный разъезд|</xsl:text>
    <xsl:text>|казарма|Казарма|</xsl:text>
    <xsl:text>|м|Местечко|</xsl:text>
    <xsl:text>|мкр|Микрорайон|</xsl:text>
    <xsl:text>|нп|Населённый пункт|</xsl:text>
    <xsl:text>|остров|Остров|</xsl:text>
    <xsl:text>|парк|Парк|</xsl:text>
    <xsl:text>|платф|Платформа|</xsl:text>
    <xsl:text>|полуст|Полустанок|</xsl:text>
    <xsl:text>|п/о|Почтовое отделение|</xsl:text>
    <xsl:text>|проселок|Проселок|</xsl:text>
    <xsl:text>|рзд|Разъезд|</xsl:text>
    <xsl:text>|с|Село|</xsl:text>
    <xsl:text>|стр|Строение|</xsl:text>
    <xsl:text>|тер|Территория|</xsl:text>
    <xsl:text>|платф|Платформа|</xsl:text>
    <xsl:text>|п|Посёлок|</xsl:text>
    <xsl:text>|п/о|Почтовое отделение|</xsl:text>
    <xsl:text>|пер|Переулок|</xsl:text>
    <xsl:text>|п/р|Планировочный район|</xsl:text>
    <xsl:text>|п/ст|Посёлок и(при) станция(и)|</xsl:text>
    <xsl:text>|полустанок|Полустанок|</xsl:text>
    <xsl:text>|починок|Починок|</xsl:text>
    <xsl:text>|рзд|Разъезд|</xsl:text>
    <xsl:text>|с|Село|</xsl:text>
    <xsl:text>|сл|Слобода|</xsl:text>
    <xsl:text>|ст|Станция|</xsl:text>
    <xsl:text>|х|Хутор|</xsl:text>
    <xsl:text>|ж/д_платф|Железнодорожная платформа|</xsl:text>
    <xsl:text>|арбан|Арбан|</xsl:text>
    <xsl:text>|спуск|Спуск|</xsl:text>
    <xsl:text>|канал|Канал|</xsl:text>
    <xsl:text>|гск|Гаражно-строительный кооператив|</xsl:text>
    <xsl:text>|снт|Садовое некоммерческое товарищество|</xsl:text>
    <xsl:text>|лпх|Леспромхоз|</xsl:text>
    <xsl:text>|проток|Проток|</xsl:text>
    <xsl:text>|коса|Коса|</xsl:text>
    <xsl:text>|вал|Вал|</xsl:text>
    <xsl:text>|ферма|Ферма|</xsl:text>
    <xsl:text>|мост|Мост|</xsl:text>
    <xsl:text>|ряды|Ряды|</xsl:text>
    <xsl:text>|а/я|Абонентский ящик|</xsl:text>
    <xsl:text>|берег|Берег|</xsl:text>
    <xsl:text>|просека|Просека|</xsl:text>
    <xsl:text>|протока|Протока|</xsl:text>
    <xsl:text>|бугор|Бугор|</xsl:text>
    <xsl:text>|зона|Зона|</xsl:text>
    <xsl:text>|днп|Дачное некоммерческое партнёрство|</xsl:text>
    <xsl:text>|н/п|Некоммерческое партнёрство|</xsl:text>
    <xsl:text>|ф/х|Фермерское хозяйство|</xsl:text>
    <xsl:text>|местность|Местность|</xsl:text>
    <xsl:text>|балка|Балка|</xsl:text>
    <xsl:text>|бухта|Бухта|</xsl:text>
    <xsl:text>|причал|Причал|</xsl:text>
    <xsl:text>|мыс|Мыс|</xsl:text>
    <xsl:text>|маяк|Маяк|</xsl:text>
    <xsl:text>|горка|Горка|</xsl:text>
    <xsl:text>|тоннель|Тоннель|</xsl:text>
  </xsl:template>
  <xsl:template name="dUnitEGRP">
    <xsl:text>|FILE|dUnit.xsd|</xsl:text>
    <xsl:text>|NAME|Единицы измерений|</xsl:text>
    <xsl:text>|012001000000|Единицы длины|</xsl:text>
    <xsl:text>|012001001000|Метр|</xsl:text>
    <xsl:text>|012001002000|Километр|</xsl:text>
    <xsl:text>|012002000000|Единицы площади|</xsl:text>
    <xsl:text>|012002001000|Квадратный метр|</xsl:text>
    <xsl:text>|012002002000|Гектар|</xsl:text>
    <xsl:text>|012002003000|Квадратный километр|</xsl:text>
    <xsl:text>|012003000000|Единицы времени|</xsl:text>
    <xsl:text>|012003001000|Сутки|</xsl:text>
    <xsl:text>|012003002000|Неделя|</xsl:text>
    <xsl:text>|012003003000|Декада|</xsl:text>
    <xsl:text>|012003004000|Месяц|</xsl:text>
    <xsl:text>|012003005000|Год|</xsl:text>
    <xsl:text>|012004000000|Экономические единицы|</xsl:text>
    <xsl:text>|012004001000|Рубль|</xsl:text>
    <xsl:text>|012004002000|Тысяча рублей|</xsl:text>
    <xsl:text>|012004003000|Миллион рублей|</xsl:text>
    <xsl:text>|012004004000|Миллиард рублей|</xsl:text>
    <xsl:text>|012005000000|Не включенные в ОКЕИ|</xsl:text>
    <xsl:text>|012005001000|Рублей за кв. метр|</xsl:text>
    <xsl:text>|012005002000|Рублей  за гектар|</xsl:text>
    <xsl:text>|012005003000|Рублей за кв. км|</xsl:text>
  </xsl:template>
  <xsl:template name="dRequestTypeEGRP">
    <xsl:text>|FILE|Заявление|</xsl:text>
    <xsl:text>|NAME|Запрашиваемые документы ЕГРП|</xsl:text>
    <xsl:text>|659008002001|О правах на объект|</xsl:text>
    <xsl:text>|659008002004|О переходе прав на объект|</xsl:text>
    <xsl:text>|659008002002|О содержании документов|</xsl:text>
    <xsl:text>|659008002003|О правах лица|</xsl:text>
    <xsl:text>|659008002005|О недееспособности|</xsl:text>
  </xsl:template>
  <xsl:template name="dPermitUse">
    <xsl:text>|FILE|dPermitUse.xsd|</xsl:text>
    <xsl:text>|NAME|Виды разрешенного использования|</xsl:text>
    <xsl:text>|1|Основной|</xsl:text>
    <xsl:text>|2|Условно разрешенный|</xsl:text>
    <xsl:text>|3|Вспомогательный|</xsl:text>
  </xsl:template>
  <xsl:template name="dZone">
    <xsl:text>|FILE|dZone_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Территориальные зоны и зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|218010000000|Территориальные зоны|</xsl:text>
    <xsl:text>|218010010000|Жилая зона|</xsl:text>
    <xsl:text>|218010020000|Общественно-деловая зона|</xsl:text>
    <xsl:text>|218010030000|Производственная зона, зона инженерной и транспортной инфраструктур|</xsl:text>
    <xsl:text>|218010040000|Зона сельскохозяйственного использования|</xsl:text>
    <xsl:text>|218010050000|Зона рекреационного назначения|</xsl:text>
    <xsl:text>|218010060000|Зона особо охраняемых территорий|</xsl:text>
    <xsl:text>|218010070000|Зона специального назначения|</xsl:text>
    <xsl:text>|218010080000|Зона размещения военных объектов|</xsl:text>
    <xsl:text>|218010090000|Иная зона|</xsl:text>
    <xsl:text>|218020000000|Зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020010000|Зоны охраны природных объектов|</xsl:text>
    <xsl:text>|218020010001|Территория особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010002|Охранная зона особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010003|Водоохранная зона|</xsl:text>
    <xsl:text>|218020010004|Прибрежная защитная полоса|</xsl:text>
    <xsl:text>|218020010005|Зона санитарной охраны источников водоснабжения и водопроводов питьевого назначения|</xsl:text>
    <xsl:text>|218020010006|Особо ценные земли|</xsl:text>
    <xsl:text>|218020020000|Зоны охраны искусственных объектов|</xsl:text>
    <xsl:text>|218020020001|Территория объекта культурного наследия|</xsl:text>
    <xsl:text>|218020020002|Зона охраны объекта культурного наследия|</xsl:text>
    <xsl:text>|218020020003|Охранная зона геодезического пункта|</xsl:text>
    <xsl:text>|218020020004|Охранная зона стационарного пункта наблюдений за состоянием окружающей природной среды|</xsl:text>
    <xsl:text>|218020020005|Охранная зона транспорта|</xsl:text>
    <xsl:text>|218020020006|Охранная зона инженерных коммуникаций|</xsl:text>
    <xsl:text>|218020020007|Охранная зона линий и сооружений связи и линий и сооружений радиофикации|</xsl:text>
    <xsl:text>|218020020008|Придорожная полоса|</xsl:text>
    <xsl:text>|218020030000|Зоны защиты населения|</xsl:text>
    <xsl:text>|218020030001|Запретная зона при военном складе|</xsl:text>
    <xsl:text>|218020030002|Запретный район при военном складе|</xsl:text>
    <xsl:text>|218020030003|Загрязненные земли|</xsl:text>
    <xsl:text>|218020030004|Охранная зона загрязненных земель|</xsl:text>
    <xsl:text>|218020030005|Санитарно-защитная зона предприятий, сооружений и иных объектов|</xsl:text>
    <xsl:text>|218020030006|Санитарный разрыв (санитарная полоса отчуждения)|</xsl:text>
    <xsl:text>|218020030007|Зона ограничения от передающего радиотехнического объекта|</xsl:text>
    <xsl:text>|218020030008|Район падения отделяющихся частей ракет|</xsl:text>
    <xsl:text>|218020040000|Прочие  зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020040001|Зона публичного сервитута|</xsl:text>
    <xsl:text>|218020040002|Зона резервирования земель|</xsl:text>
    <xsl:text>|218020040003|Горный отвод|</xsl:text>
    <xsl:text>|218020040004|Пригородная зона|</xsl:text>
    <xsl:text>|218020040005|Зеленая зона|</xsl:text>
    <xsl:text>|218020040006|Особая экономическая зона|</xsl:text>
    <xsl:text>|218020040007|Пограничная зона|</xsl:text>
    <xsl:text>|218020040008|Территория традиционного природопользования|</xsl:text>
    <xsl:text>|218020050000|Иные зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020050001|Иная зона с особыми условиями использования территории|</xsl:text>
  </xsl:template>
  <xsl:template name="dZone_05">
    <xsl:text>|FILE|dZone_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Территориальные зоны,зоны с особыми условиями использования территорий, особые экономические зоны, территории объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|218010000000|Территориальные зоны|</xsl:text>
    <xsl:text>|218010010000|Жилая зона|</xsl:text>
    <xsl:text>|218010020000|Общественно-деловая зона|</xsl:text>
    <xsl:text>|218010030000|Производственная зона, зона инженерной и транспортной инфраструктур|</xsl:text>
    <xsl:text>|218010040000|Зона сельскохозяйственного использования|</xsl:text>
    <xsl:text>|218010050000|Зона рекреационного назначения|</xsl:text>
    <xsl:text>|218010060000|Зона особо охраняемых территорий|</xsl:text>
    <xsl:text>|218010070000|Зона специального назначения|</xsl:text>
    <xsl:text>|218010080000|Зона размещения военных объектов|</xsl:text>
    <xsl:text>|218010090000|Иная зона|</xsl:text>
    <xsl:text>|218020000000|Зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020010000|Зоны охраны природных объектов|</xsl:text>
    <xsl:text>|218020010001|Территория особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010002|Охранная зона особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010003|Водоохранная зона|</xsl:text>
    <xsl:text>|218020010004|Прибрежная защитная полоса|</xsl:text>
    <xsl:text>|218020010005|Зона санитарной охраны источников водоснабжения и водопроводов питьевого назначения|</xsl:text>
    <xsl:text>|218020010006|Особо ценные земли|</xsl:text>
    <xsl:text>|218020020000|Зоны охраны искусственных объектов|</xsl:text>
    <xsl:text>|218020020002|Зона охраны объекта культурного наследия|</xsl:text>
    <!--<xsl:text>|218020020001|Территория объекта культурного наследия|</xsl:text>-->
    <xsl:text>|218020020202|Зона регулирования застройки и хозяйственной деятельности|</xsl:text>
    <xsl:text>|218020020203|Зона охраняемого природного ландшафта|</xsl:text>
    <xsl:text>|218020020003|Охранная зона геодезического пункта|</xsl:text>
    <xsl:text>|218020020004|Охранная зона стационарного пункта наблюдений за состоянием окружающей природной среды|</xsl:text>
    <xsl:text>|218020020005|Охранная зона транспорта|</xsl:text>
    <xsl:text>|218020020006|Охранная зона инженерных коммуникаций|</xsl:text>
    <xsl:text>|218020020007|Охранная зона линий и сооружений связи и линий и сооружений радиофикации|</xsl:text>
    <xsl:text>|218020020008|Придорожная полоса|</xsl:text>
    <xsl:text>|218020030000|Зоны защиты населения|</xsl:text>
    <xsl:text>|218020030001|Запретная зона при военном складе|</xsl:text>
    <xsl:text>|218020030002|Запретный район при военном складе|</xsl:text>
    <xsl:text>|218020030003|Загрязненные земли|</xsl:text>
    <xsl:text>|218020030004|Охранная зона загрязненных земель|</xsl:text>
    <xsl:text>|218020030005|Санитарно-защитная зона предприятий, сооружений и иных объектов|</xsl:text>
    <xsl:text>|218020030006|Санитарный разрыв (санитарная полоса отчуждения)|</xsl:text>
    <xsl:text>|218020030007|Зона ограничения от передающего радиотехнического объекта|</xsl:text>
    <xsl:text>|218020030008|Район падения отделяющихся частей ракет|</xsl:text>
    <xsl:text>|218020040000|Прочие зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020040001|Зона публичного сервитута|</xsl:text>
    <xsl:text>|218020040002|Зона резервирования земель|</xsl:text>
    <xsl:text>|218020040003|Горный отвод|</xsl:text>
    <xsl:text>|218020040004|Пригородная зона|</xsl:text>
    <xsl:text>|218020040005|Зеленая зона|</xsl:text>
    <!-- <xsl:text>|218020040006|Особая экономическая зона|</xsl:text>-->
    <xsl:text>|218020040007|Пограничная зона|</xsl:text>
    <xsl:text>|218020040008|Территория традиционного природопользования|</xsl:text>
    <xsl:text>|218020050000|Иные зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020050001|Иная зона с особыми условиями использования территории|</xsl:text>
    <xsl:text>|218020020201|Охранная зона|</xsl:text>
    <xsl:text>|218020020202|Зона регулирования застройки и хозяйственной деятельности|</xsl:text>
    <xsl:text>|218020020203|Зона охраняемого природного ландшафта|</xsl:text>
    <xsl:text>|218030000000|Территория объекта культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|218040000000|Особая экономическая зона|</xsl:text>
    <xsl:text>|218040010000|Промышленно-производственные особые экономические зоны|</xsl:text>
    <xsl:text>|218040020000|Технико-внедренческие особые экономические зоны|</xsl:text>
    <xsl:text>|218040030000|Туристско-рекреационные особые экономические зоны|</xsl:text>
    <xsl:text>|218040040000|Портовые особые экономические зоны|</xsl:text>
  </xsl:template>
  <xsl:template name="dApplied_file">
    <xsl:text>|FILE|dAppliedFiles_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Виды приложенных файлов|</xsl:text>
    <xsl:text>|01|Образ документа|</xsl:text>
    <xsl:text>|02|Электронный документ (должен быть представлен одним файлом)|</xsl:text>
  </xsl:template>
  <xsl:template name="dAssFlatType">
    <xsl:text>|FILE|dAssFlatType_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Вид жилого помещения|</xsl:text>
    <xsl:text>|205001000000|Квартира|</xsl:text>
    <xsl:text>|205002000000|Комната|</xsl:text>
  </xsl:template>
  <xsl:template name="dAssFlat">
    <xsl:text>|FILE|dAssFlat_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Назначение помещений|</xsl:text>
    <xsl:text>|206001000000|Нежилое помещение|</xsl:text>
    <xsl:text>|206002000000|Жилое помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="dCultural">
    <xsl:text>|FILE|dCultural_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Вид объекта культурного наследия|</xsl:text>
    <xsl:text>|207001000000|Памятник|</xsl:text>
    <xsl:text>|207002000000|Ансамбль|</xsl:text>
    <xsl:text>|207003000000|Достопримечательное место|</xsl:text>
    <xsl:text>|207004000000|Объект археологического наследия|</xsl:text>
  </xsl:template>
  <xsl:template name="dGeopointOpred">
    <xsl:text>|FILE|dGeopointOpred_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Методы определения координат характерных точек|</xsl:text>
    <xsl:text>|692001000000|Геодезический метод|</xsl:text>
    <xsl:text>|692002000000|Фотограмметрический метод|</xsl:text>
    <xsl:text>|692003000000|Картометрический метод|</xsl:text>
    <xsl:text>|692004000000|Иное описание|</xsl:text>
    <xsl:text>|692005000000|Метод спутниковых геодезических измерений (определений)|</xsl:text>
    <xsl:text>|692006000000|Аналитический метод|</xsl:text>
  </xsl:template>
  <xsl:template name="dGovernanceCode">
    <xsl:text>|FILE|dGovernanceCode_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Тип субъекта правоотношений|</xsl:text>
    <xsl:text>|007001000000|Публично-правовое образование|</xsl:text>
    <xsl:text>|007001001000|Российская Федерация, субъект Российской Федерации или муниципальное образование|</xsl:text>
    <xsl:text>|007001001001|Российская Федерация|</xsl:text>
    <xsl:text>|007001001002|Субъект Российской Федерации|</xsl:text>
    <xsl:text>|007001001003|Муниципальное образование|</xsl:text>
    <xsl:text>|007001002000|Иностранное государство|</xsl:text>
    <xsl:text>|007002000000|Юридическое лицо|</xsl:text>
    <xsl:text>|007002001000|Юридическое лицо, зарегистрированное в Российской Федерации|</xsl:text>
    <xsl:text>|007002002000|Юридическое лицо, зарегистрированное в иностранном государстве|</xsl:text>
    <xsl:text>|007002003000|Международная организация|</xsl:text>
    <xsl:text>|007003000000|Физическое лицо|</xsl:text>
    <xsl:text>|007003001000|Гражданин Российской Федерации|</xsl:text>
    <xsl:text>|007003002000|Иностранный гражданин|</xsl:text>
    <xsl:text>|007003003000|Лицо без гражданства|</xsl:text>
    <xsl:text>|007004000000|Иной субъект отношений, возникающих при регистрации права|</xsl:text>
    <xsl:text>|007004001000|Собственники помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|007004002000|Владельцы инвестиционных паев|</xsl:text>
    <xsl:text>|007004003000|Участники долевого строительства|</xsl:text>
    <xsl:text>|007004004000|Владельцы ипотечных сертификатов участия|</xsl:text>
  </xsl:template>
  <xsl:template name="dOldNumber">
    <xsl:text>|FILE|dOldNumber_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Типы ранее присвоенного номера|</xsl:text>
    <xsl:text>|01|Инвентарный номер|</xsl:text>
    <xsl:text>|02|Условный номер|</xsl:text>
    <xsl:text>|03|Кадастровый номер|</xsl:text>
    <xsl:text>|99|Иной номер|</xsl:text>
  </xsl:template>
  <xsl:template name="dOldNumber08">
    <xsl:text>|FILE|dOldNumber_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Типы ранее присвоенного номера|</xsl:text>
    <xsl:text>|01|Инвентарный номер|</xsl:text>
    <xsl:text>|02|Условный номер|</xsl:text>
    <xsl:text>|03|Кадастровый номер|</xsl:text>
    <xsl:text>|04|Учетный номер|</xsl:text>
    <xsl:text>|05|Номер учетной записи в государственном лесном реестре|</xsl:text>
    <xsl:text>|99|Иной номер|</xsl:text>
  </xsl:template>
  <xsl:template name="dTypeCharacteristic">
    <xsl:text>|FILE|dTypeCharacteristic_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Характеристики объектов|</xsl:text>
    <xsl:text>|284001000000|Площадь|</xsl:text>
    <xsl:text>|284002000000|Категория земель, к которой отнесён земельный участок|</xsl:text>
    <xsl:text>|284003000000|Разрешённое использование земельного участка|</xsl:text>
    <xsl:text>|284004000000|Адрес объекта недвижимости|</xsl:text>
    <xsl:text>|284005000000|Сведения о лесах, водных объектах и об иных природных объектах, расположенных в пределах земельного участка|</xsl:text>
    <xsl:text>|284006000000|Общие сведения об объекте недвижимости (иное)|</xsl:text>
    <xsl:text>|284007000000|Сведения о местоположении границ земельного участка|</xsl:text>>
    <xsl:text>|284008000000|Контактный адрес правообладателя|</xsl:text>
    <xsl:text>|284009000000|Сведения о вещных правах|</xsl:text>
    <xsl:text>|284010000000|Сведения о частях объекта недвижимости|</xsl:text>
    <xsl:text>|284010001000|Образование (создание) части объекта недвижимости|</xsl:text>
    <xsl:text>|284010002000|Изменение части объекта недвижимости|</xsl:text>
    <xsl:text>|284010003000|Прекращение существования части объекта недвижимости|</xsl:text>
    <xsl:text>|284011000000|Сведения об ограничениях (обременениях) вещных прав|</xsl:text>
    <xsl:text>|284012000000|Сведения о кадастровой стоимости|</xsl:text>
    <xsl:text>|284013000000|Сведения о кадастровом инженере|</xsl:text>
    <xsl:text>|284014000000|Сведения о прекращении существования объекта недвижимости|</xsl:text>
    <xsl:text>|284015000000|Иные сведения об объекте недвижимости|</xsl:text>
    <xsl:text>|284016000000|Описание местоположения объекта недвижимости на земельном участке|</xsl:text>
    <xsl:text>|284017000000|Сведения о назначении|</xsl:text>
    <xsl:text>|284018000000|Количество этажей, в том числе подземных этажей|</xsl:text>
    <xsl:text>|284019000000|Сведения о материале наружных стен|</xsl:text>
    <xsl:text>|284020000000|Описание местоположения помещения в пределах этажа, либо в пределах здания или сооружения, либо соответствующей части здания или сооружения|</xsl:text>
    <xsl:text>|284021000000|Сведения о годе ввода в эксплуатацию или годе завершения строительства|</xsl:text>
    <xsl:text>|284022000000|Сведения, содержащие описание прохождения участка государственной границы Российской Федерации, описание местоположения границы между субъектами Российской Федерации, описание местоположения границы муниципального образования, описание местоположения границы населённого пункта|</xsl:text>
    <xsl:text>|284023000000|Сведения, содержащие реквизиты правовых актов|</xsl:text>
    <xsl:text>|284024000000|Сведения, содержащие индивидуальное обозначение территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284025000000|Сведения, содержащие описание местоположения границы территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284026000000|Сведения, содержащие реквизиты правовых актов об установлении территориальной зоны или зоны с особыми условиями использования территории|</xsl:text>
    <xsl:text>|284027000000|Сведения о содержании ограничений использования объектов недвижимости в пределах зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|284028000000|Сведения о видах разрешённого использования объектов недвижимости, а также предельных максимальных и минимальных размерах земельных участков, входящих в состав территориальной зоны|</xsl:text>
    <xsl:text>|284029000000|Сведения о дате создания картографической основы кадастра|</xsl:text>
    <xsl:text>|284030000000|Сведения об организации, создавшей картографическую основу кадастра|</xsl:text>
    <xsl:text>|284031000000|Сведения о масштабе картографической основы|</xsl:text>
    <xsl:text>|284032000000|Сведения о системе координат картографической основы государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|284033000000|Сведения, содержащие каталог (список) координат пунктов опорной межевой сети с указанием системы координат|</xsl:text>
    <xsl:text>|284034000000|Сведения о типах знаков опорной межевой сети|</xsl:text>
    <xsl:text>|284035000000|Описание местоположения пунктов опорных межевых сетей (абрисы)|</xsl:text>
    <xsl:text>|284036000000|Кадастровые номера расположенных в пределах земельного участка зданий, сооружений, объектов незавершённого строительства|</xsl:text>
    <xsl:text>|284037000000|Кадастровый номер здания или сооружения, в которых расположено помещение|</xsl:text>
    <xsl:text>|284038000000|Номер этажа, на котором расположено помещение|</xsl:text>
    <xsl:text>|284039000000|Кадастровый номер земельного участка, в пределах которого расположены здание, сооружение или объект незавершённого строительства|</xsl:text>
    <xsl:text>|284040000000|Кадастровые номера помещений, расположенных в здании или сооружении|</xsl:text>
    <xsl:text>|284041000000|Кадастровый номер квартиры, в которой расположена комната|</xsl:text>
    <xsl:text>|284042000000|Вид жилого помещения|</xsl:text>
    <xsl:text>|284043000000|Основная характеристика объекта недвижимости|</xsl:text>
    <xsl:text>|284044000000|Степень готовности объекта незавершённого строительства|</xsl:text>
    <xsl:text>|284045000000|Сведения о наименовании|</xsl:text>
    <xsl:text>|284046000000|Сведения о включении объекта недвижимости в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|284047000000|Ранее присвоенный государственный учётный номер, дата присвоения такого номера, сведения об организации или органе, которые присвоили такой номер в установленном законодательством порядке|</xsl:text>
    <xsl:text>|284048000000|Номер кадастрового квартала|</xsl:text>
  </xsl:template>

  <xsl:template name="dCategoryOKN">
    <xsl:text>|FILE|dCategoryOKN.xsd|</xsl:text>
    <xsl:text>|NAME|Категории историко-культурного значения объектов культурного наследия|</xsl:text>
    <xsl:text>|208001000000|Объекты культурного наследия федерального значения|</xsl:text>
    <xsl:text>|208002000000|Объекты культурного наследия регионального значения|</xsl:text>
    <xsl:text>|208003000000|Объекты культурного наследия местного (муниципального) значения|</xsl:text>
  </xsl:template>

  <xsl:template name="dBuildingAssignation">
    <xsl:text>|FILE|dBuildingAssignation.xsd|</xsl:text>
    <xsl:text>|NAME|Назначение зданий и помещений|</xsl:text>
    <xsl:text>|204001000000|Нежилое здание|</xsl:text>
    <xsl:text>|204002000000|Жилой дом|</xsl:text>
    <xsl:text>|204003000000|Многоквартирный дом|</xsl:text>
    <xsl:text>|206001000000|Нежилое помещение|</xsl:text>
    <xsl:text>|206002000000|Жилое помещение|</xsl:text>
  </xsl:template>

  <xsl:template name="dForestCategoryProtective">
    <!--Info: D:\_YaPrograms\FCDictConverter\ActForest_v01\dForestCategoryProtective_v01.xsd-->
    <xsl:text>|FILE|dForestCategoryProtective_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Категории защитных лесов|</xsl:text>
    <xsl:text>|236001000000|Леса, расположенные на особо охраняемых природных территориях|</xsl:text>
    <xsl:text>|236002000000|Леса, расположенные в водоохранных зонах|</xsl:text>
    <xsl:text>|236003000000|Леса, выполняющие функции защиты природных и иных объектов|</xsl:text>
    <xsl:text>|236003001000|Леса, расположенные в первом и втором поясах зон санитарной охраны источников питьевого и хозяйственно-бытового водоснабжения|</xsl:text>
    <xsl:text>|236003002000|Защитные полосы лесов, расположенные вдоль железнодорожных путей общего пользования, федеральных автомобильных дорог общего пользования, автомобильных дорог общего пользования, находящихся в собственности субъектов Российской Федерации|</xsl:text>
    <xsl:text>|236003003000|Зеленые зоны|</xsl:text>
    <xsl:text>|236003004000|Лесопарковые зоны|</xsl:text>
    <xsl:text>|236003005000|Городские леса|</xsl:text>
    <xsl:text>|236003006000|Леса, расположенные в первой, второй и третьей зонах округов санитарной (горно-санитарной) охраны лечебно-оздоровительных местностей и курортов|</xsl:text>
    <xsl:text>|236004000000|Ценные леса|</xsl:text>
    <xsl:text>|236004001000|Государственные защитные лесные полосы|</xsl:text>
    <xsl:text>|236004002000|Противоэрозионные леса|</xsl:text>
    <xsl:text>|236004003000|Леса, расположенные в пустынных, полупустынных, лесостепных, лесотундровых зонах, степях, горах|</xsl:text>
    <xsl:text>|236004004000|Леса, имеющие научное или историческое значение|</xsl:text>
    <xsl:text>|236004005000|Орехово-промысловые зоны|</xsl:text>
    <xsl:text>|236004006000|Лесные плодовые насаждения|</xsl:text>
    <xsl:text>|236004007000|Ленточные боры|</xsl:text>
    <xsl:text>|236004008000|Запретные полосы лесов, расположенные вдоль водных объектов|</xsl:text>
    <xsl:text>|236004009000|Нерестоохранные полосы лесов|</xsl:text>
    <xsl:text>|236005000000|Иная категория|</xsl:text>
  </xsl:template>
  <xsl:template name="dForestEncumbrances">
    <!--Info: D:\_YaPrograms\FCDictConverter\ActForest_v01\dForestEncumbrances_v01.xsd-->
    <xsl:text>|FILE|dForestEncumbrances_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Виды разрешенного использования лесов|</xsl:text>
    <xsl:text>|235001000000|Заготовка древесины|</xsl:text>
    <xsl:text>|235002000000|Заготовка живицы|</xsl:text>
    <xsl:text>|235003000000|Заготовка и сбор недревесных лесных ресурсов|</xsl:text>
    <xsl:text>|235004000000|Заготовка пищевых лесных ресурсов и сбор лекарственных растений|</xsl:text>
    <xsl:text>|235005000000|Осуществление видов деятельности в сфере охотничьего хозяйства|</xsl:text>
    <xsl:text>|235006000000|Ведение сельского хозяйства|</xsl:text>
    <xsl:text>|235007000000|Осуществление научно-исследовательской деятельности, образовательной деятельности|</xsl:text>
    <xsl:text>|235008000000|Осуществление рекреационной деятельности|</xsl:text>
    <xsl:text>|235009000000|Создание лесных плантаций и их эксплуатация|</xsl:text>
    <xsl:text>|235010000000|Выращивание лесных плодовых, ягодных, декоративных растений, лекарственных растений|</xsl:text>
    <xsl:text>|235010001000|Выращивание посадочного материала лесных растений (саженцев, сеянцев)|</xsl:text>
    <xsl:text>|235011000000|Выполнение работ по геологическому изучению недр, разработка месторождений полезных ископаемых|</xsl:text>
    <xsl:text>|235012000000|Строительство и эксплуатация водохранилищ и иных искусственных водных объектов, а также гидротехнических сооружений, морских портов, морских терминалов, речных портов, причалов|</xsl:text>
    <xsl:text>|235013000000|Строительство, реконструкция, эксплуатация линейных объектов|</xsl:text>
    <xsl:text>|235014000000|Переработка древесины и иных лесных ресурсов|</xsl:text>
    <xsl:text>|235015000000|Осуществление религиозной деятельности|</xsl:text>
    <xsl:text>|235099000000|Иные виды, определенные в соответствии с частью 2 статьи 6 Лесного кодекса|</xsl:text>
  </xsl:template>
  <xsl:template name="dForestUse">
    <!--Info: D:\_YaPrograms\FCDictConverter\ActForest_v01\dForestUse_v01.xsd-->
    <xsl:text>|FILE|dForestUse_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Целевое назначение лесов|</xsl:text>
    <xsl:text>|234001000000|Защитные леса|</xsl:text>
    <xsl:text>|234002000000|Эксплуатационные леса|</xsl:text>
    <xsl:text>|234003000000|Резервные леса|</xsl:text>
  </xsl:template>
  <xsl:template name="dAllDocuments1_2">
    <!--Info: D:\тп\dAllDocuments.xsd-->
    <xsl:text>|FILE|dAllDocuments.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001000000|Документы, удостоверяющие личность физического лица|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны Российской Федерации, Министерства внутренних дел Российской Федерации и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002000000|Документы, идентифицирующие юридическое лицо|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учёт в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платёжное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558100000000|ЗАЯВЛЕНИЯ|</xsl:text>
    <xsl:text>|558101000000|Заявления и запросы, связанные с государственным кадастровым учётом|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесенных в государственный кадастр недвижимости|</xsl:text>
    <!--|558101010000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, в виде кадастровой выписки об объекте недвижимости, кадастрового паспорта объекта недвижимости и кадастрового плана территории, кадастровой справки о кадастровой стоимости объекта недвижимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558101020000|Заявление о постановке на государственный кадастровый учёт объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном кадастровом учёте изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с государственного кадастрового учёта объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в ГКН сведений о ранее учтённом объекте недвижимости|</xsl:text>
    <!--|558101070000|Заявление о внесении в государственный кадастр недвижимости сведений о ранее учтённом объекте недвижимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населённых пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на государственный кадастровый учёт|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации ГКН|</xsl:text>
    <!--|558101110000|Внутриведомственный запрос информации государственного кадастра недвижимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости|</xsl:text>
    <xsl:text>|558101130000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, посредством обеспечения доступа к информационному ресурсу, содержащему сведения государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558102000000|Заявления и запросы, связанные с регистрацией прав|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации права, ограничения (обременения) права на недвижимое имущество, сделки с недвижимым имуществом, государственной регистрации законного владельца закладной|</xsl:text>
    <!--|558102010000|Заявление о государственной регистрации права на недвижимое имущество, сделки с ним, ограничения (обременения), перехода, прекращения права на недвижимое имущество| Error: D:\тп\Новая папка-->
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учёт бесхозяйного имущества|</xsl:text>
    <!--|558102110000|Заявление о постановке на учёт бесхозяйных недвижимых вещей| Error: D:\тп\Новая папка-->
    <xsl:text>|558102140000|Заявление о приостановлении государственной регистрации, возврате документов без проведения государственной регистрации, представлении дополнительных документов, о возобновлении государственной регистрации, ранее приостановленной по заявлению правообладателя, стороны (сторон) сделки (их представителя)|</xsl:text>
    <!--|558102140000|Заявление о приостановлении государственной регистрации, возврате документов без проведения государственной регистрации, представлении дополнительных документов, о возобновлении государственной регистрации, ранее приостановленной по заявлению правообладателя, стороны (сторон) сделки, лица, чьё право ограничивается (обременяется), лица, в пользу которого право ограничивается (обременяется), законного владельца закладной (их представителя)| Error: D:\тп\Новая папка-->
    <xsl:text>|558102150000|Заявление о повторной выдаче нового свидетельства о государственной регистрации права, выдаче закладной, внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, исправлении технической ошибки, погашении регистрационной записи об ипотеке|</xsl:text>
    <!--|558102150000|Заявление о повторной выдаче нового свидетельства о государственной регистрации права, выдаче закладной, внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, погашении регистрационной записи об ипотеке| Error: D:\тп\Новая папка-->
    <xsl:text>|558102160000|Заявление о принятии имущества вновь во владение, пользование или распоряжение|</xsl:text>
    <!--|558102160000|Заявление о принятии объекта недвижимого имущества вновь во владение, пользование и распоряжение (в собственность)| Error: D:\тп\Новая папка-->
    <xsl:text>|558102170000|Заявление о внесении в государственный реестр отметки о наличии судебного спора в отношении зарегистрированного права|</xsl:text>
    <!--|558102170000|Заявление о внесении в Единый государственный реестр прав на недвижимое имущество и сделок с ним отметки о наличии судебного спора в отношении зарегистрированного права| Error: D:\тп\Новая папка-->
    <xsl:text>|558102180000|Заявление о возражении лица, право которого было зарегистрировано ранее|</xsl:text>
    <!--|558102180000|Заявление об исправлении технической ошибки в записях Единого государственного реестра прав на недвижимое имущество и сделок с ним, о наличии возражения в отношении зарегистрированного права на объект недвижимости, о погашении записи в Едином государственном реестре прав на недвижимое имущество и сделок с ним о наличии возражения в отношении зарегистрированного права на объект недвижимости, о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя), об отзыве ранее представленного заявления о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя)| Error: D:\тп\Новая папка-->
    <xsl:text>|558102190000|Заявление о скреплении добавочного листа (добавочных листов) с закладной|</xsl:text>
    <xsl:text>|558102200000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним, посредством обеспечения доступа к информационному ресурсу, содержащему сведения Единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558200000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ОБЪЕКТА|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205000000|Технический паспорт объекта учёта|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558211000000|Планы иных объектов недвижимости|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимого имущества|</xsl:text>
    <!--|558212000000|Декларация об объекте недвижимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558213000000|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения (выписка из ГКН)|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558214000000|Кадастровая выписка об объекте недвижимости|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558214020000|Кадастровая выписка о здании, сооружении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания, помещения или сооружения, наименования сооружения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка о кадастровой стоимости земельного участка|</xsl:text>
    <!--|558218000000|Кадастровая справка о кадастровой стоимости объекта недвижимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта учёта|</xsl:text>
    <xsl:text>|558221000000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558221010000|Решение о необходимости исправления кадастровой ошибки, направляемое в государственные органы|</xsl:text>
    <!--|558221010000|Решение о необходимости устранения кадастровой ошибки| Error: D:\тп\Новая папка-->
    <xsl:text>|558221020000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о государственной границе Российской Федерации|</xsl:text>
    <!--|558221020000|Международный договор Российской Федерации, в соответствии с которым установлено или изменено прохождение государственной границы Российской Федерации| Error: D:\тп\Новая папка-->
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Копия решения органа государственной власти или органа местного самоуправления об изменении (установлении) адреса|</xsl:text>
    <!--|558221050000|Решение о присвоении, изменении адреса| Error: D:\тп\Новая папка-->
    <xsl:text>|558221060000|Документы органов, осуществляющих ведение лесного и водного кадастра, содержащие сведения о природных объектах|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Документ, содержащий сведения о кадастровой стоимости объекта|</xsl:text>
    <!--|558221080000|Акт об утверждении результатов определения кадастровой стоимости| Error: D:\тп\Новая папка-->
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558300000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ ОПИСАНИЕ ЗАЯВИТЕЛЯ ИЛИ ЕГО ПРЕДСТАВИТЕЛЯ|</xsl:text>
    <xsl:text>|558301000000|Документы, подтверждающие полномочия представителя|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558400000000|ДОКУМЕНТЫ О ПРАВАХ, СДЕЛКАХ, ОГРАНИЧЕНИЯХ (ОБРЕМЕНЕНИЯХ)|</xsl:text>
    <xsl:text>|558401000000|Правоустанавливающие документы|</xsl:text>
    <!--|558401000000|Правоустанавливающие и правоудостоверяющие документы| Error: D:\тп\Новая папка-->
    <xsl:text>|558401010000|Договоры / соглашения|</xsl:text>
    <xsl:text>|558401010100|Сделки об отчуждении|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010200|Другие сделки|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020000|Акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента Российской Федерации|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства Российской Федерации|</xsl:text>
    <xsl:text>|558401020400|Закон (законы Российской Федерации, субъекта Российской Федерации)|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030000|Свидетельство о праве на наследство|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040000|Вступившие в силу судебные акты|</xsl:text>
    <xsl:text>|558401050000|Акты (свидетельства) о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060000|Документы на вновь возведенный (реконструированный) объект|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401070000|Документы при упрощенном порядке оформления прав граждан на отдельные объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080000|Прочие правоустанавливающие документы|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий наличие, возникновение, переход ограничения (обременения) вещного права на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402000000|СОПУТСТВУЮЩИЕ И ДОПОЛНИТЕЛЬНЫЕ ДОКУМЕНТЫ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта Российской Федерации при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (акт оценки)|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403000000|ДОКУМЕНТЫ, СОДЕРЖАЩИЕ СВЕДЕНИЯ ЕГРП|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из ЕГРП о бесхозяйном объекте недвижимого имущества, принятом на учёт|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558500000000|Решения, уведомления, расписки|</xsl:text>
    <xsl:text>|558501000000|Документы о результатах государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501010000|РЕШЕНИЯ|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта|</xsl:text>
    <xsl:text>|558501011000|Решение об осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501011100|Решение об аннулировании кадастровых сведений|</xsl:text>
    <xsl:text>|558501020000|УВЕДОМЛЕНИЯ|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществлённом кадастровом учёте|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020900|Уведомление о регистрации права|</xsl:text>
    <xsl:text>|558501021000|Уведомление о приостановлении принятия на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021100|Сообщение об отказе в принятии на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021200|Уведомление о снятии с учёта имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501030000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501030200|Протокол проверки документов|</xsl:text>
    <xsl:text>|558501030300|Акт определения кадастровой стоимости земельных участков|</xsl:text>
    <xsl:text>|558501030400|Протокол выявления технической ошибки|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502000000|ДОКУМЕНТЫ О РЕЗУЛЬТАТАХ РЕГИСТРАЦИИ ПРАВ|</xsl:text>
    <xsl:text>|558502010000|УВЕДОМЛЕНИЯ, СООБЩЕНИЯ|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации|</xsl:text>
    <!--|558502010100|Уведомление о приостановлении государственной регистрации прав| Error: D:\тп\Новая папка-->
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации|</xsl:text>
    <!--|558502010200|Уведомление о прекращении государственной регистрации прав| Error: D:\тп\Новая папка-->
    <xsl:text>|558502010300|Уведомление о проведении государственной регистрации ограничения (обременения) права|</xsl:text>
    <!--|558502010300|Уведомление о зарегистрированных ограничениях (обременениях) прав| Error: D:\тп\Новая папка-->
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки в сведениях ЕГРП|</xsl:text>
    <!--|558502010500|Уведомление об исправлении технической ошибки в записях единого государственного реестра прав на недвижимое имущество и сделок с ним| Error: D:\тп\Новая папка-->
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации|</xsl:text>
    <!--|558502010600|Сообщение об отказе в государственной регистрации прав| Error: D:\тп\Новая папка-->
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении сведений из ЕГРП|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|Сообщение о приёме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|Сообщение о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о погашении регистрационной записи|</xsl:text>
    <!--|558502011200|Уведомление о государственной регистрации прекращения ограничения (обременения)| Error: D:\тп\Новая папка-->
    <xsl:text>|558502011300|Уведомление об отсутствии сведений о лицах, получивших сведения об объектах недвижимого имущества|</xsl:text>
    <xsl:text>|558502011400|Уведомление о государственной регистрации права собственности субъекта Российской Федерации или муниципального образования на земельный участок или земельную долю вследствие отказа от права собственности|</xsl:text>
    <!--|558502011400|Уведомление о государственной регистрации права собственности субъекта Российской Федерации или муниципального образования на земельный участок или земельную долю вследствие отказа от соответствующего права правообладателем| Error: D:\тп\Новая папка-->
    <xsl:text>|558502020000|ПРОЧИЕ|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию|</xsl:text>
    <!--|558502020100|Расписка в получении документов на государственную регистрацию прав| Error: D:\тп\Новая папка-->
    <xsl:text>|558502029900|Иной документ|</xsl:text>
    <!--Info: D:\тп\Новая папка\dAllDocuments_v02.xsd-->
  </xsl:template>
  <xsl:template name="dDeals">
    <!--Info: D:\gg\dDeals.xsd-->
    <xsl:text>|FILE|dDeals.xsd|</xsl:text>
    <xsl:text>|NAME|Сделки (договоры)|</xsl:text>
    <xsl:text>|454001000000|Сделки об отчуждении объектов недвижимости|</xsl:text>
    <xsl:text>|454001001000|Договор купли-продажи|</xsl:text>
    <xsl:text>|454001002000|Договор дарения|</xsl:text>
    <xsl:text>|454001003000|Договор мены|</xsl:text>
    <xsl:text>|454001004000|Договор ренты|</xsl:text>
    <xsl:text>|454001005000|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|454002000000|Сделки, на основании которых возникают ограничения (обременения) прав|</xsl:text>
    <xsl:text>|454002001000|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|454002002000|Договор безвозмездного срочного пользования земельным / лесным участком|</xsl:text>
    <xsl:text>|454002003000|Договор об ипотеке (залоге)|</xsl:text>
    <xsl:text>|454003000000|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|454004000000|Соглашение об изменении условий договора|</xsl:text>
    <xsl:text>|454005000000|Соглашение об уступке требований (переводе долга) по договору|</xsl:text>
    <xsl:text>|454006000000|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|454007000000|Соглашение об изменении содержания закладной|</xsl:text>
  </xsl:template>
  <!-- SuspensionGRP -->
  <xsl:template name="dActionReason">
    <!--Info: D:\Dictionary3\dActionReason_v01.xsd-->
    <xsl:text>|FILE|dActionReason_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Причины прекращения действия права|</xsl:text>
    <xsl:text>|483001000000|в связи с ликвидацией объекта недвижимого имущества|</xsl:text>
    <xsl:text>|483002000000|в связи с выполнением обязательств по договору и прекращением всех связанных с ним ограничений (обременений) права|</xsl:text>
    <xsl:text>|483003000000|в связи со смертью получателя ренты и прекращением обязательств по договору|</xsl:text>
    <xsl:text>|483004000000|иное|</xsl:text>
  </xsl:template>
  <xsl:template name="DActionCode">
    <!--Info: D:\Dictionary3\DActionCode.xsd-->
    <xsl:text>|FILE|DActionCode.xsd|</xsl:text>
    <xsl:text>|NAME|Государственные услуги ЕГРН|</xsl:text>
    <xsl:text>|659111111111|Постановка на государственный кадастровый учет и государственная регистрация прав в связи с созданием (образованием) объекта недвижимости (за исключением случаев ввода объекта капитального строительства в эксплуатацию, изъятия земельного участка на государственные нужды)|</xsl:text>
    <xsl:text>|659111111112|Снятие с государственного кадастрового учета объекта недвижимости, права на который зарегистрированы в ЕГРН|</xsl:text>
    <xsl:text>|659111111113|Постановка на государственный кадастровый учет части объекта недвижимости при регистрации ограничений и обременений права|</xsl:text>
    <xsl:text>|659111111114|Снятие с государственного кадастрового учета части объекта недвижимости при регистрации ограничений и обременений права|</xsl:text>
    <xsl:text>|659211111111|Постановка на государственный кадастровый учет объекта недвижимости без одновременной государственной регистрации прав (по разрешению на ввод в эксплуатацию ОКС, в результате изъятия ЗУ или ОН на государственные нужды, при регистрации ЗУ, госсобственность на которые не разграничена, при регистрации мест общего пользования или ЗУ, занятых, объектами незавершенного строительства, при постановке на учет квартир, помещений одновременно с постановкой на КУ здания, если  право на здание зарегистрировано в ЕГРН)|</xsl:text>
    <xsl:text>|659211111112|Снятие с государственного кадастрового учета объекта недвижимости, права на который не зарегистрированы в ЕГРН|</xsl:text>
    <xsl:text>|659211111113|Постановка на государственный кадастровый учет части объекта недвижимости, ограничения и обременения на которую не регистрируются в ЕГРН в соответствии с федеральным законом|</xsl:text>
    <xsl:text>|659211111114|Снятие с государственного кадастрового учета части объекта недвижимости, ограничения и обременения на которую не регистрируются в ЕГРН в соответствии с федеральным законом|</xsl:text>
    <xsl:text>|659211111115|Изменение основных характеристик объекта недвижимости без одновременной государственной регистрации прав|</xsl:text>
    <xsl:text>|659211111116|Внесение сведений о ранее учтённом объекте недвижимости|</xsl:text>
    <xsl:text>|659311111111|Государственная регистрация прав без одновременного государственного кадастрового учета (при наличии в ЕГРН сведений об объекте недвижимого имущества)|</xsl:text>
    <xsl:text>|659311111112|Государственная регистрация прекращения права на объект недвижимости без одновременного государственного кадастрового учета (при наличии в ЕГРН сведений об объекте недвижимого имущества)|</xsl:text>
    <xsl:text>|659311111113|Регистрация перехода права на объект недвижимости без одновременного государственного кадастрового учета (при наличии в ЕГРН сведений об объекте недвижимого имущества)|</xsl:text>
    <xsl:text>|659311111114|Регистрация сделки об ограничении (обременении) права (регистрация договора участия в долевом строительстве и регистрация договора аренды)|</xsl:text>
    <xsl:text>|659311111115|Регистрация ограничений прав на объект недвижимости и обременений объекта недвижимости|</xsl:text>
    <xsl:text>|659311111116|Прекращение ограничений прав на объект недвижимости и обременений объекта недвижимости|</xsl:text>
    <xsl:text>|659411111111|Внесение сведений в ЕГРН в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|659411111112|Внесение сведений в ЕГРН по инициативе заинтересованного лица|</xsl:text>
    <xsl:text>|659411111113|Исправление технических ошибок, содержащихся в ЕГРН|</xsl:text>
    <xsl:text>|659411111114|Внесение в ЕГРН сведений о границах в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|659411111115|Изменение в ЕГРН сведений о границах в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|659411111116|Исключение из ЕГРН сведений о границах в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|659411111117|Приостановление осуществления государственного кадастрового учета и (или) государственной регистрации прав в заявительном порядке|</xsl:text>
    <xsl:text>|659411111118|Прекращение осуществления государственного кадастрового учета и (или) государственной регистрации прав в заявительном порядке|</xsl:text>
    <xsl:text>|659411111119|Возобновление государственной регистрации, ранее приостановленной по заявлению правообладателя|</xsl:text>
    <xsl:text>|659411111120|Обработка дополнительных документов, представляемых заявителем, в том числе с целью устранения причин, приведших к приостановлению государственного кадастрового учета и (или) государственной регистрации прав|</xsl:text>
    <xsl:text>|659411111121|Внесение в ЕГРН сведений о границах по инициативе заинтересованного лица|</xsl:text>
    <xsl:text>|659411111122|Государственная регистрация передачи права по закладной в случае, если права залогодержателя удостоверяются закладной|</xsl:text>
    <xsl:text>|659411111123|Государственная регистрация законного владельца закладной|</xsl:text>
    <xsl:text>|659411111124|Выдача закладной|</xsl:text>
    <xsl:text>|659411111125|Принятие объекта недвижимого имущества вновь во владение, пользование и распоряжение|</xsl:text>
    <xsl:text>|659411111126|Обработка заявления о том, что собственник объекта недвижимости не совершал действий, направленные на отказ от права собственности|</xsl:text>
    <xsl:text>|659411111127|Обработка документов, поступающих без заявлений|</xsl:text>
    <xsl:text>|659411111128|Исправление технических ошибок, содержащихся в сведениях реестра границ|</xsl:text>
    <xsl:text>|659511111111|Предоставление сведений, содержащихся в ЕГРН, в виде копии документа|</xsl:text>
    <xsl:text>|659511111112|Предоставление сведений, содержащихся в ЕГРН, об объектах недвижимости и (или) их правообладателях|</xsl:text>
    <xsl:text>|659511111113|Предоставление сведений, содержащихся в Едином государственном реестре недвижимости, посредством обеспечения доступа к федеральной государственной информационной системе ведения Единого государственного реестра недвижимости|</xsl:text>
    <xsl:text>|659511111114|Предоставление сведений, содержащихся в Едином государственном реестре недвижимости, о зоне с особыми условиями использования территорий, территориальной зоне, территории объекта культурного наследия, территории опережающего социально-экономического развития, зоне территориального развития в Российской Федерации, об игорной зоне, о лесничестве, лесопарке, об особо охраняемой природной территории, особой экономической зоне, охотничьих угодьях, об административно-территориальном делении, о береговой линии (границе водного объекта)|</xsl:text>
    <xsl:text>|659511111115|Обеспечение доступа к федеральной государственной информационной системе ведения Единого государственного реестра недвижимости|</xsl:text>
    <xsl:text>|659511111116|Предоставление сведений, содержащихся в Едином государственном реестре недвижимости, в виде кадастрового плана территории|</xsl:text>
    <xsl:text>|659511111117|Предоставление сведений о зоне, территории или границе, содержащихся в ЕГРН, в виде копии документа|</xsl:text>
    <xsl:text>|659511111118|"Предоставление сведений в отношении зон, территорий и границ, посредством обеспечения доступа к федеральной государственной информационной системе ведения Единого государственного реестра недвижимости "|</xsl:text>
  </xsl:template>
  <xsl:template name="DPersDataAgreements">
    <!--Info: D:\Dictionary3\DAgreements.xsd-->
    <xsl:text>|FILE|DAgreements.xsd|</xsl:text>
    <xsl:text>|NAME|Согласие на обработку персональных данных|</xsl:text>
    <xsl:text>|01|Подтверждаю свое согласие, а также согласие представляемого мною лица, на обработку персональных данных (сбор, систематизацию, накопление, хранение, уточнение (обновление, изменение), использование, распространение (в том числе передачу), обезличивание, блокирование, уничтожение персональных данных, а также иных действий, необходимых для обработки персональных данных в рамках предоставления органами регистрации прав в соответствии с законодательством Российской Федерации государственных услуг), в том числе в автоматизированном режиме, включая принятие решений на их основе органом регистрации прав, в целях предоставления государственной услуги.|</xsl:text>
    <xsl:text>|02|Даю свое согласие на участие в опросе по оценке качества предоставленной мне государственной услуги по телефону|</xsl:text>
  </xsl:template>
  <xsl:template name="DActualDataAgreements">
    <!--Info: D:\Dictionary3\DAgreements.xsd-->
    <xsl:text>|FILE|DAgreements.xsd|</xsl:text>
    <xsl:text>|NAME|Согласие о предоставлении актуальных данных|</xsl:text>
    <xsl:text>|01|Настоящим также подтверждаю, что:
сведения, указанные в настоящем заявлении, на дату представления заявления достоверны;
представленные документы и содержащиеся в них сведения соответствуют установленным законодательством Российской Федерации требованиям, в том числе указанные сведения достоверны;
при совершении сделки с объектом недвижимости соблюдены установленные законодательством Российской Федерации требования, в том числе в установленных законом случаях получено согласие (разрешение, согласование и т.п.) указанных в нем органов (лиц);
мне известно о возможности привлечения меня в соответствии с законодательством Российской Федерации к ответственности (в том числе уголовной) за представление поддельных документов, в том числе документов, содержащих недостоверные сведения.|</xsl:text>
    <xsl:text>|02|Настоящим также подтверждаю, что:
сведения, указанные в настоящем заявлении, на дату представления заявления достоверны;
представленные документы и содержащиеся в них сведения соответствуют установленным законодательством Российской Федерации требованиям, в том числе указанные сведения достоверны;
мне известно о возможности привлечения меня в соответствии с законодательством Российской Федерации к ответственности (в том числе уголовной) за представление поддельных документов, в том числе документов, содержащих недостоверные сведения.|</xsl:text>
    <xsl:text>|03|Настоящим также подтверждаю, что:
сведения, указанные в настоящем заявлении, на дату представления заявления достоверны;
представленные документы (копии документов) и содержащиеся в них сведения соответствуют установленным законодательством Российской Федерации требованиям, в том числе указанные сведения достоверны.|</xsl:text>
    <xsl:text>|04|Настоящим подтверждаю:
сведения, включенные в запрос, относящиеся к моей личности и представляемому мною лицу, а также внесенные мною ниже, достоверны;
документы (копии документов), приложенные к запросу, соответствуют требованиям, установленным законодательством Российской Федерации, на момент представления запроса эти документы действительны и содержат достоверные сведения;|</xsl:text>
  </xsl:template>
  <xsl:template name="DQualityOfServiceAgreements">
    <!--Info: D:\Dictionary3\DAgreements.xsd-->
    <xsl:text>|FILE|DAgreements.xsd|</xsl:text>
    <xsl:text>|NAME|Согласие на проведение опроса|</xsl:text>
    <xsl:text>|01|Даю свое согласие на участие в опросе по оценке качества предоставленной мне государственной услуги|</xsl:text>
    <xsl:text>|02|Даю свое согласие на участие в опросе по оценке качества предоставленной мне государственной услуги по телефону|</xsl:text>
  </xsl:template>
  <xsl:template name="DBenefitCategory">
    <!--Info: D:\Dictionary3\DBenefitCategory.xsd-->
    <xsl:text>|FILE|DBenefitCategory.xsd|</xsl:text>
    <xsl:text>|NAME|Категории льготников|</xsl:text>
    <xsl:text>|358000000001|Федеральные органы государственной власти|</xsl:text>
    <xsl:text>|358000000002|Ограны государственной власти субъектов Российской Федерации|</xsl:text>
    <xsl:text>|358000000003|Органы местного самоуправления|</xsl:text>
    <xsl:text>|358000000004|Государственные и муниципальные органы и организации, учреждения культуры|</xsl:text>
    <xsl:text>|358000000005|Герои Советского Союза и РФ|</xsl:text>
    <xsl:text>|358000000006|Полные кавалеры ордена Славы|</xsl:text>
    <xsl:text>|358000000007|Инвалиды ВОВ и участники ВОВ (Великой Отечественной Войны)|</xsl:text>
    <xsl:text>|358000000008|Российская Федерация|</xsl:text>
    <xsl:text>|358000000009|Субъект Российской Федерации|</xsl:text>
  </xsl:template>
  <xsl:template name="DBorderObjectType">
    <!--Info: D:\Dictionary3\DBorderObjectType.xsd-->
    <xsl:text>|FILE|DBorderObjectType.xsd|</xsl:text>
    <xsl:text>|NAME|Вид объекта реестра границ|</xsl:text>
    <xsl:text>|1|Государственная граница Российской Федерации|</xsl:text>
    <xsl:text>|2|Граница между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|3|Граница муниципального образования|</xsl:text>
    <xsl:text>|4|Граница населенного пункта|</xsl:text>
    <xsl:text>|5|Береговая линия (граница водного объекта)|</xsl:text>
    <xsl:text>|6|Зона с особыми условиями использования территории|</xsl:text>
    <xsl:text>|7|Территориальная зона|</xsl:text>
    <xsl:text>|8|Территория объекта культурного наследия|</xsl:text>
    <xsl:text>|9|Особо охраняемая природная территория|</xsl:text>
    <xsl:text>|10|Особая экономическая зона|</xsl:text>
    <xsl:text>|11|Охотничьи угодья|</xsl:text>
    <xsl:text>|12|Территория опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|13|Зона территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|14|Игорная зона|</xsl:text>
    <xsl:text>|15|Лесничество|</xsl:text>
    <xsl:text>|16|Лесопарк|</xsl:text>
    <xsl:text>|17|Утвержденный проект межевания территории|</xsl:text>
  </xsl:template>
  <xsl:template name="DCadastralAction">
    <!--Info: D:\Dictionary3\DCadastralAction.xsd-->
    <xsl:text>|FILE|DCadastralAction.xsd|</xsl:text>
    <xsl:text>|NAME|Типы действий по государственному кадастровому учету|</xsl:text>
    <xsl:text>|111200001000|Постановка на учет|</xsl:text>
    <xsl:text>|111200002000|Снятие с учета|</xsl:text>
    <xsl:text>|111200003010|Учет изменений в связи c изменением площади земельного участка и (или) изменением описания местоположения его границ|</xsl:text>
    <xsl:text>|111200003020|Учет изменений в связи с уточнением местоположения объекта недвижимости на земельном участке|</xsl:text>
    <xsl:text>|111200003030|Учет изменений в связи с изменением основной характеристики объекта недвижимости|</xsl:text>
    <xsl:text>|111200003040|Учет изменений в связи с учетом части объекта недвижимости|</xsl:text>
    <xsl:text>|111200003050|Учет изменений в связи с исправлением реестровой ошибки|</xsl:text>
    <xsl:text>|111200003060|Учет изменений в связи с приведением вида объекта недвижимости в соответствие с требованиями действующего законодательства|</xsl:text>
    <xsl:text>|111200003070|Учет изменений в связи с изменением характеристики объекта недвижимости|</xsl:text>
    <xsl:text>|111200004000|Внесение сведений о ранее учтенном объекте|</xsl:text>
  </xsl:template>
  <xsl:template name="DContractor">
    <!--Info: D:\Dictionary3\DContractor.xsd-->
    <xsl:text>|FILE|DContractor.xsd|</xsl:text>
    <xsl:text>|NAME|Вид иного описания правообладателя|</xsl:text>
    <xsl:text>|1|Владельцы ипотечных сертификатов участия|</xsl:text>
    <xsl:text>|2|Владельцы инвестиционных паев|</xsl:text>
    <xsl:text>|3|Участники договора инвестиционного товарищества|</xsl:text>
  </xsl:template>
  <xsl:template name="DCountry">
    <!--Info: D:\Dictionary3\DCountry.xsd-->
    <xsl:text>|FILE|DCountry.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор стран мира (по Общероссийскому классификатору стран мира)|</xsl:text>
    <xsl:text>|848000000004|АФГАНИСТАН|</xsl:text>
    <xsl:text>|848000000008|АЛБАНИЯ|</xsl:text>
    <xsl:text>|848000000010|АНТАРКТИДА|</xsl:text>
    <xsl:text>|848000000012|АЛЖИР|</xsl:text>
    <xsl:text>|848000000016|АМЕРИКАНСКОЕ САМОА|</xsl:text>
    <xsl:text>|848000000020|АНДОРРА|</xsl:text>
    <xsl:text>|848000000024|АНГОЛА|</xsl:text>
    <xsl:text>|848000000028|АНТИГУА И БАРБУДА|</xsl:text>
    <xsl:text>|848000000031|АЗЕРБАЙДЖАН|</xsl:text>
    <xsl:text>|848000000032|АРГЕНТИНА|</xsl:text>
    <xsl:text>|848000000036|АВСТРАЛИЯ|</xsl:text>
    <xsl:text>|848000000040|АВСТРИЯ|</xsl:text>
    <xsl:text>|848000000044|БАГАМЫ|</xsl:text>
    <xsl:text>|848000000048|БАХРЕЙН|</xsl:text>
    <xsl:text>|848000000050|БАНГЛАДЕШ|</xsl:text>
    <xsl:text>|848000000051|АРМЕНИЯ|</xsl:text>
    <xsl:text>|848000000052|БАРБАДОС|</xsl:text>
    <xsl:text>|848000000056|БЕЛЬГИЯ|</xsl:text>
    <xsl:text>|848000000060|БЕРМУДЫ|</xsl:text>
    <xsl:text>|848000000064|БУТАН|</xsl:text>
    <xsl:text>|848000000068|БОЛИВИЯ, МНОГОНАЦИОНАЛЬНОЕ ГОСУДАРСТВО|</xsl:text>
    <xsl:text>|848000000070|БОСНИЯ И ГЕРЦЕГОВИНА|</xsl:text>
    <xsl:text>|848000000072|БОТСВАНА|</xsl:text>
    <xsl:text>|848000000074|ОСТРОВ БУВЕ|</xsl:text>
    <xsl:text>|848000000076|БРАЗИЛИЯ|</xsl:text>
    <xsl:text>|848000000084|БЕЛИЗ|</xsl:text>
    <xsl:text>|848000000086|БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ|</xsl:text>
    <xsl:text>|848000000090|СОЛОМОНОВЫ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000092|ВИРГИНСКИЕ ОСТРОВА, БРИТАНСКИЕ|</xsl:text>
    <xsl:text>|848000000096|БРУНЕЙ-ДАРУССАЛАМ|</xsl:text>
    <xsl:text>|848000000100|БОЛГАРИЯ|</xsl:text>
    <xsl:text>|848000000104|МЬЯНМА|</xsl:text>
    <xsl:text>|848000000108|БУРУНДИ|</xsl:text>
    <xsl:text>|848000000112|БЕЛАРУСЬ|</xsl:text>
    <xsl:text>|848000000116|КАМБОДЖА|</xsl:text>
    <xsl:text>|848000000120|КАМЕРУН|</xsl:text>
    <xsl:text>|848000000124|КАНАДА|</xsl:text>
    <xsl:text>|848000000132|КАБО-ВЕРДЕ|</xsl:text>
    <xsl:text>|848000000136|ОСТРОВА КАЙМАН|</xsl:text>
    <xsl:text>|848000000140|ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000144|ШРИ-ЛАНКА|</xsl:text>
    <xsl:text>|848000000148|ЧАД|</xsl:text>
    <xsl:text>|848000000152|ЧИЛИ|</xsl:text>
    <xsl:text>|848000000156|КИТАЙ|</xsl:text>
    <xsl:text>|848000000158|ТАЙВАНЬ (КИТАЙ)|</xsl:text>
    <xsl:text>|848000000162|ОСТРОВ РОЖДЕСТВА|</xsl:text>
    <xsl:text>|848000000166|КОКОСОВЫЕ (КИЛИНГ) ОСТРОВА|</xsl:text>
    <xsl:text>|848000000170|КОЛУМБИЯ|</xsl:text>
    <xsl:text>|848000000174|КОМОРЫ|</xsl:text>
    <xsl:text>|848000000175|МАЙОТТА|</xsl:text>
    <xsl:text>|848000000178|КОНГО|</xsl:text>
    <xsl:text>|848000000180|КОНГО, ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000184|ОСТРОВА КУКА|</xsl:text>
    <xsl:text>|848000000188|КОСТА-РИКА|</xsl:text>
    <xsl:text>|848000000191|ХОРВАТИЯ|</xsl:text>
    <xsl:text>|848000000192|КУБА|</xsl:text>
    <xsl:text>|848000000196|КИПР|</xsl:text>
    <xsl:text>|848000000203|ЧЕШСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000204|БЕНИН|</xsl:text>
    <xsl:text>|848000000208|ДАНИЯ|</xsl:text>
    <xsl:text>|848000000212|ДОМИНИКА|</xsl:text>
    <xsl:text>|848000000214|ДОМИНИКАНСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000218|ЭКВАДОР|</xsl:text>
    <xsl:text>|848000000222|ЭЛЬ-САЛЬВАДОР|</xsl:text>
    <xsl:text>|848000000226|ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ|</xsl:text>
    <xsl:text>|848000000231|ЭФИОПИЯ|</xsl:text>
    <xsl:text>|848000000232|ЭРИТРЕЯ|</xsl:text>
    <xsl:text>|848000000233|ЭСТОНИЯ|</xsl:text>
    <xsl:text>|848000000234|ФАРЕРСКИЕ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000238|ФОЛКЛЕНДСКИЕ ОСТРОВА (МАЛЬВИНСКИЕ)|</xsl:text>
    <xsl:text>|848000000239|ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000242|ФИДЖИ|</xsl:text>
    <xsl:text>|848000000246|ФИНЛЯНДИЯ|</xsl:text>
    <xsl:text>|848000000248|ЭЛАНДСКИЕ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000250|ФРАНЦИЯ|</xsl:text>
    <xsl:text>|848000000254|ФРАНЦУЗСКАЯ ГВИАНА|</xsl:text>
    <xsl:text>|848000000258|ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ|</xsl:text>
    <xsl:text>|848000000260|ФРАНЦУЗСКИЕ ЮЖНЫЕ ТЕРРИТОРИИ|</xsl:text>
    <xsl:text>|848000000262|ДЖИБУТИ|</xsl:text>
    <xsl:text>|848000000266|ГАБОН|</xsl:text>
    <xsl:text>|848000000268|ГРУЗИЯ|</xsl:text>
    <xsl:text>|848000000270|ГАМБИЯ|</xsl:text>
    <xsl:text>|848000000275|ПАЛЕСТИНСКАЯ ТЕРРИТОРИЯ, ОККУПИРОВАННАЯ|</xsl:text>
    <xsl:text>|848000000276|ГЕРМАНИЯ|</xsl:text>
    <xsl:text>|848000000288|ГАНА|</xsl:text>
    <xsl:text>|848000000292|ГИБРАЛТАР|</xsl:text>
    <xsl:text>|848000000296|КИРИБАТИ|</xsl:text>
    <xsl:text>|848000000300|ГРЕЦИЯ|</xsl:text>
    <xsl:text>|848000000304|ГРЕНЛАНДИЯ|</xsl:text>
    <xsl:text>|848000000308|ГРЕНАДА|</xsl:text>
    <xsl:text>|848000000312|ГВАДЕЛУПА|</xsl:text>
    <xsl:text>|848000000316|ГУАМ|</xsl:text>
    <xsl:text>|848000000320|ГВАТЕМАЛА|</xsl:text>
    <xsl:text>|848000000324|ГВИНЕЯ|</xsl:text>
    <xsl:text>|848000000328|ГАЙАНА|</xsl:text>
    <xsl:text>|848000000332|ГАИТИ|</xsl:text>
    <xsl:text>|848000000334|ОСТРОВ ХЕРД И ОСТРОВА МАКДОНАЛЬД|</xsl:text>
    <xsl:text>|848000000336|ПАПСКИЙ ПРЕСТОЛ (ГОСУДАРСТВО - ГОРОД ВАТИКАН)|</xsl:text>
    <xsl:text>|848000000340|ГОНДУРАС|</xsl:text>
    <xsl:text>|848000000344|ГОНКОНГ|</xsl:text>
    <xsl:text>|848000000348|ВЕНГРИЯ|</xsl:text>
    <xsl:text>|848000000352|ИСЛАНДИЯ|</xsl:text>
    <xsl:text>|848000000356|ИНДИЯ|</xsl:text>
    <xsl:text>|848000000360|ИНДОНЕЗИЯ|</xsl:text>
    <xsl:text>|848000000364|ИРАН, ИСЛАМСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000368|ИРАК|</xsl:text>
    <xsl:text>|848000000372|ИРЛАНДИЯ|</xsl:text>
    <xsl:text>|848000000376|ИЗРАИЛЬ|</xsl:text>
    <xsl:text>|848000000380|ИТАЛИЯ|</xsl:text>
    <xsl:text>|848000000384|КОТ-Д'ИВУАР|</xsl:text>
    <xsl:text>|848000000388|ЯМАЙКА|</xsl:text>
    <xsl:text>|848000000392|ЯПОНИЯ|</xsl:text>
    <xsl:text>|848000000398|КАЗАХСТАН|</xsl:text>
    <xsl:text>|848000000400|ИОРДАНИЯ|</xsl:text>
    <xsl:text>|848000000404|КЕНИЯ|</xsl:text>
    <xsl:text>|848000000408|КОРЕЯ, НАРОДНО-ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000410|КОРЕЯ, РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000414|КУВЕЙТ|</xsl:text>
    <xsl:text>|848000000417|КИРГИЗИЯ|</xsl:text>
    <xsl:text>|848000000418|ЛАОССКАЯ НАРОДНО- ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000422|ЛИВАН|</xsl:text>
    <xsl:text>|848000000426|ЛЕСОТО|</xsl:text>
    <xsl:text>|848000000428|ЛАТВИЯ|</xsl:text>
    <xsl:text>|848000000430|ЛИБЕРИЯ|</xsl:text>
    <xsl:text>|848000000434|ЛИВИЙСКАЯ АРАБСКАЯ ДЖАМАХИРИЯ|</xsl:text>
    <xsl:text>|848000000438|ЛИХТЕНШТЕЙН|</xsl:text>
    <xsl:text>|848000000440|ЛИТВА|</xsl:text>
    <xsl:text>|848000000442|ЛЮКСЕМБУРГ|</xsl:text>
    <xsl:text>|848000000446|МАКАО|</xsl:text>
    <xsl:text>|848000000450|МАДАГАСКАР|</xsl:text>
    <xsl:text>|848000000454|МАЛАВИ|</xsl:text>
    <xsl:text>|848000000458|МАЛАЙЗИЯ|</xsl:text>
    <xsl:text>|848000000462|МАЛЬДИВЫ|</xsl:text>
    <xsl:text>|848000000466|МАЛИ|</xsl:text>
    <xsl:text>|848000000470|МАЛЬТА|</xsl:text>
    <xsl:text>|848000000474|МАРТИНИКА|</xsl:text>
    <xsl:text>|848000000478|МАВРИТАНИЯ|</xsl:text>
    <xsl:text>|848000000492|МОНАКО|</xsl:text>
    <xsl:text>|848000000496|МОНГОЛИЯ|</xsl:text>
    <xsl:text>|848000000498|МОЛДОВА, РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000499|ЧЕРНОГОРИЯ|</xsl:text>
    <xsl:text>|848000000500|МОНТСЕРРАТ|</xsl:text>
    <xsl:text>|848000000504|МАРОККО|</xsl:text>
    <xsl:text>|848000000508|МОЗАМБИК|</xsl:text>
    <xsl:text>|848000000512|ОМАН|</xsl:text>
    <xsl:text>|848000000516|НАМИБИЯ|</xsl:text>
    <xsl:text>|848000000520|НАУРУ|</xsl:text>
    <xsl:text>|848000000524|НЕПАЛ|</xsl:text>
    <xsl:text>|848000000528|НИДЕРЛАНДЫ|</xsl:text>
    <xsl:text>|848000000530|НИДЕРЛАНДСКИЕ АНТИЛЫ|</xsl:text>
    <xsl:text>|848000000533|АРУБА|</xsl:text>
    <xsl:text>|848000000540|НОВАЯ КАЛЕДОНИЯ|</xsl:text>
    <xsl:text>|848000000548|ВАНУАТУ|</xsl:text>
    <xsl:text>|848000000554|НОВАЯ ЗЕЛАНДИЯ|</xsl:text>
    <xsl:text>|848000000558|НИКАРАГУА|</xsl:text>
    <xsl:text>|848000000562|НИГЕР|</xsl:text>
    <xsl:text>|848000000566|НИГЕРИЯ|</xsl:text>
    <xsl:text>|848000000570|НИУЭ|</xsl:text>
    <xsl:text>|848000000574|ОСТРОВ НОРФОЛК|</xsl:text>
    <xsl:text>|848000000578|НОРВЕГИЯ|</xsl:text>
    <xsl:text>|848000000580|СЕВЕРНЫЕ МАРИАНСКИЕ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000581|МАЛЫЕ ТИХООКЕАНСКИЕ ОТДАЛЕННЫЕ ОСТРОВА СОЕДИНЕННЫХ ШТАТОВ|</xsl:text>
    <xsl:text>|848000000583|МИКРОНЕЗИЯ, ФЕДЕРАТИВНЫЕ ШТАТЫ|</xsl:text>
    <xsl:text>|848000000584|МАРШАЛЛОВЫ ОСТРОВА|</xsl:text>
    <xsl:text>|848000000585|ПАЛАУ|</xsl:text>
    <xsl:text>|848000000586|ПАКИСТАН|</xsl:text>
    <xsl:text>|848000000591|ПАНАМА|</xsl:text>
    <xsl:text>|848000000598|ПАПУА - НОВАЯ ГВИНЕЯ|</xsl:text>
    <xsl:text>|848000000600|ПАРАГВАЙ|</xsl:text>
    <xsl:text>|848000000604|ПЕРУ|</xsl:text>
    <xsl:text>|848000000608|ФИЛИППИНЫ|</xsl:text>
    <xsl:text>|848000000612|ПИТКЕРН|</xsl:text>
    <xsl:text>|848000000616|ПОЛЬША|</xsl:text>
    <xsl:text>|848000000620|ПОРТУГАЛИЯ|</xsl:text>
    <xsl:text>|848000000624|ГВИНЕЯ-БИСАУ|</xsl:text>
    <xsl:text>|848000000626|ТИМОР-ЛЕСТЕ|</xsl:text>
    <xsl:text>|848000000630|ПУЭРТО-РИКО|</xsl:text>
    <xsl:text>|848000000634|КАТАР|</xsl:text>
    <xsl:text>|848000000638|РЕЮНЬОН|</xsl:text>
    <xsl:text>|848000000642|РУМЫНИЯ|</xsl:text>
    <xsl:text>|848000000643|РОССИЯ|</xsl:text>
    <xsl:text>|848000000646|РУАНДА|</xsl:text>
    <xsl:text>|848000000652|СЕН-БАРТЕЛЕМИ|</xsl:text>
    <xsl:text>|848000000654|СВЯТАЯ ЕЛЕНА|</xsl:text>
    <xsl:text>|848000000659|СЕНТ-КИТС И НЕВИС|</xsl:text>
    <xsl:text>|848000000660|АНГИЛЬЯ|</xsl:text>
    <xsl:text>|848000000662|СЕНТ-ЛЮСИЯ|</xsl:text>
    <xsl:text>|848000000663|СЕН-МАРТЕН|</xsl:text>
    <xsl:text>|848000000666|СЕНТ-ПЬЕР И МИКЕЛОН|</xsl:text>
    <xsl:text>|848000000670|СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ|</xsl:text>
    <xsl:text>|848000000674|САН-МАРИНО|</xsl:text>
    <xsl:text>|848000000678|САН-ТОМЕ И ПРИНСИПИ|</xsl:text>
    <xsl:text>|848000000682|САУДОВСКАЯ АРАВИЯ|</xsl:text>
    <xsl:text>|848000000686|СЕНЕГАЛ|</xsl:text>
    <xsl:text>|848000000688|СЕРБИЯ|</xsl:text>
    <xsl:text>|848000000690|СЕЙШЕЛЫ|</xsl:text>
    <xsl:text>|848000000694|СЬЕРРА-ЛЕОНЕ|</xsl:text>
    <xsl:text>|848000000702|СИНГАПУР|</xsl:text>
    <xsl:text>|848000000703|СЛОВАКИЯ|</xsl:text>
    <xsl:text>|848000000704|ВЬЕТНАМ|</xsl:text>
    <xsl:text>|848000000705|СЛОВЕНИЯ|</xsl:text>
    <xsl:text>|848000000706|СОМАЛИ|</xsl:text>
    <xsl:text>|848000000710|ЮЖНАЯ АФРИКА|</xsl:text>
    <xsl:text>|848000000716|ЗИМБАБВЕ|</xsl:text>
    <xsl:text>|848000000724|ИСПАНИЯ|</xsl:text>
    <xsl:text>|848000000732|ЗАПАДНАЯ САХАРА|</xsl:text>
    <xsl:text>|848000000736|СУДАН|</xsl:text>
    <xsl:text>|848000000740|СУРИНАМ|</xsl:text>
    <xsl:text>|848000000744|ШПИЦБЕРГЕН И ЯН МАЙЕН|</xsl:text>
    <xsl:text>|848000000748|СВАЗИЛЕНД|</xsl:text>
    <xsl:text>|848000000752|ШВЕЦИЯ|</xsl:text>
    <xsl:text>|848000000756|ШВЕЙЦАРИЯ|</xsl:text>
    <xsl:text>|848000000760|СИРИЙСКАЯ АРАБСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000762|ТАДЖИКИСТАН|</xsl:text>
    <xsl:text>|848000000764|ТАИЛАНД|</xsl:text>
    <xsl:text>|848000000768|ТОГО|</xsl:text>
    <xsl:text>|848000000772|ТОКЕЛАУ|</xsl:text>
    <xsl:text>|848000000776|ТОНГА|</xsl:text>
    <xsl:text>|848000000780|ТРИНИДАД И ТОБАГО|</xsl:text>
    <xsl:text>|848000000784|ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ|</xsl:text>
    <xsl:text>|848000000788|ТУНИС|</xsl:text>
    <xsl:text>|848000000792|ТУРЦИЯ|</xsl:text>
    <xsl:text>|848000000795|ТУРКМЕНИЯ|</xsl:text>
    <xsl:text>|848000000796|ОСТРОВА ТЕРКС И КАЙКОС|</xsl:text>
    <xsl:text>|848000000798|ТУВАЛУ|</xsl:text>
    <xsl:text>|848000000800|УГАНДА|</xsl:text>
    <xsl:text>|848000000804|УКРАИНА|</xsl:text>
    <xsl:text>|848000000807|РЕСПУБЛИКА МАКЕДОНИЯ|</xsl:text>
    <xsl:text>|848000000818|ЕГИПЕТ|</xsl:text>
    <xsl:text>|848000000826|СОЕДИНЕННОЕ КОРОЛЕВСТВО|</xsl:text>
    <xsl:text>|848000000831|ГЕРНСИ|</xsl:text>
    <xsl:text>|848000000832|ДЖЕРСИ|</xsl:text>
    <xsl:text>|848000000833|ОСТРОВ МЭН|</xsl:text>
    <xsl:text>|848000000834|ТАНЗАНИЯ, ОБЪЕДИНЕННАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000840|СОЕДИНЕННЫЕ ШТАТЫ|</xsl:text>
    <xsl:text>|848000000850|ВИРГИНСКИЕ ОСТРОВА, США|</xsl:text>
    <xsl:text>|848000000854|БУРКИНА-ФАСО|</xsl:text>
    <xsl:text>|848000000858|УРУГВАЙ|</xsl:text>
    <xsl:text>|848000000860|УЗБЕКИСТАН|</xsl:text>
    <xsl:text>|848000000862|ВЕНЕСУЭЛА, БОЛИВАРИАНСКАЯ РЕСПУБЛИКА|</xsl:text>
    <xsl:text>|848000000876|УОЛЛИС И ФУТУНА|</xsl:text>
    <xsl:text>|848000000882|САМОА|</xsl:text>
    <xsl:text>|848000000887|ЙЕМЕН|</xsl:text>
    <xsl:text>|848000000894|ЗАМБИЯ|</xsl:text>
    <xsl:text>|848000000895|АБХАЗИЯ|</xsl:text>
    <xsl:text>|848000000896|ЮЖНАЯ ОСЕТИЯ|</xsl:text>
    <xsl:text>|848000008480|МАВРИКИЙ|</xsl:text>
    <xsl:text>|848000008484|МЕКСИКА|</xsl:text>
  </xsl:template>
  <xsl:template name="DDeal">
    <!--Info: D:\Dictionary3\DDeal.xsd-->
    <xsl:text>|FILE|DDeal.xsd|</xsl:text>
    <xsl:text>|NAME|Сделки (договоры)|</xsl:text>
    <xsl:text>|454010000000|Передача жилья в собственность граждан (приватизация жилья)|</xsl:text>
    <xsl:text>|454011000000|Договор концессии|</xsl:text>
    <xsl:text>|454001001000|Договор купли-продажи|</xsl:text>
    <xsl:text>|454012000000|Соглашение об уступке прав по договору аренды|</xsl:text>
    <xsl:text>|454001002000|Договор дарения|</xsl:text>
    <xsl:text>|454001003000|Договор мены|</xsl:text>
    <xsl:text>|454001004000|Договор ренты|</xsl:text>
    <xsl:text>|454001005000|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|454002001000|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|454002002000|Договор безвозмездного срочного пользования земельным/лесным участком|</xsl:text>
    <xsl:text>|454002003000|Договор об ипотеке (залоге)|</xsl:text>
    <xsl:text>|454002004000|Договор найма жилого помещения|</xsl:text>
    <xsl:text>|454002005000|Соглашение о восстановлении или замене погибшего (уничтоженного) или поврежденного имущества|</xsl:text>
    <xsl:text>|454002006000|Безвозмездное пользование (ссуда)|</xsl:text>
    <xsl:text>|454003000000|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|454004000000|Соглашение об изменении условий договора|</xsl:text>
    <xsl:text>|454005000000|Соглашение об уступке требований (переводе долга) по договору|</xsl:text>
    <xsl:text>|454006000000|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|454007000000|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|454008000000|Соглашение об уступке прав требования по договору участия в долевом строительстве|</xsl:text>
    <xsl:text>|454009000000|Дополнительное соглашение|</xsl:text>
    <xsl:text>|454099000000|Иная сделка|</xsl:text>
  </xsl:template>
  <xsl:template name="DDeclarantKind">
    <!--Info: D:\Dictionary3\DDeclarantKind.xsd-->
    <xsl:text>|FILE|DDeclarantKind.xsd|</xsl:text>
    <xsl:text>|NAME|Категория подателей заявления|</xsl:text>
    <xsl:text>|357100000001|Правообладатель или его законный представитель|</xsl:text>
    <xsl:text>|357100000002|Нотариус|</xsl:text>
    <xsl:text>|357100000003|Судебный пристав-исполнитель|</xsl:text>
    <xsl:text>|357100000004|Кадастровый инженер|</xsl:text>
  </xsl:template>
  <xsl:template name="DDeclarantKindReg">
    <!--Info: D:\Dictionary3\DDeclarantKindReg.xsd-->
    <xsl:text>|FILE|DDeclarantKindReg.xsd|</xsl:text>
    <xsl:text>|NAME|Категории подателей запроса|</xsl:text>
    <xsl:text>|357010000000|Федеральный антимонопольный орган и его территориальные органы на территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357011000000|Председатель Счетной палаты Российской Федерации, его заместители и аудиторы Счетной палаты Российской Федерации|</xsl:text>
    <xsl:text>|357001001000|Плательщик земельного налога при предоставлении сведений о кадастровой стоимости|</xsl:text>
    <xsl:text>|357012000000|Органы по учету государственного и муниципального имущества|</xsl:text>
    <xsl:text>|357013000000|Органы государственной власти субъектов Российской Федерации|</xsl:text>
    <xsl:text>|357014000000|Органы местного самоуправления|</xsl:text>
    <xsl:text>|357015000000|Избирательные комиссии и комиссии по проведению референдумов|</xsl:text>
    <xsl:text>|357016000000|Государственная корпорация по строительству олимпийских объектов при запросе сведений в отношении участков, предназначенных для размещения олимпийских объектов|</xsl:text>
    <xsl:text>|357017000000|Генеральный директор, заместитель генерального директора, руководители филиалов и представительств Фонда содействия развитию жилищного строительства при запросе сведений о земельных участках, предназначенных для жилищного строительства и иных объектов недвижимого имущества, предназначенных для обеспечения деятельности Фонда|</xsl:text>
    <xsl:text>|357018000000|Федеральные органы исполнительной власти и их территориальные органы|</xsl:text>
    <xsl:text>|357019000000|Многофункциональные центры предоставления государственных и муниципальных услуг|</xsl:text>
    <xsl:text>|357002000000|Лицо, имеющее право на наследование имущества правообладателя по завещанию или по закону|</xsl:text>
    <xsl:text>|357020000000|Руководители (должностные лица) федеральных государственных органов, перечень которых определяется Президентом Российской Федерации, и высшие должностные лица субъектов Российской Федерации (руководителям высших исполнительных органов государственной власти субъектов Российской Федерации) в целях исполнения ими обязанностей по противодействию коррупции|</xsl:text>
    <xsl:text>|357021000000|Уполномоченный при Президенте Российской Федерации по правам ребенка|</xsl:text>
    <xsl:text>|357022000000|Государственные внебюджетные фонды и их территориальные органы|</xsl:text>
    <xsl:text>|357023000000|Иные определенные федеральным законом органы и организации, имеющие право на бесплатное получение информации|</xsl:text>
    <xsl:text>|357024000000|Конкурсный управляющий в деле о банкротстве в отношении объектов недвижимости,|</xsl:text>
    <xsl:text>|357025000000|Председатель, заместитель Председателя Центрального банка Российской Федерации|</xsl:text>
    <xsl:text>|357026000000|Руководитель, заместитель руководителя государственной корпорации "Агентство по страхованию вкладов"|</xsl:text>
    <xsl:text>|357027000000|Уполномоченный по защите прав предпринимателей в субъекте Российской Федерации;|</xsl:text>
    <xsl:text>|357028000000|Уполномоченный по правам человека в Российской Федерации;|</xsl:text>
    <xsl:text>|357029000000|Уполномоченный по правам человека в субъекте Российской Федерации;|</xsl:text>
    <xsl:text>|357003000000|Нотариус в связи с совершаемыми нотариальными действиями|</xsl:text>
    <xsl:text>|357030000000|Акционерное общество "Федеральная корпорация по развитию малого и среднего предпринимательства" для осуществления функций указанного общества, предусмотренных Федеральным законом от 24 июля 2007 года N 209-ФЗ "О развитии малого и среднего предпринимательства в Российской Федерации|</xsl:text>
    <xsl:text>|357031000000|Органы, осуществляющие в установленном федеральным законом порядке оперативно-разыскную деятельность по основаниям, установленным статьей 7 Федерального закона от 12 августа 1995 года N 144-ФЗ "Об оперативно-розыскной деятельности"|</xsl:text>
    <xsl:text>|357032000000|Банк России|</xsl:text>
    <xsl:text>|357033000000|Лица, входящие в состав органов управления должника, контролирующие должника лица|</xsl:text>
    <xsl:text>|357034000000|Временная администрация финансовой организации в отношении объектов недвижимости, принадлежащих соответствующему должнику, если соответствующие сведения необходимы для осуществления полномочий арбитражного управляющего, конкурсного управляющего в деле о банкротстве|</xsl:text>
    <xsl:text>|357035000000|Временная администрация финансовой организации в соответствии с Федеральным законом от 26 октября 2002 года N 127-ФЗ "О несостоятельности (банкротстве)"|</xsl:text>
    <xsl:text>|357036000000|Уполномоченный при Президенте Российской Федерации по правам предпринимателей|</xsl:text>
    <xsl:text>|357037000000|Пенсионный фонд Российской Федерации и его территориальных органов|</xsl:text>
    <xsl:text>|357038000000|Генеральный директор единого института развития в жилищной сфере, его заместители|</xsl:text>
    <xsl:text>|357039000000|Правообладатель или его законный представитель|</xsl:text>
    <xsl:text>|357004000000|Залогодержатель, запрашивающий сведения об объектах недвижимого имущества, находящихся у него в залоге|</xsl:text>
    <xsl:text>|357005000000|Арбитражный управляющий в деле о банкротстве, запрашивающий сведения о принадлежащих соответствующему должнику объектах недвижимого имущества|</xsl:text>
    <xsl:text>|357006001000|Суды и правоохранительные органы, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателе|</xsl:text>
    <xsl:text>|357006002000|Судебные приставы-исполнители, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006003000|Органы прокуратуры, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006004000|Органы внутренних дел, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006005000|Органы Федеральной службы безопасности Российской Федерации, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006006000|Органы Следственного комитета Российской Федерации, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357006099000|Иные правоохранительные органы, имеющие в производстве дела, связанные с объектами недвижимого имущества и (или) их правообладателями|</xsl:text>
    <xsl:text>|357007000000|Налоговые органы на территории, находящейся в их юрисдикции|</xsl:text>
    <xsl:text>|357008000000|Государственные органы по контролю за использованием и охраной земель и других природных ресурсов|</xsl:text>
    <xsl:text>|357009000000|Органы государственной статистики|</xsl:text>
    <xsl:text>|357099000000|Иное лицо|</xsl:text>
  </xsl:template>
  <xsl:template name="DDocument">
    <!--Info: D:\Dictionary3\DDocument.xsd-->
    <xsl:text>|FILE|DDocument.xsd|</xsl:text>
    <xsl:text>|NAME|Все документы|</xsl:text>
    <xsl:text>|008001001000|Паспорт гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001002000|Паспорт гражданина СССР|</xsl:text>
    <xsl:text>|008001003000|Паспорт гражданина иностранного государства|</xsl:text>
    <xsl:text>|008001004000|Общегражданский заграничный паспорт|</xsl:text>
    <xsl:text>|008001005000|Заграничный паспорт Министерства морского флота|</xsl:text>
    <xsl:text>|008001006000|Дипломатический паспорт|</xsl:text>
    <xsl:text>|008001007000|Паспорт моряка (удостоверение личности моряка)|</xsl:text>
    <xsl:text>|008001008000|Военный билет военнослужащего|</xsl:text>
    <xsl:text>|008001009000|Временное удостоверение, выданное взамен военного билета|</xsl:text>
    <xsl:text>|008001010000|Удостоверение личности офицера Министерства обороны Российской Федерации, Министерства внутренних дел Российской Федерации и других воинских формирований с приложением справки о прописке (регистрации) Ф-33|</xsl:text>
    <xsl:text>|008001011000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|008001012000|Свидетельство о рассмотрении ходатайства о признании беженцем на территории Российской Федерации по существу|</xsl:text>
    <xsl:text>|008001013000|Вид на жительство иностранного гражданина или лица без гражданства|</xsl:text>
    <xsl:text>|008001014000|Справка об освобождении из мест лишения свободы|</xsl:text>
    <xsl:text>|008001015000|Временное удостоверение личности гражданина Российской Федерации|</xsl:text>
    <xsl:text>|008001016000|Удостоверение вынужденного переселенца|</xsl:text>
    <xsl:text>|008001017000|Разрешение на временное проживание в Российской Федерации|</xsl:text>
    <xsl:text>|008001018000|Удостоверение беженца в Российской Федерации|</xsl:text>
    <xsl:text>|008001019000|Свидетельство о рассмотрении ходатайства о признании лица вынужденным переселенцем|</xsl:text>
    <xsl:text>|008001020000|Свидетельство о предоставлении временного убежища на территории Российской Федерации|</xsl:text>
    <xsl:text>|008001099000|Иные документы, предусмотренные законодательством Российской Федерации или признаваемые в соответствии с международным договором Российской Федерации в качестве документов, удостоверяющих личность|</xsl:text>
    <xsl:text>|008002001000|Свидетельство о государственной регистрации юридического лица|</xsl:text>
    <xsl:text>|008002002000|Свидетельство о внесении записей в ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002004000|Устав|</xsl:text>
    <xsl:text>|008002005000|Учредительный договор|</xsl:text>
    <xsl:text>|008002006000|Положение (общее положение об организации)|</xsl:text>
    <xsl:text>|008002007000|Свидетельство (или уведомление) о постановке на учёт в налоговом органе с указанием ИНН|</xsl:text>
    <xsl:text>|008002008000|Выписка из ЕГРЮЛ|</xsl:text>
    <xsl:text>|008002099000|Иной документ|</xsl:text>
    <xsl:text>|555001000000|Квитанция|</xsl:text>
    <xsl:text>|555002000000|Платёжное поручение|</xsl:text>
    <xsl:text>|555003000000|Чек|</xsl:text>
    <xsl:text>|555004000000|Подтверждение электронного платежа|</xsl:text>
    <xsl:text>|555005000000|Документ, подтверждающий право заявителя на безвозмездное получение сведений|</xsl:text>
    <xsl:text>|558101010000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, в виде кадастровой выписки об объекте недвижимости, территориальной зоне, зоне с особыми условиями использования территории, территории объекта культурного наследия, включенного в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации, границах между субъектами Российской Федерации, границах муниципальных образований и границах населённых пунктов, кадастрового паспорта объекта недвижимости и кадастрового плана территории, кадастровой справки о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|558101020000|Заявление о постановке на государственный кадастровый учёт объекта недвижимости|</xsl:text>
    <xsl:text>|558101030000|Заявление о государственном кадастровом учёте изменений объекта недвижимости|</xsl:text>
    <xsl:text>|558101040000|Заявление о внесении в Единый государственный реестр объектов капитального строительства (ЕГРОКС) сведений об объекте капитального строительства (ОКС)|</xsl:text>
    <xsl:text>|558101050000|Запрос о предоставлении сведений об ОКС|</xsl:text>
    <xsl:text>|558101060000|Заявление о снятии с государственного кадастрового учёта объекта недвижимости|</xsl:text>
    <xsl:text>|558101070000|Заявление о внесении в государственный кадастр недвижимости сведений о ранее учтённом объекте недвижимости|</xsl:text>
    <xsl:text>|558101080000|Заявление об исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558101090000|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101090100|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости об объекте недвижимости|</xsl:text>
    <xsl:text>|558101090200|Заявление об исправлении технической ошибки в сведениях государственного кадастра недвижимости о прохождении участка Государственной границы Российской Федерации; о границах между субъектами Российской Федерации; о границах муниципальных образований; о границах населённых пунктов; о территориальных зонах и зонах с особыми условиями использования территорий; о картографической и геодезической основах государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101100000|Заявление о представлении дополнительных документов на государственный кадастровый учёт|</xsl:text>
    <xsl:text>|558101110000|Внутриведомственный запрос информации государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101120000|Запрос о предоставлении копии документа, на основании которого сведения об объекте недвижимости внесены в государственный кадастр недвижимости, или копий документов, помещённых в кадастровое дело|</xsl:text>
    <xsl:text>|558101130000|Запрос о предоставлении сведений, внесённых в государственный кадастр недвижимости, посредством обеспечения доступа к информационному ресурсу, содержащему сведения государственного кадастра недвижимости|</xsl:text>
    <xsl:text>|558101140000|Запрос о предоставлении перечня объектов недвижимости, подлежащих государственной кадастровой оценке|</xsl:text>
    <xsl:text>|558101150000|Заявление о прекращении осуществления кадастрового учёта|</xsl:text>
    <xsl:text>|558101160000|Межведомственный запрос документов в органах государственной власти и органах местного самоуправления|</xsl:text>
    <xsl:text>|558101170000|Запрос документов о ранее учтённом объекте недвижимости в органах государственной власти, органах местного самоуправления или органах и организациях по государственному техническому учёту и (или) технической инвентаризации|</xsl:text>
    <xsl:text>|558101180000|Запрос об уточнении данных, представленных органом государственной власти или органом местного самоуправления в порядке информационного взаимодействия|</xsl:text>
    <xsl:text>|558102010000|Заявление о государственной регистрации права на недвижимое имущество, сделки с ним, ограничения (обременения), перехода, прекращения права на недвижимое имущество|</xsl:text>
    <xsl:text>|558102020000|Заявление о государственной регистрации прекращения права (ограничения (обременения) права)|</xsl:text>
    <xsl:text>|558102030000|Заявление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558102040000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558102050000|Заявление о представлении дополнительных документов для государственной регистрации прав|</xsl:text>
    <xsl:text>|558102060000|Заявление о приостановлении государственной регистрации прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102070000|Заявление о возобновлении государственной регистрации|</xsl:text>
    <xsl:text>|558102080000|Заявление о прекращении государственной регистрации|</xsl:text>
    <xsl:text>|558102090000|Заявление о повторной выдаче свидетельства о государственной регистрации права|</xsl:text>
    <xsl:text>|558102100000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102110000|Заявление о постановке на учёт бесхозяйных недвижимых вещей|</xsl:text>
    <xsl:text>|558102120000|Заявление о выдаче закладной (новой закладной, дубликата закладной, аннулированной закладной)|</xsl:text>
    <xsl:text>|558102130000|Запрос о выдаче копий договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558102140000|Заявление о приостановлении государственной регистрации, возврате документов без проведения государственной регистрации, представлении дополнительных документов, о возобновлении государственной регистрации, ранее приостановленной по заявлению правообладателя, стороны (сторон) сделки, лица, чьё право ограничивается (обременяется), лица, в пользу которого право ограничивается (обременяется), законного владельца закладной (их представителя)|</xsl:text>
    <xsl:text>|558102150000|Заявление о повторной выдаче нового свидетельства о государственной регистрации права, выдаче закладной, внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, погашении регистрационной записи об ипотеке|</xsl:text>
    <xsl:text>|558102160000|Заявление о принятии объекта недвижимого имущества вновь во владение, пользование и распоряжение (в собственность)|</xsl:text>
    <xsl:text>|558102170000|Заявление о внесении в Единый государственный реестр прав на недвижимое имущество и сделок с ним отметки о наличии судебного спора в отношении зарегистрированного права|</xsl:text>
    <xsl:text>|558102180000|Заявление об исправлении технической ошибки в записях Единого государственного реестра прав на недвижимое имущество и сделок с ним, о наличии возражения в отношении зарегистрированного права на объект недвижимости, о погашении записи в Едином государственном реестре прав на недвижимое имущество и сделок с ним о наличии возражения в отношении зарегистрированного права на объект недвижимости, о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя), об отзыве ранее представленного заявления о невозможности государственной регистрации перехода, ограничения (обременения), прекращения права на объект недвижимости без личного участия собственника (его законного представителя)|</xsl:text>
    <xsl:text>|558102190000|Заявление о скреплении добавочного листа (добавочных листов) с закладной|</xsl:text>
    <xsl:text>|558102200000|Запрос о предоставлении сведений, содержащихся в Едином государственном реестре прав на недвижимое имущество и сделок с ним, посредством обеспечения доступа к информационному ресурсу, содержащему сведения Единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558102210000|Заявление о государственной регистрации законного владельца закладной|</xsl:text>
    <xsl:text>|558102220000|Заявление о внесении изменений в запись Единого государственного реестра прав на недвижимое имущество и сделок с ним, погашении регистрационной записи об ипотеке|</xsl:text>
    <xsl:text>|558103000000|Заявления о государственном учёте зданий, сооружений, помещений, объектов незавершённого строительства (объектов учёта) и запросы о предоставлении сведений, внесённых в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103020000|Заявление о внесении в ЕГРОКС сведений о ранее учтённом объекте капитального строительства|</xsl:text>
    <xsl:text>|558103030000|Заявление о государственном учёте изменений объекта учёта|</xsl:text>
    <xsl:text>|558103040000|Заявление о снятии с государственного учёта объекта учёта|</xsl:text>
    <xsl:text>|558103050000|Заявление об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558103060000|Заявление об исключении сведений из ЕГРОКС, носящих временный характер|</xsl:text>
    <xsl:text>|558103070000|Запрос о предоставлении копии документа, на основании которого сведения об объекте внесены в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103080000|Запрос о предоставлении сведений, внесенных в Единый государственный реестр|</xsl:text>
    <xsl:text>|558103090000|Заявление о представлении дополнительных документов на государственный учёт|</xsl:text>
    <xsl:text>|558104000000|Заявление о возврате платежа|</xsl:text>
    <xsl:text>|558199000000|Иное заявление|</xsl:text>
    <xsl:text>|558201000000|Описание земельных участков|</xsl:text>
    <xsl:text>|558202000000|Землеустроительное дело|</xsl:text>
    <xsl:text>|558203000000|Межевой план|</xsl:text>
    <xsl:text>|558204000000|Документ (копия), на основании которого сведения об объекте недвижимости внесены в ГКН|</xsl:text>
    <xsl:text>|558205010000|Технический паспорт домовладения|</xsl:text>
    <xsl:text>|558205020000|Технический паспорт здания (строения)|</xsl:text>
    <xsl:text>|558205030000|Технический паспорт жилого помещения (квартиры)|</xsl:text>
    <xsl:text>|558205040000|Технический паспорт объекта индивидуального жилищного строительства|</xsl:text>
    <xsl:text>|558205050000|Технический паспорт сооружения|</xsl:text>
    <xsl:text>|558205060000|Технический паспорт объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558206000000|Выписка из технического паспорта|</xsl:text>
    <xsl:text>|558207000000|Документ (копия), подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558208000000|Документ (копия), подтверждающий принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558209000000|Документ (копия), подтверждающий установленное разрешенное использование земельного участка|</xsl:text>
    <xsl:text>|558210000000|Кадастровый план земельного участка (выписка из государственного земельного кадастра)|</xsl:text>
    <xsl:text>|558211010000|Технический план здания, сооружения, помещения либо объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558211020000|План участка лесного фонда|</xsl:text>
    <xsl:text>|558211030000|План объекта недвижимости|</xsl:text>
    <xsl:text>|558211040000|Экспликация к поэтажному плану|</xsl:text>
    <xsl:text>|558212000000|Декларация об объекте недвижимости|</xsl:text>
    <xsl:text>|558213010000|Кадастровый паспорт земельного участка|</xsl:text>
    <xsl:text>|558213020000|Кадастровый паспорт помещения (выписка из ГКН)|</xsl:text>
    <xsl:text>|558213030000|Кадастровый паспорт здания, сооружения, объекта незавершённого строительства|</xsl:text>
    <xsl:text>|558214010000|Кадастровая выписка о земельном участке|</xsl:text>
    <xsl:text>|558214020000|Кадастровая выписка о здании, сооружении, объекте незавершённого строительства|</xsl:text>
    <xsl:text>|558214030000|Кадастровая выписка о территориальной зоне, зоне с особыми условиями использования территории, территории объекта культурного наследия, включенного в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558214040000|Кадастровая выписка о границах между субъектами Российской Федерации, границах муниципальных образований и границах населенных пунктов|</xsl:text>
    <xsl:text>|558216000000|Документ, подтверждающий изменение назначения здания, помещения или сооружения, наименования сооружения|</xsl:text>
    <xsl:text>|558217000000|Кадастровый план территории|</xsl:text>
    <xsl:text>|558218000000|Кадастровая справка о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|558219000000|Акт обследования, подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|558220010000|Выписка из Реестра, содержащая относящиеся к информации ограниченного доступа сведения об объекте учета|</xsl:text>
    <xsl:text>|558220020000|Справка, содержащая, внесённые в Единый государственный реестр сведения о прекращении существования объекта учёта|</xsl:text>
    <xsl:text>|558220030000|Выписка из Реестра, подтверждающая факт отсутствия в Реестре сведений об объекте учета|</xsl:text>
    <xsl:text>|558221010000|Решение о необходимости устранения кадастровой ошибки|</xsl:text>
    <xsl:text>|558221020000|Международный договор Российской Федерации, в соответствии с которым установлено или изменено прохождение государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|558221030000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта|</xsl:text>
    <xsl:text>|558221040000|Документ, содержащий необходимые для внесения в государственный кадастр недвижимости сведения об установлении или изменении территориальной зоны или зоны с особыми условиями использования территорий, либо об отмене установления такой зоны|</xsl:text>
    <xsl:text>|558221050000|Решение о присвоении, изменении адреса|</xsl:text>
    <xsl:text>|558221060000|Документы органов, осуществляющих ведение лесного и водного кадастра, содержащие сведения о природных объектах|</xsl:text>
    <xsl:text>|558221070000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|558221080000|Акт об утверждении результатов определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558221090100|Акт и (или) договор о предоставлении находящегося в государственной или муниципальной собственности участка под наемный дом|</xsl:text>
    <xsl:text>|558221090200|Решение собственника земельного участка, находящегося в частной собственности, о строительстве наемного дома либо договор, заключенный для создания, эксплуатации наемного дома|</xsl:text>
    <xsl:text>|558221090300|Акт о предоставлении участка для строительства наемного дома|</xsl:text>
    <xsl:text>|558221090400|Акт о предоставлении участка для освоения территории в целях строительства и эксплуатации наемного дома|</xsl:text>
    <xsl:text>|558221090500|Договор о предоставлении участка для строительства наемного дома|</xsl:text>
    <xsl:text>|558221090600|Договор о предоставлении участка для освоения территории в целях строительства и эксплуатации наемного дома|</xsl:text>
    <xsl:text>|558221090700|Решение собственника земельного участка, находящегося в частной собственности, о строительстве наемного дома|</xsl:text>
    <xsl:text>|558221090800|Договор о предоставлении поддержки для создания и эксплуатации наемного дома социального использования|</xsl:text>
    <xsl:text>|558221990000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558222000000|Документ, воспроизводящий сведения, содержащиеся в международном договоре Российской Федерации, в соответствии с которым установлено или изменено прохождение государственной границы Российской Федерации, а также сведения о федеральном законе, которым ратифицирован международный договор Российской Федерации, и об официальном опубликовании такого федерального закона|</xsl:text>
    <xsl:text>|558223000000|Соглашение об изменении границ между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|558224000000|Закон субъекта Российской Федерации об установлении или изменении границ муниципальных образований либо о преобразовании муниципальных образований|</xsl:text>
    <xsl:text>|558225000000|Акт уполномоченного органа об установлении или изменении границ населённых пунктов|</xsl:text>
    <xsl:text>|558226000000|Документ, воспроизводящий необходимые для внесения в государственный кадастр недвижимости сведения о границах между субъектами Российской Федерации, границах муниципального образования, границах населённого пункта, содержащиеся в утверждённых органами власти документах|</xsl:text>
    <xsl:text>|558227000000|Решение об установлении или изменении границ зон с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|558228000000|Правовой акт, которым утверждены или изменены правила землепользования и застройки|</xsl:text>
    <xsl:text>|558229000000|Документ, подтверждающий изменение назначения помещения|</xsl:text>
    <xsl:text>|558230000000|Решение о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение|</xsl:text>
    <xsl:text>|558231000000|Акт приемочной комиссии, подтверждающий завершение переустройства и (или) перепланировки и (или) иных работ|</xsl:text>
    <xsl:text>|558232000000|Документы, воспроизводящие сведения об изменении назначения помещения|</xsl:text>
    <xsl:text>|558233000000|Документ, воспроизводящий сведения, содержащиеся в решении о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение|</xsl:text>
    <xsl:text>|558234000000|Документ, воспроизводящий сведения, содержащиеся в акте приемочной комиссии, подтверждающем завершение переустройства и (или) перепланировки и (или) иных работ|</xsl:text>
    <xsl:text>|558235000000|Документ, подтверждающий изменение назначения здания|</xsl:text>
    <xsl:text>|558236000000|Документ, подтверждающий изменение назначения сооружения|</xsl:text>
    <xsl:text>|558237000000|Решение о предоставлении разрешения на условно разрешенный вид использования|</xsl:text>
    <xsl:text>|558238000000|Решение об определении (изменении) вида разрешенного использования|</xsl:text>
    <xsl:text>|558239000000|Документ (копия), воспроизводящий сведения о предоставлении разрешения на условно разрешенный вид использования, об определении (изменении) вида разрешенного использования|</xsl:text>
    <xsl:text>|558240000000|Документ, воспроизводящий сведения, содержащиеся в решении о присвоении, изменении адреса|</xsl:text>
    <xsl:text>|558241000000|Документ, воспроизводящий содержащиеся в разрешении на ввод объекта капитального строительства в эксплуатацию сведения|</xsl:text>
    <xsl:text>|558242000000|Документ, воспроизводящий сведения, содержащиеся в реестре объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558243000000|Документ, воспроизводящий сведения, содержащиеся в акте Правительства Российской Федерации об исключении объекта недвижимости из единого государственного реестра объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558244000000|Документ, содержащий сведения о дате поступления документов, предусмотренных статьей 17 Федерального закона "Об объектах культурного наследия (памятниках истории и культуры) народов Российской Федерации", в отношении объекта недвижимости|</xsl:text>
    <xsl:text>|558245000000|Решение органа охраны объектов культурного наследия об отказе включить объект недвижимости в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558246000000|Решение Правительства Российской Федерации об исключении объекта культурного наследия из единого государственного реестра объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558247000000|Документ, воспроизводящий сведения о наименовании водного объекта и установленных параметрах водоохранных зон и прибрежных защитных полос, зон затопления, подтопления и других зон с особыми условиями их использования|</xsl:text>
    <xsl:text>|558248000000|Документ, воспроизводящий содержащиеся в государственном лесном реестре сведения в отношении лесного участка|</xsl:text>
    <xsl:text>|558249000000|Документ, воспроизводящий сведения, содержащиеся во вступившем в силу акте об утверждении результатов определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558250000000|Документ, воспроизводящий сведения, содержащиеся в решении об установлении или изменении границ зон с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|558251000000|Документ, воспроизводящий сведения, содержащиеся в правовом акте, которым утверждены или изменены правила землепользования и застройки, включая сведения о территориальных зонах|</xsl:text>
    <xsl:text>|558252000000|Карта (план) объекта землеустройства|</xsl:text>
    <xsl:text>|558253000000|Декларация заинтересованного лица о выбранном виде разрешенного использования земельного участка|</xsl:text>
    <xsl:text>|558254010000|Землеустроительная документация|</xsl:text>
    <xsl:text>|558254020000|Лесоустроительная документация|</xsl:text>
    <xsl:text>|558254030000|Документы градостроительного зонирования (Правила землепользования и застройки)|</xsl:text>
    <xsl:text>|558254040100|Проект межевания территории|</xsl:text>
    <xsl:text>|558254040200|Решение об утверждении проекта межевания территории|</xsl:text>
    <xsl:text>|558254040300|Документ, воспроизводящий сведения, содержащиеся в решении об утверждении проекта межевания территории|</xsl:text>
    <xsl:text>|558254050000|Копия проекта межевания земельных участков|</xsl:text>
    <xsl:text>|558254060000|Акт отвода земельных участков в натуре|</xsl:text>
    <xsl:text>|558254070000|Проект границ земельных участков|</xsl:text>
    <xsl:text>|558254080000|Проект (копии отдельных составных частей) организации и застройки территорий садоводческих, огороднических или дачных некоммерческих объединений граждан|</xsl:text>
    <xsl:text>|558254090000|Проект (копии отдельных составных частей) перераспределения сельскохозяйственных угодий и иных земель сельскохозяйственного назначения|</xsl:text>
    <xsl:text>|558254100000|Решение о предварительном согласовании мест размещения объектов|</xsl:text>
    <xsl:text>|558254110000|Копия решения общего собрания участников долевой собственности на земельный участок из земель сельскохозяйственного назначения об утверждении проекта межевания земельных участков|</xsl:text>
    <xsl:text>|558254120000|Копия документа, подтверждающего согласование проекта межевания земельного участка|</xsl:text>
    <xsl:text>|558254130000|Возражения заинтересованных лиц по поводу местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558254140000|Документ, свидетельствующий о снятии возражений заинтересованных лиц по поводу местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558254150000|Схема расположения земельных участков на кадастровых планах или кадастровых картах соответствующих территорий|</xsl:text>
    <xsl:text>|558254990000|Прочие документы, определяющие (определявшие) в соответствии с законодательством Российской Федерации местоположение границ земельного участка (земельных участков)|</xsl:text>
    <xsl:text>|558255000000|Картографические материалы|</xsl:text>
    <xsl:text>|558256000000|Материалы картографо-геодезического фонда|</xsl:text>
    <xsl:text>|558257010000|Федеральный закон|</xsl:text>
    <xsl:text>|558257020000|Закон субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558257030000|Нормативный правовой акт органа местного самоуправления|</xsl:text>
    <xsl:text>|558258000000|Документ, содержащий информацию о ранее присвоенных государственных учетных номерах объекта недвижимости|</xsl:text>
    <xsl:text>|558259000000|Протокол образования земельных участков|</xsl:text>
    <xsl:text>|558260000000|Чертеж (абрис) помещения|</xsl:text>
    <xsl:text>|558261000000|Проектная документация здания|</xsl:text>
    <xsl:text>|558262000000|Проектная документация сооружения|</xsl:text>
    <xsl:text>|558263000000|Решение комиссии по рассмотрению споров о результатах определения кадастровой стоимости|</xsl:text>
    <xsl:text>|558264000000|Решение суда|</xsl:text>
    <xsl:text>|558265000000|Документ о редакционно-контрольном просмотре правильности отображения линии государственной границы Российской Федерации на картографических материалах, предназначенных для размещения на Публичной кадастровой карте|</xsl:text>
    <xsl:text>|558266000000|Документ, содержащий сведения о лесах, водных объектах и об иных природных объектах|</xsl:text>
    <xsl:text>|558267000000|Правовой акт, которым утвержден или изменен генеральный план|</xsl:text>
    <xsl:text>|558268000000|Документ, воспроизводящий сведения, содержащиеся в правовом акте, которым утвержден или изменен генеральный план|</xsl:text>
    <xsl:text>|558269000000|Решение о переводе земельного участка из одной категории земель|</xsl:text>
    <xsl:text>|558270000000|Решение об отнесении земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|558271000000|Документ, воспроизводящий сведения, содержащиеся в решении об отнесении земельного участка к определенной категории земель или о переводе земельного участка из одной категории земель в другую|</xsl:text>
    <xsl:text>|558272000000|Документ об установлении (изменении) границ территории объекта культурного наследия или зон его охраны|</xsl:text>
    <xsl:text>|558273000000|Текстовое и графическое описание местоположения границ территории объекта культурного наследия или зон его охраны с перечнем координат характерных точек этих границ|</xsl:text>
    <xsl:text>|558274000000|Документ, воспроизводящий сведения о присвоении адресов объектам адресации, об изменении или аннулировании адресов объектов адресации|</xsl:text>
    <xsl:text>|558275000000|Решение о включении объекта недвижимости в перечень выявленных объектов культурного наследия|</xsl:text>
    <xsl:text>|558276000000|Решение об отказе во включении объекта в перечень выявленных объектов культурного наследия|</xsl:text>
    <xsl:text>|558277000000|Решение о включении выявленного объекта культурного наследия в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|558278000000|Решение Правительства Российской Федерации о создании особой экономической зоны|</xsl:text>
    <xsl:text>|558279000000|Решение Правительства Российской Федерации об увеличении площади такой особой экономической зоны|</xsl:text>
    <xsl:text>|558280000000|Решение Правительства Российской Федерации о досрочном прекращении особой экономической зоны|</xsl:text>
    <xsl:text>|558281000000|Соглашение о создании особой экономической зоны|</xsl:text>
    <xsl:text>|558282000000|Документ, воспроизводящий сведения, содержащиеся в соглашении о создании особой экономической зоны или в решении об увеличении площади особой экономической зоны|</xsl:text>
    <xsl:text>|558283000000|Документ, воспроизводящий сведения, содержащиеся в решении об увеличении площади особой экономической зоны|</xsl:text>
    <xsl:text>|558284000000|Уведомление о досрочном прекращении существования особой экономической зоны|</xsl:text>
    <xsl:text>|558285000000|Документ, воспроизводящий сведения о реквизитах акта или договора органа государственной власти или органа местного самоуправления, предусматривающих предоставление земельного участка для строительства либо освоения территории с целью строительства и эксплуатации наемного дома|</xsl:text>
    <xsl:text>|558286000000|Описание местоположения границ особой экономической зоны|</xsl:text>
    <xsl:text>|558287000101|Соглашение о создании территории опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|558287000102|Соглашение о создании зоны территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|558287000103|Решение Правительства Российской Федерации о создании территории опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|558287000104|Решение Правительства Российской Федерации о создании зоны территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|558287000105|Решение Правительства Российской Федерации о создании игорной зоны|</xsl:text>
    <xsl:text>|558287000106|Решение Правительства Российской об увеличении площади территории опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|558287000107|Решение Правительства Российской об увеличении площади зоны территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|558287000108|Решение Правительства Российской об увеличении площади игорной зоны|</xsl:text>
    <xsl:text>|558287000109|Решение Правительства Российской о досрочном прекращении существования территории опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|558287000110|Решение Правительства Российской о досрочном прекращении существования зоны территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|558287000111|Решение Правительства Российской о досрочном прекращении существования игорной зоны|</xsl:text>
    <xsl:text>|558287000112|Документ, воспроизводящий сведения, содержащиеся в решении об установлении или изменении границ игорной зоны|</xsl:text>
    <xsl:text>|558287000113|Документ, воспроизводящий сведения, содержащиеся в решении об определении границ игорной зоны|</xsl:text>
    <xsl:text>|558287000114|Документ, воспроизводящий сведения, содержащиеся в решении об установлении или изменении границ зоны территориального развития|</xsl:text>
    <xsl:text>|558287000115|Документ, воспроизводящий сведения, содержащиеся в решении об установлении или изменении границ территории опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|558299000000|Иной документ, содержащий описание объекта|</xsl:text>
    <xsl:text>|558301010000|Доверенность|</xsl:text>
    <xsl:text>|558301020000|Свидетельство о рождении|</xsl:text>
    <xsl:text>|558301030000|Свидетельство об усыновлении|</xsl:text>
    <xsl:text>|558301040000|Решение суда|</xsl:text>
    <xsl:text>|558301050000|Определение суда|</xsl:text>
    <xsl:text>|558301060000|Протокол об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301070000|Выписка из протокола об избрании (единоличного исполнительного органа юридического лица)|</xsl:text>
    <xsl:text>|558301080000|Приказ о назначении (руководителя или иного уполномоченного лица)|</xsl:text>
    <xsl:text>|558301090000|Решение органов опеки и попечительства|</xsl:text>
    <xsl:text>|558301100000|Договор коммерческого представительства|</xsl:text>
    <xsl:text>|558301110000|Договор доверительного управления|</xsl:text>
    <xsl:text>|558301120000|Постановление судебного пристава-исполнителя|</xsl:text>
    <xsl:text>|558301130000|Протокол общего собрания|</xsl:text>
    <xsl:text>|558301140000|Акт органа государственной власти или органа местного самоуправления, подтверждающий полномочия представителя заявителя|</xsl:text>
    <xsl:text>|558301990000|Иной документ|</xsl:text>
    <xsl:text>|558401010101|Договор купли-продажи|</xsl:text>
    <xsl:text>|558401010102|Договор мены|</xsl:text>
    <xsl:text>|558401010103|Договор дарения|</xsl:text>
    <xsl:text>|558401010104|Договор ренты|</xsl:text>
    <xsl:text>|558401010105|Договор пожизненного содержания с иждивением|</xsl:text>
    <xsl:text>|558401010106|Договор приватизации (договор передачи объекта недвижимости в собственность)|</xsl:text>
    <xsl:text>|558401010201|Договор участия в долевом строительстве|</xsl:text>
    <xsl:text>|558401010202|Соглашение об определении (перераспределении) долей в праве общей долевой собственности|</xsl:text>
    <xsl:text>|558401010203|Брачный договор|</xsl:text>
    <xsl:text>|558401010204|Соглашение об отступном|</xsl:text>
    <xsl:text>|558401010205|Соглашение о разделе имущества|</xsl:text>
    <xsl:text>|558401010206|Соглашение о выделе доли|</xsl:text>
    <xsl:text>|558401010207|Инвестиционный договор (договор об инвестировании)|</xsl:text>
    <xsl:text>|558401010208|Мировое соглашение|</xsl:text>
    <xsl:text>|558401010209|Договор аренды (субаренды)|</xsl:text>
    <xsl:text>|558401010210|Договор об ипотеке|</xsl:text>
    <xsl:text>|558401010211|Договор безвозмездного срочного пользования земельным участком|</xsl:text>
    <xsl:text>|558401010212|Кредитный договор|</xsl:text>
    <xsl:text>|558401010213|Договор займа|</xsl:text>
    <xsl:text>|558401010214|Соглашение об установлении сервитута|</xsl:text>
    <xsl:text>|558401010215|Соглашение об изменении содержания закладной|</xsl:text>
    <xsl:text>|558401010216|Дополнительное соглашение (соглашение об изменении условий договора) к договору|</xsl:text>
    <xsl:text>|558401010217|Соглашение о расторжении договора|</xsl:text>
    <xsl:text>|558401010218|Соглашение об уступке прав требования по договору (договор о передаче прав и обязанностей)|</xsl:text>
    <xsl:text>|558401010219|Договор простого товарищества (договор о совместной деятельности)|</xsl:text>
    <xsl:text>|558401010220|Государственный контракт|</xsl:text>
    <xsl:text>|558401010221|Договор социального найма|</xsl:text>
    <xsl:text>|558401010299|Иная сделка|</xsl:text>
    <xsl:text>|558401020100|Федеральный закон|</xsl:text>
    <xsl:text>|558401020200|Указ Президента Российской Федерации|</xsl:text>
    <xsl:text>|558401020300|Постановление Правительства Российской Федерации|</xsl:text>
    <xsl:text>|558401020400|Закон (законы Российской Федерации, субъекта Российской Федерации)|</xsl:text>
    <xsl:text>|558401020500|Документ о предоставлении земельных участков|</xsl:text>
    <xsl:text>|558401020600|Решение об образовании земельных участков|</xsl:text>
    <xsl:text>|558401020700|Акт об установлении сервитута|</xsl:text>
    <xsl:text>|558401020800|Акт об установлении ограничения (обременения)|</xsl:text>
    <xsl:text>|558401020900|Федеральный конституционный закон|</xsl:text>
    <xsl:text>|558401029900|Иные акты органов государственной власти или органов местного самоуправления|</xsl:text>
    <xsl:text>|558401030100|Свидетельство о праве на наследство по закону|</xsl:text>
    <xsl:text>|558401030200|Свидетельство о праве на наследство по завещанию|</xsl:text>
    <xsl:text>|558401040100|Судебный акт, устанавливающий запрет на совершение действий в сфере государственного кадастрового учета в отношении объекта недвижимости|</xsl:text>
    <xsl:text>|558401040200|Судебный акт о восстановлении аннулированных и исключенных из государственного кадастра недвижимости сведений об объекте недвижимости|</xsl:text>
    <xsl:text>|558401040300|Судебный акт об установлении обременения (ограничении) в использовании объекта недвижимости (части объекта недвижимости)|</xsl:text>
    <xsl:text>|558401049900|Иные предусмотренные законодательством судебные акты|</xsl:text>
    <xsl:text>|558401050100|Регистрационное удостоверение|</xsl:text>
    <xsl:text>|558401050200|Свидетельство о праве на землю|</xsl:text>
    <xsl:text>|558401050300|Государственный акт о праве на землю|</xsl:text>
    <xsl:text>|558401050400|Свидетельство о праве собственности|</xsl:text>
    <xsl:text>|558401059900|Иные акты, свидетельства о правах на объекты недвижимости|</xsl:text>
    <xsl:text>|558401060100|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|558401060200|Разрешение на строительство|</xsl:text>
    <xsl:text>|558401060300|Акт ввода в эксплуатацию|</xsl:text>
    <xsl:text>|558401060400|Копия решения о создании искусственного земельного участка|</xsl:text>
    <xsl:text>|558401070100|Выписка из похозяйственной книги о наличии у гражданина права на земельный участок|</xsl:text>
    <xsl:text>|558401070200|Кадастровый паспорт объекта недвижимости|</xsl:text>
    <xsl:text>|558401070300|Декларация об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558401080100|Передаточный акт|</xsl:text>
    <xsl:text>|558401080200|Разделительный баланс|</xsl:text>
    <xsl:text>|558401080300|План приватизации|</xsl:text>
    <xsl:text>|558401080400|Правила доверительного управления|</xsl:text>
    <xsl:text>|558401080500|Акт описи и ареста имущества|</xsl:text>
    <xsl:text>|558401080600|Протокол о выделе земельного участка в счет земельной доли|</xsl:text>
    <xsl:text>|558401080700|Протокол общего собрания собственников помещений в многоквартирном доме|</xsl:text>
    <xsl:text>|558401080800|Отказ одаряемого принять дар (отказ от дара)|</xsl:text>
    <xsl:text>|558401080900|Соглашение о новации|</xsl:text>
    <xsl:text>|558401081000|Соглашение о разделе наследственного имущества|</xsl:text>
    <xsl:text>|558401081100|Соглашение об уплате алиментов|</xsl:text>
    <xsl:text>|558401081200|Документ, подтверждающий наличие, возникновение, переход ограничения (обременения) вещного права на объект недвижимости в пользу заявителя|</xsl:text>
    <xsl:text>|558401089900|Иной документ|</xsl:text>
    <xsl:text>|558402010000|Согласие супруга на совершение сделки|</xsl:text>
    <xsl:text>|558402020000|Согласие органов опеки и попечительства|</xsl:text>
    <xsl:text>|558402030000|Свидетельство о заключении брака|</xsl:text>
    <xsl:text>|558402040000|Свидетельство о расторжении брака|</xsl:text>
    <xsl:text>|558402050000|Решение об одобрении (о совершении) сделки|</xsl:text>
    <xsl:text>|558402060000|Справка о стоимости (справка о соотношении стоимости отчуждаемого объекта и балансовой стоимости имущества или активов хозяйственного общества)|</xsl:text>
    <xsl:text>|558402070000|Справка о заинтересованных лицах в сделке|</xsl:text>
    <xsl:text>|558402080000|Выписка из домовой книги (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402090000|Выписка из лицевого счета (сведения о лицах, сохраняющих право проживания в жилом помещении после перехода права на него)|</xsl:text>
    <xsl:text>|558402100000|Протокол о результатах торгов|</xsl:text>
    <xsl:text>|558402110000|Лицензия (лицензия на осуществление определенных видов деятельности)|</xsl:text>
    <xsl:text>|558402120000|Проектная декларация|</xsl:text>
    <xsl:text>|558402130000|Отказ от преимущественного права покупки (для участников долевой собственности, для субъекта Российской Федерации при продаже земельного участка из состава земель сельскохозяйственного назначения)|</xsl:text>
    <xsl:text>|558402140000|Решение о создании юридического лица|</xsl:text>
    <xsl:text>|558402150000|Решение о реорганизации юридического лица|</xsl:text>
    <xsl:text>|558402160000|Решение о ликвидации юридического лица|</xsl:text>
    <xsl:text>|558402170000|Решение об утверждении оценки имущества (решение об утверждении оценки неденежных вкладов в уставный капитал общества)|</xsl:text>
    <xsl:text>|558402180000|Исполнительный лист|</xsl:text>
    <xsl:text>|558402190000|Договор поручения|</xsl:text>
    <xsl:text>|558402200000|Бухгалтерский баланс|</xsl:text>
    <xsl:text>|558402210000|Закладная|</xsl:text>
    <xsl:text>|558402220000|Добавочный лист к закладной|</xsl:text>
    <xsl:text>|558402230000|Выписка из реестра муниципальной собственности|</xsl:text>
    <xsl:text>|558402240000|Выписка из реестра собственности субъекта Российской Федерации|</xsl:text>
    <xsl:text>|558402250000|Выписка из реестра федерального имущества|</xsl:text>
    <xsl:text>|558402260000|Жилищный сертификат|</xsl:text>
    <xsl:text>|558402270000|Аудиторское заключение|</xsl:text>
    <xsl:text>|558402280000|Отчет о проведении независимой оценки (акт оценки)|</xsl:text>
    <xsl:text>|558402390000|Акт инвентаризации|</xsl:text>
    <xsl:text>|558402400000|Охранное обязательство собственника объекта культурного наследия|</xsl:text>
    <xsl:text>|558402410000|Свидетельство о смерти|</xsl:text>
    <xsl:text>|558402990000|Иной документ|</xsl:text>
    <xsl:text>|558403010000|Свидетельство о государственной регистрации права|</xsl:text>
    <xsl:text>|558403020000|Выписка о правах на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403030000|Выписка о переходе прав на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403040000|Выписка о правах отдельного лица на имеющиеся у него объекты недвижимого имущества|</xsl:text>
    <xsl:text>|558403050000|Выписка о признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|558403060000|Справка о содержании правоустанавливающих документов на объект недвижимого имущества|</xsl:text>
    <xsl:text>|558403070000|Справка о лицах, получивших сведения об объекте недвижимого имущества|</xsl:text>
    <xsl:text>|558403080000|Копии договоров и иных документов, выражающих содержание односторонних сделок, совершенных в простой письменной форме|</xsl:text>
    <xsl:text>|558403090000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества|</xsl:text>
    <xsl:text>|558403100000|Выписка из ЕГРП о принятии на учёт бесхозяйного объекта недвижимого имущества, от права собственности на который собственник отказался|</xsl:text>
    <xsl:text>|558403110000|Выписка из ЕГРП о бесхозяйном объекте недвижимого имущества, принятом на учёт|</xsl:text>
    <xsl:text>|558403120000|Выписка из единого государственного реестра прав на недвижимое имущество и сделок с ним, удостоверяющая проведение государственной регистрации возникновения и (или) перехода прав на недвижимое имущество|</xsl:text>
    <xsl:text>|558403990000|Иной документ|</xsl:text>
    <xsl:text>|558404010000|Соглашение о разделе, об объединении, о перераспределении земельных участков или о выделе из земельных участков|</xsl:text>
    <xsl:text>|558404020000|Согласие на образование земельных участков|</xsl:text>
    <xsl:text>|558404030000|Соглашение об образовании общей долевой собственности на земельный участок, образуемый при выделе его в счет земельной доли или земельных долей|</xsl:text>
    <xsl:text>|558404040000|Соглашение об образовании общей совместной собственности на земельный участок, образуемый при выделе его в счет земельной доли или земельных долей|</xsl:text>
    <xsl:text>|558405010000|Копия решения о безвозмездной передаче военного недвижимого имущества из федеральной собственности в собственность субъекта Российской Федерации - города федерального значения Москвы или Санкт-Петербурга либо муниципальную собственность|</xsl:text>
    <xsl:text>|558405020000|Подлинник или копия письма органа исполнительной власти субъекта Российской Федерации - города федерального значения Москвы или Санкт-Петербурга либо органа местного самоуправления муниципального образования о согласовании границ образуемого земельного участка с приложением согласованного проекта границ земельного участка в случае, если акт согласования границ земельного участка не заверен подписью уполномоченного должностного лица соответствующего органа|</xsl:text>
    <xsl:text>|558405030000|Решение об изъятии земельных участков и (или) расположенных на них иных объектов недвижимого имущества в целях размещения олимпийских объектов|</xsl:text>
    <xsl:text>|558405040000|Копия акта приема-передачи объектов недвижимого имущества, в отношении которых принято решение об изъятии в целях размещения олимпийских объектов|</xsl:text>
    <xsl:text>|558405990000|Иные документы, подтверждающие возникновение права собственности в отношении земельного участка в силу федерального закона вне зависимости от момента государственной регистрации этого права в ЕГРП|</xsl:text>
    <xsl:text>|558501010100|Решение об отказе в предоставлении запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501010200|Решение об отказе в исправлении кадастровой ошибки|</xsl:text>
    <xsl:text>|558501010300|Решение об отказе в исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501010400|Решение об исправлении технической и кадастровой ошибок|</xsl:text>
    <xsl:text>|558501010500|Решение об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010600|Решение о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501010700|Решение об отказе в снятии приостановления|</xsl:text>
    <xsl:text>|558501010800|Решение о снятии с кадастрового учёта земельных участков со статусом «временные» по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558501010900|Решение об отказе в выдаче кадастрового паспорта|</xsl:text>
    <xsl:text>|558501011000|Решение об осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501011100|Решение об аннулировании кадастровых сведений|</xsl:text>
    <xsl:text>|558501011200|Решение об отклонении заявления об исправлении технической ошибки|</xsl:text>
    <xsl:text>|558501011300|Решение о внесении записи о наличии возражения|</xsl:text>
    <xsl:text>|558501011400|Решение о погашении записи о наличии возражения|</xsl:text>
    <xsl:text>|558501011500|Решение о внесении записи о заявлении о невозможности государственной регистрации|</xsl:text>
    <xsl:text>|558501011600|Решение о погашении записи о заявлении о невозможности государственной регистрации|</xsl:text>
    <xsl:text>|558501011700|Решение о необходимости устранения кадастровой ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|558501011701|Решение о необходимости устранения кадастровой ошибки в сведениях ГКН о местоположении границ земельного участка|</xsl:text>
    <xsl:text>|558501020100|Уведомление об отсутствии в ГКН запрашиваемых сведений|</xsl:text>
    <xsl:text>|558501020200|Уведомление об осуществлённом кадастровом учёте|</xsl:text>
    <xsl:text>|558501020300|Уведомление об отказе в приеме документов для внесения в Единый государственный реестр объектов капитального строительства (далее - Единый государственный реестр) сведений об ОКС|</xsl:text>
    <xsl:text>|558501020400|Уведомление об отказе в приеме документов для предоставления из Единого государственного реестра сведений об ОКС|</xsl:text>
    <xsl:text>|558501020500|Уведомление об устранении технической ошибки в сведениях ГКН|</xsl:text>
    <xsl:text>|558501020600|Уведомление об отказе в выдаче сведений об ОКС|</xsl:text>
    <xsl:text>|558501020700|Уведомление о приостановлении осуществления кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020800|Уведомление об отказе в осуществлении кадастровой процедуры|</xsl:text>
    <xsl:text>|558501020900|Уведомление о регистрации права|</xsl:text>
    <xsl:text>|558501021000|Уведомление о приостановлении принятия на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021100|Сообщение об отказе в принятии на учёт имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021200|Уведомление о снятии с учёта имущества в качестве бесхозяйного|</xsl:text>
    <xsl:text>|558501021300|Уведомление о возврате заявления о наличии возражения в отношении зарегистрированного права на объект недвижимости без рассмотрения|</xsl:text>
    <xsl:text>|558501021400|Уведомление о неполучении и нерассмотрении запроса о предоставлении сведений ГКН|</xsl:text>
    <xsl:text>|558501030100|Расписка в получении соответствующих документов для проведения государственного кадастрового учёта|</xsl:text>
    <xsl:text>|558501030200|Протокол проверки документов|</xsl:text>
    <xsl:text>|558501030300|Акт определения кадастровой стоимости земельных участков|</xsl:text>
    <xsl:text>|558501030400|Протокол выявления технической ошибки|</xsl:text>
    <xsl:text>|558501030500|Акт определения кадастровой стоимости объектов недвижимости|</xsl:text>
    <xsl:text>|558501030600|Протокол выявления кадастровой ошибки|</xsl:text>
    <xsl:text>|558501030601|Протокол выявления кадастровой ошибки в сведениях ГКН о местоположении границ земельного участка|</xsl:text>
    <xsl:text>|558501030700|Документ, содержащий сведения о расчете среднего (взвешенного по площади) значения УПКС помещений|</xsl:text>
    <xsl:text>|558501030800|Протокол проверок сведений о земельных участках (верификация)|</xsl:text>
    <xsl:text>|558501030900|Протокол проверок сведений о зданиях, сооружениях, помещениях, объектах незавершенного строительства (верификация)|</xsl:text>
    <xsl:text>|558501031000|Протокол проверок пространственных данных кадастра (верификация)|</xsl:text>
    <xsl:text>|558501039900|Иные документы|</xsl:text>
    <xsl:text>|558502010100|Уведомление о приостановлении государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010200|Уведомление о прекращении государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010300|Уведомление о зарегистрированных ограничениях (обременениях) прав|</xsl:text>
    <xsl:text>|558502010400|Уведомление о внесении изменений в ЕГРП|</xsl:text>
    <xsl:text>|558502010500|Уведомление об исправлении технической ошибки в записях единого государственного реестра прав на недвижимое имущество и сделок с ним|</xsl:text>
    <xsl:text>|558502010600|Сообщение об отказе в государственной регистрации прав|</xsl:text>
    <xsl:text>|558502010700|Сообщение об отказе в предоставлении сведений из ЕГРП|</xsl:text>
    <xsl:text>|558502010800|Уведомление об отсутствии в ЕГРП запрашиваемых сведений|</xsl:text>
    <xsl:text>|558502010900|Сообщение о приёме заявления о государственной регистрации права, ограничения (обременения) права на предприятие, сделки с ним|</xsl:text>
    <xsl:text>|558502011000|Сообщение о поступлении документов на государственную регистрацию договоров мены и (или) перехода права|</xsl:text>
    <xsl:text>|558502011100|Уведомление о возврате приложенных к заявлению документов без рассмотрения|</xsl:text>
    <xsl:text>|558502011200|Уведомление о государственной регистрации прекращения ограничения (обременения)|</xsl:text>
    <xsl:text>|558502011300|Уведомление об отсутствии сведений о лицах, получивших сведения об объектах недвижимого имущества|</xsl:text>
    <xsl:text>|558502011400|Уведомление о государственной регистрации права собственности субъекта Российской Федерации или муниципального образования на земельный участок или земельную долю вследствие отказа от соответствующего права правообладателем|</xsl:text>
    <xsl:text>|558502011500|Уведомление о поступлении решения суда, вступившего в законную силу, с указанием срока окончания осуществления государственной регистрации прав, в случае если отказ в государственной регистрации прав признан судом необоснованным|</xsl:text>
    <xsl:text>|558502011600|Уведомление о внесении изменений в единый государственный реестр прав на недвижимое имущество и сделок с ним в связи с изменением содержащихся в базовых государственных информационных ресурсах сведений о правообладателе (правообладателях)|</xsl:text>
    <xsl:text>|558502011700|Уведомление о возврате документов без рассмотрения при отказе в осуществлении государственного кадастрового учета|</xsl:text>
    <xsl:text>|558502011800|Уведомление о неполучении и нерассмотрении запроса о предоставлении сведений ЕГРП|</xsl:text>
    <xsl:text>|558502011900|Уведомление о непринятии заявления и документов, необходимых для государственной регистрации прав, к рассмотрению.|</xsl:text>
    <xsl:text>|558502020100|Расписка в получении документов на государственную регистрацию прав|</xsl:text>
    <xsl:text>|558502029900|Иной документ|</xsl:text>
    <xsl:text>|558503000100|Расписка в получении документов на государственный кадастровый учет и (или) государственную регистрацию прав|</xsl:text>
    <xsl:text>|558601000000|Расписка в получении извещений о проведении собрания о согласовании местоположения границ|</xsl:text>
    <xsl:text>|558602000000|Уведомление о вручении извещения о проведении собрания о согласовании местоположения границ|</xsl:text>
    <xsl:text>|558603000000|Копия страницы печатного издания, содержащей извещение о проведении собрания о согласовании местоположения границ земельного участка, включая первый лист, содержащего реквизиты такого печатного издания|</xsl:text>
    <xsl:text>|558610100000|Заявления о государственном кадастровом учете и (или) государственной регистрации прав, ограничений прав, обременений объектов недвижимости, сделок с прилагаемыми документами (статьи 15, 19 Закона)|</xsl:text>
    <xsl:text>|558610200000|Требование судебных приставов-исполнителей о государственном кадастровом учете и (или) государственной регистрации прав на основании судебного акта или осуществляемых в предусмотренных Федеральным законом от 2 октября 2007 г. N 229-ФЗ|</xsl:text>
    <xsl:text>|558610300000|Заявление о приостановлении государственного кадастрового учета и (или) государственной регистрации прав (ст. 30 Закона)|</xsl:text>
    <xsl:text>|558610400000|Заявление о прекращении осуществления государственного кадастрового учета и государственной регистрации прав (статья 31 Закона)|</xsl:text>
    <xsl:text>|558610500000|Заявление о погашении регистрационной записи об ипотеке (статья 53 Закона, статья 25 Федерального закона от 16 июля 1998 г. N 102-ФЗ "Об ипотеке (залоге недвижимости)"|</xsl:text>
    <xsl:text>|558610600000|Заявление о государственной регистрации законного владельца закладной, выдаче закладной (статья 16 Закона об ипотеке)|</xsl:text>
    <xsl:text>|558610700000|Заявление об отказе от права собственности на земельный участок или долю в праве общей собственности на земельный участок из земель сельскохозяйственного назначения (далее - земельная доля) (статья 56 Закона)|</xsl:text>
    <xsl:text>|558610800000|Дополнительные документы, представляемые заявителем, в том числе с целью устранения причин, приведших к приостановлению государственного кадастрового учета и (или) государственной регистрации прав (статья 29 Закона)|</xsl:text>
    <xsl:text>|558610900000|Заявление о возобновлении государственного кадастрового учета и (или) государственной регистрации, ранее приостановленных в заявительном порядке|</xsl:text>
    <xsl:text>|558620100000|Заявление о внесении изменений в ЕГРН (статьи 33, 39, 40, 41, 43, 47, 53 Закона)|</xsl:text>
    <xsl:text>|558620200000|Заявление о наличии возражения в отношении зарегистрированного права на объект недвижимости (статья 35 Закона)|</xsl:text>
    <xsl:text>|558620300000|Заявление о невозможности государственной регистрации права без личного участия правообладателя (статья 36 Закона);|</xsl:text>
    <xsl:text>|558620400000|Заявление об исправлении технических ошибок в записях ЕГРН (статья 61 Закона)|</xsl:text>
    <xsl:text>|558620500000|Заявление о постановке на учет (снятии с учета) бесхозяйных недвижимых вещей (статья 3 Закона);|</xsl:text>
    <xsl:text>|558620600000|Документы, направляемые для внесения сведений в ЕГРН в порядке межведомственного информационного взаимодействия (статья 32 Закона)|</xsl:text>
    <xsl:text>|558620700000|Иные заявления и документы, на основании которых в ЕГРН должны быть внесены соответствующие сведения (статьи 33, 35, 36, 37, 38, 69 Закона)|</xsl:text>
    <xsl:text>|558620800000|Иные документы, принимаемые (представляемые, поступающие) в целях осуществления государственного кадастрового учета и (или) государственной регистрации прав на соответствующие объекты недвижимости, внесения сведений в реестр границ и для внесения в ЕГРН иных предусмотренных Законом сведений|</xsl:text>
    <xsl:text>|558620900000|Заявление о принятии вновь имущества во владение, пользование или распоряжение|</xsl:text>
    <xsl:text>|558621000000|Заявление о том, что собственник объекта недвижимости не совершал действий, направленные на отказ от права собственности|</xsl:text>
    <xsl:text>|558621100000|Заявление о внесении изменений в записи реестра прав, ограничений прав и обременений недвижимого имущества Единого государственного реестра недвижимости|</xsl:text>
    <xsl:text>|558630100000|Запрос на предоставление копии документа, на основании которого внесены сведения в ЕГРН или копий документов, помещенных в реестрвое дело|</xsl:text>
    <xsl:text>|558630200000|Запрос на предоставление сведений, содержащихся в ЕГРН, об объектах недвижимости и (или) их правообладателях|</xsl:text>
    <xsl:text>|558630300000|Запрос на предоставление сведений, содержащихся в ЕГРН, посредством обеспечения доступа к ФГИС ЕГРН|</xsl:text>
    <xsl:text>|558630400000|Запрос о предоставлении сведений, содержащихся в ЕГРН, о территории кадастрового квартала, о зоне с особыми условиями использования территорий, территориальной зоне, территории объекта культурного наследия, территории опережающего социально-экономического развития, зоне территориального развития в Российской Федерации, об игорной зоне, о лесничестве, лесопарке, об особо охраняемой природной территории, особой экономической зоне, охотничьих угодьях, об административно-территориальном делении, о береговой линии (границе водного объекта)|</xsl:text>
    <xsl:text>|558699000000|Иные документы, свидетельствующие о соблюдении установленного порядка извещения заинтересованных лиц о проведении собрания о согласовании местоположения границ земельного участка|</xsl:text>
    <xsl:text>|558701000000|о приостановлении государственного кадастрового учета и (или) государственной регистрации прав|</xsl:text>
    <xsl:text>|558702000000|об отказе в государственном кадастровом учете и (или) государственной регистрации прав|</xsl:text>
    <xsl:text>|558703000000|о прекращении осуществления государственного кадастрового учета и (или) государственной регистрации прав|</xsl:text>
    <xsl:text>|558704000000|о внесении в ЕГРОН сведений в порядке межведомственного информационного взаимодействия по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558705000000|об отказе во внесении в ЕГРОН сведений в порядке межведомственного информационного взаимодействия по заявлению заинтересованного лица|</xsl:text>
    <xsl:text>|558706000000|о внесении в ЕГРН сведений, поступивших в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|558707000000|о внесении в ЕГРН сведений в уведомительном порядке|</xsl:text>
    <xsl:text>|558708000000|участникам общей долевой собственности о внесенных в ЕГРОН изменениях в части размеров, принадлежащих им земельных долей|</xsl:text>
    <xsl:text>|558709000000|о государственной регистрации права собственности субъекта РФ или муниципального образования на земельный участок или земельную долю|</xsl:text>
    <xsl:text>|558710000000|об исправлении технической/ реестровой ошибки в сведениях ЕГРОН|</xsl:text>
    <xsl:text>|558711000000|об исправлении реестровой ошибки в случае, указанном в части 7 статьи 61 ФЗ-218|</xsl:text>
    <xsl:text>|558712000000|о возврате прилагаемых к заявлению о государственном кадастровом учете и (или) государственной регистрации прав документов без рассмотрения|</xsl:text>
    <xsl:text>|558713000000|об отказе в изменении сведений ЕГРОН|</xsl:text>
    <xsl:text>|558801000000|Удостоверение инвалида Отечественной войны, выданное в соответствии с Постановлением Совета Министров СССР от 23 февраля 1981 г. N 209 инвалидам Великой Отечественной войны из числа лиц, указанных в статье 4 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558802000000|Удостоверение участника войны, выданное в соответствии с Постановлением ЦК КПСС и Совета Министров СССР от 10 ноября 1987 г. N 907 участникам Великой Отечественной войны из числа лиц, указанных в подпунктах «а», «б», «г», «ж» подпункта 1 пункта 1 статьи 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558803000000|Удостоверение о праве на льготы, выданное в соответствии с Постановлением ЦК КПСС и Совета Министров СССР от 27 февраля 1981 г. N 220 участникам Великой Отечественной войны из числа лиц, указанным в подпункте «в», «д» подпункта 1 пункта 1 статьи 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558804000000|Удостоверение участника войны, выданное в соответствии с Постановлением ЦК КПСС и Совета Министров СССР от 10 ноября 1978 г. N 907, удостоверение о праве на льготы, выданного в соответствии с Постановлением ЦК КПСС и Совета Министров СССР от 27 февраля 1981 г. N 220 участникам Великой Отечественной войны из числа лиц, указанных в подпункте «е» подпункта 1 пункта 1 статьи 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558805000000|Удостоверение о праве на льготы, выданное в соответствии с Постановлением Совета Министров СССР от 12 мая 1988 г. N 621 участникам Великой Отечественной войны из числа лиц, указанных в подпункте «з», подпункта 1 пункта 1 статьи 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558806000000|Удостоверение о праве на льготы, выданное в соответствии с Постановлением ЦК КПСС и Совета Министров СССР от 14 мая 1985 г. N 416 участникам Великой Отечественной войны из числа лиц, указанных в подпункте «и», подпункта 1 пункта 1 статьи 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558807000000|Удостоверение ветерана Великой Отечественной войны, выданное в соответствии с Постановлением Правительства Российской Федерации от 5 октября 1999 г. N 1122 участникам Великой Отечественной войны из числа лиц, указанных в подпункте 1 пункта 1 статье 2 Федерального закона «О ветеранах»|</xsl:text>
    <xsl:text>|558808000000|Иной документ, подтверждающий право на льготу|</xsl:text>
  </xsl:template>
  <xsl:template name="DEGRNRequestType">
    <!--Info: D:\Dictionary3\DEGRNRequestType.xsd-->
    <xsl:text>|FILE|DEGRNRequestType.xsd|</xsl:text>
    <xsl:text>|NAME|Заявления и запросы ЕГРН|</xsl:text>
    <xsl:text>|558630100000|Запрос на предоставление копии документа, на основании которого внесены сведения в ЕГРН или копий документов, помещенных в реестрвоое дело|</xsl:text>
    <xsl:text>|558630200000|Запрос на предоставление сведений, содержащихся в ЕГРН, об объектах недвижимости и (или) их правообладателях|</xsl:text>
    <xsl:text>|558630300000|Запрос на предоставление сведений, содержащихся в ЕГРН, посредством обеспечения доступа к ФГИС ЕГРН|</xsl:text>
    <xsl:text>|558630400000|Запрос о предоставлении сведений, содержащихся в ЕГРН, о территории кадастрового квартала, о зоне с особыми условиями использования территорий, территориальной зоне, территории объекта культурного наследия, территории опережающего социально-экономического развития, зоне территориального развития в Российской Федерации, об игорной зоне, о лесничестве, лесопарке, об особо охраняемой природной территории, особой экономической зоне, охотничьих угодьях, об административно-территориальном делении, о береговой линии (границе водного объекта)|</xsl:text>
    <xsl:text>|558630500000|Запрос на предоставление общедоступных сведений|</xsl:text>
  </xsl:template>
  <xsl:template name="DEncumbrance">
    <!--Info: D:\Dictionary3\DEncumbrance.xsd-->
    <xsl:text>|FILE|DEncumbrance.xsd|</xsl:text>
    <xsl:text>|NAME|Обременения (ограничения) прав|</xsl:text>
    <xsl:text>|022010000000|Доверительное управление|</xsl:text>
    <xsl:text>|022011000000|Рента|</xsl:text>
    <xsl:text>|022001001000|Публичный сервитут|</xsl:text>
    <xsl:text>|022012000000|Запрет на совершение действий в сфере ГКУ в отношении ОН|</xsl:text>
    <xsl:text>|022001002000|Частный сервитут|</xsl:text>
    <xsl:text>|022013000000|Наем жилого помещения|</xsl:text>
    <xsl:text>|022014000000|Безвозмездное пользование (ссуда)|</xsl:text>
    <xsl:text>|022015000000|Объект культурного наследия|</xsl:text>
    <xsl:text>|022016000000|Концессия|</xsl:text>
    <xsl:text>|022017000000|Ограничение оборотоспособности земельных участков, предусмотренное статьей 11 Федерального закона 119-ФЗ|</xsl:text>
    <xsl:text>|022018000000|Залог в качестве меры пресечения|</xsl:text>
    <xsl:text>|022002000000|Арест|</xsl:text>
    <xsl:text>|022003000000|Запрещение регистрации|</xsl:text>
    <xsl:text>|022004000000|Ограничения прав на земельный участок, предусмотренные статьями 56, 56.1 Земельного кодекса Российской Федерации|</xsl:text>
    <xsl:text>|022005000000|Решение об изъятии земельного участка, жилого помещения|</xsl:text>
    <xsl:text>|022006000000|Аренда|</xsl:text>
    <xsl:text>|022007000000|Ипотека|</xsl:text>
    <xsl:text>|022008000000|Ипотека в силу закона|</xsl:text>
    <xsl:text>|022009000000|Безвозмездное (срочное) пользование земельным/лесным участком|</xsl:text>
    <xsl:text>|022099000000|Прочие ограничения прав и обременения объекта недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="DHouse">
    <!--Info: D:\Dictionary3\DHouse.xsd-->
    <xsl:text>|FILE|DHouse.xsd|</xsl:text>
    <xsl:text>|NAME|Тип адресного элемента|</xsl:text>
    <xsl:text>|д|Дом|</xsl:text>
    <xsl:text>|к|Корпус|</xsl:text>
    <xsl:text>|стр|Строение|</xsl:text>
    <xsl:text>|срж|Сооружение|</xsl:text>
    <xsl:text>|влд|Владение|</xsl:text>
    <xsl:text>|двлд|Домовладение|</xsl:text>
    <xsl:text>|ГСК|Гаражно-строительный кооператив|</xsl:text>
    <xsl:text>|гараж|Гараж|</xsl:text>
    <xsl:text>|казарма|Казарма|</xsl:text>
    <xsl:text>|уч-к|Участок|</xsl:text>
    <xsl:text>|бокс|Бокс|</xsl:text>
    <xsl:text>|в/ч|Военная часть|</xsl:text>
    <xsl:text>|блок|Блок|</xsl:text>
    <xsl:text>|литера|Литера|</xsl:text>
  </xsl:template>
  <xsl:template name="DHousingPurpose">
    <!--Info: D:\Dictionary3\DHousingPurpose.xsd-->
    <xsl:text>|FILE|DHousingPurpose.xsd|</xsl:text>
    <xsl:text>|NAME|Вид жилого помещения|</xsl:text>
    <xsl:text>|205001000000|Квартира|</xsl:text>
    <xsl:text>|205002000000|Комната|</xsl:text>
  </xsl:template>
  <xsl:template name="DInterdepObjectType">
    <!--Info: D:\Dictionary3\DInterdepObjectType.xsd-->
    <xsl:text>|FILE|DInterdepObjectType.xsd|</xsl:text>
    <xsl:text>|NAME|Виды объектов недвижимости|</xsl:text>
    <xsl:text>|002001002000|Здание|</xsl:text>
    <xsl:text>|002001003000|Помещение|</xsl:text>
    <xsl:text>|002001004000|Сооружение|</xsl:text>
  </xsl:template>
  <xsl:template name="DKindInfo">
    <!--Info: D:\Dictionary3\DKindInfo.xsd-->
    <xsl:text>|FILE|DKindInfo.xsd|</xsl:text>
    <xsl:text>|NAME|Справочник видов сведений, передаваемых в порядке межведомственного информационного взаимодействия|</xsl:text>
    <xsl:text>|01|Сведения об установлении или изменении разрешенного использования земельного участка|</xsl:text>
    <xsl:text>|02|Сведения об установленной категории земель|</xsl:text>
    <xsl:text>|03|Сведения о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение|</xsl:text>
    <xsl:text>|04|Сведения о результатах проведения государственного земельного надзора (о нарушении земельного законодательства Российской Федерации)|</xsl:text>
    <xsl:text>|05|Сведения об утверждении результатов государственной кадастровой оценки объектов недвижимости|</xsl:text>
    <xsl:text>|06|Сведения о внесении информации в государственный лесной реестр либо изменении информации, содержащейся в государственном лесном реестре, в отношении лесного участка, которому присвоен кадастровый (условный) номер|</xsl:text>
    <xsl:text>|07|Сведения о включении объекта недвижимости в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|08|Сведения об отнесении объекта недвижимости к выявленным объектам культурного наследия, подлежащим государственной охране|</xsl:text>
    <xsl:text>|09|Сведения об отказе включить выявленный объект культурного наследия в единый государственный реестр объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|10|Сведения об исключении объекта культурного наследия из единого государственного реестра объектов культурного наследия (памятников истории и культуры) народов Российской Федерации|</xsl:text>
    <xsl:text>|11|Сведения об изменении физическим лицом гражданства, адреса постоянного места жительства, документа, удостоверяющего личность|</xsl:text>
    <xsl:text>|12|Сведения о государственной регистрации смерти|</xsl:text>
    <xsl:text>|13|Сведения о проживающих в жилом помещении членах семьи собственника данного жилого помещения, находящихся под опекой или попечительством, либо несовершеннолетних членах семьи собственника данного жилого помещения, оставшихся без попечения родителей|</xsl:text>
    <xsl:text>|14|Сведения о признании гражданина ограниченным в дееспособности или признанным недееспособным|</xsl:text>
    <xsl:text>|15|Сведения о бесхозяйном недвижимом имуществе – об объекте недвижимого имущества, не имеющего собственника или собственник которого неизвестен, или от права собственности на который собственник (собственники) отказался|</xsl:text>
    <xsl:text>|16|Сведения об установлении или изменении прохождения Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|17|Сведения об установлении или изменении границ между субъектами Российской Федерации|</xsl:text>
    <xsl:text>|18|Сведения об установлении или изменении границ муниципальных образований либо о преобразовании муниципальных образований|</xsl:text>
    <xsl:text>|19|Сведения об установлении или изменении границ населенного пункта|</xsl:text>
    <xsl:text>|20|Сведения об утверждении проекта межевания территории|</xsl:text>
    <xsl:text>|21|Сведения о создании особой экономической зоны, об увеличении площади особой экономической зоны, о досрочном прекращении существования особой экономической зоны|</xsl:text>
    <xsl:text>|22|Сведения об установлении или изменении границ зон территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|23|Сведения об установлении или изменении границ территорий опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|24|Сведения об установлении или изменении границ игорной зоны|</xsl:text>
    <xsl:text>|25|Сведения об утверждении или изменении границ территории объекта культурного наследия и зон охраны объектов культурного наследия|</xsl:text>
    <xsl:text>|26|Сведения об установлении или изменении границ зон с особыми условиями использования территорий или о прекращении существования зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|27|Сведения об установлении, изменении границ территориальных зон|</xsl:text>
    <xsl:text>|28|Сведения об установлении или изменении границ особо охраняемой природной территории|</xsl:text>
    <xsl:text>|29|Сведения об установлении или изменении границ охотничьих угодий|</xsl:text>
    <xsl:text>|30|Сведения об установлении (изменении) границ лесничеств, лесопарков|</xsl:text>
    <xsl:text>|31|Сведения о внесении либо изменении сведений о береговой линии (границе водного объекта)|</xsl:text>
    <xsl:text>|32|Сведения о наложении ареста, о запрете совершать определенные действия с недвижимым имуществом или об избрании в качестве меры пресечения залога|</xsl:text>
  </xsl:template>
  <xsl:template name="DLandCategory">
    <!--Info: D:\Dictionary3\DLandCategory.xsd-->
    <xsl:text>|FILE|DLandCategory.xsd|</xsl:text>
    <xsl:text>|NAME|Категории земель|</xsl:text>
    <xsl:text>|003001000000|Земли сельскохозяйственного назначения|</xsl:text>
    <xsl:text>|003002000000|Земли населенных пунктов|</xsl:text>
    <xsl:text>|003003000000|Земли промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, земли для обеспечения космической деятельности, земли обороны, безопасности и земли иного специального назначения|</xsl:text>
    <xsl:text>|003004000000|Земли особо охраняемых территорий и объектов|</xsl:text>
    <xsl:text>|003005000000|Земли лесного фонда|</xsl:text>
    <xsl:text>|003006000000|Земли водного фонда|</xsl:text>
    <xsl:text>|003007000000|Земли запаса|</xsl:text>
    <xsl:text>|003008000000|Категория не установлена|</xsl:text>
  </xsl:template>
  <xsl:template name="DObjectPurpose">
    <!--Info: D:\Dictionary3\DObjectPurpose.xsd-->
    <xsl:text>|FILE|DObjectPurpose.xsd|</xsl:text>
    <xsl:text>|NAME|Назначение зданий|</xsl:text>
    <xsl:text>|204001000000|Нежилое|</xsl:text>
    <xsl:text>|204002000000|Жилое|</xsl:text>
    <xsl:text>|204003000000|Многоквартирный дом|</xsl:text>
    <xsl:text>|204004000000|Жилое строение|</xsl:text>
  </xsl:template>
  <xsl:template name="DObjectType">
    <!--Info: D:\Dictionary3\DObjectType.xsd-->
    <xsl:text>|FILE|DObjectType.xsd|</xsl:text>
    <xsl:text>|NAME|Виды объектов недвижимости|</xsl:text>
    <xsl:text>|002001001000|Земельный участок|</xsl:text>
    <xsl:text>|002001002000|Здание|</xsl:text>
    <xsl:text>|002001003000|Помещение|</xsl:text>
    <xsl:text>|002001004000|Сооружение|</xsl:text>
    <xsl:text>|002001005000|Объект незавершенного строительства|</xsl:text>
    <xsl:text>|002001006000|Предприятие как имущественный комплекс|</xsl:text>
    <xsl:text>|002001008000|Единый недвижимый комплекс|</xsl:text>
    <xsl:text>|002001009000|Машино-место|</xsl:text>
    <xsl:text>|002001010000|Иной объект недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="DReceivingMethod">
    <!--Info: D:\Dictionary3\DReceivingMethod.xsd-->
    <xsl:text>|FILE|DReceivingMethod.xsd|</xsl:text>
    <xsl:text>|NAME|Способ получения заявления в рамках заявлений по Регистрации прав|</xsl:text>
    <xsl:text>|regRightAuthority|в органе регистрации прав|</xsl:text>
    <xsl:text>|mfc|в МФЦ|</xsl:text>
    <xsl:text>|extReceipt|выездной прием|</xsl:text>
    <xsl:text>|postalDelivery|Почтовым отправлением|</xsl:text>
    <xsl:text>|electronically|В форме электронных документов (электронных образов документов)|</xsl:text>
  </xsl:template>
  <xsl:template name="DEGRNRequestReceivingMethod">
    <!--Info: D:\Dictionary3\DReceivingMethod.xsd-->
    <xsl:text>|FILE|DReceivingMethod.xsd|</xsl:text>
    <xsl:text>|NAME|Способ получения заявления в рамках заявлений по Предоставлению сведений из ЕГРН|</xsl:text>
    <xsl:text>|regRightAuthority|в органе регистрации прав|</xsl:text>
    <xsl:text>|mfc|в МФЦ|</xsl:text>
    <xsl:text>|postalDelivery|почтовым отправлением|</xsl:text>
    <xsl:text>|electronically|в форме электронных документов (электронных образов документов)|</xsl:text>
  </xsl:template>
  <xsl:template name="DRecieveResultType">
    <!--Info: D:\Dictionary3\DRecieveResultType.xsd-->
    <xsl:text>|FILE|DRecieveResultType.xsd|</xsl:text>
    <xsl:text>|NAME|Способ получения результата в заявлениях по Регистрации прав|</xsl:text>
    <xsl:text>|regRightAuthority|Орган регистрации прав|</xsl:text>
    <xsl:text>|mfc|МФЦ|</xsl:text>
    <xsl:text>|courier|Курьерская доставка|</xsl:text>
    <xsl:text>|postMail|Почтовое отправление|</xsl:text>
    <xsl:text>|webService|Отправка эл. документа с использованием веб сервиса|</xsl:text>
    <xsl:text>|eMail|Электронная почта|</xsl:text>
  </xsl:template>
  <xsl:template name="DERGRNRequestReceiveResultType">
    <!--Info: D:\Dictionary3\DRecieveResultType.xsd-->
    <xsl:text>|FILE|DRecieveResultType.xsd|</xsl:text>
    <xsl:text>|NAME|Способ получения результата в заявлениях по Предоставлению сведений из ЕГРН|</xsl:text>
    <xsl:text>|regRightAuthority|Орган регистрации прав|</xsl:text>
    <xsl:text>|mfc|МФЦ|</xsl:text>
    <xsl:text>|postMail|Почтовое отправление|</xsl:text>
    <xsl:text>|webService|Отправка эл. документа с использованием веб сервиса|</xsl:text>
    <xsl:text>|eMail|Электронная почта|</xsl:text>
  </xsl:template>
  <xsl:template name="DRegistryAction">
    <!--Info: D:\Dictionary3\DRegistryAction.xsd-->
    <xsl:text>|FILE|DRegistryAction.xsd|</xsl:text>
    <xsl:text>|NAME|Документы, сведения для внесения сведений в ЕГРН|</xsl:text>
    <xsl:text>|559010101000|содержащиеся в решении (акте) об установлении (изменении) разрешенного использования земельного участка|</xsl:text>
    <xsl:text>|559010102000|содержащиеся в решении (акте) о переводе жилого помещения в нежилое помещение, нежилого помещения в жилое помещение (об утверждении акта приемочной комиссии)|</xsl:text>
    <xsl:text>|559010103000|содержащиеся в решении (акте) об отнесении к определенной категории земель (о переводе земельного участка из одной категории земель в другую)|</xsl:text>
    <xsl:text>|559010104000|содержащиеся в решении (акте) о результатах проведения государственного земельного надзора|</xsl:text>
    <xsl:text>|559010105000|содержащиеся в решении (акте) об утверждении результатов государственной кадастровой оценки|</xsl:text>
    <xsl:text>|559010106000|об адресе|</xsl:text>
    <xsl:text>|559010107000|о назначении единого недвижимого комплекса или предприятия как имущественного комплекса|</xsl:text>
    <xsl:text>|559010108000|иные предусмотренные законодательством Российской Федерации сведения в отношении объекта недвижимости|</xsl:text>
    <xsl:text>|559010201000|содержащиеся в утвержденных (измененных) правилах землепользования и застройки|</xsl:text>
    <xsl:text>|559010202000|содержащиеся в утвержденной (измененной) документации по планировке территории|</xsl:text>
    <xsl:text>|559010203000|содержащиеся в решении (акте) об установлении (изменении) прохождения Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|559010204000|содержащиеся в решении (акте) об установлении (изменении) границ между субъектами Российской Федерации, границ муниципального образования|</xsl:text>
    <xsl:text>|559010205000|содержащиеся в решении (акте) об установлении (изменении) границ населенного пункта|</xsl:text>
    <xsl:text>|559010206000|содержащиеся в решении (акте) об установлении, изменении границ территориальной зоны|</xsl:text>
    <xsl:text>|559010207000|содержащиеся в решении (акте) об установлении, изменении или о прекращении существования зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|559010208000|содержащиеся в решении (акте) об установлении (изменении) границ особо охраняемой природной территории|</xsl:text>
    <xsl:text>|559010209000|содержащиеся в решении (акте) об установлении (изменении) границ охотничьих угодий|</xsl:text>
    <xsl:text>|559010210000|содержащиеся в утвержденном (измененном) проекте межевания территории|</xsl:text>
    <xsl:text>|559010211000|содержащиеся в решении (акте) об установлении (изменении) границ территорий опережающего социально-экономического развития|</xsl:text>
    <xsl:text>|559010212000|содержащиеся в решении (акте) об установлении (изменении) границ зон территориального развития в Российской Федерации|</xsl:text>
    <xsl:text>|559010213000|содержащиеся в решении (акте) об установлении (изменении) границ игорных зон|</xsl:text>
    <xsl:text>|559010214000|содержащиеся в решении (акте) об установлении (изменении) границ лесничеств, лесопарков|</xsl:text>
    <xsl:text>|559010215000|о физическом лице (правообладателе, лице, права которого ограничиваются и обременяются объекты недвижимости, лице, в пользу которого права ограничиваются и обременяются объекты недвижимости, стороне сделки в записях реестра прав на недвижимость) в связи с изменением сведений о нем, находящихся в распоряжении федерального органа исполнительной власти, уполномоченного на осуществление функций по контролю и надзору в сфере миграции|</xsl:text>
    <xsl:text>|559010216000|о проживающих в жилом помещении членах семьи собственника данного жилого помещения, находящихся под опекой или попечительством, либо несовершеннолетних членах семьи собственника данного жилого помещения, оставшихся без попечения родителей|</xsl:text>
    <xsl:text>|559010217000|о юридическом лице (правообладателе, лице, права которого ограничиваются и обременяются объекты недвижимости, лице, в пользу которого права ограничиваются и обременяются объекты недвижимости, стороне сделки в записях реестра прав на недвижимость) в связи с изменением сведений о нем, содержащихся в едином государственном реестре юридических лиц|</xsl:text>
    <xsl:text>|559010218000|о признании гражданина ограниченным в дееспособности или признанным недееспособным|</xsl:text>
    <xsl:text>|559010219000|о наложении (снятии) ареста или запрета совершать определенные действия с недвижимым имуществом или об избрании в качестве меры пресечения залога, о возврате залога залогодателю или об обращении залога в доход государства|</xsl:text>
    <xsl:text>|559010220000|внести запись о наличии возражения, заявленном в судебном порядке праве требования в отношении зарегистрированного права на объект недвижимости|</xsl:text>
    <xsl:text>|559010221000|погасить запись о наличии возражения в отношении зарегистрированного права на объект недвижимости|</xsl:text>
    <xsl:text>|559010222000|внести запись о невозможности государственной регистрации перехода, прекращения, ограничения права и обременения объекта недвижимости без личного участия собственника (его законного представителя)|</xsl:text>
    <xsl:text>|559010223000|погасить запись о невозможности государственной регистрации перехода, прекращения, ограничения права и обременения объекта недвижимости без личного участия собственника (его законного представителя)|</xsl:text>
    <xsl:text>|559010224000|об адресе электронной почты и (или) о почтовом адресе лица, чье право на объект недвижимости зарегистрировано, а также лица, в пользу которого зарегистрировано ограничение права и обременение объекта недвижимости|</xsl:text>
    <xsl:text>|559010225000|иные предусмотренные законодательством Российской Федерации сведения|</xsl:text>
    <xsl:text>|559010226000|внести запись о невозможности государственной регистрации перехода, прекращения, ограничения права на земельный участок из земель сельскохозяйственного назначения или обременения такого земельного участка до завершения рассмотрения судом дела о его изъятии в связи с неиспользованием по целевому назначению или использованием с нарушением законодательства Российской Федерации|</xsl:text>
    <xsl:text>|559010300000|Сведения, полученные в результате выполнения комплексных кадастровых работ, сведения о земельных участках и местоположении на них зданий, сооружений, объектов незавершенного строительства, расположенных в кадастровом квартале (нескольких смежных кадастровых кварталах)|</xsl:text>
  </xsl:template>
  <xsl:template name="DRequestDocument">
    <!--Info: D:\Dictionary3\DRequestDocument.xsd-->
    <xsl:text>|FILE|DRequestDocument.xsd|</xsl:text>
    <xsl:text>|NAME|Типы запрашиваемых документов|</xsl:text>
    <xsl:text>|561010001000|Заявление о государственном кадастровом учете и (или) государственной регистрации прав|</xsl:text>
    <xsl:text>|561010002000|Межевой план|</xsl:text>
    <xsl:text>|561010003000|Технический план|</xsl:text>
    <xsl:text>|561010004000|Акт обследования,подтверждающий прекращение существования объекта недвижимости|</xsl:text>
    <xsl:text>|561010005000|Разрешение на ввод объекта в эксплуатацию|</xsl:text>
    <xsl:text>|561010006000|Документ, подтверждающий в соответствии с федеральным законом принадлежность земельного участка к определенной категории земель|</xsl:text>
    <xsl:text>|561010007000|Документ, подтверждающий в соответствии с федеральным законом установленное разрешенное использование земельного участка, здания, сооружения, помещения|</xsl:text>
    <xsl:text>|561010008000|Документ, подтверждающий изменение назначения здания или помещения|</xsl:text>
    <xsl:text>|561010009000|Документ, содержащий сведения об адресе объекта недвижимости|</xsl:text>
    <xsl:text>|561010010000|Документ, содержащий сведения о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|561010011000|Документ, подтверждающий разрешение земельного спора о согласовании местоположения границ земельного участка в установленном земельным законодательством порядке|</xsl:text>
    <xsl:text>|561010012000|Иной документ, на основании которого сведения об объекте недвижимости внесены в Единый государственный реестр недвижимости|</xsl:text>
    <xsl:text>|561010013000|Иной документ, помещенный в реестровое дело|</xsl:text>
    <xsl:text>|561010014000|Договор или иной документ, выражающий содержание односторонней сделки, совершенной в простой письменной форме|</xsl:text>
    <xsl:text>|561010015000|Иной правоустанавливающий документ|</xsl:text>
    <xsl:text>|561010016000|Документ, на основании которого сведения о зоне, территории или границах внесены в Единый государственный реестр недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="DRequestEGRNAccessAction">
    <!--Info: D:\Dictionary3\DRequestEGRNAccessAction.xsd-->
    <xsl:text>|FILE|DRequestEGRNAccessAction.xsd|</xsl:text>
    <xsl:text>|NAME|Виды предоставляемых сведений, содержащихся в Едином государственном реестре недвижимости|</xsl:text>
    <xsl:text>|563010001000|Об объекте недвижимости (нескольких или всех в границах одного или нескольких кадастровых кварталов) и зарегистрированных правах на него (них)|</xsl:text>
    <xsl:text>|563010002000|О переходе прав на объект недвижимости|</xsl:text>
    <xsl:text>|563010003000|О правах отдельного лица на имеющиеся (имевшиеся) у него объекты недвижимости|</xsl:text>
    <xsl:text>|563010004000|О содержании правоустанавливающего документа|</xsl:text>
    <xsl:text>|563010005000|О правах отдельного лица на имевшиеся (имеющиеся) у него объекты недвижимости|</xsl:text>
    <xsl:text>|563010006000|О признании правообладателя недееспособным или ограниченно дееспособным|</xsl:text>
    <xsl:text>|563010007000|Кадастровый паспорт объекта недвижимости (кадастровый паспорт здания, сооружения, объекта незавершенного строительства; кадастровый паспорт помещения (выписка из государственного кадастра недвижимости); кадастровый паспорт земельного участка)|</xsl:text>
    <xsl:text>|563010008000|Кадастровая выписка об объекте недвижимости (кадастровая выписка о здании, сооружении, объекте незавершенного строительства; кадастровая выписка о земельном участке)|</xsl:text>
    <xsl:text>|563010009000|кадастровый план территории|</xsl:text>
    <xsl:text>|563010010000|кадастровая справка о кадастровой стоимости объекта недвижимости|</xsl:text>
    <xsl:text>|563010011000|Об отсутствии сведений (в случае отсутствия запрашиваемых сведений)|</xsl:text>
    <xsl:text>|563010012000|О наложенных ограничениях на недвижимое имущество, предоставляемые Федеральной службой судебных приставов России|</xsl:text>
    <xsl:text>|563010013000|О наложении ареста/об отмене ареста на имущество организации-налогоплательщика, предоставляемые Федеральной налоговой службой России|</xsl:text>
  </xsl:template>
  <xsl:template name="DRequestType">
    <!--Info: D:\Dictionary3\DRequestType.xsd-->
    <xsl:text>|FILE|DRequestType.xsd|</xsl:text>
    <xsl:text>|NAME|Типы поступивших обращений|</xsl:text>
    <xsl:text>|111300001000|Кадастровый учет и (или) регистрация права|</xsl:text>
    <xsl:text>|111300002000|Устранение препятствий|</xsl:text>
    <xsl:text>|111300003000|Предоставление сведений, содержащихся в Едином государственном реестре недвижимости|</xsl:text>
    <xsl:text>|111300004000|Межведомственное информационное взаимодействие|</xsl:text>
    <xsl:text>|111300005000|Внесение сведений в реестр границ|</xsl:text>
    <xsl:text>|111300006000|Приостановка / прекращение обработки обращения|</xsl:text>
    <xsl:text>|111300007000|Исправление технической ошибки/ внесение сведений в ЕГРН, по заявлению|</xsl:text>
    <xsl:text>|111300008000|Исправление технической ошибки, содержащейся в сведениях ЕГРН, по решению Регистратора|</xsl:text>
    <xsl:text>|111300009000|Возобновление государственной регистрации, ранее приостановленной по заявлению правообладателя|</xsl:text>
    <xsl:text>|111300010000|Внесение сведений в реестр границ по инициативе заинтересованного лица|</xsl:text>
    <xsl:text>|111300011000|Предоставление сведений, содержащихся в ЕГРН об объектах реестра границ|</xsl:text>
    <xsl:text>|111300012000|Государственная регистрация передачи права по закладной в случае, если права залогодержателя удостоверяются закладной|</xsl:text>
    <xsl:text>|111300013000|Государственная регистрация законного владельца закладной|</xsl:text>
    <xsl:text>|111300014000|Выдача закладной|</xsl:text>
    <xsl:text>|111300015000|Принятие объекта недвижимого имущества вновь во владение, пользование и распоряжение (в собственность)|</xsl:text>
    <xsl:text>|111300016000|Обработка документов, поступающих без заявлений|</xsl:text>
    <xsl:text>|111300017000|Обработка заявления о том, что собственник ОН не совершал действий, направленные на отказ от права собственности|</xsl:text>
    <xsl:text>|111300018000|Предоставление сведений, содержащихся в ЕГРН, в виде кадастрового плана территории|</xsl:text>
    <xsl:text>|111300019000|Исправление технической ошибки в сведениях реестра границ в ЕГРН по заявлению|</xsl:text>
    <xsl:text>|111300020000|Исправление технической ошибки в сведениях реестра границ в ЕГРН по инициативе Регистратора|</xsl:text>
  </xsl:template>
  <xsl:template name="DResult">
    <!--Info: D:\Dictionary3\DResult.xsd-->
    <xsl:text>|FILE|DResult.xsd|</xsl:text>
    <xsl:text>|NAME|Типы предоставления результата|</xsl:text>
    <xsl:text>|562010001000|Документ, на основании которого сведения внесены в Единый государственный реестр недвижимости|</xsl:text>
    <xsl:text>|562010002000|Выписка из Единого государственного реестра недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="DRight">
    <!--Info: D:\Dictionary3\DRight.xsd-->
    <xsl:text>|FILE|DRight.xsd|</xsl:text>
    <xsl:text>|NAME|Права|</xsl:text>
    <xsl:text>|001001000000|Собственность|</xsl:text>
    <xsl:text>|001002000000|Общая долевая собственность|</xsl:text>
    <xsl:text>|001003000000|Общая совместная собственность|</xsl:text>
    <xsl:text>|001004000000|Хозяйственное ведение|</xsl:text>
    <xsl:text>|001005000000|Оперативное управление|</xsl:text>
    <xsl:text>|001006000000|Пожизненное наследуемое владение|</xsl:text>
    <xsl:text>|001007000000|Постоянное (бессрочное) пользование|</xsl:text>
    <xsl:text>|001008000000|Сервитут (право)|</xsl:text>
    <xsl:text>|001009000000|Право владения, пользования и распоряжения имуществом Банка России|</xsl:text>
    <xsl:text>|001099000000|Иные права|</xsl:text>
  </xsl:template>
  <xsl:template name="DRightAction">
    <!--Info: D:\Dictionary3\DRightAction.xsd-->
    <xsl:text>|FILE|DRightAction.xsd|</xsl:text>
    <xsl:text>|NAME|Типы действий по регистрации права|</xsl:text>
    <xsl:text>|111100001000|Регистрация ранее возникшего (до 31.01.1998) права|</xsl:text>
    <xsl:text>|111100002000|Регистрация права|</xsl:text>
    <xsl:text>|111100003000|Регистрация перехода права|</xsl:text>
    <xsl:text>|111100004000|Регистрация прекращения права|</xsl:text>
    <xsl:text>|111100005000|Регистрация ограничения права и (или) обременения объекта недвижимости|</xsl:text>
    <xsl:text>|111100006000|Регистрация сделки об отчуждении объекта недвижимости или ограничении (обременении) права|</xsl:text>
    <xsl:text>|111100007000|Регистрация сделки об изменении или расторжении ранее совершенной сделки;соглашение об уступке права требования или перевода долга по ранее совершенной сделке|</xsl:text>
    <xsl:text>|111100008000|Регистрация прекращения ограничения права и (или) обременения объекта недвижимости|</xsl:text>
  </xsl:template>
  <xsl:template name="DRoomPurpose">
    <!--Info: D:\Dictionary3\DRoomPurpose.xsd-->
    <xsl:text>|FILE|DRoomPurpose.xsd|</xsl:text>
    <xsl:text>|NAME|Назначение помещений|</xsl:text>
    <xsl:text>|206001000000|Нежилое помещение|</xsl:text>
    <xsl:text>|206002000000|Жилое помещение|</xsl:text>
  </xsl:template>
  <xsl:template name="DStatementType">
    <!--Info: D:\Dictionary3\DStatementType.xsd-->
    <xsl:text>|FILE|DStatementType.xsd|</xsl:text>
    <xsl:text>|NAME|Заявления и запросы ЕГРН|</xsl:text>
    <xsl:text>|558610100000|Заявления о государственном кадастровом учете и (или) государственной регистрации прав, ограничений прав, обременений объектов недвижимости, сделок с прилагаемыми документами (статьи 15, 19 Закона)|</xsl:text>
    <xsl:text>|558610200000|Требование судебных приставов-исполнителей о государственном кадастровом учете и (или) государственной регистрации прав на основании судебного акта или осуществляемых в предусмотренных Федеральным законом от 2 октября 2007 г. N 229-ФЗ|</xsl:text>
    <xsl:text>|558610300000|Заявление о приостановлении государственного кадастрового учета и (или) государственной регистрации прав (ст. 30 Закона)|</xsl:text>
    <xsl:text>|558610400000|Заявление о прекращении осуществления государственного кадастрового учета и государственной регистрации прав (статья 31 Закона)|</xsl:text>
    <xsl:text>|558610500000|Заявление о погашении регистрационной записи об ипотеке (статья 53 Закона, статья 25 Федерального закона от 16 июля 1998 г. N 102-ФЗ "Об ипотеке (залоге недвижимости)"|</xsl:text>
    <xsl:text>|558610600000|Заявление о государственной регистрации законного владельца закладной, выдаче закладной (статья 16 Закона об ипотеке)|</xsl:text>
    <xsl:text>|558610700000|Заявление об отказе от права собственности на земельный участок или долю в праве общей собственности на земельный участок из земель сельскохозяйственного назначения (далее - земельная доля) (статья 56 Закона)|</xsl:text>
    <xsl:text>|558610800000|Дополнительные документы, представляемые заявителем, в том числе с целью устранения причин, приведших к приостановлению государственного кадастрового учета и (или) государственной регистрации прав (статья 29 Закона)|</xsl:text>
    <xsl:text>|558610900000|Заявление о возобновлении государственного кадастрового учета и (или) государственной регистрации, ранее приостановленных в заявительном порядке|</xsl:text>
    <xsl:text>|558620100000|Заявление о внесении изменений в ЕГРН (статьи 33, 39, 40, 41, 43, 47, 53 Закона)|</xsl:text>
    <xsl:text>|558621000000|Заявление о том, что собственник объекта недвижимости не совершал действий, направленные на отказ от права собственности|</xsl:text>
    <xsl:text>|558620200000|Заявление о наличии возражения в отношении зарегистрированного права на объект недвижимости (статья 35 Закона)|</xsl:text>
    <xsl:text>|558620300000|Заявление о невозможности государственной регистрации права без личного участия правообладателя (статья 36 Закона);|</xsl:text>
    <xsl:text>|558620400000|Заявление об исправлении технических ошибок в записях ЕГРН (статья 61 Закона)|</xsl:text>
    <xsl:text>|558620500000|Заявление о постановке на учет (снятии с учета) бесхозяйных недвижимых вещей (статья 3 Закона);|</xsl:text>
    <xsl:text>|558620600000|Документы, направляемые для внесения сведений в ЕГРН в порядке межведомственного информационного взаимодействия (статья 32 Закона)|</xsl:text>
    <xsl:text>|558620700000|Иные заявления и документы, на основании которых в ЕГРН должны быть внесены соответствующие сведения (статьи 33, 35, 36, 37, 38, 69 Закона)|</xsl:text>
    <xsl:text>|558620800000|Иные документы, принимаемые (представляемые, поступающие) в целях осуществления государственного кадастрового учета и (или) государственной регистрации прав на соответствующие объекты недвижимости, внесения сведений в реестр границ и для внесения в ЕГРН иных предусмотренных Законом сведений|</xsl:text>
    <xsl:text>|558620900000|Заявление о принятии вновь имущества во владение, пользование или распоряжение|</xsl:text>
    <xsl:text>|558630100000|Запрос на предоставление копии документа, на основании которого внесены сведения в ЕГРН или копий документов, помещенных в реестрвоое дело|</xsl:text>
    <xsl:text>|558630200000|Запрос на предоставление сведений, содержащихся в ЕГРН, об объектах недвижимости и (или) их правообладателях|</xsl:text>
    <xsl:text>|558630300000|Запрос на предоставление сведений, содержащихся в ЕГРН, посредством обеспечения доступа к ФГИС ЕГРН|</xsl:text>
    <xsl:text>|558630400000|Запрос о предоставлении сведений, содержащихся в ЕГРН, о территории кадастрового квартала, о зоне с особыми условиями использования территорий, территориальной зоне, территории объекта культурного наследия, территории опережающего социально-экономического развития, зоне территориального развития в Российской Федерации, об игорной зоне, о лесничестве, лесопарке, об особо охраняемой природной территории, особой экономической зоне, охотничьих угодьях, об административно-территориальном делении, о береговой линии (границе водного объекта)|</xsl:text>
  </xsl:template>
  <xsl:template name="DTerzone">
    <!--Info: D:\Dictionary3\DTerzone.xsd-->
    <xsl:text>|FILE|DTerzone.xsd|</xsl:text>
    <xsl:text>|NAME|Территориальные зоны и зоны с особыми условиями использования территорий|</xsl:text>
    <xsl:text>|218010010000|Жилая зона|</xsl:text>
    <xsl:text>|218010020000|Общественно-деловая зона|</xsl:text>
    <xsl:text>|218010030000|Производственная зона, зона инженерной и транспортной инфраструктур|</xsl:text>
    <xsl:text>|218010040000|Зона сельскохозяйственного использования|</xsl:text>
    <xsl:text>|218010050000|Зона рекреационного назначения|</xsl:text>
    <xsl:text>|218010060000|Зона особо охраняемых территорий|</xsl:text>
    <xsl:text>|218010070000|Зона специального назначения|</xsl:text>
    <xsl:text>|218010080000|Зона размещения военных объектов|</xsl:text>
    <xsl:text>|218010090000|Иная зона|</xsl:text>
    <xsl:text>|218020010001|Территория особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010002|Охранная зона особо охраняемого природного объекта|</xsl:text>
    <xsl:text>|218020010003|Водоохранная зона|</xsl:text>
    <xsl:text>|218020010004|Прибрежная защитная полоса|</xsl:text>
    <xsl:text>|218020010005|Зона санитарной охраны источников водоснабжения и водопроводов питьевого назначения|</xsl:text>
    <xsl:text>|218020010006|Особо ценные земли|</xsl:text>
    <xsl:text>|218020020001|Территория объекта культурного наследия|</xsl:text>
    <xsl:text>|218020020201|Охранная зона|</xsl:text>
    <xsl:text>|218020020203|Зона охраняемого природного ландшафта|</xsl:text>
    <xsl:text>|218020020002|Зона охраны объекта культурного наследия|</xsl:text>
    <xsl:text>|218020020003|Охранная зона геодезического пункта|</xsl:text>
    <xsl:text>|218020020004|Охранная зона стационарного пункта наблюдений за состоянием окружающей природной среды|</xsl:text>
    <xsl:text>|218020020005|Охранная зона транспорта|</xsl:text>
    <xsl:text>|218020020006|Охранная зона инженерных коммуникаций|</xsl:text>
    <xsl:text>|218020020007|Охранная зона линий и сооружений связи и линий и сооружений радиофикации|</xsl:text>
    <xsl:text>|218020020008|Придорожная полоса|</xsl:text>
    <xsl:text>|218020020202|Зона регулирования застройки и хозяйственной деятельности|</xsl:text>
    <xsl:text>|218020030001|Запретная зона при военном складе|</xsl:text>
    <xsl:text>|218020030002|Запретный район при военном складе|</xsl:text>
    <xsl:text>|218020030003|Загрязненные земли|</xsl:text>
    <xsl:text>|218020030004|Охранная зона загрязненных земель|</xsl:text>
    <xsl:text>|218020030005|Санитарно-защитная зона предприятий, сооружений и иных объектов|</xsl:text>
    <xsl:text>|218020030006|Санитарный разрыв (санитарная полоса отчуждения)|</xsl:text>
    <xsl:text>|218020030007|Зона ограничения от передающего радиотехнического объекта|</xsl:text>
    <xsl:text>|218020030008|Район падения отделяющихся частей ракет|</xsl:text>
    <xsl:text>|218020040001|Зона публичного сервитута|</xsl:text>
    <xsl:text>|218020040002|Зона резервирования земель|</xsl:text>
    <xsl:text>|218020040003|Горный отвод|</xsl:text>
    <xsl:text>|218020040004|Пригородная зона|</xsl:text>
    <xsl:text>|218020040005|Зеленая зона|</xsl:text>
    <xsl:text>|218020040006|Особая экономическая зона|</xsl:text>
    <xsl:text>|218020040007|Пограничная зона|</xsl:text>
    <xsl:text>|218020040008|Территория традиционного природопользования|</xsl:text>
    <xsl:text>|218020050001|Иная зона с особыми условиями использования территории|</xsl:text>
  </xsl:template>
  <xsl:template name="DUnitType">
    <!--Info: D:\Dictionary3\DUnitType.xsd-->
    <xsl:text>|FILE|DUnitType.xsd|</xsl:text>
    <xsl:text>|NAME|Единицы измерений|</xsl:text>
    <xsl:text>|012001001000|Метр|</xsl:text>
    <xsl:text>|012001002000|Километр|</xsl:text>
    <xsl:text>|012001003000|Миллиметр|</xsl:text>
    <xsl:text>|012001004000|Сантиметр|</xsl:text>
    <xsl:text>|012001004700|Морская миля|</xsl:text>
    <xsl:text>|012001005000|Дециметр|</xsl:text>
    <xsl:text>|012001009000|Мегаметр|</xsl:text>
    <xsl:text>|012002001000|Квадратный метр|</xsl:text>
    <xsl:text>|012002002000|Гектар|</xsl:text>
    <xsl:text>|012002003000|Квадратный километр|</xsl:text>
    <xsl:text>|012002004000|Тысяча квадратных метров|</xsl:text>
    <xsl:text>|012002000500|Квадратный миллиметр|</xsl:text>
    <xsl:text>|012002000510|Квадратный сантиметр|</xsl:text>
    <xsl:text>|012002000530|Квадратный дециметр|</xsl:text>
    <xsl:text>|012002009000|Ар (100 кв.м.)|</xsl:text>
    <xsl:text>|012003001000|Сутки|</xsl:text>
    <xsl:text>|012003002000|Неделя|</xsl:text>
    <xsl:text>|012003003000|Декада|</xsl:text>
    <xsl:text>|012003004000|Месяц|</xsl:text>
    <xsl:text>|012003005000|Год|</xsl:text>
    <xsl:text>|012003006000|Час|</xsl:text>
    <xsl:text>|012003007000|Квартал|</xsl:text>
    <xsl:text>|012003008000|Полугодие|</xsl:text>
    <xsl:text>|012003009000|Минута|</xsl:text>
    <xsl:text>|012004001000|Рубль|</xsl:text>
    <xsl:text>|012004002000|Тысяча рублей|</xsl:text>
    <xsl:text>|012004003000|Миллион рублей|</xsl:text>
    <xsl:text>|012004004000|Миллиард рублей|</xsl:text>
    <xsl:text>|012004005000|Неопределено|</xsl:text>
    <xsl:text>|012004006000|Значение отсутствует|</xsl:text>
    <xsl:text>|012005001000|Рублей за кв. м|</xsl:text>
    <xsl:text>|012005002000|Рублей за гектар|</xsl:text>
    <xsl:text>|012005003000|Рублей за кв. км|</xsl:text>
    <xsl:text>|012005004000|Рабочий день|</xsl:text>
    <xsl:text>|012005005000|Рублей за ар|</xsl:text>
    <xsl:text>|012005099000|Иное|</xsl:text>
  </xsl:template>
  <xsl:template name="DUsageType">
    <!--Info: D:\Dictionary3\DUsageType.xsd-->
    <xsl:text>|FILE|DUsageType.xsd|</xsl:text>
    <xsl:text>|NAME|Классификатор видов разрешенного использования земельных участков|</xsl:text>
    <xsl:text>|214001001001|Выращивание зерновых и иных сельскохозяйственных культур|</xsl:text>
    <xsl:text>|214001001002|Овощеводство|</xsl:text>
    <xsl:text>|214001001003|Выращивание тонизирующих, лекарственных, цветочных культур|</xsl:text>
    <xsl:text>|214001001004|Садоводство|</xsl:text>
    <xsl:text>|214001001005|Выращивание льна и конопли|</xsl:text>
    <xsl:text>|214001002001|Скотоводство|</xsl:text>
    <xsl:text>|214001002002|Звероводство|</xsl:text>
    <xsl:text>|214001002003|Птицеводство|</xsl:text>
    <xsl:text>|214001002004|Свиноводство|</xsl:text>
    <xsl:text>|214001003000|Пчеловодство|</xsl:text>
    <xsl:text>|214001004000|Рыбоводство|</xsl:text>
    <xsl:text>|214001005000|Научное обеспечение сельского хозяйства|</xsl:text>
    <xsl:text>|214001006000|Хранение и переработка сельскохозяйственной продукции|</xsl:text>
    <xsl:text>|214001007000|Ведение личного подсобного хозяйства на полевых участках|</xsl:text>
    <xsl:text>|214001008000|Питомники|</xsl:text>
    <xsl:text>|214001009000|Обеспечение сельскохозяйственного производства|</xsl:text>
    <xsl:text>|214002001001|Малоэтажная многоквартирная жилая застройка|</xsl:text>
    <xsl:text>|214002002000|Для ведения личного подсобного хозяйства|</xsl:text>
    <xsl:text>|214002003000|Блокированная жилая застройка|</xsl:text>
    <xsl:text>|214002004000|Передвижное жилье|</xsl:text>
    <xsl:text>|214002005000|Среднеэтажная жилая застройка|</xsl:text>
    <xsl:text>|214002006000|Многоэтажная жилая застройка (высотная застройка)|</xsl:text>
    <xsl:text>|214002007001|Объекты гаражного назначения|</xsl:text>
    <xsl:text>|214003001000|Коммунальное обслуживание|</xsl:text>
    <xsl:text>|214003002000|Социальное обслуживание|</xsl:text>
    <xsl:text>|214003003000|Бытовое обслуживание|</xsl:text>
    <xsl:text>|214003004001|Амбулаторно-поликлиническое обслуживание|</xsl:text>
    <xsl:text>|214003004002|Стационарное медицинское обслуживание|</xsl:text>
    <xsl:text>|214003005001|Дошкольное, начальное и среднее общее образование|</xsl:text>
    <xsl:text>|214003005002|Среднее и высшее профессиональное образование|</xsl:text>
    <xsl:text>|214003006000|Культурное развитие|</xsl:text>
    <xsl:text>|214003007000|Религиозное использование|</xsl:text>
    <xsl:text>|214003008000|Общественное управление|</xsl:text>
    <xsl:text>|214003009001|Обеспечение деятельности в области гидрометеорологии и смежных с ней областях|</xsl:text>
    <xsl:text>|214003010001|Амбулаторное ветеринарное обслуживание|</xsl:text>
    <xsl:text>|214003010002|Приюты для животных|</xsl:text>
    <xsl:text>|214004001000|Деловое управление|</xsl:text>
    <xsl:text>|214004002000|Объекты торговли (торговые центры, торгово-развлекательные центры (комплексы)|</xsl:text>
    <xsl:text>|214004003000|Рынки|</xsl:text>
    <xsl:text>|214004004000|Магазины|</xsl:text>
    <xsl:text>|214004005000|Банковская и страховая деятельность|</xsl:text>
    <xsl:text>|214004006000|Общественное питание|</xsl:text>
    <xsl:text>|214004007000|Гостиничное обслуживание|</xsl:text>
    <xsl:text>|214004008000|Развлечения|</xsl:text>
    <xsl:text>|214004009001|Объекты придорожного сервиса|</xsl:text>
    <xsl:text>|214004010000|Выставочно-ярмарочная деятельность|</xsl:text>
    <xsl:text>|214005001000|Спорт|</xsl:text>
    <xsl:text>|214005002001|Туристическое обслуживание|</xsl:text>
    <xsl:text>|214005003000|Охота и рыбалка|</xsl:text>
    <xsl:text>|214005004000|Причалы для маломерных судов|</xsl:text>
    <xsl:text>|214005005000|Поля для гольфа или конных прогулок|</xsl:text>
    <xsl:text>|214006001000|Недропользование|</xsl:text>
    <xsl:text>|214006002001|Автомобилестроительная промышленность|</xsl:text>
    <xsl:text>|214006003001|Фармацевтическая промышленность|</xsl:text>
    <xsl:text>|214006004000|Пищевая промышленность|</xsl:text>
    <xsl:text>|214006005000|Нефтехимическая промышленность|</xsl:text>
    <xsl:text>|214006006000|Строительная промышленность|</xsl:text>
    <xsl:text>|214006007001|Атомная энергетика|</xsl:text>
    <xsl:text>|214006008000|Связь|</xsl:text>
    <xsl:text>|214006009000|Склады|</xsl:text>
    <xsl:text>|214006011000|Целлюлозно-бумажная промышленность|</xsl:text>
    <xsl:text>|214007000000|Обеспечение космической деятельности|</xsl:text>
    <xsl:text>|214008001000|Железнодорожный транспорт|</xsl:text>
    <xsl:text>|214008002000|Автомобильный транспорт|</xsl:text>
    <xsl:text>|214008003000|Водный транспорт|</xsl:text>
    <xsl:text>|214008004000|Воздушный транспорт|</xsl:text>
    <xsl:text>|214008005000|Трубопроводный транспорт|</xsl:text>
    <xsl:text>|214009000000|Обеспечение обороны и безопасности|</xsl:text>
    <xsl:text>|214010000000|Обеспечение вооруженных сил|</xsl:text>
    <xsl:text>|214011000000|Охрана Государственной границы Российской Федерации|</xsl:text>
    <xsl:text>|214012000000|Обеспечение внутреннего правопорядка|</xsl:text>
    <xsl:text>|214013000000|Обеспечение деятельности по исполнению наказаний|</xsl:text>
    <xsl:text>|214014000000|Деятельность по особой охране и изучению природы|</xsl:text>
    <xsl:text>|214015000000|Охрана природных территорий|</xsl:text>
    <xsl:text>|214016001000|Санаторная деятельность|</xsl:text>
    <xsl:text>|214017000000|Историко-культурная деятельность|</xsl:text>
    <xsl:text>|214018001000|Заготовка древесины|</xsl:text>
    <xsl:text>|214018002000|Лесные плантации|</xsl:text>
    <xsl:text>|214018003000|Заготовка лесных ресурсов|</xsl:text>
    <xsl:text>|214018004000|Резервные леса|</xsl:text>
    <xsl:text>|214019000000|Водные объекты|</xsl:text>
    <xsl:text>|214020000000|Общее пользование водными объектами|</xsl:text>
    <xsl:text>|214021000000|Специальное пользование водными объектами|</xsl:text>
    <xsl:text>|214022000000|Гидротехнические сооружения|</xsl:text>
    <xsl:text>|214023000000|Земельные участки (территории) общего пользования|</xsl:text>
    <xsl:text>|214024000000|Ритуальная деятельность|</xsl:text>
    <xsl:text>|214025000000|Специальная деятельность|</xsl:text>
    <xsl:text>|214026000000|Запас|</xsl:text>
    <xsl:text>|214027001000|Ведение огородничества|</xsl:text>
    <xsl:text>|214027002000|Ведение садоводства|</xsl:text>
    <xsl:text>|214027003000|Ведение дачного хозяйства|</xsl:text>
    <xsl:text>|214099000000|Сведения отсутствуют|</xsl:text>
  </xsl:template>
  <xsl:template name="dEncumbrancesNWR">
    <!--Info: D:\Dictionary3\dEncumbrances.xsd-->
    <xsl:text>|FILE|dEncumbrances.xsd|</xsl:text>
    <xsl:text>|NAME|Ограничения (обременения) прав|</xsl:text>
    <xsl:text>|022001000000|Сервитут|</xsl:text>
    <xsl:text>|022001001000|Публичный сервитут|</xsl:text>
    <xsl:text>|022001002000|Частный сервитут|</xsl:text>
    <xsl:text>|022002000000|Арест|</xsl:text>
    <xsl:text>|022003000000|Запрещение|</xsl:text>
    <xsl:text>|022004000000|Ограничения прав на земельный участок, предусмотренные статьями 56, 56.1 Земельного кодекса Российской Федерации|</xsl:text>
    <xsl:text>|022005000000|Решение об изъятии земельного участка, жилого помещения|</xsl:text>
    <xsl:text>|022006000000|Аренда (в том числе, субаренда)|</xsl:text>
    <xsl:text>|022007000000|Ипотека|</xsl:text>
    <xsl:text>|022008000000|Ипотека в силу закона|</xsl:text>
    <xsl:text>|022009000000|Безвозмездное (срочное) пользование земельным/лесным участком|</xsl:text>
    <xsl:text>|022010000000|Доверительное управление|</xsl:text>
    <xsl:text>|022011000000|Рента|</xsl:text>
    <xsl:text>|022099000000|Иные ограничения (обременения) прав|</xsl:text>
  </xsl:template>
  <xsl:template name="DESTO">
    <xsl:text>|FILE|DESTO.xsd|</xsl:text>
    <xsl:text>|NAME|Вид объекта реестра границ|</xsl:text>
    <xsl:text>|23.002|Филиал ФГБУ "ФКП Росреестра" по Краснодарскому краю|</xsl:text>
    <xsl:text>|30.002|Филиал ФГБУ "ФКП Росреестра" по Астраханской области|</xsl:text>
    <xsl:text>|34.002|Филиал ФГБУ "ФКП Росреестра" по Волгоградской области|</xsl:text>
    <xsl:text>|08.002|Филиал ФГБУ "ФКП Росреестра" по Республике Калмыкия|</xsl:text>
    <xsl:text>|01.002|Филиал ФГБУ "ФКП Росреестра" по Республике Адыгея|</xsl:text>
    <xsl:text>|61.002|Филиал ФГБУ "ФКП Росреестра" по Ростовской области|</xsl:text>
    <xsl:text>|78.002|Филиал ФГБУ "ФКП Росреестра" по Санкт-Петербургу|</xsl:text>
    <xsl:text>|51.002|Филиал ФГБУ "ФКП Росреестра" по Мурманской области|</xsl:text>
    <xsl:text>|53.002|Филиал ФГБУ "ФКП Росреестра" по Новгородской области|</xsl:text>
    <xsl:text>|60.002|Филиал ФГБУ "ФКП Росреестра" по Псковской области|</xsl:text>
    <xsl:text>|11.002|Филиал ФГБУ "ФКП Росреестра"  по Республике Коми|</xsl:text>
    <xsl:text>|10.002|Филиал ФГБУ "ФКП Росреестра" по Республике Карелия|</xsl:text>
    <xsl:text>|47.002|Филиал ФГБУ "ФКП Росреестра" по Ленинградской области|</xsl:text>
    <xsl:text>|79.002|Филиал ФГБУ "ФКП Росреестра" по Еврейской  автономной области|</xsl:text>
    <xsl:text>|28.002|Филиал ФГБУ "ФКП Росреестра" по Амурской области|</xsl:text>
    <xsl:text>|65.002|Филиал ФГБУ "ФКП Росреестра" по Сахалинской области|</xsl:text>
    <xsl:text>|49.002|Филиал ФГБУ "ФКП Росреестра" по Магаданской области и Чукотскому автономному округу|</xsl:text>
    <xsl:text>|27.002|Филиал ФГБУ "ФКП Росреестра" по Хабаровскому краю|</xsl:text>
    <xsl:text>|25.002|Филиал ФГБУ "ФКП Росреестра" по Приморскому краю|</xsl:text>
    <xsl:text>|41.002|Филиал ФГБУ "ФКП Росреестра" по Камчатскому краю|</xsl:text>
    <xsl:text>|14.002|Филиал ФГБУ "ФКП Росреестра" по Республике Саха (Якутия)|</xsl:text>
    <xsl:text>|17.002|Филиал ФГБУ "ФКП Росреестра" по Республике Тыва|</xsl:text>
    <xsl:text>|75.002|Филиал ФГБУ "ФКП Росреестра" по Забайкальскому краю|</xsl:text>
    <xsl:text>|55.002|филиал ФГБУ "ФКП Росреестра" по Омской области|</xsl:text>
    <xsl:text>|54.002|Филиал ФГБУ "ФКП Росреестра" по Новосибирской области|</xsl:text>
    <xsl:text>|03.002|Филиал ФГБУ "ФКП Росреестра" по Республике Бурятия|</xsl:text>
    <xsl:text>|04.002|Филиал ФГБУ "ФКП Росреестра" по Республике Алтай|</xsl:text>
    <xsl:text>|24.002|Филиал ФГБУ "ФКП Росреестра" по Красноярскому краю|</xsl:text>
    <xsl:text>|19.002|Филиал ФГБУ "ФКП Росреестра" по Республике Хакасия|</xsl:text>
    <xsl:text>|42.002|Филиал ФГБУ "ФКП Росреестра" по Кемеровской области|</xsl:text>
    <xsl:text>|70.002|Филиал ФГБУ "ФКП Росреестра" по Томской области|</xsl:text>
    <xsl:text>|38.002|Филиал ФГБУ "ФКП Росреестра" по Иркутской области|</xsl:text>
    <xsl:text>|22.002|Филиал ФГБУ "ФКП Росреестра" по Алтайскому краю|</xsl:text>
    <xsl:text>|74.002|Филиал ФГБУ "ФКП Росреестра" по Челябинской области|</xsl:text>
    <xsl:text>|45.002|Филиал ФГБУ "ФКП Росреестра" по Курганской области|</xsl:text>
    <xsl:text>|66.002|Филиал ФГБУ "ФКП Росреестра" по Свердловской области|</xsl:text>
    <xsl:text>|86.002|Филиал ФГБУ "ФКП Росреестра" по Ханты-Мансийскому автономному округу - Югре|</xsl:text>
    <xsl:text>|89.002|Филиал ФГБУ "ФКП Росреестра" по Ямало-Ненецкому автономному округу|</xsl:text>
    <xsl:text>|72.002|Филиал ФГБУ "ФКП Росреестра" по Тюменской области|</xsl:text>
    <xsl:text>|63.002|Филиал ФГБУ "ФКП Росреестра" по Самарской области|</xsl:text>
    <xsl:text>|73.002|Филиал ФГБУ "ФКП Росреестра" по Ульяновской области|</xsl:text>
    <xsl:text>|58.002|Филиал ФГБУ "ФКП Росреестра" по Пензенской области|</xsl:text>
    <xsl:text>|56.002|Филиал ФГБУ "ФКП Росреестра" по Оренбургской области|</xsl:text>
    <xsl:text>|52.002|Филиал ФГБУ "ФКП Росреестра" по Нижегородской области|</xsl:text>
    <xsl:text>|43.002|Филиал ФГБУ "ФКП Росреестра" по Кировской области|</xsl:text>
    <xsl:text>|21.002|Филиал ФГБУ "ФКП Росреестра" по Чувашской Республике|</xsl:text>
    <xsl:text>|18.002|Филиал ФГБУ "ФКП Росреестра" по Удмуртской Республике|</xsl:text>
    <xsl:text>|16.002|Филиал ФГБУ "ФКП Росреестра" по Республике Татарстан|</xsl:text>
    <xsl:text>|13.002|Филиал ФГБУ "ФКП Росреестра" по Республике Мордовия|</xsl:text>
    <xsl:text>|12.002|Филиал ФГБУ "ФКП Росреестра"  по Республике Марий Эл|</xsl:text>
    <xsl:text>|02.002|Филиал ФГБУ "ФКП Росреестра" по Республике Башкортостан|</xsl:text>
    <xsl:text>|59.002|Филиал ФГБУ "ФКП Росреестра" по Пермскому краю|</xsl:text>
    <xsl:text>|64.002|Филиал ФГБУ "ФКП Росреестра" по Саратовской области|</xsl:text>
    <xsl:text>|26.002|Филиал ФГБУ "ФКП Росреестра" по Ставропольскому краю|</xsl:text>
    <xsl:text>|07.002|Филиал ФГБУ "ФКП Росреестра" по КБР|</xsl:text>
    <xsl:text>|20.002|Филиал ФГБУ "ФКП Росреестра" по Чеченской Республике|</xsl:text>
    <xsl:text>|06.002|Филиал ФГБУ "ФКП Росреестра" по Республике Ингушетия|</xsl:text>
    <xsl:text>|09.002|Филиал ФГБУ "ФКП Росреестра" по Карачаево-Черкесской републике|</xsl:text>
    <xsl:text>|05.002|Филиал ФГБУ "ФКП Росреестра" по Республике Дагестан|</xsl:text>
    <xsl:text>|15.002|Филиал ФГБУ "ФКП Росреестра" по Республике Осетия - Алания|</xsl:text>
    <xsl:text>|62.002|Филиал ФГБУ "ФКП Росреестра" по Рязанской области|</xsl:text>
    <xsl:text>|67.002|Филиал ФГБУ "ФКП Росреестра" по Смоленской области|</xsl:text>
    <xsl:text>|76.002|Филиал ФГБУ "ФКП Росреестра" по Ярославской области|</xsl:text>
    <xsl:text>|31.002|Филиал ФГБУ "ФКП Росреестра" по Белгородской области|</xsl:text>
    <xsl:text>|32.002|Филиал ФГБУ "ФКП Росреестра" по Брянской области|</xsl:text>
    <xsl:text>|33.002|Филиал ФГБУ "ФКП Росреестра" по Владимирской области|</xsl:text>
    <xsl:text>|36.002|Филиал ФГБУ "ФКП Росреестра" по Воронежской области|</xsl:text>
    <xsl:text>|68.002|Филиал ФГБУ "ФКП Росреестра" по Тамбовской области|</xsl:text>
    <xsl:text>|50.002|Филиал ФГБУ "ФКП Росреестра" по Московской области|</xsl:text>
    <xsl:text>|37.002|Филиал ФГБУ "ФКП Росреестра" по Ивановской области|</xsl:text>
    <xsl:text>|40.002|Филиал ФГБУ "ФКП Росреестра" по Калужской области|</xsl:text>
    <xsl:text>|77.003|Филиал ФГБУ "ФКП Росреестра" по Москве|</xsl:text>
    <xsl:text>|69.002|Филиал ФГБУ "ФКП Росреестра" по Тверской области|</xsl:text>
    <xsl:text>|44.002|Филиал ФГБУ "ФКП Росреестра" по Костромской области|</xsl:text>
    <xsl:text>|46.002|Филиал ФГБУ "ФКП Росреестра" по Курской области|</xsl:text>
    <xsl:text>|71.002|Филиал ФГБУ "ФКП Росреестра" по Тульской области|</xsl:text>
    <xsl:text>|48.002|Филиал ФГБУ "ФКП Росреестра" по Липецкой области|</xsl:text>
    <xsl:text>|57.002|Филиал ФГБУ "ФКП Росреестра" по Орловской области|</xsl:text>
    <xsl:text>|35.002|Филиал ФГБУ "ФКП Росреестра" по Вологодской области|</xsl:text>
    <xsl:text>|39.002|Филиал ФГБУ "ФКП Росреестра" по Калининградской области|</xsl:text>
  </xsl:template>
  <xsl:template name="dNetworkPoints">
    <xsl:text>|FILE|dNetworkPoints_v01.xsd|</xsl:text>
    <xsl:text>|NAME|Сведения о состоянии (сохранности) наружного знака пункта геодезической сети, центра пункта геодезической сети, марки центра пункта геодезической сети|</xsl:text>
    <xsl:text>|627001000000|Сохранился|</xsl:text>
    <xsl:text>|627002000000|Не обнаружен|</xsl:text>
    <xsl:text>|627003000000|Утрачен|</xsl:text>
  </xsl:template>
</xsl:stylesheet>
