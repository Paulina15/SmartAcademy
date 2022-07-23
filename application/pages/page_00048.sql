prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Profesores'
,p_alias=>'PROFESORES'
,p_step_title=>'Profesores'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(8094015596772782)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'ABI'
,p_last_upd_yyyymmddhh24miss=>'20220722211258'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18536346468950869)
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
 p_id=>wwv_flow_imp.id(18535750715950865)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.ID,',
'       u.NOMBRE,',
'       u.EMAIL,',
'       u.FOTO,',
'       u.TIPO,',
'       u.ID_INSTITUCION,',
'       u.DESCRIPCION,',
'       d.kudos,',
'       i.nombre as institucion',
'  from HK22_USUARIO u',
'  JOIN (select u.id, count(k.id) as kudos',
'from hk22_usuario u ',
'left join hk22_kudos k',
'on k.ID_MAESTRO= u.id',
'group by u.id) D',
'ON d.id= u.id',
'left join hk22_institucion i',
'on u.ID_INSTITUCION= i.id',
'where u.tipo=''MAESTRO'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(18572664566737646)
,p_region_id=>wwv_flow_imp.id(18535750715950865)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'INSTITUCION'
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>'&KUDOS. Felicitaciones '
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FOTO'
,p_media_display_position=>'FIRST'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18572460388737644)
,p_card_id=>wwv_flow_imp.id(18572664566737646)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'New'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:CR,50:P50_TIPO,P50_ID_MAESTRO:MAESTRO,&ID.'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-heart'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(18572341482737643)
,p_card_id=>wwv_flow_imp.id(18572664566737646)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Ver estadisticas'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:CR,49:P49_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18535707917950865)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8155645587772809)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(18535750715950865)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18534049843950860)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(8187617575772824)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533575572950859)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18534049843950860)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(8253878656772854)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RR,48::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18535183716950863)
,p_name=>'P48_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18535707917950865)
,p_prompt=>'Search'
,p_source=>'NOMBRE,EMAIL,PASSWORD,TIPO,ID_INSTITUCION,PREGUNTA,RESPUESTA'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_attribute_04=>'N'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18534780088950861)
,p_name=>'P48_INSTITUCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18535707917950865)
,p_prompt=>unistr('Instituci\00F3n')
,p_source=>'INSTITUCION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18572065408737640)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18535750715950865)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18571958390737639)
,p_event_id=>wwv_flow_imp.id(18572065408737640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18535750715950865)
);
wwv_flow_imp.component_end;
end;
/
