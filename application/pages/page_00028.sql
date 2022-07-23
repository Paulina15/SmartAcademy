prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>unistr('Actualizar contrase\00F1a')
,p_alias=>unistr('ACTUALIZACI\00D3N-CONTRASE\00D1A')
,p_step_title=>unistr('Poner nueva contrase\00F1a')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(8101739991772787)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220609234947'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10858919235201015)
,p_plug_name=>unistr('Actualizaci\00F3n de contrase\00F1a')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                    <div style = "text-align:center; color:white;">',
'                        <div style="font-size:1.3rem;">',
'                        	<b>',
unistr('                            Felicidades, ya est\00E1 verificada tu cuenta.<br>'),
unistr('                            <u> Cambia tu contrase\00F1a. </u>'),
'                            </b>                   ',
'                        </div>',
'                    </div>',
'                '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10859193633201017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10858919235201015)
,p_button_name=>'Aceptar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11484731202871520)
,p_branch_name=>'Redireccion'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.::P9999_USERNAME:&P28_EMAIL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10859193633201017)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10860021044201026)
,p_name=>'P28_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10858919235201015)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10860199640201027)
,p_name=>'P28_NUEVA_CONTRASENA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10858919235201015)
,p_prompt=>unistr('Nueva Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10860267945201028)
,p_name=>'P28_CONFIRMAR_CONTRASENA'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10858919235201015)
,p_prompt=>unistr('Confirmar Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10860377090201029)
,p_validation_name=>unistr('Validar contrase\00F1as')
,p_validation_sequence=>10
,p_validation=>':P28_NUEVA_CONTRASENA = :P28_CONFIRMAR_CONTRASENA'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Las contrase\00F1as no coinciden')
,p_associated_item=>wwv_flow_imp.id(10860199640201027)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10859901103201025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reseteo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                    BEGIN',
'                        UPDATE USUARIO',
'                           SET PASSWORD = toolkit.encrypt(:P28_CONFIRMAR_CONTRASENA)',
'                           ',
'                         WHERE EMAIL = :P28_EMAIL;',
'                    ',
'                        APEX_APPLICATION.g_print_success_message :=',
unistr('                            ''contrase\00F1a actualizada'';'),
'                    EXCEPTION',
'                        WHEN OTHERS',
'                        THEN',
unistr('                            APEX_APPLICATION.g_print_success_message := ''Contrase\00F1a no actualizada'';'),
'                    END;',
'               ',
'               '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10859193633201017)
);
wwv_flow_imp.component_end;
end;
/
