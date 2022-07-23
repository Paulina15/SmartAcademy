prompt --application/shared_components/navigation/lists/información
begin
--   Manifest
--     LIST: Información
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8312798809864277)
,p_name=>unistr('Informaci\00F3n')
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'null,',
'',
'ENTRY_TEXT, ',
'',
'ENTRY_TARGET, ',
'',
'''YES'' AS is_current,',
'',
'NVL(ENTRY_IMAGE,ENTRY_ATTRIBUTE_01) AS LOGO_IMAGE,',
'',
'SUBSTR(ENTRY_TARGET, INSTR(ENTRY_TARGET, '':'', 1, 1)+1 , INSTR(ENTRY_TARGET, '':'', 1, 2) - INSTR(ENTRY_TARGET, '':'', 1, 1)-1 )  AS PAGE_ID',
'',
'from APEX_APPLICATION_LIST_ENTRIES',
'',
'where APPLICATION_ID = 100;',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
