prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>unistr('Olvid\00E9 mi contrase\00F1a')
,p_alias=>unistr('OLVID\00C9-MI-CONTRASE\00D1A')
,p_step_title=>unistr('Olvid\00E9 mi contrase\00F1a')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.titulo{',
'    font-size: 30pt;',
'}',
'',
'.label1{',
'    font-size: 20pt;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220703032215'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10857890787201004)
,p_plug_name=>unistr('T\00EDtulo')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="titulo"> Recuperar contrase\00F1a </p>'),
'		<hr><br><br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10858037560201006)
,p_plug_name=>'Formulario'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10858437401201010)
,p_plug_name=>'INGRESA LOS SIGUIENTES DATOS:'
,p_parent_plug_id=>wwv_flow_imp.id(10858037560201006)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10858532201201011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10858437401201010)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10858304020201009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10858437401201010)
,p_button_name=>'Aceptar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11484693302871519)
,p_branch_name=>'Redireccionar'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_EMAIL:&P27_EMAIL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10858304020201009)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10858254418201008)
,p_name=>'P27_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10858437401201010)
,p_prompt=>unistr('Correo electr\00F3nico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_icon_css_classes=>'fa-envelope-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_help_text=>unistr('Introduce el correo al que se le mandar\00E1 la verificaci\00F3n para cambiar la contrase\00F1a.')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11484012354871513)
,p_name=>'P27_PREGUNTA'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10858437401201010)
,p_prompt=>'Pregunta de seguridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\00BFCu\00E1l fue/es el nombre de tu primer mascota?;\00BFCu\00E1l fue/es el nombre de tu primer mascota?,\00BFCu\00E1l fue el nombre de la primera escuela a la que fuiste?;\00BFCu\00E1l fue el nombre de la primera escuela a la que fuiste?,\00BFCu\00E1l es el nombre de tu prima mayo')
||unistr('r?;\00BFCu\00E1l es el nombre de tu prima mayor?')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Elige tu pregunta de seguridad que elegiste al crear tu cuenta.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11484150386871514)
,p_name=>'P27_RESPUESTA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10858437401201010)
,p_prompt=>'Respuesta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Ingresa tu respuesta a tu pregunta de seguridad.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10858614872201012)
,p_validation_name=>'Usuario existe'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMAIL',
' from HK22_USUARIO ',
' where upper(email) = upper(:P27_EMAIL);'))
,p_validation_type=>'EXISTS'
,p_error_message=>'El usuario no existe.'
,p_validation_condition=>'P27_EMAIL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(10858254418201008)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11484462013871517)
,p_validation_name=>'Validar pregunta'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PREGUNTA',
'FROM HK22_USUARIO',
'WHERE upper(pregunta) = upper(:P27_PREGUNTA);'))
,p_validation_type=>'EXISTS'
,p_error_message=>unistr('Esa no es la pregunta que hab\00EDas elegido al crear tu cuenta')
,p_validation_condition=>'P27_PREGUNTA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(11484012354871513)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11484591245871518)
,p_validation_name=>'Validad respuesta'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RESPUESTA',
'FROM HK22_USUARIO',
'WHERE upper(respuesta) = upper(:P27_RESPUESTA);'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Respuesta incorrecta'
,p_validation_condition=>'P27_RESPUESTA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(11484150386871514)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
