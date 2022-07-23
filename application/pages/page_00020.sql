prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Modal tabla eventos'
,p_alias=>'MODAL-TABLA-EVENTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'FORMULARIO EVENTO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220707020108'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10070249795784081)
,p_plug_name=>'Tabla eventos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8165136647772814)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVENTO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10079071548784100)
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
 p_id=>wwv_flow_imp.id(10079481615784100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10079071548784100)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10080891334784106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10079071548784100)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>'Eliminar evento'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10081235850784106)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10079071548784100)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10081638685784106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10079071548784100)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear evento'
,p_button_position=>'NEXT'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10844843397066235)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>20
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM HK22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10070595993784082)
,p_name=>'P20_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
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
 p_id=>wwv_flow_imp.id(10070950435784090)
,p_name=>'P20_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>150
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(8252555287772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Introducir el nombre oficial del evento'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10071336502784092)
,p_name=>'P20_FECHA_HORA'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Fecha y hora'
,p_source=>'FECHA_HORA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(8252555287772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Seleccionar la fecha y hora en la que se llevar\00E1 acabo el evento')
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10073375942784094)
,p_name=>'P20_DISTANCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Distancia'
,p_source=>'DISTANCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Introducir la cantidad total de kil\00F3metros que ser\00E1n recorridos durante el evento.')
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10073772239784094)
,p_name=>'P20_NIVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Nivel'
,p_source=>'NIVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(8252555287772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>unistr('Especificar el n\00FAmero de nivel del evento.')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10074132473784094)
,p_name=>'P20_RECOMENDACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Recomendaciones'
,p_source=>'RECOMENDACIONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Ingresar recomendaciones a tomar en cuenta en el evento para los ciclistas.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10074571768784095)
,p_name=>'P20_MIN_RENTA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>unistr('D\00EDas previos para habilitar renta')
,p_source=>'MIN_RENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(8252555287772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Introducir la cantidad de d\00EDas previos al evento para que sea habilitado el servicio de renta de bicicletas para las personas interesadas en participar en el evento.')
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10074939253784095)
,p_name=>'P20_MAPA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Mapa'
,p_source=>'MAPA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Para agregar un mapa a un respectivo recorrido se deber\00E1n tener '),
'    claros los puntos de partida y los puntos de llegada, ya que estos ',
unistr('    se necesitar\00E1n registrar en Google Maps.</p>'),
'<p>Los pasos para agregar un mapa son los siguientes: </p>',
'<ol>',
unistr('    <li>Abrir Google Maps en alg\00FAn navegador. </li>'),
'        <div align="center">',
'            <img src="#APP_FILES#mapa1.png" width="350" height="200">',
'        </div>',
unistr('    <li>Ingresar el punto de partida, las paradas (de ser as\00ED) y el punto de llegada.</li>'),
'        <div align="center">',
'                <img src="#APP_FILES#mapa2.png" width="350" height="200">',
'        </div>',
unistr('    <li>Una vez listo el recorrido, hacer click en el men\00FA de hamburguesa '),
unistr('        que est\00E1 en la esquina superior izquierda.</li>'),
'        <div align="center">',
'                <img src="#APP_FILES#mapa5.png" width="200" height="140">',
'        </div>',
unistr('    <li>Despu\00E9s, seleccionar la opci\00F3n \201Ccompartir o incorporar mapa\201D.</li>'),
'        <div align="center">',
'                <img src="#APP_FILES#mapa3.png" width="140" height="200">',
'        </div>',
unistr('    <li>Seleccionar la opci\00F3n \201CIncorporar un mapa\201D.</li>'),
unistr('    <li>Poner la opci\00F3n de \201Ctama\00F1o personalizado\201D e introducir los valores 1000 x 450.</li>'),
'        <div align="center">',
'                <img src="#APP_FILES#mapa6.png" width="350" height="150">',
'        </div>',
'    <li>Hacer click en "copiar HTML".</li>',
'    <li>Pegarlo en el campo "mapa".</li>',
'</ol>',
''))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10075376811784095)
,p_name=>'P20_MINUTOS_ANTES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Tiempo de llegada previo a la hora (Mins)'
,p_source=>'MINUTOS_ANTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Introducir el tiempo previo en minutos en el que las personas deben de encontrarse en la ubicaci\00F3n para antes de la hora de inicio del evento.')
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11025842211407305)
,p_name=>'P20_PUNTOPARTIDA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Punto de Partida'
,p_source=>'PUNTOPARTIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>300
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Ubicaci\00F3n desde donde comienza la rodada.')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11025932215407306)
,p_name=>'P20_PUNTOLLEGADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_item_source_plug_id=>wwv_flow_imp.id(10070249795784081)
,p_prompt=>'Punto de Llegada'
,p_source=>'PUNTOLLEGADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(8251284600772853)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Ubicaci\00F3n donde termina la rodada.')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10071871976784093)
,p_validation_name=>'P20_FECHA_HORA must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P20_FECHA_HORA'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10071336502784092)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10079568811784100)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10079481615784100)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10080318756784103)
,p_event_id=>wwv_flow_imp.id(10079568811784100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10082492906784107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10070249795784081)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Modal tabla eventos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10082895980784108)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10082087304784107)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10070249795784081)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Modal tabla eventos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
