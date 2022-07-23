prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Equipos'
,p_alias=>'EQUIPOS'
,p_step_title=>'Equipos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{',
'    padding: 0%;',
'    border: none;',
'    border-style: none;',
'}',
'.contet_user{',
'    margin: 0%;',
'    background-image: url(#APP_FILES#11.jpg);',
'    background-size: cover;',
'}',
'.contet_user2{',
'    margin: 0%;',
'    background-image: url(#APP_FILES#10.jpg);',
'    background-size: cover;',
'}',
'.contet_user3{',
'    margin: 0%;',
'    background-image: url(#APP_FILES#9.jpg);',
'    background-size: cover;',
'}',
'.contet_user4{',
'    margin: 0%;',
'    background-image: url(#APP_FILES#8.jpg);',
'    background-size: cover;',
'}',
'.region_default{',
'    padding: 0px;',
'    margin: 0px;',
'}',
'.a-CardView-items--grid{',
'    margin: auto;',
'    display: block;',
'}',
'.a-CardView{',
'    border:none;',
'    background-color: transparent;',
'}',
'.a-CardView img{',
'    height: 30em;',
'}',
'h1{',
'    margin: 0px;',
'    padding: 0px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220722235829'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18450122565205088)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8195702690772827)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8090311128772780)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(8255360013772855)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35121922454511152)
,p_plug_name=>'team'
,p_region_css_classes=>'contet_user'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35137555437526685)
,p_plug_name=>'user_data'
,p_parent_plug_id=>wwv_flow_imp.id(35121922454511152)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=1',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18571491272737634)
,p_region_id=>wwv_flow_imp.id(35137555437526685)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36577654444782064)
,p_plug_name=>'foto user'
,p_parent_plug_id=>wwv_flow_imp.id(35121922454511152)
,p_region_css_classes=>'region'
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where id=:P51_ID',
'and foto is null'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18443413908197466)
,p_region_id=>wwv_flow_imp.id(36577654444782064)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'image_user'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46828261896638537)
,p_plug_name=>'team2'
,p_region_css_classes=>'contet_user2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46843894879654070)
,p_plug_name=>'user_data'
,p_parent_plug_id=>wwv_flow_imp.id(46828261896638537)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18430137291848675)
,p_region_id=>wwv_flow_imp.id(46843894879654070)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48283993886909449)
,p_plug_name=>'foto user'
,p_parent_plug_id=>wwv_flow_imp.id(46828261896638537)
,p_region_css_classes=>'region'
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=2'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where id=:P51_ID',
'and foto is null'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18429323250848674)
,p_region_id=>wwv_flow_imp.id(48283993886909449)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'image_user'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58539035285819612)
,p_plug_name=>'team3'
,p_region_css_classes=>'contet_user3'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58554668268835145)
,p_plug_name=>'user_data'
,p_parent_plug_id=>wwv_flow_imp.id(58539035285819612)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=21',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18425817872794985)
,p_region_id=>wwv_flow_imp.id(58554668268835145)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59994767276090524)
,p_plug_name=>'foto user'
,p_parent_plug_id=>wwv_flow_imp.id(58539035285819612)
,p_region_css_classes=>'region'
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=21'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where id=:P51_ID',
'and foto is null'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18424922730794983)
,p_region_id=>wwv_flow_imp.id(59994767276090524)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'image_user'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70251657339002885)
,p_plug_name=>'team4'
,p_region_css_classes=>'contet_user4'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70267290322018418)
,p_plug_name=>'user_data'
,p_parent_plug_id=>wwv_flow_imp.id(70251657339002885)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=22',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18423860664792786)
,p_region_id=>wwv_flow_imp.id(70267290322018418)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71707389329273797)
,p_plug_name=>'foto user'
,p_parent_plug_id=>wwv_flow_imp.id(70251657339002885)
,p_region_css_classes=>'region'
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from HK22_EQUIPO',
' where id=22'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where id=:P51_ID',
'and foto is null'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18423079132792786)
,p_region_id=>wwv_flow_imp.id(71707389329273797)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'image_user'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18571290387737632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18450122565205088)
,p_button_name=>'Test'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Realizar Test'
,p_button_position=>'CREATE'
);
wwv_flow_imp.component_end;
end;
/
