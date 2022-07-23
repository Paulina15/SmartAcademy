prompt --application/shared_components/security/authentications/hkauth
begin
--   Manifest
--     AUTHENTICATION: hkAuth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10690790046873278)
,p_name=>'hkAuth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'hk.F_LOGIN'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
