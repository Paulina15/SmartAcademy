prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(8278525726772866)
,p_name=>'Curso'
,p_alias=>'EVENTO1'
,p_step_title=>'curso'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'h1{',
'    font-weight: lighter;',
'    margin-left: 5%;',
'    margin-top: 5%;',
'}',
'p{',
'    margin-left: 15%;',
'    margin-right: 15%;',
'    text-align: justify;',
'}',
'',
'.imagen{',
'    background-size: 80%;',
'    background-position: center;',
'    background-image: url(#APP_FILES#fondo_eventos.jpg);',
'    background-repeat: no-repeat;',
'    min-height: 200px; ',
'    max-height: 300px;',
'}',
'',
'.imagen .content_cuadros{',
'    background: transparent;',
'    border: transparent;',
'    padding-top: 4%;',
'    width: 80%;',
'    margin-left: 10%;',
'}',
'',
'.cuadro li a span{',
'    font-size: 14pt;    ',
'}',
'.margin_bottom{',
'    margin-bottom: 4%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'06'
,p_last_updated_by=>'SACALABICI'
,p_last_upd_yyyymmddhh24miss=>'20220706230612'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9271167297354732)
,p_plug_name=>'Objetivo Recorridos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1>Objetivo</h1>',
'<p> ',
unistr('    Los recorridos a trav\00E9s de su uso recreativo, '),
unistr('    contribuyen a la recuperaci\00F3n de los espacios '),
unistr('    p\00FAbicos y fomentan la cohesi\00F3n social y comunitaria.'),
unistr('    Promueven, adem\00E1s, el arraigo con el entorno, '),
unistr('    creando lazos de identidad con la ciudad; est\00E1n'),
'    abiertos a personas de todas las edades y son ',
'    completamente gratuitos.',
'</p>',
'<p>',
'    Fomentan que los participantes utilicen la bicicleta,',
'    en principio, con fines recreativos y posteriormente',
unistr('    para transportarse en ella. La experiencia de diez a\00F1os'),
'    de recorridos nos indica que se han creado grupos de',
'    ciclistas con fines deportivos y que ha aumentado el',
unistr('    n\00FAmero de ciclistas urbanos que la utilizan de manera'),
'    cotidiana en la ciudad.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9271230385354733)
,p_plug_name=>'Funcionamiento'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1>Funcionamiento</h1>',
'<p>El gran reto de movilizar de manera segura al contingente recae ',
'   en los Casacas Verdes, un grupo de voluntarios que asume la seguridad',
unistr('   dirigiendo y acompa\00F1ando al pelot\00F3n, cerrando las calles al tr\00E1fico'),
unistr('   veh\00EDcular e instruyendo a ciclistas y automovilistas en los trayectos.'),
unistr('   Los Casacas planean las rutas con anticipaci\00F3n sobre la base de aumentar'),
'   el grado de dificultad (definidas por las pendientes y las distancias)',
unistr('   en cada mi\00E9rcoles, esto es, el primero de cada mes se dise\00F1a con nivel 1,'),
unistr('   y este nivel aumenta en cada recorrido, por lo que el \00FAltimo mi\00E9rcoles de'),
unistr('   cada mes el nivel es m\00E1ximo. La planificaci\00F3n incluye el dise\00F1o en gabinete '),
unistr('   y el trabajo de campo un d\00EDa antes de la actividad a fin de verificar y ajustar'),
'   la ruta en caso de ser necesario.',
'</p>',
'',
'<p>',
unistr('Por seguridad, al inicio del contingente pedalean los ni\00F1os con sus pap\00E1s y lo '),
'cierra la "Barredora", una camioneta que brinda auxilio, fuera del primer ',
unistr('cuadro de la ciudad, en caso de percance mec\00E1nico o problemas m\00E9dicos. '),
'La Barredora es posible gracias a uno de nuestros voluntarios.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9271345706354734)
,p_plug_name=>'asistir'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<h1>\00BFQuieres Asistir?</h1>'),
'',
'<p>Recuerda que nuestros recorridos son totalmente gratuitos,',
unistr('   son eventos p\00FAblicos y por lo tanto, cada quien es responsable'),
'   de su seguridad.',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9271725287354738)
,p_plug_name=>'section'
,p_region_css_classes=>'imagen'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9318199327350105)
,p_plug_name=>'slide_content'
,p_parent_plug_id=>wwv_flow_imp.id(9271725287354738)
,p_region_css_classes=>'content_cuadros'
,p_region_template_options=>'u-colors'
,p_component_template_options=>'t-BadgeList--dash:t-BadgeList--cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_imp.id(8181784800772822)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(9867061480401828)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(8225528736772840)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10100566182840421)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(8154223734772809)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10100438097840420)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10100566182840421)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(8253704793772854)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximos recorridos')
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
