prompt --application/deployment/install/install_login
begin
--   Manifest
--     INSTALL: INSTALL-login
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.2'
,p_default_workspace_id=>7870384460919289
,p_default_application_id=>104
,p_default_id_offset=>30137121571976061
,p_default_owner=>'SACALABICI'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(14079951107476236)
,p_install_id=>wwv_flow_imp.id(10848948754148808)
,p_name=>'login'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('--Cada secci\00F3n se debe correr en SQL COMMANDS por separado'),
'',
'',
unistr('---1era Secci\00F3n'),
'create or replace PACKAGE toolkit AS',
'  FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW;',
'  ',
'  FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2;',
'  ',
'  FUNCTION F_LOGIN (p_username IN VARCHAR2, p_password VARCHAR2) RETURN BOOLEAN;',
'  ',
'END toolkit;',
'',
unistr('---2da Secci\00F3n'),
'create or replace PACKAGE BODY toolkit AS',
'  g_key     RAW(32767)  := UTL_RAW.cast_to_raw(''12345678'');',
'  g_pad_chr VARCHAR2(1) := ''~'';',
'  PROCEDURE padstring (p_text  IN OUT  VARCHAR2);',
'  -- --------------------------------------------------',
'  FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW IS',
'  -- --------------------------------------------------',
'    l_text       VARCHAR2(32767) := p_text;',
'    l_encrypted  RAW(32767);',
'  BEGIN',
'    padstring(l_text);',
'    DBMS_OBFUSCATION_TOOLKIT.desencrypt(input          => UTL_RAW.cast_to_raw(l_text),',
'                                        key            => g_key,',
'                                        encrypted_data => l_encrypted);',
'    RETURN l_encrypted;',
'  END;',
'  -- --------------------------------------------------',
'  -- --------------------------------------------------',
'  FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2 IS',
'  -- --------------------------------------------------',
'    l_decrypted  VARCHAR2(32767);',
'  BEGIN',
'    DBMS_OBFUSCATION_TOOLKIT.desdecrypt(input => p_raw,',
'                                        key   => g_key,',
'                                        decrypted_data => l_decrypted);',
'                                        ',
'    RETURN RTrim(UTL_RAW.cast_to_varchar2(l_decrypted), g_pad_chr);',
'  END;',
'  -- --------------------------------------------------',
'  ',
'  -- --------------------------------------------------',
'    FUNCTION F_LOGIN (p_username in varchar2, p_password in varchar2)',
'    return boolean',
'    is',
'      l_user_name       usuario.email%type    := upper(p_username);',
'      l_password        usuario.password%type;',
'      l_hashed_password varchar2(1000);',
'      l_count           number;',
'    begin',
'    -- Returns from the AUTHENTICATE_USER function ',
'    --    0    Normal, successful authentication',
'    --    1    Unknown User Name',
'    --    2    Account Locked',
'    --    3    Account Expired',
'    --    4    Incorrect Password',
'    --    5    Password First Use',
'    --    6    Maximum Login Attempts Exceeded',
'    --    7    Unknown Internal Error',
'    --',
'    -- First, check to see if the user exists',
'        select count(*) ',
'          into l_count ',
'          from usuario',
'          where upper(email) = l_user_name;',
'          ',
'         if l_count > 0 then',
'              -- Hash the password provided',
'              l_hashed_password :=  p_password;',
'     ',
'              -- Get the stored password',
'              select password ',
'                into l_password ',
'                from usuario ',
'               where upper(email) = l_user_name;',
'      ',
'              -- Compare the two, and if there is a match, return TRUE',
'              if toolkit.encrypt(l_hashed_password) = l_password then',
'                  -- Good result. ',
'                  APEX_UTIL.SET_AUTHENTICATION_RESULT(0);',
'                  return true;',
'              else',
'                  -- The Passwords didn''t match',
'                  APEX_UTIL.SET_AUTHENTICATION_RESULT(4);',
'                  return false;',
'              end if;',
'      ',
'        else',
'              -- The username does not exist',
'              APEX_UTIL.SET_AUTHENTICATION_RESULT(1);',
'              return false;',
'        end if;',
'        -- If we get here then something weird happened. ',
'        APEX_UTIL.SET_AUTHENTICATION_RESULT(7);',
'        return false;',
'    exception ',
'        when others then ',
'            -- We don''t know what happened so log an unknown internal error',
'            APEX_UTIL.SET_AUTHENTICATION_RESULT(7);',
'            -- And save the SQL Error Message to the Auth Status.',
'            APEX_UTIL.SET_CUSTOM_AUTH_STATUS(sqlerrm);',
'            return false;',
'            ',
'    end F_LOGIN;',
'  -- --------------------------------------------------',
'  -- --------------------------------------------------',
'  PROCEDURE padstring (p_text  IN OUT  VARCHAR2) IS',
'  -- --------------------------------------------------',
'    l_units  NUMBER;',
'  BEGIN',
'    IF LENGTH(p_text) MOD 8 > 0 THEN',
'      l_units := TRUNC(LENGTH(p_text)/8) + 1;',
'      p_text  := RPAD(p_text, l_units * 8, g_pad_chr);',
'    END IF;',
'  END;',
'  -- --------------------------------------------------',
'END toolkit;',
'',
unistr('--3era Secci\00F3n'),
'CREATE OR REPLACE EDITIONABLE TRIGGER  "USUARIO_BIU" ',
'    before insert ',
'    on usuario',
'    for each row',
'begin',
'    --if :new.id is null then',
'        --:new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    --end if;',
'    if inserting or updating then',
'        --:new.created := sysdate;',
'        --:new.created_by := NVL(v(''APP_USER''), USER);',
'        :new.password := toolkit.encrypt(:new.password);',
'    end if;',
'    --:new.updated := sysdate;',
'    --:new.updated_by := NVL(v(''APP_USER''), USER);',
'end usuario_biu;',
'',
unistr('--4ta Secci\00F3n'),
'ALTER TRIGGER  "USUARIO_BIU" ENABLE',
'',
unistr('--5ta secci\00F3n'),
'INSERT INTO USUARIO  ',
'(NOMBRE,APELLIDOS,CURP,GENERO,NACIMIENTO,DOMICILIO,CELULAR,SANGRE_TIPO,TEL_EMERGENCIA,ESTATURA,EMAIL,TIPO,PASSWORD,EDAD,PREGUNTA,RESPUESTA) ',
'VALUES ',
unistr('(''Usuario'',''Default'',''No tengo'',''O'',''10/02/1981'',''Ninguno'',3334490003,''No lo conozco'',3334490003,1.70,''user@default.com'',''ADMIN'',''sacalabici123'',99,''\00BFCu\00E1l fue/es el nombre de tu primer mascota?'',''AlmaAbyDaliaJoseMiguel'');'),
'',
'',
'--usuario admin: user@default.com',
'--usuario pass: sacalabici123'))
);
wwv_flow_imp.component_end;
end;
/
