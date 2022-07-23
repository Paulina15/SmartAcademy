prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_page.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>unistr('cursos por \00E1rea')
,p_alias=>'CURSOS-POR-AREA'
,p_step_title=>unistr('Cursos por \00E1rea')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{',
'    padding: 0%;',
'}',
'.estilo1{',
'    background-color: #e8f80c;',
'    color: rgb(0, 0, 0);',
'    -webkit-font-smoothing: antialiased;',
'    font-family: ''Arial Narrow Bold'', sans-serif;',
'    padding-left: 2%;',
'}',
'.ubicacion{',
'    font-size: 16pt;',
'}',
'.estilo3{',
'    -webkit-font-smoothing: antialiased;',
'    font-family: ''Arial Narrow Bold'', sans-serif;',
'    font-size: 15pt;',
'    margin-top: 2%;',
'    margin-bottom: 2%;',
'    padding-left: 1%;',
'    line-height: 40px;',
'}',
'.curso{',
'    height:10em;',
'}',
'.cursosB{',
'    margin: 2%;',
'}',
'.tutor{',
'    border-style: none;',
'    box-shadow: none;',
'    background-color: transparent;',
'    height: 80%;',
'}',
'.tutor img{',
'    height: 90%;',
'}',
'.buscar {',
'  padding-left: 15%;',
'  padding-right: 15%;',
'}',
'.div{',
'    width: 100%;',
'    margin: 0%;',
'    height: 500px;',
'    overflow-y: hidden;',
'}',
'.div .a-CardView-items--grid {',
'    grid-template-columns:none;',
'}',
'.a-CardView-media--fit .a-CardView-mediaImg{',
'    object-fit: fill;',
'}',
'@media (max-width:400px){',
'    .div{',
'        height: 200px;',
'    }',
'    .div2{',
'        height: 200px;',
'        width: 95%;',
'    }',
'}',
'.div .a-CardView-header{',
'    padding-top: 0%;',
'    padding-bottom: 0%;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220723032655'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19032977341978446)
,p_plug_name=>'contenedor'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(8151651230772808)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19032832561978445)
,p_plug_name=>'Cursos'
,p_parent_plug_id=>wwv_flow_imp.id(19032977341978446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133933177146370)
,p_plug_name=>'busqueda'
,p_parent_plug_id=>wwv_flow_imp.id(19032832561978445)
,p_region_css_classes=>'buscar'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(16753648412423856)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16753648412423856)
,p_plug_name=>'curso'
,p_parent_plug_id=>wwv_flow_imp.id(19032832561978445)
,p_region_css_classes=>'cursosB'
,p_region_template_options=>'margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMBRE,',
'       FOTO,',
'       ID_AREA,',
'       ID_INSTITUCION,',
'       MINUTOS,',
'       DESCRIPCION',
'  from HK22_CURSO',
'  where ID_AREA=:P6_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8460738329511049)
,p_region_id=>wwv_flow_imp.id(16753648412423856)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'MINUTOS'
,p_body_adv_formatting=>true
,p_body_html_expr=>'<p>&DESCRIPCION.</p>'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'curso'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8998752876999236)
,p_card_id=>wwv_flow_imp.id(8460738329511049)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:CR,2:P2_ID:&ID.'
,p_link_attributes=>'&ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19032581013978442)
,p_plug_name=>'Tutores'
,p_parent_plug_id=>wwv_flow_imp.id(19032977341978446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19032446665978441)
,p_plug_name=>'Tutor'
,p_parent_plug_id=>wwv_flow_imp.id(19032581013978442)
,p_region_css_classes=>'cursosB'
,p_region_template_options=>'margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.FOTO, d.*',
'from hk22_usuario u ',
'join (select u.id,',
'    u.NOMBRE,',
'    u.DESCRIPCION,',
'    count(k.id),',
'    i.NOMBRE as INSTITUCION',
'  from HK22_TUTOR t',
'  join HK22_USUARIO u',
'  on t.ID_USUARIO= u.id',
'  join HK22_INSTITUCION i',
'  on u.ID_INSTITUCION= i.id',
'  left join hk22_kudos k',
'  on k.ID_TUTOR= u.id',
'  where t.ID_AREA=:P6_ID',
'  GROUP BY u.id,u.NOMBRE, u.DESCRIPCION, i.NOMBRE) d',
'on d.id= u.id'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(19032338577978440)
,p_region_id=>wwv_flow_imp.id(19032446665978441)
,p_layout_type=>'GRID'
,p_card_css_classes=>'tutor'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'INSTITUCION'
,p_body_adv_formatting=>true
,p_body_html_expr=>'<p>&DESCRIPCION.</p>'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'Felicitaciones: &"COUNT(K.ID)".'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'COVER'
,p_media_css_classes=>'tutor'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(19032265655978439)
,p_card_id=>wwv_flow_imp.id(19032338577978440)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('Agendar asesor\00EDa')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:CR,39:P2_ID,P39_ID_RECEPTOR:&ID.,&ID.'
,p_link_attributes=>'&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18573496747737654)
,p_card_id=>wwv_flow_imp.id(19032338577978440)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'KUDOS'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:CR,45:P45_TIPO,P45_ID_TUTOR:TUTOR,&ID.'
,p_link_attributes=>'&ID.'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-heart'
,p_action_css_classes=>'kudos'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19032167600978438)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(19032581013978442)
,p_region_css_classes=>'buscar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(19032446665978441)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10098578951840401)
,p_plug_name=>'Explicacion'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="estilo3">',
unistr('<p> \00A1Hora de poner las manos a la obra! </p>'),
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19578446406645023)
,p_plug_name=>'foto'
,p_region_css_classes=>'div'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, foto as imagen',
'from hk22_area',
'where id= :P6_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7899322369722368)
,p_region_id=>wwv_flow_imp.id(19578446406645023)
,p_layout_type=>'GRID'
,p_component_css_classes=>'div'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEN'
,p_media_display_position=>'BACKGROUND'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10840128193018222)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>20
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM HK22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19032080273978437)
,p_name=>'P6_SEARCH_T'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19032167600978438)
,p_prompt=>'Search T'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134096551146371)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133933177146370)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1491264156559838)
,p_name=>'P6_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16753648412423856)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18572833223737648)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19032446665978441)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18572792460737647)
,p_event_id=>wwv_flow_imp.id(18572833223737648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19032446665978441)
);
wwv_flow_imp.component_end;
end;
/
