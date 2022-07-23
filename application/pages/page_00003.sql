prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Mascota'
,p_alias=>'MASCOTA'
,p_step_title=>'Mascota'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-mediaImg {',
'    height: 300px',
';',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220723030123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2149637509075368)
,p_plug_name=>'New'
,p_icon_css_classes=>'img'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select mm.ID,',
'        mm.NOMBRE,',
'        mm.FOTO,',
'        mm.DESCRIPCION,',
'        mm.NIVEL,',
'        mm.TIPO,',
'        mm.COLOR,',
'        mm.MIN_PUNTOS,',
'        mm.MAX_PUNTOS,',
'        ''Adoptar'' as adoptar',
'from sys.dual',
'join HK22_MODELO_MASCOTA mm',
'on 1=1',
'join HK22_usuario u',
'on 1=1',
'WHERE upper(EMAIL) = :APP_USER ',
'and u.puntos < mm.MAX_PUNTOS',
'and u.puntos >= mm.MIN_PUNTOS'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2150268623075374)
,p_region_id=>wwv_flow_imp.id(2149637509075368)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'Nivel: &NIVEL.'
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'img'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2150352110075375)
,p_card_id=>wwv_flow_imp.id(2150268623075374)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Adoptar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:CR,35:P35_ID_MODELO:&ID.'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'adoptar'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2200133821754036)
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
wwv_flow_imp.component_end;
end;
/
