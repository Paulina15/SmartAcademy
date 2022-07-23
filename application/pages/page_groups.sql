prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8281392666772872)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
