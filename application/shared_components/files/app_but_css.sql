prompt --application/shared_components/files/app_but_css
begin
--   Manifest
--     APP STATIC FILES: 103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E627574746F6E207B0A202020206261636B67726F756E642D636F6C6F723A20233443414635303B202F2A20477265656E202A2F0A20202020626F726465723A206E6F6E653B0A20202020636F6C6F723A2077686974653B0A2020202070616464696E67';
wwv_flow_imp.g_varchar2_table(2) := '3A203135707820333270783B0A20202020746578742D616C69676E3A2063656E7465723B0A20202020746578742D6465636F726174696F6E3A206E6F6E653B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A20202020666F6E742D';
wwv_flow_imp.g_varchar2_table(3) := '73697A653A20313670783B0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10277001149542393)
,p_file_name=>'app-but.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
