prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>unistr('Edici\00F3n de Noticias ')
,p_alias=>unistr('EDICI\00D3N-DE-NOTICIAS')
,p_step_title=>unistr('Edici\00F3n de Noticias ')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.titulo{',
'    font-size: 30pt;',
'}',
'img{',
'    height: 300%;',
'    ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220707020244'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11238260136431809)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8183377398772822)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID","TITULO","SUBTITULO","TEXTO",sys.dbms_lob.getlength("IMAGEN")"IMAGEN"',
'from "HOME"',
'order by id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11238659832431809)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Buscar'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SACALABICI'
,p_internal_uid=>11238659832431809
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11238746099431810)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11239102849431811)
,p_db_column_name=>'TITULO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Titulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11239588843431811)
,p_db_column_name=>'SUBTITULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subtitulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11239946300431811)
,p_db_column_name=>'TEXTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Texto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11240300971431812)
,p_db_column_name=>'IMAGEN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Imagen'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:HOME:IMAGEN:ID::::::::'
,p_static_id=>'imgs'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11242864341432236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112429'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TITULO:SUBTITULO:TEXTO:IMAGEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21999295110139752)
,p_plug_name=>unistr('Secci\00F3n de eventos')
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="titulo"> Tabla de noticias</p>',
'		<hr><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11325653569012559)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>30
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM HK22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11241462696431820)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11238260136431809)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11241928435431820)
,p_event_id=>wwv_flow_imp.id(11241462696431820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11238260136431809)
);
wwv_flow_imp.component_end;
end;
/
