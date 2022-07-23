prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Detalles del evento'
,p_alias=>'DETALLES-DEL-EVENTO'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('INFORMACI\00D3N DE LA RENTA')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button{',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    text-align: center;  ',
'    height:40px; ',
'    width:160px;',
'    top:50px;',
'}'))
,p_step_template=>wwv_flow_imp.id(8120069455772794)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'100'
,p_dialog_width=>'600'
,p_dialog_css_classes=>'t-Dialog--pullOutRight'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220707020652'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10877432146249906)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<H3> Detalles del evento: <H3>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10877527058249907)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<H3> Detalles de la bicicleta: <H3>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10877629897249908)
,p_plug_name=>'InfoBici'
,p_region_template_options=>'t-Form--standardPadding:t-Form--large:t-Form--stretchInputs:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from bici',
'where id=:P30_ID_BICI',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(10877726801249909)
,p_region_id=>wwv_flow_imp.id(10877629897249908)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>N\00FAmero de bicicleta rentada: &NUMERO.</p>'),
'<p>Rodada: &RODADA.''''</p>',
'<p>Cuadro: &CUADRO.</p>',
'',
''))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11196746555240549)
,p_plug_name=>'Detalles del evento'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RENTA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11199861129240560)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8187617575772824)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21592684825215361)
,p_plug_name=>'InfoEvento'
,p_region_template_options=>'t-Form--standardPadding:t-Form--large:t-Form--stretchInputs:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from evento',
'where id=:P30_ID_EVENTO'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11213984758259755)
,p_region_id=>wwv_flow_imp.id(21592684825215361)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Fecha y hora: &FECHA_HORA.</p>',
''))
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Distancia: &DISTANCIA. Kms.   ',
'Nivel: &NIVEL. </br>',
'Inicio del recorrido: &PUNTOPARTIDA.',
'</p>',
'<p>Recomendaciones:</p>&RECOMENDACIONES.'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11201606772240564)
,p_button_sequence=>80
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar renta'
,p_button_execute_validations=>'N'
,p_confirm_message=>unistr('\00BFEst\00E1s seguro de eliminar esta renta?')
,p_confirm_style=>'danger'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM evento',
'WHERE FECHA_HORA > SYSTIMESTAMP AT TIME ZONE ''America/Mexico_City''+1/24',
'and id=:P30_ID_EVENTO'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>5
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11200255584240560)
,p_button_sequence=>90
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>unistr('Cancelar eliminaci\00F3n')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11209117253257606)
,p_branch_name=>'go 8'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11228531407411630)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>30
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM HK22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11197067156240550)
,p_name=>'P30_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_item_source_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11197421547240556)
,p_name=>'P30_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_item_source_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11197879961240557)
,p_name=>'P30_ID_EVENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_item_source_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_source=>'ID_EVENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11198267323240558)
,p_name=>'P30_ID_BICI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_item_source_plug_id=>wwv_flow_imp.id(11196746555240549)
,p_source=>'ID_BICI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11200386224240560)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11200255584240560)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11201139176240562)
,p_event_id=>wwv_flow_imp.id(11200386224240560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11203285695240566)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11196746555240549)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Detalles del evento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11217253135301342)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Eliminar renta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE BICI',
'SET ESTADO = ''DISPONIBLE''',
'WHERE id = :P30_ID_BICI;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11201606772240564)
,p_process_success_message=>'Renta eliminada'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11203696286240566)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11200255584240560)
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11202869278240566)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11196746555240549)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Detalles del evento'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
