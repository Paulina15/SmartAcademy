prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Tipos de cuenta'
,p_alias=>'TIPOS-DE-CUENTA'
,p_step_title=>'Tipos de cuenta'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.button{',
'    margin: 1%;',
'}',
'.text{',
'    font-size: large;',
'    margin-bottom: 1%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220721233046'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19033820897978454)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19033114553978447)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_region_css_classes=>'text'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_source=>'Yo soy un/una:'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2970010539446673)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19033648479978453)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_button_name=>'Estudiante'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Estudiante'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:CR,22:P22_TIPO:ESTUDIANTE'
,p_button_css_classes=>'button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19033574912978452)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_button_name=>'Tutor_legal'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Tutor Legal'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:CR,22:P22_TIPO:PADRE'
,p_button_css_classes=>'button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19033488303978451)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_button_name=>'Tutor_academico'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Tutor Acad\00E9mico')
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:CR,22:P22_TIPO:TUTOR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19033369372978450)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_button_name=>'Maestro'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Maestro'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:CR,22:P22_TIPO:MAESTRO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19033143382978448)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(19033820897978454)
,p_button_name=>'Escuela'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Instituci\00F3n ')
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:CR,22:P22_TIPO:INSTITUCION'
);
wwv_flow_imp.component_end;
end;
/
