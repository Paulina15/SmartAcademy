prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Edit mascota'
,p_alias=>'EDIT-MASCOTA'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit mascota'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220720004340'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2183281130753996)
,p_plug_name=>'Edit mascota'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8165136647772814)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMBRE,',
'       DESCRIPCION,',
'       ID_USUARIO,',
'       EMAIL,',
'       "id_modelo"',
'  from HK22_MASCOTA'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2189430939754017)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8187617575772824)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2189861894754017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2189430939754017)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2191228814754019)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2189430939754017)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2191712282754019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2189430939754017)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2192096468754020)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2189430939754017)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'ok'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150127818075373)
,p_name=>'P25_ID_MODELO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT email',
'FROM HK22_usuario ',
'WHERE upper(EMAIL) = :APP_USER;'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'id_modelo'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183595279753998)
,p_name=>'P25_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183993820754003)
,p_name=>'P25_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>600
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2184377567754005)
,p_name=>'P25_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185216798754006)
,p_name=>'P25_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id',
'FROM HK22_usuario ',
'WHERE upper(EMAIL) = :APP_USER;'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2186651726754014)
,p_name=>'P25_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_source_plug_id=>wwv_flow_imp.id(2183281130753996)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT email',
'FROM HK22_usuario ',
'WHERE upper(EMAIL) = :APP_USER;'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189972038754017)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2189861894754017)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2190791424754019)
,p_event_id=>wwv_flow_imp.id(2189972038754017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2192877516754023)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2183281130753996)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edit mascota'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2193291980754023)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2192489291754020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2183281130753996)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edit mascota'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
