prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'clases del curso'
,p_alias=>'CLASES-DEL-CURSO'
,p_step_title=>'clases del curso'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{',
'    padding: 0%;',
'    border: none;',
'    border-style: none;',
'}',
'',
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
'.ins{',
'    margin-right: 10%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220723003938'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18570547437737625)
,p_plug_name=>'curso'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
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
'  where id=:P2_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18570422292737624)
,p_region_id=>wwv_flow_imp.id(18570547437737625)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18570332376737623)
,p_plug_name=>'curso'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
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
'  where id=:P2_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18570288893737622)
,p_region_id=>wwv_flow_imp.id(18570332376737623)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('Duraci\00F3n: &MINUTOS. min')
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'ID_INSTITUCION'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-graduation-cap'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2145700346075328)
,p_plug_name=>unistr('inscripci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(18570332376737623)
,p_region_css_classes=>'ins'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2146186107075333)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(2145700346075328)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>20
,p_plug_source=>'Estas inscrito en este curso'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM HK22_ESTUDIANTE ',
'WHERE upper(EMAIL) = :APP_USER',
'AND ID_CURSO = :P2_ID'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1575605299187000)
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
 p_id=>wwv_flow_imp.id(1576202086187002)
,p_plug_name=>'clases del curso'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8183377398772822)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'        "NOMBRE",',
'        "DESCRIPCION",',
'        sys.dbms_lob.getlength("VIDEO")"VIDEO",',
'        "NUM_CLASE",',
'        "ID_CURSO",',
'        "LINK",',
'        "MINUTOS"',
'from "HK22_CLASE"',
'where "ID_CURSO"= :P2_ID',
'order by "NUM_CLASE"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'clases del curso'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1576242532187003)
,p_name=>'clases del curso'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SACALABICI'
,p_internal_uid=>9598924142751476
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1576591093187189)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1578160782187190)
,p_db_column_name=>'NUM_CLASE'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Num Clase'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1577005985187189)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_ID_1:#ID#'
,p_column_linktext=>'#NOMBRE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1577335125187189)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1577721946187190)
,p_db_column_name=>'VIDEO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Video'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1578944547187191)
,p_db_column_name=>'LINK'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1579370646187191)
,p_db_column_name=>'MINUTOS'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Minutos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1492189655559847)
,p_db_column_name=>'ID_CURSO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Id Curso'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1579766739188344)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'96025'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUM_CLASE:NOMBRE:DESCRIPCION:MINUTOS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2145755658075329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2145700346075328)
,p_button_name=>'inscribirse'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inscribirse'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM HK22_ESTUDIANTE ',
'WHERE upper(EMAIL) = :APP_USER',
'AND ID_CURSO = :P2_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2147184031075343)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ID:&P2_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2145755658075329)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1492035991559846)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1576202086187002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2145897734075330)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2145755658075329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2145964494075331)
,p_event_id=>wwv_flow_imp.id(2145897734075330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO HK22_ESTUDIANTE',
'(ID_USUARIO, ID_CURSO, EMAIL, COMPLETADO)',
'SELECT id as ID_USUARIO,',
'       :P2_ID as ID_CURSO,',
'       :APP_USER as EMAIL,',
'       ''No'' as COMPLETADO',
'FROM HK22_usuario ',
'WHERE upper(EMAIL) = :APP_USER;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
