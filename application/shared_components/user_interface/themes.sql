prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(8256711733772857)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(8116679809772793)
,p_default_dialog_template=>wwv_flow_imp.id(8111499510772791)
,p_error_template=>wwv_flow_imp.id(8101739991772787)
,p_printer_friendly_template=>wwv_flow_imp.id(8116679809772793)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(8101739991772787)
,p_default_button_template=>wwv_flow_imp.id(8253704793772854)
,p_default_region_template=>wwv_flow_imp.id(8155645587772809)
,p_default_chart_template=>wwv_flow_imp.id(8155645587772809)
,p_default_form_template=>wwv_flow_imp.id(8155645587772809)
,p_default_reportr_template=>wwv_flow_imp.id(8155645587772809)
,p_default_tabform_template=>wwv_flow_imp.id(8155645587772809)
,p_default_wizard_template=>wwv_flow_imp.id(8155645587772809)
,p_default_menur_template=>wwv_flow_imp.id(8195702690772827)
,p_default_listr_template=>wwv_flow_imp.id(8155645587772809)
,p_default_irr_template=>wwv_flow_imp.id(8183377398772822)
,p_default_report_template=>wwv_flow_imp.id(8218781215772837)
,p_default_label_template=>wwv_flow_imp.id(8251284600772853)
,p_default_menu_template=>wwv_flow_imp.id(8255360013772855)
,p_default_calendar_template=>wwv_flow_imp.id(8255431523772855)
,p_default_list_template=>wwv_flow_imp.id(8235186998772844)
,p_default_nav_list_template=>wwv_flow_imp.id(8246916054772851)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(8246916054772851)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(8241531044772848)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(8187617575772824)
,p_default_dialogr_template=>wwv_flow_imp.id(8165136647772814)
,p_default_option_label=>wwv_flow_imp.id(8251284600772853)
,p_default_required_label=>wwv_flow_imp.id(8252555287772853)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(8241170273772848)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>79
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
