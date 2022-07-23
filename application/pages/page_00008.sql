prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Usuario '
,p_alias=>'USUARIO'
,p_step_title=>'Usuario '
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{',
'    padding: 0%;',
'}',
'.contet_user{',
'    background-color: rgb(59, 59, 59);',
'    margin: 0%;',
'}',
'.report_data{',
'    background-color: rgb(59, 59, 59);',
'}',
'.region_default{',
'    padding: 0px;',
'    margin: 0px;',
'}',
'.boton{',
'    margin-left: 1em;',
'}',
'h1{',
'    margin: 0px;',
'    padding: 0px;',
'}',
'',
'.image_user_content{',
'    width: 50%;',
'    margin: 0% 25% 5% 25%;',
'}',
'.image_user{',
'    width: 80%;',
'    margin: auto;',
'}',
'',
'.content_rents{',
'    padding: 0px;',
'    border-radius: 15px;',
'}',
'',
'.mis_rentas_titulo{',
'    border: none;',
'    padding: 0px;',
'    margin: 0px;',
'}',
'',
'.filas_mis_rentas{',
'    background-color: rgb(59, 59, 59);',
'    text-align: center;',
'    font-style: bold;',
'}',
'/*******************************************/',
'.a-CardView {',
'    border-style: none;',
'    box-shadow: none;',
'}',
'.renta{',
'    margin: auto auto 6% auto;',
'    display: table;',
'    width: -webkit-fill-available;',
'}',
'.renta .t-Report-wrap{',
'    width: -webkit-fill-available;',
'}',
'.t-Report-report{',
'    width:-webkit-fill-available;',
'}',
'/*+++++++++++++++++++++++++++++++++++++++++++++++++++*/',
'',
'.apex-rds-slider{',
'    display: none;',
'}',
'.titulo{',
'    margin-left: 2%;',
'    margin-right: 2%;',
'}',
'.imag img{',
'    height: 20em;',
'}',
'.contenedor{',
'    margin: auto;',
'    background-color: transparent;',
'    padding: 5%;',
'}',
'.linea{',
'    margin: 40%;',
'    width: 70%;',
'}',
'.lineah{',
'    background-color: rgb(0, 116, 188);',
'    margin-bottom: 0px;',
'}',
'.mensajes{',
'    margin: 0%;',
'    height: 600px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220723030446'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19031899972978435)
,p_plug_name=>'LINEAV'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>1
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<img class="linea" src="#APP_FILES#linea" atl="user_image">'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''ESTUDIANTE'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19031548921978432)
,p_plug_name=>'areas _tutor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''TUTOR'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19031770974978434)
,p_name=>'area_tutor'
,p_parent_plug_id=>wwv_flow_imp.id(19031548921978432)
,p_template=>wwv_flow_imp.id(8165136647772814)
,p_display_sequence=>20
,p_region_css_classes=>'contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.nombre',
'from hk22_area a',
'join hk22_tutor t',
'on a.id =t.id_area',
'WHERE upper(t.correo) = :APP_USER;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Selecciona tus \00E1reas de inter\00E9s')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19031672404978433)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>unistr('\00C1reas de inter\00E9s:')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19031272008978429)
,p_plug_name=>'Mensajes'
,p_region_css_classes=>'mensajes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19031201244978428)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(19031272008978429)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(8151651230772808)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19031115691978427)
,p_name=>'Todos'
,p_parent_plug_id=>wwv_flow_imp.id(19031201244978428)
,p_template=>wwv_flow_imp.id(8155645587772809)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id, m.NOMBRE as asunto, u.nombre as de, u.id as id_res',
'from HK22_MENSAJE m',
'join hk22_usuario u',
'on ID_EMISOR= u.id',
'join hk22_usuario u2',
'on ID_RECEPTOR= u2.id',
'where upper(u2.EMAIL) = :APP_USER'))
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
 p_id=>wwv_flow_imp.id(18787258029502055)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19030818359978424)
,p_query_column_id=>2
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>10
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_column_css_class=>'asunto'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:CR,26:P26_ID,P26_ID_RECEPTOR:#ID#,#ID_RES#'
,p_column_linktext=>'#ASUNTO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19029469712978411)
,p_query_column_id=>3
,p_column_alias=>'DE'
,p_column_display_sequence=>20
,p_column_heading=>'De'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18786853090502051)
,p_query_column_id=>4
,p_column_alias=>'ID_RES'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19030951688978426)
,p_name=>unistr('No le\00EDdo ')
,p_parent_plug_id=>wwv_flow_imp.id(19031201244978428)
,p_template=>wwv_flow_imp.id(8155645587772809)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id, m.NOMBRE as asunto, u.nombre as de, u.id as id_res',
'from HK22_MENSAJE m',
'join hk22_usuario u',
'on ID_EMISOR= u.id',
'join hk22_usuario u2',
'on ID_RECEPTOR= u2.id',
'where upper(u2.EMAIL) = :APP_USER',
'and m.VISTO=''No'''))
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
 p_id=>wwv_flow_imp.id(18787333795502056)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19030616487978422)
,p_query_column_id=>2
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>10
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:CR,26:P26_ID,P26_ID_RECEPTOR:#ID#,#ID_RES#'
,p_column_linktext=>'#ASUNTO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19029531937978412)
,p_query_column_id=>3
,p_column_alias=>'DE'
,p_column_display_sequence=>20
,p_column_heading=>'De'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18786952049502052)
,p_query_column_id=>4
,p_column_alias=>'ID_RES'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19030918231978425)
,p_name=>unistr('le\00EDdo ')
,p_parent_plug_id=>wwv_flow_imp.id(19031201244978428)
,p_template=>wwv_flow_imp.id(8155645587772809)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id, m.NOMBRE as asunto, u.nombre as de, u.id as id_res',
'from HK22_MENSAJE m',
'join hk22_usuario u',
'on ID_EMISOR= u.id',
'join hk22_usuario u2',
'on ID_RECEPTOR= u2.id',
'where upper(u2.EMAIL) = :APP_USER',
'and m.VISTO=''Si'''))
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
 p_id=>wwv_flow_imp.id(18787434469502057)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19030335575978420)
,p_query_column_id=>2
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>10
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:CR,26:P26_ID,P26_ID_RECEPTOR:#ID#,#ID_RES#'
,p_column_linktext=>'#ASUNTO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19029707972978413)
,p_query_column_id=>3
,p_column_alias=>'DE'
,p_column_display_sequence=>20
,p_column_heading=>'De'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18787111158502053)
,p_query_column_id=>4
,p_column_alias=>'ID_RES'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19030091697978417)
,p_name=>'enviados'
,p_parent_plug_id=>wwv_flow_imp.id(19031201244978428)
,p_template=>wwv_flow_imp.id(8155645587772809)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id, m.NOMBRE as asunto, u.nombre as para, u.id as id_res',
'from HK22_MENSAJE m',
'join hk22_usuario u',
'on ID_RECEPTOR= u.id',
'join hk22_usuario u2',
'on ID_EMISOR= u2.id',
'where upper(u2.EMAIL) = :APP_USER'))
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
 p_id=>wwv_flow_imp.id(18787570364502058)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19029997747978416)
,p_query_column_id=>2
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>10
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:CR,26:P26_ID,P26_ID_RECEPTOR:#ID#,#ID_RES#'
,p_column_linktext=>'#ASUNTO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19029800020978414)
,p_query_column_id=>3
,p_column_alias=>'PARA'
,p_column_display_sequence=>20
,p_column_heading=>'Para'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18787125798502054)
,p_query_column_id=>4
,p_column_alias=>'ID_RES'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18786775945502050)
,p_plug_name=>unistr('tutor\00EDas')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''TUTOR'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18784657453502029)
,p_plug_name=>'kudos'
,p_parent_plug_id=>wwv_flow_imp.id(18786775945502050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id, count(k.id)',
'from hk22_usuario u ',
'left join hk22_kudos k',
'on k.ID_TUTOR= u.id',
'WHERE upper(u.EMAIL) = :APP_USER',
'group by u.id;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18784531050502028)
,p_region_id=>wwv_flow_imp.id(18784657453502029)
,p_layout_type=>'GRID'
,p_card_css_classes=>'contenedor'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&"COUNT(K.ID)". Corazones recibidos'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-heart'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18784332966502026)
,p_card_id=>wwv_flow_imp.id(18784531050502028)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('Crear nueva asesor\00EDa ')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40:P40_ID_EMISOR:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18571728518737637)
,p_plug_name=>'New'
,p_region_css_classes=>'lineah'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''TUTOR'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2452643210649345)
,p_plug_name=>'mascota'
,p_region_css_classes=>'contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''ESTUDIANTE'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2452727359649346)
,p_plug_name=>'macota'
,p_parent_plug_id=>wwv_flow_imp.id(2452643210649345)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElECT m.id,',
'        m.nombre,',
'        m.descripcion,',
'        m.id_modelo,',
'        mm.foto,',
'        mm.nivel',
'FROM HK22_MASCOTA m',
'join HK22_MODELO_MASCOTA mm',
'on mm.id=id_modelo',
'WHERE upper(m.EMAIL) = :APP_USER;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2452838672649347)
,p_region_id=>wwv_flow_imp.id(2452727359649346)
,p_layout_type=>'GRID'
,p_card_css_classes=>'contenedor'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'Nivel: &NIVEL.'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'imag'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18570647136737626)
,p_card_id=>wwv_flow_imp.id(2452838672649347)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Adopciones'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:CR,3::'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2554652492749228)
,p_plug_name=>'Equipo'
,p_region_css_classes=>'contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''ESTUDIANTE'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2555705488749238)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(2554652492749228)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.ID,',
'       e.NOMBRE,',
'       e.DESCRIPCION,',
'       e.FOTO',
'  from HK22_EQUIPO e',
'  join HK22_USUARIO u',
'  on e.id= u.EQUIPO',
'  WHERE upper(u.EMAIL) = :APP_USER;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2555732938749239)
,p_region_id=>wwv_flow_imp.id(2555705488749238)
,p_layout_type=>'GRID'
,p_card_css_classes=>'contenedor'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'imag'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18570961808737629)
,p_card_id=>wwv_flow_imp.id(2555732938749239)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Realizar test de equipo'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51::'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'boton'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18570844026737628)
,p_card_id=>wwv_flow_imp.id(2555732938749239)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Ver Equipos'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51::'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'boton'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18570744965737627)
,p_card_id=>wwv_flow_imp.id(2555732938749239)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>30
,p_label=>'Ver Trofeos'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51::'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'boton'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11806175966519824)
,p_plug_name=>'content_estudent'
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''ESTUDIANTE'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12455339134465156)
,p_plug_name=>'tabs'
,p_parent_plug_id=>wwv_flow_imp.id(11806175966519824)
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(8151651230772808)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11496555279172426)
,p_name=>'Mis Cursos'
,p_parent_plug_id=>wwv_flow_imp.id(12455339134465156)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>10
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElECT c.NOMBRE,',
'        c.DESCRIPCION,',
'        a.NOMBRE as area,',
'        i.NOMBRE as institucion,',
'        e.COMPLETADO',
'FROM HK22_ESTUDIANTE e',
'join HK22_CURSO c',
'on e.ID_CURSO=c.id',
'join HK22_AREA a',
'on c.ID_AREA=a.id',
'left join HK22_INSTITUCION i',
'on c.ID_INSTITUCION=i.id',
'where upper(e.EMAIL) = :APP_USER '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No hay clases aun '
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453097893649349)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453189608649350)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453280303649351)
,p_query_column_id=>3
,p_column_alias=>'AREA'
,p_column_display_sequence=>30
,p_column_heading=>'Area'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453368225649352)
,p_query_column_id=>4
,p_column_alias=>'INSTITUCION'
,p_column_display_sequence=>40
,p_column_heading=>'Institucion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453506837649353)
,p_query_column_id=>5
,p_column_alias=>'COMPLETADO'
,p_column_display_sequence=>50
,p_column_heading=>'Completado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12456407266465167)
,p_name=>'Actuales'
,p_parent_plug_id=>wwv_flow_imp.id(12455339134465156)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>20
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElECT c.NOMBRE,',
'        c.DESCRIPCION,',
'        a.NOMBRE as area,',
'        i.NOMBRE as institucion,',
'        e.COMPLETADO',
'FROM HK22_ESTUDIANTE e',
'join HK22_CURSO c',
'on e.ID_CURSO=c.id',
'join HK22_AREA a',
'on c.ID_AREA=a.id',
'left join HK22_INSTITUCION i',
'on c.ID_INSTITUCION=i.id',
'where upper(e.EMAIL) = :APP_USER ',
'    and e.COMPLETADO =''No'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No hay clases aun '
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453569719649354)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453659062649355)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453720346649356)
,p_query_column_id=>3
,p_column_alias=>'AREA'
,p_column_display_sequence=>30
,p_column_heading=>'Area'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453834138649357)
,p_query_column_id=>4
,p_column_alias=>'INSTITUCION'
,p_column_display_sequence=>40
,p_column_heading=>'Institucion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2453953657649358)
,p_query_column_id=>5
,p_column_alias=>'COMPLETADO'
,p_column_display_sequence=>50
,p_column_heading=>'Completado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12866439989125321)
,p_name=>'Pasados'
,p_parent_plug_id=>wwv_flow_imp.id(12455339134465156)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>30
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElECT c.NOMBRE,',
'        c.DESCRIPCION,',
'        a.NOMBRE as area,',
'        i.NOMBRE as institucion,',
'        e.COMPLETADO',
'FROM HK22_ESTUDIANTE e',
'join HK22_CURSO c',
'on e.ID_CURSO=c.id',
'join HK22_AREA a',
'on c.ID_AREA=a.id',
'left join HK22_INSTITUCION i',
'on c.ID_INSTITUCION=i.id',
'where upper(e.EMAIL) = :APP_USER ',
'    and e.COMPLETADO =''Si'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No hay clases aun '
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2454076767649359)
,p_query_column_id=>1
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2454130524649360)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2454241143649361)
,p_query_column_id=>3
,p_column_alias=>'AREA'
,p_column_display_sequence=>30
,p_column_heading=>'Area'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2454371844649362)
,p_query_column_id=>4
,p_column_alias=>'INSTITUCION'
,p_column_display_sequence=>40
,p_column_heading=>'Institucion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2454450228649363)
,p_query_column_id=>5
,p_column_alias=>'COMPLETADO'
,p_column_display_sequence=>50
,p_column_heading=>'Completado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41294625666847820)
,p_plug_name=>'title'
,p_parent_plug_id=>wwv_flow_imp.id(11806175966519824)
,p_region_css_classes=>'titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br><br>',
'<h1>Mis Cursos</h1>',
'		<hr><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11806429543519826)
,p_plug_name=>'user_content'
,p_region_css_classes=>'contet_user'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-left-none'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11822062526535359)
,p_name=>'user_data'
,p_parent_plug_id=>wwv_flow_imp.id(11806429543519826)
,p_template=>wwv_flow_imp.id(8155645587772809)
,p_display_sequence=>60
,p_region_sub_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-left-sm'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM hk22_usuario  ',
'WHERE upper(EMAIL) = :APP_USER;',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8221732444772838)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'user_data'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2489365195169738)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2489762610169738)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre(s): '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2493734058169741)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2494964836169741)
,p_query_column_id=>4
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2494536463169741)
,p_query_column_id=>5
,p_column_alias=>'FOTO'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2452218304649340)
,p_query_column_id=>6
,p_column_alias=>'PUNTOS'
,p_column_display_sequence=>180
,p_column_heading=>'Puntos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2494128032169741)
,p_query_column_id=>7
,p_column_alias=>'TIPO'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2452297813649341)
,p_query_column_id=>8
,p_column_alias=>'ID_INSTITUCION'
,p_column_display_sequence=>190
,p_column_heading=>'Id Institucion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2452392770649342)
,p_query_column_id=>9
,p_column_alias=>'PREGUNTA'
,p_column_display_sequence=>200
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2452495483649343)
,p_query_column_id=>10
,p_column_alias=>'RESPUESTA'
,p_column_display_sequence=>210
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2452589751649344)
,p_query_column_id=>11
,p_column_alias=>'EQUIPO'
,p_column_display_sequence=>220
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13261789796790735)
,p_plug_name=>'foto fija'
,p_parent_plug_id=>wwv_flow_imp.id(11806429543519826)
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img class="image_user_content" src="#APP_FILES#user.png" atl="user_image">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where upper(email)=:APP_USER',
'and foto is null'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13262161533790738)
,p_plug_name=>'foto user'
,p_parent_plug_id=>wwv_flow_imp.id(11806429543519826)
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMBRE,',
'       EMAIL,',
'       PASSWORD,',
'       FOTO,',
'       PUNTOS,',
'       TIPO,',
'       ID_INSTITUCION,',
'       PREGUNTA,',
'       RESPUESTA,',
'       EQUIPO,',
'       DESCRIPCION',
'  from HK22_USUARIO',
'  WHERE upper(EMAIL) = :APP_USER;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from hk22_usuario',
'where upper(email)=:APP_USER',
'and foto is null'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2497438744169745)
,p_region_id=>wwv_flow_imp.id(13262161533790738)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_media_css_classes=>'image_user'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22913243045367395)
,p_plug_name=>'botones'
,p_parent_plug_id=>wwv_flow_imp.id(11806429543519826)
,p_icon_css_classes=>'report_data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOMBRE,',
'       EMAIL,',
'       PASSWORD,',
'       FOTO,',
'       PUNTOS,',
'       TIPO,',
'       ID_INSTITUCION,',
'       PREGUNTA,',
'       RESPUESTA,',
'       EQUIPO',
'  from HK22_USUARIO',
'  WHERE upper(EMAIL) = :APP_USER;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2496058350169742)
,p_region_id=>wwv_flow_imp.id(22913243045367395)
,p_layout_type=>'GRID'
,p_card_css_classes=>'report_data'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2496598026169743)
,p_card_id=>wwv_flow_imp.id(2496058350169742)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Editar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:CR,14:P14_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18332726713851757)
,p_card_id=>wwv_flow_imp.id(2496058350169742)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>unistr('Estad\00EDsticas')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:CR,49:P49_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'boton'
,p_is_hot=>true
,p_condition_type=>'EXISTS'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''MAESTRO'';'))
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22974318315232667)
,p_plug_name=>'content_Tutor'
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''TUTOR'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23623481483177999)
,p_plug_name=>'tabs'
,p_parent_plug_id=>wwv_flow_imp.id(22974318315232667)
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(8151651230772808)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22664697627885269)
,p_name=>unistr('Mis Asesor\00EDas')
,p_parent_plug_id=>wwv_flow_imp.id(23623481483177999)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>10
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FECHA, A.NOMBRE, A.DESCRIPCION, A.ID_AREA, U2.NOMBRE AS PARA',
'FROM HK22_ASESORIA A',
'JOIN HK22_USUARIO U',
'ON A.ID_EMISOR= U.ID',
'JOIN HK22_USUARIO U2',
'ON A.ID_RECEPTOR= U2.ID',
'WHERE UPPER(U.EMAIL)=:APP_USER '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No hay asesor\00EDas aun ')
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18784305206502025)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18965767153263212)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18965394816263212)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18784130579502024)
,p_query_column_id=>4
,p_column_alias=>'ID_AREA'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18784042142502023)
,p_query_column_id=>5
,p_column_alias=>'PARA'
,p_column_display_sequence=>50
,p_column_heading=>'Para'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(23624549615178010)
,p_name=>'Actuales'
,p_parent_plug_id=>wwv_flow_imp.id(23623481483177999)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>20
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FECHA, A.NOMBRE, A.DESCRIPCION, A.ID_AREA, U2.NOMBRE AS PARA',
'FROM HK22_ASESORIA A',
'JOIN HK22_USUARIO U',
'ON A.ID_EMISOR= U.ID',
'JOIN HK22_USUARIO U2',
'ON A.ID_RECEPTOR= U2.ID',
'WHERE UPPER(U.EMAIL)=:APP_USER ',
'    AND A.FECHA >= SYSDATE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No hay asesor\00EDas aun ')
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783935138502022)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18968032903263214)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18967696649263214)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783886819502021)
,p_query_column_id=>4
,p_column_alias=>'ID_AREA'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783723949502020)
,p_query_column_id=>5
,p_column_alias=>'PARA'
,p_column_display_sequence=>50
,p_column_heading=>'Para'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24034582337838164)
,p_name=>'Pasados'
,p_parent_plug_id=>wwv_flow_imp.id(23623481483177999)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>30
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FECHA, A.NOMBRE, A.DESCRIPCION, A.ID_AREA, U2.NOMBRE AS PARA',
'FROM HK22_ASESORIA A',
'JOIN HK22_USUARIO U',
'ON A.ID_EMISOR= U.ID',
'JOIN HK22_USUARIO U2',
'ON A.ID_RECEPTOR= U2.ID',
'WHERE UPPER(U.EMAIL)=:APP_USER ',
'    AND A.FECHA < SYSDATE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No hay asesor\00EDas aun ')
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783682258502019)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18963459271263211)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18963102237263210)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783563548502018)
,p_query_column_id=>4
,p_column_alias=>'ID_AREA'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18783472911502017)
,p_query_column_id=>5
,p_column_alias=>'PARA'
,p_column_display_sequence=>50
,p_column_heading=>'Para'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52462768015560663)
,p_plug_name=>'title'
,p_parent_plug_id=>wwv_flow_imp.id(22974318315232667)
,p_region_css_classes=>'titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br><br>',
unistr('<h1>Mis Asesor\00EDas</h1>'),
'		<hr><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34758775206156720)
,p_plug_name=>'content_Maestro'
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM hk22_usuario ',
'WHERE upper(EMAIL) = :APP_USER',
'AND TIPO=''MAESTRO'';'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35407938374102052)
,p_plug_name=>'tabs'
,p_parent_plug_id=>wwv_flow_imp.id(34758775206156720)
,p_region_css_classes=>'content_rents'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(8151651230772808)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18569275028737612)
,p_name=>'Mis Clases'
,p_parent_plug_id=>wwv_flow_imp.id(35407938374102052)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>20
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C2.ID, C2.NOMBRE,C2.DESCRIPCION',
'FROM HK22_MAESTRO M',
'JOIN HK22_CURSO C',
'ON M.ID_CURSO= C.ID',
'JOIN HK22_Clase C2',
'ON c2.ID_CURSO= C.ID',
'JOIN HK22_USUARIO U',
'ON M.ID_USUARIO= U.ID',
'WHERE UPPER(U.EMAIL)=:APP_USER'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No hay asesor\00EDas aun ')
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18332981239851759)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18569146439737611)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:CR,13:P13_ID_1:#ID#'
,p_column_linktext=>'#NOMBRE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18333090057851760)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34449154518809322)
,p_name=>'Mis Cursos'
,p_parent_plug_id=>wwv_flow_imp.id(35407938374102052)
,p_template=>wwv_flow_imp.id(8154223734772809)
,p_display_sequence=>10
,p_region_css_classes=>'renta'
,p_region_sub_css_classes=>'filas_mis_rentas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.ID, C.NOMBRE,C.DESCRIPCION',
'FROM HK22_MAESTRO M',
'JOIN HK22_CURSO C',
'ON M.ID_CURSO= C.ID',
'JOIN HK22_USUARIO U',
'ON M.ID_USUARIO= U.ID',
'WHERE UPPER(U.EMAIL)=:APP_USER'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(8218781215772837)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No hay asesor\00EDas aun ')
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18569463842737614)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18349473132052005)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:CR,2:P2_ID:#ID#'
,p_column_linktext=>'#NOMBRE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18349068430052005)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64247224906484716)
,p_plug_name=>'title'
,p_parent_plug_id=>wwv_flow_imp.id(34758775206156720)
,p_region_css_classes=>'titulo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br><br>',
'<h1>Mis Cursos</h1>',
'		<hr><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19031336286978430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19031770974978434)
,p_button_name=>'select'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Seleccionar \00E1reas')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19030208282978418)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19031201244978428)
,p_button_name=>'Nuevo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_image_alt=>'Nuevo'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:CR,39::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2555970845749241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2554652492749228)
,p_button_name=>'Trofeos'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Trofeos'
,p_button_position=>'CLOSE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18570148127737621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11806175966519824)
,p_button_name=>unistr('Estad\00EDsticas')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Estad\00EDsticas')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18333840989874829)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34449154518809322)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18325933566825780)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18569275028737612)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2510136909169760)
,p_branch_name=>'Go out'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'SELECT * FROM hk22_usuario WHERE upper(EMAIL) = :APP_USER;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2507393982169757)
,p_name=>'datos'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22913243045367395)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2507911542169758)
,p_event_id=>wwv_flow_imp.id(2507393982169757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11822062526535359)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2509127130169759)
,p_name=>'foto'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22913243045367395)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2509692607169759)
,p_event_id=>wwv_flow_imp.id(2509127130169759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13262161533790738)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2508267416169758)
,p_name=>'imgFija'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22913243045367395)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2508738357169758)
,p_event_id=>wwv_flow_imp.id(2508267416169758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13261789796790735)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18785108191502033)
,p_name=>'todos'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19031115691978427)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18784922126502032)
,p_event_id=>wwv_flow_imp.id(18785108191502033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update HK22_MENSAJE set VISTO=''Si'';'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18784890841502031)
,p_name=>'noL'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19030951688978426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18784748980502030)
,p_event_id=>wwv_flow_imp.id(18784890841502031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update HK22_MENSAJE set VISTO=''Si'';'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2506985535169755)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Initialize form Usuario '
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
