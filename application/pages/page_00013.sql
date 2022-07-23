prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Clase'
,p_alias=>'CLASE'
,p_step_title=>'clase'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView{',
'    border-style: none;',
'    background-color: transparent;',
'    box-shadow: none;',
'}',
'.a-CardView-badge{',
'    background-color: transparent;',
'}',
'.a-TMV-w-scroll{',
'    overflow: hidden;',
'}',
'.info{',
'    background-color: rgb(0, 0, 0);',
'}',
'.renta{',
'    margin-bottom: 20%;',
'}',
'.t-Region-buttons{',
'    display: table;',
'    margin: auto;',
'}',
'.t-Body-contentInner{',
'    padding: 0%;',
'    overflow: hidden;',
'}',
'',
'.datos .title{',
'    font-size: 20pt;',
'    font-weight: bold;',
'}',
'.aviso{',
'    background-color: rgb(255, 255, 255);',
'    border-radius:  2em;',
'    border-color: rgb(4, 146, 47) ;',
'    border-style: solid;',
'    border-width: 3pt;',
'    color: rgb(4, 146, 47);',
'    display: table;',
'    height: 30%;',
'    margin: auto;',
'    overflow: hidden;',
'    padding: 3%;',
'    margin-bottom: 2%;',
'    align-items: center;',
'    text-align: center;',
'}',
'.aviso div{',
'    font-weight: bold;',
'    padding-top: 5%;',
'}',
'',
'.aviso2 div{',
'    font-weight: bold;',
'    padding-top: 5%;',
'}',
'.mapa .t-Report-cell{',
'    padding: 0%;',
'}',
'.mapa thead{',
'    display: none;',
'}',
'',
'.avisoMenores{',
'    text-align: center;',
'    margin-top: 4%;',
'    margin-bottom: 1%;',
'}',
'',
'p {',
'    padding: 0px;',
'    margin: 0px;',
'}',
'',
'h3{',
'    padding-bottom: 0px;',
'    margin-bottom: 0px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220723004233'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2147576127075347)
,p_plug_name=>'aviso'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Clase terminada'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from hk22_asistencia ',
'WHERE upper(EMAIL) = :APP_USER',
'    and ID_CLASE = :P13_ID_1'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8999063224999239)
,p_name=>'Video'
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlightOff:t-Report--noBorders:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_grid_column_css_classes=>'mapa'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link',
'from HK22_CLASE',
'where id= :P13_id_1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132860299146359)
,p_query_column_id=>1
,p_column_alias=>'LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe width="885" height="498" src="#LINK#" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>',
'</iframe>'))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17482968774597788)
,p_plug_name=>'evento'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:margin-top-md:margin-bottom-none:margin-left-md:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'datos'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from hk22_clase',
'where id= :P13_id_1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8998813277999237)
,p_region_id=>wwv_flow_imp.id(17482968774597788)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<span class="title">&NOMBRE.</span>'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>clase numero &NUM_CLASE.</br>',
'    &DESCRIPCION. </br>',
'    </h4>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1492289264559848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17482968774597788)
,p_button_name=>'terminada'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Terminada'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from hk22_asistencia ',
'WHERE upper(EMAIL) = :APP_USER',
'    and ID_CLASE = :P13_ID_1'))
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8981158529890761)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_ID_1:&P13_ID_1.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10841952008034725)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>20
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM HK22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132490379146355)
,p_name=>'P13_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17482968774597788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9025937013049389)
,p_name=>'P13_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17482968774597788)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9026366129049389)
,p_name=>'P13_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17482968774597788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1492372165559849)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1492289264559848)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1492508038559850)
,p_event_id=>wwv_flow_imp.id(1492372165559849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO HK22_ASISTENCIA',
'(ID_USUARIO, ID_CLASE, EMAIL)',
'SELECT id as ID_USUARIO,',
'       :P13_ID_1 as ID_CURSO,',
'       :APP_USER as EMAIL',
'FROM HK22_usuario ',
'WHERE upper(EMAIL) = :APP_USER;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
