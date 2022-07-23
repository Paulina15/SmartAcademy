prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_imp.id(8090823729772780)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8286882609772884)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1260103646563643)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'tabla curso'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-abacus'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''MAESTRO'';'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1276735768768798)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'tabla clase'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''MAESTRO'';'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2193902191754024)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Mascota'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paw'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18981329530431076)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Instituciones'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33,37'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18536828940950871)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Profesores'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-graduation-cap'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18450693578205091)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Equipos'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-handshake-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp.component_end;
end;
/
