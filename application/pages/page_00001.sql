prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Talent22'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.div{',
'    width: 100%;',
'    margin: 0%;',
'    height: 500px;',
'    overflow-y: hidden;',
'}',
'.div2{',
'    overflow-y: hidden;',
'    width: 25%;',
'    margin: 0%;',
'    background-color: rgba(0,0,0,0.5);',
'    height: 500px;',
'    padding: 3%;',
'}',
'',
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
'.div h2{',
'    color: #0cc9f8;',
'    margin-bottom: 0%;',
'}',
'.div h5{',
'    font-weight: lighter;',
'    font-size: 9pt;',
'    margin-top: 0%;',
'    margin-bottom: 5%;',
'}',
'.t-Body-contentInner{',
'    padding: 0%;',
'    overflow-x: hidden;',
'}',
'h1{',
'    text-decoration-line: underline;',
'}',
't1{',
'    text-decoration-line: underline;',
'    font-size: 32px;',
'    margin-left: 5%',
'}',
't2{',
'    text-decoration-line: underline;',
'    font-size: 32px;',
'    text-align: center;',
'}',
'',
'',
'.center1 {',
'    margin-left: 60%',
'}',
'',
'.center2 {',
'    margin-left: 30%',
'}',
'',
'.center3 {',
'    margin-left: 285%',
'}',
'',
'.topMar {',
'    margin-top: 5%',
'}',
'',
'.topMar2 {',
'    margin-top: 20%;',
'    margin-left: 5%;',
'}',
'.topMar3 {',
'    margin-top: 20%;',
'    margin-left: 50%;',
'}',
'.topMar4 {',
'    margin-top: 40%;',
'    margin-bottom: 20%;',
'}',
'.topMar5 {',
'    margin-top: 25%;',
'}',
'.topMar6 {',
'    margin-top: 15%;',
'}',
'',
'',
'',
'.text1 {',
'   margin-left: 13%;',
'   margin-right: 10%;',
'   font-size: 20px;',
'   margin-top: 30px;',
'   margin-bottom: 90px;',
'}',
'.text2 {',
'   margin-left: 26%;',
'   margin-right: 5%;',
'   font-size: 20px;',
'   margin-top: 30px;',
'   margin-bottom: 50px;',
'}',
'.text3 {',
'   margin-left: 5%;',
'   margin-right: 20%;',
'   font-size: 20px;',
'   margin-top: 30px;',
'   margin-bottom: 50px;',
'}',
'',
'.card{',
'    margin: 3%;',
'}',
'',
'p{',
'    text-align: justify;',
'}',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220722235435'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18571696396737636)
,p_plug_name=>'lista'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--inlineIcons:t-Tabs--fillLabels'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(8919846843676730)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(8243394351772849)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133376739146364)
,p_plug_name=>'Nosotros Info'
,p_region_template_options=>'margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>60
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<t1>Nosotros</t1>',
'',
'<div class="text1">',
'    ',
'    <p>',
unistr('       Smart Academy es una herramienta que busca facilitar el acceso a una educaci\00F3n competente donde al mismo tiempo se vaya creando un curriculum y el usuario descubra'),
unistr('cuales son sus fortalezas como resultado de su desempe\00F1o y elecci\00F3n de cursos.'),
'    </p>',
'    ',
'    <p>',
unistr('        Nuestro principal motor es ayudar al mayor numero de personas a acceder a una educaci\00F3n completa que ademas le facilite la entreda a universidades que le ayuden a '),
'desarrollar su maximo potencial, ya que al ser parte de la comunidad de Smart Academy no solo se obtiene conocimiento sino que tambien la visibilidad de diferentes ',
'escuelas que esten interesadas en el perfil que desarrolles en la plataforma.',
'',
'    </p>',
'    ',
'   ',
'    ',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134206281146372)
,p_plug_name=>'New'
,p_region_css_classes=>'card'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HK22_AREA'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1491027409559836)
,p_region_id=>wwv_flow_imp.id(134206281146372)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1491198206559837)
,p_card_id=>wwv_flow_imp.id(1491027409559836)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:CR,6:P6_ID:&ID.'
,p_link_attributes=>'&ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8461258662548401)
,p_plug_name=>'carrusel'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-cycle5s:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(8142342362772803)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8461426378548403)
,p_plug_name=>'nota1'
,p_parent_plug_id=>wwv_flow_imp.id(8461258662548401)
,p_region_css_classes=>'div'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITULO,',
'       SUBTITULO,',
'       TEXTO,',
'       IMAGEN',
'  from HOME',
'  where id=1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(10776246437621041)
,p_region_id=>wwv_flow_imp.id(8461426378548403)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11210870016257623)
,p_plug_name=>'nota2'
,p_parent_plug_id=>wwv_flow_imp.id(8461258662548401)
,p_region_css_classes=>'div'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITULO,',
'       SUBTITULO,',
'       TEXTO,',
'       IMAGEN',
'  from HOME',
'  where id=21'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11210988306257624)
,p_region_id=>wwv_flow_imp.id(11210870016257623)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11211014189257625)
,p_plug_name=>'nota3'
,p_parent_plug_id=>wwv_flow_imp.id(8461258662548401)
,p_region_css_classes=>'div'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITULO,',
'       SUBTITULO,',
'       TEXTO,',
'       IMAGEN',
'  from HOME',
'  where id=22'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11211159550257626)
,p_region_id=>wwv_flow_imp.id(11211014189257625)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11211253414257627)
,p_plug_name=>'nota3'
,p_parent_plug_id=>wwv_flow_imp.id(8461258662548401)
,p_region_css_classes=>'div'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITULO,',
'       SUBTITULO,',
'       TEXTO,',
'       IMAGEN',
'  from HOME',
'  where id=23'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11211384958257628)
,p_region_id=>wwv_flow_imp.id(11211253414257627)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8462155340548410)
,p_plug_name=>'areas'
,p_region_template_options=>'margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<t1>Areas</t1>',
'',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8462268782548411)
,p_plug_name=>'Mision Info'
,p_region_template_options=>'margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>70
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="center1">',
unistr('<t2 >Misi\00F3n</t2>'),
'</div>',
'<div class="text2">',
'<p>',
unistr('  Brindar una educaci\00F3n completa y competitiva, para para fortalecer conocimientos en las areas de STEM e idiomas.'),
'</p>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8462381396548412)
,p_plug_name=>'Vision Info'
,p_region_template_options=>'margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="center2">',
unistr('<t1 >Visi\00F3n</t1>'),
'</div>',
'<div class="text3">',
'<p>',
'    Ser la plataforma educativa con mayor alcance en el mundo.',
'</p>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
