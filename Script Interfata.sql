prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>108502286663353592703
,p_default_application_id=>260348
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROIECTTUDOR'
);
end;
/
 
prompt APPLICATION 260348 - Interfata Baza De Date
--
-- Application Export:
--   Application:     260348
--   Name:            Interfata Baza De Date
--   Date and Time:   22:32 Thursday February 13, 2025
--   Exported By:     TUDORBLIDARU@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     39
--       Items:                   66
--       Validations:              3
--       Processes:               48
--       Regions:                 79
--       Buttons:                 71
--       Dynamic Actions:         30
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          5
--       Navigation:
--         Lists:                  6
--         Breadcrumbs:            1
--           Entries:             18
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   5
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_PROIECTTUDOR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Interfata Baza De Date')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'INTERFATA-BAZA-DE-DATE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'2BAF67191761700ACCDADA3F3018313D64FE9D1A6BA1E97656459A1A736139A1'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(11138288226011313092)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Interfata Baza De Date'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_build_status=> 'RUN_ONLY'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Interfata Baza De Date'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15605635168912
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(11138853349621320663)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(260348)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(11138289063823313093)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(11138290242303313096)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_260348_push_notifications_credentials_2
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(11138853349621320663)
,p_name=>'App 260348 Push Notifications Credentials (2)'
,p_static_id=>'App_260348_Push_Notifications_Credentials_2_'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138289063823313093)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15605635164506
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138307366173313119)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138308816876313121)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Organizator'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138323327285313306)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Participant'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138338386947313960)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bilet'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138356889704314596)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Scena'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138375467794315213)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Artist'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138392241630315854)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Spectacol'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138406310639316483)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138630058288317102)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Administreaza'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138641810577317748)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Desfasoara'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138653313183318365)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Emite'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138666033214318993)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sustine'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138681732875319609)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sponsorizeaza'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11140154407309651341)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Exercitiul C'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11140493834390389318)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Exercitiul D'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11142545690842761550)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Exercitiul F Compus'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11142977990324495838)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Excercitiul F Complex'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138835936310320343)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(11138294166756313102)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138290242303313096)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15605630963735
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138834187432320342)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:RP,10020:P10020_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138834455956320342)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138853041194320662)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(11138834455956320342)
,p_required_patch=>wwv_flow_imp.id(11138846501412320657)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138834936141320342)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11138834455956320342)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138835308455320343)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11138834455956320342)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138784950926320300)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15605630957620
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138785441079320301)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Organizator'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138785846305320302)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Participant'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138786265587320302)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bilet'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138786661567320302)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Scena'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138787013121320302)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Artist'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138787470094320302)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Spectacol'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138787869231320303)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138788222303320303)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Administreaza'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138788613754320303)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Desfasoara'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138789087738320303)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Emite'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138789471967320303)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sustine'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138789876311320304)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sponsorizeaza'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138837022815320344)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(11138293496082313102)
,p_version_scn=>15605630958159
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138837403302320345)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(11138293496082313102)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138837780518320345)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_version_scn=>15605630958160
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138838122225320345)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11138850145637320660)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(11138846501412320657)
,p_version_scn=>15605630963714
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11138850595535320660)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(11138846288885320656)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000022B494441545847ED954D4B1B511486DF64D47C8E891F6D628CC456A2911A0B0DAD145CB8D06E0A824BC17597FD17DDF50708FD';
wwv_flow_imp.g_varchar2_table(2) := '03FD05DD58E82682F881B17E10DBA66DA84452513313C7C47106E50C4C08693277622C22CCAC66E0DEF77DEE7BEE39637BFB6EF10A77F8D82C002B012B817B9780AA2A289F4B68E7EC08051EA02CCB285FC8383915E0E9F481E3DA9A9A2A4DCD01A92820';
wwv_flow_imp.g_varchar2_table(3) := '120A20FA38F28F49A97C815CFE08BFFEE4E0E17DA6214C03C8E7458CC5A2E8E932162790D5CD6D74B8795310A60028F2F1D810D35C772488E5F52D53493001A8E601BFB76EECD5473C3E15209E4970B99C08F67623933DC0E1B1C0BC134C00AAFBF4E40B';
wwv_flow_imp.g_varchar2_table(4) := 'C338C97C663281E1C130DE7FF888702808B32930011C1CF06C6CA42140B5F9B7DF07584A6E544AB5B6B50B05C65DC104F03AEC88C7A21A801E33BD3F1A0869DFFAC96BCD690D95E16F41324C8F09F0D0EFC15024AC8988A28837F3B35849EDE1D397152C';
wwv_flow_imp.g_varchar2_table(5) := 'CCBDD262AF674EEB533B6994545B6B006D50F0FCE9134D44100584FB82783D3551116D644E0B926B29701DAED600A0C87899885744AA218CCC69C3E7E42AB3159925A8D78604A15CAA809D6B381BBEFFCC225F386BBD0DE924B62B15D148BFE9414497F3';
wwv_flow_imp.g_varchar2_table(6) := '6B3A03A7DBC39C86CC047405552E21111F85CBE93014A5FEDFD9FFC16C3F5DC43480B64191D1DBD5D9702A52ECD95C9E59F7EA1334070080EE04D44BA88A021FEF05CF7B7152102014252DF2FFFA3B6616F4060B9A4EE0061E2DCE81DB76ACD1B312B012';
wwv_flow_imp.g_varchar2_table(7) := 'B8F304AE018F682470275C16040000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11138291221848313099)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900000C7049444154785EED9D6F90144715C05FCF2EF7872B92C33D211181235502250995C48A16900A6045ADB2247EB2FC265096A93B';
wwv_flow_imp.g_varchar2_table(2) := '0907F28D3B5240853BBE21DC05EF0ACB3AF083967ED092A4F241512E29082AA58911148886050921782B10BC7FB0BBAD6FEEFA322C77BB33DD3DDDB3336FBEEC724C77BF7EEFB7AF5FBFEE99664017694041034CA12C15250D000144102869800052521F';
wwv_flow_imp.g_varchar2_table(3) := '1526808801250D10404AEAA3C2041031A0A4010248497D54980022069434400029A98F0A1340C4809206082025F5516102881850D20001A4A43E2A1C39803675BD9CA9859A0C9A265FBCDBC421E57E772FC63FFE1E77DB71966350C86137D3CE8C41FC1C';
wwv_flow_imp.g_varchar2_table(4) := '833BB983ED2FB87F8BCA651DA0AD7B7B9B8B45D8C0195BCD38AC898A62222C4796010C70E0979C220CEC7FB175C0A6AC5600DAFA52EF1AEEB0F51C6083CDCEC7A4ED2CF68303DFDDD3D17AD8749F8C02D4D6D9BB0B80AD078066D31D4D487B59007EA4BB';
wwv_flow_imp.g_varchar2_table(5) := 'A37597A9FE1A0168029C9DA63A45ED8031904207687357DF718A6D6C21CD7787ED8D42030883E30267FD048F2D7826DBCD3A0E5FBB7F7BAB1B2BE9BE42010883E4A2C38EEB1696EA93D64036AC205B3B40E3D3727651BAAB54302C0D84E289B40344314F';
wwv_flow_imp.g_varchar2_table(6) := '58F6D7526FB6BBA36591969A262AD10A10C1A3D334E1D4C5000E1FE868D9A8AB766D00D1545D9749C2AFE7FF59EC8DBA928E1A01EAC3B8871284E1DB5F470BDA86322D006DEEECDDC080F5EBE819D5614603BABC901680DA3AC9FB9831BBD656B4782165';
wwv_flow_imp.g_varchar2_table(7) := '80C8FB6835AAD1CA9C225FABBA9AAF0E102D551835BACEC63883819EF696B52A752A03D4D6D9C75504A0B25635A03C8C290144C39755E36B695C75182380B498A19A2B515BB15702684B675F3FED2AAC66780054E320258068FA5EDDF04C48AF1407A902';
wwv_flow_imp.g_varchar2_table(8) := '4401740C182AB07C93ECD31ED2006DEB3AB438CF8BE763A0BFC47721CD9C25FBDA9FBF20A3086980DAF61C5C092C7552A6512A132D0D1040D1B247F549C30BABBA776C7A534670F240325A8B5B191B006DDED3B78E31381A375D26B13F9CC3733D3B5A5E';
wwv_flow_imp.g_varchar2_table(9) := '91E9BBB407A22CB48CBAA3598600D2609742210F77C7C6003FF12AE4F3509CF8EEA4D2EEDF52E934A45269705229A8A9ADD3D06A34AA50D91B94580F84A08C0E0FB9A0E067D02B954EC18C9A3A17A4BA990D418B47EA7E02288039EE8C8DC2F0ED5B7067';
wwv_flow_imp.g_varchar2_table(10) := '6C6CB25443433D2C9C3FDFFD777D7D1DD4D7D5C14CF7B3164646C7EF1B1E198591D151F7FB60EE065CBAFCAF7B5A45A01A663556254C04900F80D0E3DC1CFC100AF9827BB780E613B31B2133FB411F35DC7F0BC275E5EA3518CCE5E0FABFC75FDB8320CD';
wwv_flow_imp.g_varchar2_table(11) := '6ACC54D510470095313F8273FB466ED2E3CCF964061E7F6C99EB5D745E08D3F97F5C9CF44CD5041201340D0943B76FC1D047B7263DCE13CB1F93F6367E614390DEFEEBD9498FD4F0C083D0304BCEC3F96D53F53E02680A0DE27085710E0E5526C0291501';
wwv_flow_imp.g_varchar2_table(12) := '413AF987D3303434E2C6450FCC8EEEDBF908208FF5BC43160E572B9E7A52F5072A5DDE0B110E698D4D73DD3440D42E0268C22238C3BA3978DDFDD7C205F3E1F147975AB79508B4FF76EE4264036C0208137F853CE4AE5D7581F9ECD2C5F09947165A87C7';
wwv_flow_imp.g_varchar2_table(13) := '2BC0BBEF5D020151D43C110104E04ED131E6F9DC13CBE1D30FCF8D143C42987F5EBA0267CEFEDDF54499B9F3222363E20112F0D88E79FC10213C519402EB440324A6EAD5000F02E69DE647658A9F588044D08C53F567573FEDC70144E21EEFECACB1698E';
wwv_flow_imp.g_varchar2_table(14) := 'F5AC7562011243D7D32B3E1F7A82503779B91BB7E0C4A93F424D6DAD3BBDB779251220E17DA2327479D7C5EAEB6742536676C560FED4E93FBB196BDB5E28910045C9FB88C0B8D48B544A27082F647B5696388070FFCE473772914816BE7DE69CBB80FAD0';
wwv_flow_imp.g_varchar2_table(15) := '9C0C7C63DD5760C9230B2077F316F41EF9395CBB9EAB98938A82174A1C4051F13E5E78BEBF73DB3D0E2877F336EC39F043B83D345C36C0C7A1EFD7BF7BC36A6E2871005D7FFFB275EF530E1E41D2D1DF9E849FFEE235A814E40B2F9479E85356D6CA1205';
wwv_flow_imp.g_varchar2_table(16) := '9018BE6C669CFDC08310FDE867AFC2B1374EC197BFF84CD9FD472286B2154C270A208C7D10A24A46096B5AEC171E6CFF7BBBF7B971D0D7BFFAA5B2E28861CCD6943E5100E1F0855725A38401501078F6FEE0C7F0CED9F315836821E7B1D74FC0E8D81D2B';
wwv_flow_imp.g_varchar2_table(17) := '6B648901C8E6EC4B069E20392A9BB3B1C401643AFE091B1EF442573EF810FEF4D63BEECE45D38F09250620B1706A122013F0204022A96863813531008900BAD2B4B834FEC1590E3E7A33343C0C4D9926689859EF6BC399297808A03022D629EA94998189';
wwv_flow_imp.g_varchar2_table(18) := 'D8A2B4BA4AF1894978C4360F4C28DA988925C603890CB4DF199880E7D96756C0B7BFF93597219121C6E9F574DB404CC3430019F2404101FAD56BBF81E5CB96C0F6EF7EEBBE6586433FF9A53BCD2E85C8063C423894973C5088300980FC24114550EAF53E';
wwv_flow_imp.g_varchar2_table(19) := '5ED1D013954264131E914CB4B1D5353143989885F909A28541A6F24002242F44E26FB8AA5EBA305AFA9B1049C24A715490DF92009E000AA2B580F7060108ABC6210181D8B1E53B90699C35656B5E886CC1E3CD03D1343E2014416E0FBA902A92737E203A';
wwv_flow_imp.g_varchar2_table(20) := 'FFDE6558F9E4B2B2E284E179448394480C4282E4BD32DB58C54A7725882A8914263CD8B688BF6CACC8272606124F9F067D0A4315A2B0E141807031155FC43067DE824A2C6BFFFFC400849A93DD8D280B910978C4F0652380469D260A20318C55DAB03ED5';
wwv_flow_imp.g_varchar2_table(21) := 'CF34284426E0F106D036165213079018C664A7D07E2132050F1AF0C4EF4F43EE3F3781B6B46A1F9DA7AE50761813B55582C8243C36F33F421F891AC2B0D332B3B15214A783C8243C2893CD8D648905482598F682E485E8D1A58BE1CCB90BEE1E66D9E131';
wwv_flow_imp.g_varchar2_table(22) := 'A8038ECAE3CD89F340BABC10D653FA54A94C701E141C717F14BC4FE28268AFB15463216F5DB876A6FBD5BFE5C08A8AF7493440DED7BBACFAC253460190F53A584E2CF4E2771B99E752D913398409258805D6A0D969150054CB8AA1CBC6C2E954B2271A20';
wwv_flow_imp.g_varchar2_table(23) := '5488D8EA1A9537B396034CC06363E3D87472251E20EFBBA14D06C1413D91F74DADF492CDCEDE0D0C587F50258675BF384CA5AEB6C63D79276AAFF9BDFCFE5578EB2F67DDEE4721EEF1DA21F11E4828C37B224F943C91D8AA11D503580820CFCFC90B1106';
wwv_flow_imp.g_varchar2_table(24) := 'D6366767DE37B2D2510725634F94CF4C15A711E2493DB60E5BC187188F0D9C74B516A5809966610182283AEEC99FB268082BA3A7D203E770AA3F7FDEC3DA5F0B8CC3D5B90BEFC2E52B1FB8D24435DE210FE4EF4775DF5DA520D191971FAB883C5000A8F0';
wwv_flow_imp.g_varchar2_table(25) := 'C98ED1E1FFDE77E82EBE7401DFED8C57B943774746C60FDEC59377BC171DBA1BC008786B9483683F5D11E7C4E37A9AECB1DF7878DC8CDABAC81F6959491FE4812A69A8C2FF234C787E7CB15070CF1DC3EF78150BE39F4E2A0DA9F4F84983088D934A593F';
wwv_flow_imp.g_varchar2_table(26) := 'DF42B1CBF714B703D09EBE758CC1519D1DA1BAEC688000B2A3F7D8B4CA393CD7B3A3E515990E31994258A66DCFC195C052E39932BAAA5B03BCB0AA7BC7A637653A4100C9682D6E656C00B4ADEBD0E23C2F9E8F9B2E93D89F347396EC6B7FFEDEBC844F45';
wwv_flow_imp.g_varchar2_table(27) := '487B2002C8A786ABE0362B006DEA7A3993E2E9C12AD00F8958410305966F3AD8FE424E4651D21EC80DA43BFBB84CA354265A1AE8EE6891E640BA20AA607357DF71C6614DB4D441D204D10003387CA0A365639032DE7B95006AEBECDD05C076CA364EE5EC';
wwv_flow_imp.g_varchar2_table(28) := '6B40258988D22B01B4F5A5DE3545871DB7AF06924056038EC317EDDFDE9A952DAF06D0DEDEE662915D946D9CCAD9D7804AFCA3EC81280EB20F808A04AAF18F168068185331A1DDB24E91AFDDFF62EB808A144A4398689866632A26B05636DBDDD1B248B5';
wwv_flow_imp.g_varchar2_table(29) := '753D0045EC214355A524A1BCEAEC4BE8480B405BC783699C8D352741F971E8A36AF0AC15203798262F54455CF1DDDD1DADBB7408ACC5030941B674F6F573800D3A04A33AC2D1006730D0D3DEB25657ED5A01C2A1ACC0593F2D6FE8328FF67AB404CE5EA9';
wwv_flow_imp.g_varchar2_table(30) := 'B40284154FC443945CD46E7BF50A754CDB4BA5D00E10C543EA860EA38630E0D192489CAEB334330B0303A93AB34E916F544D184ED772281E4834360E1106D5B4622F657AC542BA03E6A9C4091520D1E0C4B68FF594275224C27FF12C003FA26BAA5EAE59';
wwv_flow_imp.g_varchar2_table(31) := '230089E0BA508435C0D87A9AA5F92721E09DC6C011721903C8AB084C3A124801D1287F7B9603DFDDD3D17A586BAD3E2AB302903746823C34171C687680ADA624A40F8B016439832CE3FC75A708036105C7BE2451DD91E8B79120F7E1D31EB55093C132F9';
wwv_flow_imp.g_varchar2_table(32) := 'E2DD26FCE490CA00E3EEDF12717136F9840483422EEDCC709F7E917D762B4C9D59F54061768CEA36A30102C88C9E63DB0A01145BD39AE918016446CFB16D85008AAD69CD748C0032A3E7D8B64200C5D6B4663A460099D1736C5B2180626B5A331D2380CC';
wwv_flow_imp.g_varchar2_table(33) := 'E839B6AD1040B135AD998E114066F41CDB5608A0D89AD64CC70820337A8E6D2BFF03339000097F908A390000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11138291515129313100)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000EA749444154785EED9D5B6C5C4719C7BF66DDF8B2756D674DAE764C4B935ACD858452509450A4D256A88A280224A82AF1004282';
wwv_flow_imp.g_varchar2_table(2) := 'AA42800408095415890784042F48F0C0E509454880541445A26D7A496342894223488B71D3908B9B266EB6EBD8B17737F11AF41DE79CCC4ECEDECE9E399EF3CD7F5FEAC6E7CC99F9CFFF37F37D3373D6B77CFD47BFFC1FE103051C55E01600E068CFA3D9';
wwv_flow_imp.g_varchar2_table(3) := '9E02000046705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F10000';
wwv_flow_imp.g_varchar2_table(4) := '1E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A01';
wwv_flow_imp.g_varchar2_table(5) := '00E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100001E705A0100E074F7A3F100C090072A9505AFE46BE532F1CF9585055AE4FF5EFF';
wwv_flow_imp.g_varchar2_table(6) := 'F7CA42257872A62373E3E74C07ADC87450A6A38332DECF195AD9D965A896281600C4E401DFE4D7AE96E95AB94457CBE5984A26F201B97565970743574F36B6B25D2F0800B4E100367D697ECE1BDDF9BF497D1808C0108FDA0020828E6CFCB999CB0D4D9F';
wwv_flow_imp.g_varchar2_table(7) := 'CD76D3606E90B23DDDDE53560DF4534FF75238D3DDD5193CB958BA315BCC174B542C95A8707986384C2A16E769EADD7CCD5AFA30F0AC8050A9F5CE04002D68C6A3FCDCECB467CCB00F1B7E6478D8337A6EA0AF8592EB5FCA803010F9C2345D999DAD0904';
wwv_flow_imp.g_varchar2_table(8) := 'C390EDED4788D482F200A009B1E66679B4BF126A7CDFF49BEE1C69A2A4782E612026CF5FA04BF97C280C0C4257CF6D94ED8D0FC2786A6E5F2900A04E9F70A8335BC88726B4F78C6EA6A1F56BAB4299E5E85E1F8637C6276E7A3C83D0DB9F436854A76300';
wwv_flow_imp.g_varchar2_table(9) := '4088387E72CB71BEFA598ED1BE59A87C10FE73F2ADAA99CA9F0D3847E065557CAA1500009A23AE964B347D69EA269FF0889F649813D5A8B56604E407E18A020045178EF5F5517FF5FB72B463DB96650F755A0582413879FA2C9D3A753AB815B9C1CD2A02';
wwv_flow_imp.g_varchar2_table(10) := '00226F77568FF539DCD9B97D5BACAB39AD9A388EEB0B3357E8D86BC7696EAE580542FFE01A844444E43C006CFEFC85F3555EE3517FD77D1F8AC37F5694111616F16C00081C07202CDE4F4BAC1F85AC374F9D2175B508AB440E03A09B5F4AC8D3080C9E0D';
wwv_flow_imp.g_varchar2_table(11) := '0E1E1A0B568A5CCF0B9C0C815C35BF0F074330F6EAD1202F701902E7000833FF831FDFD368E014F7FB30085CDC34730A0098BF9AE330085C4B8C9D01405FEDE198DFC5915F9FCA5C87C01900A62F5DAC3AD3B367D74752BFC61F575C169618E7D66C88AB';
wwv_flow_imp.g_varchar2_table(12) := '78ABCB7102007D8717E6BFD9930CC1B32F1C0A7E91BDBDCF89D3A4E201D0E37EC9EBFCED0EB56F9D99A413AFFFDB2BC6953D02F1004CBD7D36F085B41DDE760D1F76FF91A3FF08DE317061B758340033857CF0DA2292DEE670D193623E467DFB40AEB99B';
wwv_flow_imp.g_varchar2_table(13) := '5378955800F4D007717FF3EECC172ED3E1237F772214120B80BAEA33B27198766C1D6DDE01B892D450686567A777704EE2472400FCF23A873FFEE7E107EE4FDD79FE56CCA6BE23CCF7CDCDCF53B6A787868736D0D0BA68C6D55785380C92F87D442201C8';
wwv_flow_imp.g_varchar2_table(14) := '5F7C3B38EC257DD567F29D8B74ECB57FD6E4A59DD738D5D3A39C104BDC1B1007803EFA3FFAC843AD0CA6A9BAF6F889713A73F65C53758E3210E81B64FD83ABC5BD602F0E0035F68FD2E94DB9C9828B74F3AF5D9DA3CFED7D98463FB091F2D3333471EA1C';
wwv_flow_imp.g_varchar2_table(15) := '1D7CE5085D98BA110A46D143DD1B90980B8802405FF9911AFBEBE6DFB1ED1EFAEE571F0FC5F2B77F3840CFBE38E6FD2ECA52B09E0B489B054401A0AEFB4B5DF9D1CDFFE0FDBBE8CB9FDF5B774EFAE6D33F0D668228B380FA4C69B3802800D45D5F89A37F';
wwv_flow_imp.g_varchar2_table(16) := '14F3331963C74ED0CF7FB3CF8324CA6EB83A0B484B86C500A026BF513AD982B0BE6E15A29A9F0B9D383D494FFDE41791C320BE51DD179014068901404D7EEFDDB93DF2FAB78D20B4637E6E4FBE30434F7EFFC7916700BE516A322C0600A9E14FBBE667F3';
wwv_flow_imp.g_varchar2_table(17) := 'EE7FE108FDEE8FFB3D00A2E64652C3201100A8E14FD40E9638F2FB6D5293E0766647896190080024AEFEC431F23300BFDAF70C1D3CBC74B08D3FED6C0CAA3BC3525E981101807AF4A19D11CE9659202EF3FFFAF7FBE9F943478266B57B22563D252A6539';
wwv_flow_imp.g_varchar2_table(18) := '54040092E27F53E68F2334949807A41E0075F737EDCB9F369BDF9F46A4E501A907404A029C06F3EBFB01128E48A71E00F51B1FA26CF3DB10F7A7C5FCAC95B44438F500A82B40694C80D3647E06407DFF4042229C7A00D41DE0765739F4D9C0C49B56EA33';
wwv_flow_imp.g_varchar2_table(19) := 'D266FEA55DE51BEF0B03000BE207750934CE037026DFB462D9D2687EAEB7B495A0D4CF00260030FDA6555ACD0F002C18F1F52AC40D803EF2C7FDA6559ACD0F002C0440DD046B679BDF6FDA33079E0B5AB97DCBDDF4BD27BE18DA6AF54D2BBEA09915A8B4';
wwv_flow_imp.g_varchar2_table(20) := '9B3F4CA3D51B365AE88AE6AB94FA10284E00D4D19F47FE9F3DF5ADBA4AFEF9E018EDFBD381E09A7A1048313F37561D240040F3B019B932CE104835E9E39FDD4B7B1FD8D5B0CECD4020C9FC00A0A12592BD204E009E7FF970F077B37EF89D2768D34873DF';
wwv_flow_imp.g_varchar2_table(21) := '915F0F0269E6C72A50B2FE6EF8B4380150CFB93CFDEDAFD1E6F70F357CBE7F41180473F3C5AAEFED69E605F6B007EAA73AE338D8D674C3B40B014054E50CDD17E746980AC0935F7A8C76DFBBB5A55AEB10A8374B303FB7071B612D59C2FCC5711E85D093';
wwv_flow_imp.g_varchar2_table(22) := 'E01F7CE32BB4AAAFB7A546844120C5FC2C84AA9184AF4E4FFD2A509C87E1F42F81FAC2A73F498F3EF4B19600E08B550824999FDB86C3702DDBC1EC0D71BF0FA06F843DF69947E8539FD8DD722326FEBBF49D9D9BEF186EF95E9B627EBDF26A528FE3D02D';
wwv_flow_imp.g_varchar2_table(23) := '776DFC37A80044F9EABFB01AA9A31CFF3E2A04515A6BB3F9B93DEA4A596EED7ACA643AA234D39A7B521F02E97FFF378EDD607DAA4F0A02DBCDCF3A48DA04E3F6A41E006E449C2B41EAD094E44C9006F34B4B80C500106722ACCFCD49409006F3B32E6AFC';
wwv_flow_imp.g_varchar2_table(24) := '2F6105480C007127C249429016F3EBF1BF8404580C007A1E10F79B61A6728234995F8FFF2524C06200D0F380668E2647598688331C4A9BF925C6FFA20030B11C6A6A89346DE6971AFE8802208930C807A29D99208DE6D777C8D3FE0E803AB0895806F51B';
wwv_flow_imp.g_varchar2_table(25) := '94E41FC78E02411ACD2F75F5C7F78C2800920A83A2CC046935BF9EFC4AFAEB30A242A0E598056AAD0EEDF9F0F6AA53A46936BF3AD349F81E203DAF13350370E3929E05C220D83A7A177D70CB280DF4F5D24B7F3D4A27C64F06BA2FE7CB2C5156BEFE72F0';
wwv_flow_imp.g_varchar2_table(26) := '652A95AF7AB74A59FB179B0370C338199E2DE4E96AB9ECB53329C3E9394198D992AA4B14A3375AF192F6D72145E6007EA3D46F8CE613A2BB3F7A1F757775C6E58B9AE5D48280EB30323C4C9BEE1C315E87B81EA0AFFC481CFD45E60061B940927F37808D';
wwv_flow_imp.g_varchar2_table(27) := '932F4CD3A57C81B23DDDB46AA09F72037D71F932B172D4D74325C6FEA267003F14CA5F381F18C6C4F188C4DC98F083D4F77EF9D1D2567E44E7006AE3D4F785930C8512F66BAC8F5B5C5CA4E75E7C25487CA59CFAAC2592B85520B5A19C10F3E65865A1E2';
wwv_flow_imp.g_varchar2_table(28) := 'FD7392A150ACAE4CB03035F4919AF83A33037043D56551FE7F5307E512F4A8B147E949BCE4D0477C0EA0BA447D618643A19DDBB7A5323135E67CEDFB7EF83952FE0E7023CD4487407EE3F5BD01E403D5B6D0973C25AFFAE840380180BF2AA4E6038060C9';
wwv_flow_imp.g_varchar2_table(29) := '0A6CFE43637F0B925E8EFB7BFB73B4B2B3ABD1E029E2F7CE00E043A02E8DC6F5352A697502AFF8BC7AEC384DBD9B0F9AE042DCEF5412AC9B537F6FC0D5998047FEE3FF7ADD69F3B3379C9A017C18D4A3125EC297E071091B660B3DE6E73AB936F23BB50A';
wwv_flow_imp.g_varchar2_table(30) := '1466BA30085C581DD277795D36BFB33380BA3AA4E704693BB4D6CA8C127658CFD591DFF9194085405D1DE27FE71DE31DDBB6247282B4150347BD362CDE776DB5A796764EE6006189B10E01E705A39B37D1D0BA35517D67C57D61210F9BBF7F704DEABFD8';
wwv_flow_imp.g_varchar2_table(31) := '360E8101C07515797588F382B999CB55BAF24B2C77DF7547EA66031EF5C727DEA4B393EF54B5C7951DDE66E100009A527C7668763A1F1CA0F35789D2941B84C5FA0879C291000021BAD49A0D6C7EB38B47FCC9F317E88DF1899B5A8451BFF67C0000EACC';
wwv_flow_imp.g_varchar2_table(32) := '95FA1922FF520661303748C31BD62DFBA1BA7AC6C7A8DF381002008D355ACA0D66A7ABC22215060E8F86D6AF4D2C4FF04D7FE6DCB9E0EF1AABCD60E377F5DC46D9DEF4BD8AD94477C47A090068524E9E0DAE95CB549ABF127CE3847EABA999810D3F5F2C';
wwv_flow_imp.g_varchar2_table(33) := 'D17B8569BA383545F9F7A6436BCDC6CFF6F613BFC5854F730A0080E674AABA8A61E0D5229E19EA7D7C20F89AC1DC00757775514FF7D2294BF55B2AD8E0FE878D5E2C95A8582C11FFA1ED6271BEEABC4ED8F3F8F8724F6F9F332738237459CD5B00401B6A';
wwv_flow_imp.g_varchar2_table(34) := 'FAB302AF1C3582A18DC7D41CED11E6B4AF2A00685F43AF041586C5CA42CD3029EAE3FCB8FED6959D18E9A38A18721F0088514CB52806A2B2B0408B958A07C7D2CF0BDECF1E30D75FD4E79FD9DCFE87FFECE88A4C07653A3ABC9DDA15990C0C6FA88FB858';
wwv_flow_imp.g_varchar2_table(35) := '0060505C146DBF0200C0FE3E420D0D2A00000C8A8BA2ED570000D8DF47A8A141050080417151B4FD0A0000FBFB083534A8000030282E8AB65F0100607F1FA1860615000006C545D1F62B0000ECEF23D4D0A00200C0A0B828DA7E050080FD7D841A1A5400';
wwv_flow_imp.g_varchar2_table(36) := '0018141745DBAF0000B0BF8F5043830A000083E2A268FB150000F6F7116A6850010060505C146DBF0200C0FE3E420D0D2A00000C8A8BA2ED570000D8DF47A8A141050080417151B4FD0A0000FBFB083534A8000030282E8AB65F0100607F1FA186061500';
wwv_flow_imp.g_varchar2_table(37) := '0006C545D1F62B0000ECEF23D4D0A00200C0A0B828DA7E050080FD7D841A1A54000018141745DBAF0000B0BF8F5043830A000083E2A268FB150000F6F7116A6850010060505C146DBF0200C0FE3E420D0D2A00000C8A8BA2ED570000D8DF47A8A1410500';
wwv_flow_imp.g_varchar2_table(38) := '80417151B4FD0A0000FBFB083534A8000030282E8AB65F0100607F1FA1860615000006C545D1F62B0000ECEF23D4D0A00200C0A0B828DA7E050080FD7D841A1A54000018141745DBAF0000B0BF8F5043830A000083E2A268FB150000F6F7116A685081FF';
wwv_flow_imp.g_varchar2_table(39) := '036A03B3C8B24339830000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11138291819132313100)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD7B6C9FD77DDFF16F445924C59022FD9325EB4A5BB654C5B75A71655B9313A7B1E3016ED0025D802DD85F';
wwv_flow_imp.g_varchar2_table(2) := '5DF7C7BAA61930AC5BB100336220C38606C82E1D5C74038A162B3604DDB0645D909B63C79562CBB22D5996AC5B249912AD3B4D8A0CC58B446538B47F322DEBF73BE73CD773BEE7CD7FE2D6E7799E735EDF439F0F9FEB27BEFA8D3FFDA5F0830002082080';
wwv_flow_imp.g_varchar2_table(3) := '000249097C82009054BD192C020820800002F30204002602020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104';
wwv_flow_imp.g_varchar2_table(4) := '104000810405080009169D212380000208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE901140000104102000300710400001';
wwv_flow_imp.g_varchar2_table(5) := '0410485080009060D119320208208000020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000';
wwv_flow_imp.g_varchar2_table(6) := '810405080009169D212380000208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE901140000104102000300710400001041048';
wwv_flow_imp.g_varchar2_table(7) := '5080009060D119320208208000020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405';
wwv_flow_imp.g_varchar2_table(8) := '080009169D212380000208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE901140000104102000300710400001041048508000';
wwv_flow_imp.g_varchar2_table(9) := '9060D119320208208000020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405080009';
wwv_flow_imp.g_varchar2_table(10) := '169D212380000208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE9011400001041020003007104000010410485080009060D1';
wwv_flow_imp.g_varchar2_table(11) := '19320208208000020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405080009169D21';
wwv_flow_imp.g_varchar2_table(12) := '2380000208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE9011400001041020003007104000010410485080009060D1193202';
wwv_flow_imp.g_varchar2_table(13) := '08208000020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405080009169D21238000';
wwv_flow_imp.g_varchar2_table(14) := '0208204000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE9011400001041020003007104000010410485080009060D1193202082080';
wwv_flow_imp.g_varchar2_table(15) := '00020400E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405080009169D21238000020820';
wwv_flow_imp.g_varchar2_table(16) := '4000600E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE9011400001041020003007104000010410485080009060D1193202082080000204';
wwv_flow_imp.g_varchar2_table(17) := '00E600020820800002090A1000122C3A434600010410408000C01C4000010410402041010240824567C8082080000208100098030820800002082428400048B0E80C19010410400001020073000104104000810405080009169D21238000020820400060';
wwv_flow_imp.g_varchar2_table(18) := '0E20800002082090A0000120C1A233640410400001040800CC0104104000010412142000245874868C0002082080000180398000020820804082020480048BCE901140000104102000300710885C606EEEEAFC08AECCCC48F39FCDFF3D77F5FDFFFFB50F';
wwv_flow_imp.g_varchar2_table(19) := 'FEFDFCFFEF837F9EBB3A777DD41D8B3B3EFCE78EC5D7FF79D1827FEE58BC583A3EF8BF177574C892CEAEC8D5E83E02081000980308442060166EB3A05F9B9B9B5FC4DFFFE7AB323B33535BEF4D7030A1C004856640201CD4560E0E8C80B70001C09B8C0D';
wwv_flow_imp.g_varchar2_table(20) := '102857C02CF0CDBFE6AFCC4CD7BAC8671D69F3ACC22D4BBAE6CF16742DEDC9BA2BB64300819204080025C1B25B045C05CC823F7D7972BEF9E4F825D7CDA26B674241331070A620BAF2D1618502040085456548610B3417FC58FFBA2F4A9740509424FB41';
wwv_flow_imp.g_varchar2_table(21) := '209B0001209B1B5B21E025D05CF435FF85EF057293C6CD40602E177093615E4DB647C02E4000B01BD102814C022CFA99D8E637220C64B7634B045C050800AE52B443C0418045DF01C9B38909035D4B3F29B72CE9E4CC80A71DCD1168274000607E209053';
wwv_flow_imp.g_varchar2_table(22) := '208445BFA7A75B7A962E95E58DC6F5D17477BFFFAC7E77D787CFEC2FBDFEFFEBBCDE6E6AFAC347092F4F4D2FF8FF2FF8E7A96999BC3C2553539765F2F265999C9CCAA9966D73C2403637B642E066020400E60502190526272EC9F4E55FC8C297EA64DC95';
wwv_flow_imp.g_varchar2_table(23) := '7533B3C09B9F858BFCAD03FD6216F4EEAE0F1773EB8E0A6A30337B45AE5DBB2626304C4D4FCBC5915199999D9D7F37C1F90B23051DA5FD6E4C18E8E9EDE711C34AB4398846010280C6AA32A6D204AAFA6BDF2CF883EBD6CD8F63EDEADB6B59E4F3209AB3';
wwv_flow_imp.g_varchar2_table(24) := '0A23A363F3C160746C4CC6C727F2ECAEEDB6CDB3023DBDCB4A3B063B4640A300014063551953E102652FFC0B17FC8D1B060BEF7FDD3B5C1808CC658432CE12348380798AA0F9DAE2BAC7CDF11108598000107275E85BED02652DFCCD05DF9CC66F0CA4F7';
wwv_flow_imp.g_varchar2_table(25) := '97AB0904A397C6E7CF12FC6262A2D040D07C82A0A76F1941A0F6DF203A10B2000120E4EAD0B7DA04CCC23F313A52E86B789B8B7E8CA7F4CB2E840904C3A7CFCAC5919142C380391BC07B05CAAE1EFB8F558000106BE5E8772902B333D332313652D88D7D';
wwv_flow_imp.g_varchar2_table(26) := '2CFAFE656A8681E1D3670ABB77C09C15E8ED6FF018A17F39D842B10001407171199ABB40917FF1B3E8BBBBDB5A161D06CCD9002E0DD8D4F9F7A908100052A934E36C29601EE72BE215BDF76CDE14E51DFBB14C8D661878FBD0915C5DE6A9815C7C6CAC48';
wwv_flow_imp.g_varchar2_table(27) := '8000A0A8980CC54FC07C816F7C34DF33EBCDBFF635DEB9EFA7595DEB661038FCF363B92ED51004AAAB19470A53800010665DE8558902459CEE67E12FB1408EBB3641E0F4B90B72F2D470AE7B054C10E85FBE9227061CDD69A6478000A0A7968CC42250C4';
wwv_flow_imp.g_varchar2_table(28) := '237D66E1DFBC69A3AC5DB512EF4004CC5B092F8CBC27A786DFCDFC04016703022926DDA854800050293707AB4B20EF75FE15B735E4C1FBEF8DEE8D7C7579D7755C735660DFDB87E5ECD97399BA4010C8C4C646910A1000222D1CDD7613C87BBA9F1BFBDC';
wwv_flow_imp.g_varchar2_table(29) := '9C436B95F786412E0B845651FA53860001A00C55F619848079A67FECE2F94C7D31A7FAB73C707F926FE9CB0416E8462608BCF2DA9E4CF708703620D0A2D2ADC20408008551B2A39004B29EF2E7E6BE90AA584C5FCC3D02C367CEC9C1C347323D3560DE1B';
wwv_flow_imp.g_varchar2_table(30) := 'C087868AA9057B094B800010563DE84D4E0173CA7FECE2B94CFFA137A7FB799C2F670102DE3CCF65012E09045C58BA9659800090998E0D4313C8FA573F37F88556C972FB93F546412E09945B17F65EBD0001A07A738E58B040D61BFDB8CE5F702122DB9D';
wwv_flow_imp.g_varchar2_table(31) := '7987C0DB870ECBE4E49457CFB924E0C545E380050800011787AED905B2DEE8C7E97EBB6D0A2DB25E16E092400AB343FF180900FA6BAC7684594EF9F357BFDAE9906B602608ECDCB5DBEB6C0097047291B37100020480008A4017FC05CC8D7EB333335E1B';
wwv_flow_imp.g_varchar2_table(32) := '0EAE5F270FDEB7D96B1B1AA72390F56C009704D29923DA464A00D056D104C69365F1DFFAD083B27AE56D09E830C4BC02478F0F89EF1707CD6786FB061A790FCDF608542A4000A8949B83E511C872B39F39E5BFFD91ADBCC2370F7C82DB66BD24D058B926';
wwv_flow_imp.g_varchar2_table(33) := '412D861CAB000120D6CA25D6EF2C8B3F37FA2536490A1E6E964B02DC1C587011D85DA90204805279D979110266F11F397BDA7957DCE8E74C4543078113A74ECB8183879C5F2E45087040A5491002048020CA40275A09F83EE6675EEAB36DEBA70145A050';
wwv_flow_imp.g_varchar2_table(34) := '017336E0D53D6FC9D8E8A8D37E09014E4C34AA598000507301387C6B01DFC59FBBFC994D650AF85E123021A0A7B75FCC0D82FC2010A2000120C4AAD02799BE3C29E3A323CE125CEF77A6A2610E01F361A193C3A79D9F12E05D0139B0D9B474010240E9C4';
wwv_flow_imp.g_varchar2_table(35) := '1CC057C077F17F68CB03B276D54ADFC3D01E81CC02BE8F0AF2AE80CCD46C58A20001A0445C76ED2FE0BBF83FB6ED61690C2CF33F105B209053E0D8D0B0EC3F70D0792F8400672A1A56244000A8089AC3D8057CAFF9B3F8DB4D6951AEC0D98BEFC9AE575F';
wwv_flow_imp.g_varchar2_table(36) := '773A88B91CD0DBDF90259D5D4EED698440D9020480B285D9BF9380CFE2CF637E4EA434AA48C0DC1CF8FC4B3B9D1E1324045454140EE32440007062A25199023ECFF9F366BF322BC1BEB30AF8BC39904704B32AB35DD1020480A245D99F9780CFE2CF33FE';
wwv_flow_imp.g_varchar2_table(37) := '5EB434AE58C08480575EDB23E3E313D6231302AC4434A840800050013287B8B980CFEB7D59FC99453108F88600BE1D104355F5F69100A0B7B6C18FCCF5AB7EE6B4FF938F3F16FC78E8200246C0E772C092CE4EE95FCE23ACCC9C7A040800F5B8277F549F';
wwv_flow_imp.g_varchar2_table(38) := 'C59FAFF9253F5DA203F0B931904F0947575E351D2600A829653C03715DFCCD8878D42F9EBAD2D38F0A9810F0C39FBCE4C4C23B029C986854B00001A0605076D75E6072E2924C8E5F726262F17762A251C0023EEF092004045C48A55D2300282D6C88C3F2';
wwv_flow_imp.g_varchar2_table(39) := '79D69FC53FC40AD2A72C02C367CEC9EB7BF65937E51D0156221A142C4000281894DDB5161839F7AED3CB5278B73FB3489B80EBB7034C08E0C9006DD50F773C0480706BA3AA67AED7FDF9AA9FAAB233980502AE21809B02993655091000AA924EF838AE1F';
wwv_flow_imp.g_varchar2_table(40) := 'F8E159FF8427490243F7F99470DF40434C10E007813205080065EAB26F71BDEECFE2CF644941C03C19B0F7AD0372FEC248DBE1F2A6C0146643FD632400D45F03D53D7039F5DFD5B944FEEE138FAB7660700834055CDF11C0FD00CC99B2050800650B27BC';
wwv_flow_imp.g_varchar2_table(41) := '7F97C5DFF070C77FC29324D1A19F3E774176BFBED73A7AEE07B012D12087000120071E9BB616703DF5CF4D7FCCA254055C6F0AEC5FBE42967476A5CAC4B84B14200094889BEAAE5DBFF0C775FF546708E33602DC0FC03CA85B8000507705141E9F53FF0A';
wwv_flow_imp.g_varchar2_table(42) := '8BCA904A11707D5D301F0D2A853FF99D1200929F02C502B8BEEA97EBFEC5BAB3B778055CDF14C8A381F1D638D49E130042AD4CA4FD3AFFEE496BCF39F56F25A24162026F1D3A2AC78FBFD376D43C1590D8A4A860B804800A905339C4F8E8889897FEB4FB';
wwv_flow_imp.g_varchar2_table(43) := 'E9E9E996271F7F2C1512C689809380B914B073D76E999C9C6ADB9EA7029C3869E42840007084A2597B01D7BBFE39F5CF4C42E0E602A3E3BF909776BC6C3D0BD0DBDFE0A9002651210204804218D989CB8D7F3CF2C73C41A0BDC0B1A161D97FE060DB46DC';
wwv_flow_imp.g_varchar2_table(44) := '10C82C2A4A8000509464C2FB7179D73FA7FE139E200CDD59C05C0A78E5B53D323E3ED1761BDE0DE04C4AC336020400A6476E0197CFFC72EA3F37333B4844C0E52D81DC1098C86428799804809281B5EFDEE5B13FEEFAD73E0B185FD1022FEF7EC3FAC1A0';
wwv_flow_imp.g_varchar2_table(45) := '9EBE65D2D3BBACE843B3BF840408000915BBE8A1BABEF1EFC9CF6D979EA54B8B3E3CFB4340AD80CB0B82F862A0DAF2573630024065D4FA0EE472E3DFAF6CDC209B37DEA56FF08C28288199D92B625EA8736576462E4D4CCEFFEFD8F884982F4D76742C9E';
wwv_flow_imp.g_varchar2_table(46) := 'FFDFEEEEA572EB409FF4F6F6C940DF2783EAFFCD3AE3F26E001E0B0CBE8C41779000107479C2ED9CEB637FBFF5F417C21D043D8B5AC0FC953C746A58864F9FB13E3F7FE340FBFA7A65EDEA55B276F5EDD2DDD519A483EB6783B92130C8F245D129024014';
wwv_flow_imp.g_varchar2_table(47) := '650AAF932E7FFD3FB4E50159BB6A65789DA747510B98BFF64F0C9D94C3478FE71E87393330B87EAD0CAE5B1B641070794D308F05E69E06C9EE8000906CE9B30FDCE5B13F6EFCCBEECB96AD055C3FA1EB6B6882C0DD77DF2577AE5B2D8B162DF2DDBCB4F6';
wwv_flow_imp.g_varchar2_table(48) := '26ECBCF1E65BD61B02390B505A0954EF9800A0BABCE50CCEE5AF7F1EFB2BC73ED5BDBA2E84797DCCA581477F6D4B5067035CDE10C85980BC954F737B02409A75CF3C6A976BFF83EBD7C983F76DCE7C0C364460A180EBCB718A52332FADDAFEC8D6A042C0';
wwv_flow_imp.g_varchar2_table(49) := 'AE37F6C9D9B3E7DA0E91B30045CD8074F6430048A7D6858CD4E5833F4F7DFEB341FDC7B39081B3935A0446462FC98E975FADFCD8E692C067B73F1ACC3C76792C9027022A9F26D11F9000107D09AB1D80ED73BFFCF55F6D3D341FADAEC5BF691ADA9900DB';
wwv_flow_imp.g_varchar2_table(50) := 'CB81782F80E6DF8672C6460028C755E55E5DFEFAE7DABFCAD2573EA82C8BFF6D8D0179E2338FC8A7EEBE433EB168916C1C5C232363E69DFABF9491B1713978F484BCF8B3DD72F6FC88F378FA0706E4338F7C3A881B035DEE05E02C8073696928220400A6';
wwv_flow_imp.g_varchar2_table(51) := '81B380EDAF7FEEFC77A6A4611B01DFC57FF5AA95F2A5DF7852B66DB9C7C9F5C83BC3F2DC5F7CDB39086CD87087DCBF79A3D3BECB6EE47216A0B1724DD9DD60FF4A0408004A0A59F6305C1EFDE3AFFFB2ABA07FFFBE8BFF977FFB69F9CD27B67BC3BC7769';
wwv_flow_imp.g_varchar2_table(52) := '4276BCB64FBEFDDD1FC8DCD5B9B6DB87743F80CB8782FA061A62CE04F083804D80006013E2DFCF0BD8BEF8C7E77E992879057C17FFAFFFE1EFC9A63BD6E63AAC391BF0ECB7FECC1A0242390BE0F238245F0ACC352592DA98009054B9B30DD6E5AF7FDEFA';
wwv_flow_imp.g_varchar2_table(53) := '97CD96ADDE17A863F16FDA1F39714A9EFD0FFFB56D083067011EDEFA5010DF1070793B208F04F29BE522400070514ABC8DEDAF7FC3C33BFF139F2439865FE7E2DFECF6779FDF29FFE37F7FAFED28EED9BC49366E18CC31D2623675F9460067018AB1D6BE';
wwv_flow_imp.g_varchar2_table(54) := '170280F60AE71C9FCB5FFFA1FC8731E750D9BC068110167F336C734FC0737FF9D7B2FFD0CF5B2A98B704FEFA638FD6A0F4F1431E1B1A96FD070EB6ED0B6701822855D09D2000045D9EFA3BE7F2E81F7FFDD75FA7187B10CAE2BFF052C033DFFCD3B6949F';
wwv_flow_imp.g_varchar2_table(55) := '7D6C5B1097015C5E0CD4D3B74C7A7A97C53835E873450204808AA0633D8CEDF43F2FFE89B5B2F5F63BB4C5BFA9F18DFFFCE76DCF02DC77EFA7E4AEC17C371E1625BF77FF21193A79AAE5EEB80C5094B4DEFD1000F4D636F7C85C4EFFF3DADFDCCCC9ED20';
wwv_flow_imp.g_varchar2_table(56) := 'D4C5DF14E23B3FFA5BF99FFFE7FB2D6B1252E075793110970192FBF5F21A3001C08B2BADC69CFE4FABDE558C36E4C5DF8CDF3C16F8CC1F3FD79222B4975DD95E0CC49B01AB98D5F11E8300106FED4AEF39A7FF4B274EEA00A12FFEA618E695C15FF9DABF';
wwv_flow_imp.g_varchar2_table(57) := '6F5997906E04349D3C7A7C48DE3E7484CB0049FD2615375802407196AAF6C4E97F55E5AC7D30312CFE06C93C0DF0FBFFFADFB5F40AED85575C06A87D6A47DD010240D4E52BAFF39CFE2FCF36B53DC7B2F837EBF2E5DFFF5ADBBFA8BFF8D4E7832A219701';
wwv_flow_imp.g_varchar2_table(58) := '822A47549D21004455AEEA3A6B3BFDCF9BFFAAAB45CC478A6DF1375F0FFCCAD75A9F0168DCDA2F8F3DBA35A892701920A87244D519024054E5AAA6B39CFEAFC659FB51625BFC4D3D5EDEF3B6FCA7FFF6572D4BB37EED2AD9F2C07D4195CEE59D003C0D10';
wwv_flow_imp.g_varchar2_table(59) := '54C982E90C0120985284D311DBE9FFD0EE840E478E9E3405625CFC4DDFFFFCAFBF273F7C6167CB4286F418E0C24E721980DFBD2C0204802C6ACAB739FFEEC9B623E4F4BFF209907378B12EFE66D85FFD37DF940B23A32D05B6FCEABDB27ECDEA9C42C56F';
wwv_flow_imp.g_varchar2_table(60) := 'CE6580E24D53D8230120852A7B8C91D3FF1E5834FD9840CC8BBFED1D0066B0A1BEF88ACB00FC3266112000645153BC8D2D0070FA5F71F1730E2DE6C5DF0CDDF61AE0D01E01BCB15CB6CB007C1B20E70457B83901406151F30CC976FD9F2FFFE5D1D5BB6D';
wwv_flow_imp.g_varchar2_table(61) := 'EC8BBFCBE780376CB843EEDFBC31D822DA2E032CE9EC94FEE52B83ED3F1DAB5E800050BD79D047E4F1BFA0CB1364E7625FFC5D4EFD877CFABF39296C75E0E34041FEFAD4DA290240ADFC611D7C6EEEAA8C9C3DDDB6537CFA37AC9AD5DD1BDBA27363FFBE';
wwv_flow_imp.g_varchar2_table(62) := 'FE87BF279BEE08E36B7AA66FAE8B7FE87FFD9BB1701F40DDBF0DF11D9F00105FCD4AEB31D7FF4BA355B9E354167FF397F3173EF719E95C724BF075B4DD07C0FB00822F61A51D240054CA1DF6C16CD7FF437D063A6C559DBD4B65F137D58BE9BE17EE03D0';
wwv_flow_imp.g_varchar2_table(63) := 'F9FB56D6A8080065C946B85FAEFF4758B41ABA9CD2E21FDB532FB6DA701F400DBF30011F9200107071AAEE9AED0540A13E035DB553CAC7B32D305AAEF99B7184FED8DFCDE6A1CB7D008DDB574B47C7E294A73163FF408000C0549817B05DFF376DB80130';
wwv_flow_imp.g_varchar2_table(64) := 'EDC992D2E26F2AFDD8B687A531B02CBAA2BFB0E315191F9F68D96FEE0388AEA4A5759800501A6D5C3BE6FA7F5CF5AABAB72CFE558B673F9EED46405E0894DD56DB9604006D15CD381EAEFF67844B603316FFB88A7C6C6858F61F38D8B2D3BC1028AE7A96';
wwv_flow_imp.g_varchar2_table(65) := 'D95B024099BA11ED9BEBFF1115ABC2AEB2F857885DD0A16CF70170236041D00A7643005050C42286600B005CFF2F4239AE7DB0F8C755AF85BDFDCEF77ED4B6F3DC08186F6D8BEC3901A048CD48F7353B332D6317CFB7EC7D6C8F42455A86A0BACDE21F54';
wwv_flow_imp.g_varchar2_table(66) := '39BC3B63BB0F801B01BD49556E4000505956BF41D99E00E005407E9EB1B766F18FBD8222B600D037D090AEA53DF10F9411E4122000E4E2D3B1F1E4C425991CBFD4723004001D757619058BBF8B52F86D6C6F04E44980F06B58450F09005528077E0CDB23';
wwv_flow_imp.g_varchar2_table(67) := '800F6D7940D6AEE233A281973177F758FC731306B3039E0408A61441778400107479AAE91C8F0056E31CF25158FC43AE8E7FDF6CF5E451407F538D5B10003456D5734CB600C02B803D41236B6E5B2C6E1C4EAC9FF46D8E23D637FCF94C2B1E05F4D14AB7';
wwv_flow_imp.g_varchar2_table(68) := '2D0120DDDA5F1F398F00A63B0958FC75D67E66F68A7CFFC72FB61DDC8A35EB750E9E51390B10009CA97436B43D0218E307517456AAF851B1F8176F1AD21E7FFCD31D323939D5B24B3C0A1852B5EAE90B01A01EF7608ECA2380EF97C2FCC5347CE69C5C99';
wwv_flow_imp.g_varchar2_table(69) := '9D914B1393F3FF3B363E215D9D4BE6BF9C66FEB7BB7BA9DC3AD027BDBD7D32D0F7C9606A98A5232CFE59D4E2DAC6F628200120AE7A96D15B024019AA11ED33E54700CD75D2D3E72EC88977DE69FB97D2CDCAD9D7D72B6B57AF92B5AB6F97EEAECE882A2E';
wwv_flow_imp.g_varchar2_table(70) := 'C2E21F55B93277F6AD4347E5F8F1775A6ECFA3809969D56C48005053CA6C03B105807B366F928D1B06B3ED3CD0ADCC5FFB27864ECAE1A3C773F7D09C19185CBF5606D7AD8D2208B0F8E72E79343BE05D00D194AAB68E12006AA30FE3C0A9BD03C0F61FC5';
wwv_flow_imp.g_varchar2_table(71) := 'AC553141E0EEBBEF923BD7AD96458B1665DD4DA9DBB1F897CA1BDCCE6DEF02E00C407025ABBC430480CAC9C33A602A01C0FCD5FFC69B6FC9F90B23A516C05C1A78F4D7B604773680C5BFD4B207B973734FCBEB7BF6B5EC9B7915B07925303FE90A1000D2';
wwv_flow_imp.g_varchar2_table(72) := 'ADFDFCC8530800E65AFFDEB70E94BEF837A792797262FB235B8309012CFE69FE921300D2ACBBCFA809003E5A0ADB8E5D3C27B333332D4716FB4B536C2F4429ABA4E692C0C35B1FAAFD690116FFB22A1CFE7E6DB5E76D80E1D7B0EC1E1200CA160E7CFF9A';
wwv_flow_imp.g_varchar2_table(73) := '03C0B56BD764D7EB7B2BFBCBFFC652D71D026C0BC08DFDE50D7F81FFB27A76CF567F028027A8C2E604008545F51992E600607B0EFA46A7DB1A03F2C4671E914FDD7D877C62D122D938B84646C62644E4973232362E078F9E90177FB65BCE9E77BF8FA0AE';
wwv_flow_imp.g_varchar2_table(74) := '1060FB8F3F8BBFCF6F499C6D6D73800010675D8BEC3501A048CD08F7A5F53B003E77FBAF5EB552BEF41B4FCAB62DF73855F0C83BC3F2DC5F7CDB3908541D026CFFE167F1772A73F48D6C97BF3A16774863E59AE8C7C900B20B1000B2DBA9D852630030A7';
wwv_flow_imp.g_varchar2_table(75) := 'FEFFEFF79F77AACF977FFB69F9CD27B63BB55DD8E8BD4B13B2E3B57DF2EDEFFE40E6AECE59B7AF2A04B0F85B4B914C03024032A5CE3C500240663A1D1B6A0C00B637A0352B57C4356F7336E0D96FFD59102180C55FC7EF6451A320001425A9773F0400BD';
wwv_flow_imp.g_varchar2_table(76) := 'B5751A99B62F01DAFEA357E4E2DFDC97B93FE09F3DF3CD5A43008BBFD3744FAED177BEF7A3B663E68B80C94D898F0C98009076FD455B0038F9EE69D9F3E681B655CD7ADABFDD4EEB0C012CFE89FF12B7193E0180B9D14E800090F8FCD07609C0F609D4FB';
wwv_flow_imp.g_varchar2_table(77) := '36DF2D5FFB83DF29A5EA75840016FF524AA966A7040035A52C652004805258E3D9A9A600E072F3DFD7FFC53F914D77AE2BAD4055860016FFD2CAA862C7B6CB613C05A0A2CCB9064100C8C517FFC69A0280EDF4BFF90FDE7FFF8FCF965EB42A42008B7FE9';
wwv_flow_imp.g_varchar2_table(78) := '658CFE000480E84B58FA000800A513877D004D2F02B2DDFDFFD4AF6F97DFF9D2D39514A4CC10C0E25F4909A33F886D9EF022A0E84B9C7B000480DC8471EF405300D8B36FBF9C1C3ED3B2205FFDC7FFD0F9653F4554B58C1060FB8FFA8DFD2EE251C7222C';
wwv_flow_imp.g_varchar2_table(79) := '9AFB308F4D3EF3C7CF39EF32F66F51380FB48486B6B9420028013DB25D1200222B58D1DDD514005ED8F18A8C8F9B57F7DEFCE74FBEF1AFA4D1DF573461DBFD1519026CFF4167F1AFB4B4C11FECE2C8A8ECDCF55ACB7EF239E0E04B587A070900A513877D';
wwv_flow_imp.g_varchar2_table(80) := '004D9F03FEC1F33F95E999D996E0FFE5DFFE91DCBAACB7F28214110258FC2B2F5BF407E473C0D197B0F40110004A270EFB009A0280ED11C03FF9C61F49A3BFFA006066409E10C0E21FF6EF50A8BD2300845A9970FA450008A716B5F46472E2924C8E5F6A';
wwv_flow_imp.g_varchar2_table(81) := '79EC87B63C206B57ADACA56FBE07DDF1CA6E19796FACE566CFFECB7F3AFF85BFBA7EB284806B7373B2E3E5579DBBCC357F672AF50D0900EA4B9C7B800480DC8471EFC01600EED9BC49366E188C6290B6CFFF86B038FA86807697346E2C4A08E35BD8276E';
wwv_flow_imp.g_varchar2_table(82) := 'F8ABF7D7C6F645CC9EBE65D2D3BBACDE4E72F45A050800B5F2D77F704D0160EFFE433274F2544BD42A1F036C57599F10E03A4358FC5DA5D26967FB7D2000A433175A8D940090F81C989D9996B18BE75B2AACB8AD21DBB67E3A0AA56343C3B2FFC0C1967D';
wwv_flow_imp.g_varchar2_table(83) := 'BD7D4543BEF5CC3F0F622C45860016FF204A1A5C276C8FC5F60D34C43C09C04FBA020480746B3F3F725B00E8E9E919544A07000019B14944415496271F7F2C0AA5C9CB97E5C72FEE6CDBD79016CB22424048E331F09CF60FE757C576536CE3F6D5D2D1B1';
wwv_flow_imp.g_varchar2_table(84) := '389C0ED393CA05080095938775C0B9B9AB3272F674CB4EC51400CC206C3702867416C0F4374F0860F10FEB7729B4DED83E04440008AD62D5F7870050BD797047B47D12F8A9CF7F56BABB3A83EBF7CD3A64BBF1C96C53C6E780F3E06409012CFE79C4F56F';
wwv_flow_imp.g_varchar2_table(85) := '6BFB0E801158B166BD7E0846D8568000C004114D6F0334FFE17BFEA59D327775AE65656F6B0CC857FED13F904D77AC0DA6FA3E2180C53F98B205DB11DB2380BC0638D8D255DA310240A5DC611ECC1600627A178011B67D14C8B43121E00F7EF7CBB5BE17';
wwv_flow_imp.g_varchar2_table(86) := 'E0C6D9E0120258FCC3FC1D0AAD57B600C06B8043AB583DFD2100D4E31ED451353D0A68605DCE02C41602423C6BC10D7F41FD1A7FA4333C02186E6D42EA190120A46AD4D497E9CB93625E09DCEA27A647019B6338F9EE69D9F3E601AB6898670226E46F77';
wwv_flow_imp.g_varchar2_table(87) := 'BD213F7DE575999BBB26BF7AEF66F9DDBFFF45EB58AA6CC0E25FA5B6FFB16C01804700FD4D356E4100D05855CF31697A14B039F499D92BB2FB8DBD6D5F0DDC6C1B6208F02C61A5CD59FC2BE5CE7430DB2380FDCB57C892CEAE4CFB66233D0204003DB5CC';
wwv_flow_imp.g_varchar2_table(88) := '3C126D8F023621CCA5809DBB76CBE4E494D5861060259A6FC0E2EFE654772B1E01ACBB02711C9F0010479D4AEFA5ED51C0C7B63D2C8D81F8DE1BEE7A3F80012604B49F662CFEA5FF1A167280AB57AFC8FFFBE18B6DF7C52380855047BF130240F4252C66';
wwv_flow_imp.g_varchar2_table(89) := '00B6270162FA28D08D22E60D812FEC78A5EDA3815C0E60F12FE637A9FEBDD89E00E011C0FA6B144A0F0800A154A2E67ED89E0488F146C085A48480EC138CBFFCB3DBD5B1A5ED06401E01ACA32A611E930010665D2AEF95C61B013913907F1AB1F8E737AC';
wwv_flow_imp.g_varchar2_table(90) := '7A0FB61B007902A0EA8A847B3C0240B8B5A9B467B61B014D67627A25702B3CCE04B84F2B167F77AB905A72036048D508BB2F0480B0EB5369EF6CF701C47A23206702FCA7118BBFBF59085BD8AEFF9B3E72036008950AA30F048030EA10442F6C0120E61B';
wwv_flow_imp.g_varchar2_table(91) := '010901EE538CC5DFDD2AB4965CFF0FAD2261F7870010767D2AED9DED8D80B17D1AD886C7E5808F0BB1F8DB664DD8FF9EEBFF61D727B4DE110042AB488DFD71B90FE0B79EFE428D3D2CFED084800F4D59FC8B9F5F55EF91EBFF558BC77D3C0240DCF52BBC';
wwv_flow_imp.g_varchar2_table(92) := 'F75A5F08D40E8A10C01BFE0AFF45AA61875CFFAF013DF2431200222F60D1DD4FE93E808576298700FEF22FFAB7A89EFD1D3A7A4C0E1F3DDEF2E03CFF5F4F5D423E2A0120E4EAD4D037DB0B81B4DD07907A0860F1AFE197ACA44372FDBF2458C5BB250028';
wwv_flow_imp.g_varchar2_table(93) := '2E6E96A1D95E0864F6A9E571C09BF9A4742680C53FCB6F4898DBB8BCFFBF71FB6AE9E8581CE600E8552D0204805AD8C33DA8CB8D809A1E074C3504B0F887FB3B98A567EF9C3C256FEE3FD476539EFFCF22AB7B1B0280EEFA661ADDF8E8889847025BFD68';
wwv_flow_imp.g_varchar2_table(94) := 'BE0CD01CB3E633012CFE997E2D82DEC876FA9FEBFF4197AFB6CE11006AA30FF7C0A95F06D01C0258FCC3FDBDCBDA3397D3FFFDCB57C892CEAEAC87603BA5020400A585CD332C2E037CA8A7E94C008B7F9EDF8A70B7E5F47FB8B509BD670480D02B5453FF';
wwv_flow_imp.g_varchar2_table(95) := 'B80CA02B04B0F8D7F48B54C16139FD5F01B2D2431000941636EFB0B80CF051C198CF04B0F8E7FD6D0877FB8B23A3B273D76B6D3BC8E9FF70EB5777CF0800755720D0E37319E0E385893104B0F807FA0B5650B76C1FFF3187E1EEFF82B015EE8600A0B0A8';
wwv_flow_imp.g_varchar2_table(96) := '450D89CB0071870016FFA27E13C2DD0FA7FFC3AD4D0C3D2300C450A59AFAC865809BC3C7702680C5BFA65F9A0A0FCBE9FF0AB1951E8A00A0B4B0450DCBF66D80C1F5EBE4C1FB361775B868F613720860F18F661AE5EA28A7FF73F1B1B188100098066D05';
wwv_flow_imp.g_varchar2_table(97) := '52FE36806D6A84180258FC6D55D3F3EF6D9FFEE5E53F7A6A5DD648080065C92AD9AFCB6500EDAF066E57CA9042008BBF925F3A8761D8BEFC6776C1DDFF0E9089372100243E015C866FBB0C90C2AB81430F012CFE2E33594F9B1F3CFF53999E996D39A025';
wwv_flow_imp.g_varchar2_table(98) := '9D9DD2BF7CA59E01339252040800A5B0EADAA9F92E807922A0DDCF435B1E90B5ABD2FD0F4E9D670258FC75FDBED946337CE69CBCBE675FDB667D030D319700F841A09D000180F9611530EF04306701E6AECEB56C9BFA59000353470860F1B74E5F750D6C';
wwv_flow_imp.g_varchar2_table(99) := '8FFE9901F3ECBFBAB2973220024029ACFA76EA7216E0B16D0F4B636099BEC17B8CA8CA10C0E2EF5118254DF9EB5F49210319060120904284DE0D973703AEB8AD21DBB67E3AF4A194DEBF2A42008B7FE9650CF2002FEF7E43CE5F687F398EBFFE832C5D90';
wwv_flow_imp.g_varchar2_table(100) := '9D2200045996303B657B33A0E9356701DEAF5D992180C53FCCDF8FB27BE5F2E21F1EFD2BBB0ABAF64F00D055CF5247C359003F5EDF10F0D4E7B6CB173FBFADED41FEE6272FCB5FFDAFBF71EE0881CC992AF8862E7FFD376E5F2D1D1D8B831F0B1D0C4380';
wwv_flow_imp.g_varchar2_table(101) := '0010461DA2E985CB23815B1EB83FF97B019A05F50901669BD5AB56CADF7BFA09B9ADD12F1B07D7CCEF66646C425E7E63BFBCF0B3DD72FACC39E7B9C2E2EF4C157C43338F7EFCE2CEB6FDE4AFFFE0CB185C070900C19524EC0EB99C0548F5F5C0AD2AE71B';
wwv_flow_imp.g_varchar2_table(102) := '028A98012CFE452886B38F3DFBF6CBC9E1336D3BC48B7FC2A9572C3D2100C452A980FA693B0B60BACA02F4D182551902B00FE897A580AE8C8C5E921D2FBFDA764FBCF8A700E80477410048B0E87987ECF27A60DE0BF071E52A42008B7FDED91DDEF62ED7';
wwv_flow_imp.g_varchar2_table(103) := 'FEF9EB3FBCBAC5D02302400C550AB08F2E6701527F3BE0CDCA664280F90FFAE4E454A15535818B7B2F0A250D62672ECFFDF3D77F10A58AB213048028CB567FA7390B90BD0653D333B273D7EEC242405F5FAF3CFE771E96458B1665EF145B0629607BE7BF';
wwv_flow_imp.g_varchar2_table(104) := 'E9347FFD0759BA283A450088A24C6176D2E52C003704DEBC7633B357E4C4D049F9F989A1B6AF58B6553EE52F31DA6C62FFF77BF71F92A193A7DA0E83BFFE63AF72BDFD2700D4EB1FF5D15D9E08E0D474FB129BB30143A786BD824057E712195CBF5636DD';
wwv_flow_imp.g_varchar2_table(105) := '75277FF547FD1BD4BAF32E8FFD99AD79EE5FE904A8685804808AA0B51E6672E2924C8E5F6A3B3C5E116CAFBE392330323A36FF9AD7A9A9CBF36F12349F7B351F603221AA67E95219E85F26CB6FBD55963706EC3BA445D4022E37FEF5F42D939EDEB4BFBD';
wwv_flow_imp.g_varchar2_table(106) := '11759103E83C01208022C4DC05972F059AF171777ACC55A6EF550AB8BCF2D7F48777FE5759159DC72200E8AC6BA5A372F952208F05565A120E16B180CBE77EB9F12FE20207D475024040C588B92B2E370472C35ACC15A6EF55081C3D3E246F1F3AD2F650';
wwv_flow_imp.g_varchar2_table(107) := 'DCF8574525D2380601208D3A973E4A6E082C9D980328177079E39F21E0AF7FE513A1C2E111002AC4D67E2897CF05732940FB2C607C590576BCB25B46DE1B6BBB391FFCC9AACB7637132000302F0A1370390B600EC6BB010A2367474A045CEEFA3743E5B1';
wwv_flow_imp.g_varchar2_table(108) := '3F25050F64180480400AA1A51B2E37049AB1F29A602D15671C79055CEFFAE7B1BFBCD26C7FA30001803951A880390B30313A22B333336DF76B2E056C7F64AB747775167A7C7686404C02AE2FFCE1C6BF98AA1A4F5F0900F1D42A9A9EBA5E0AE07E80684A';
wwv_flow_imp.g_varchar2_table(109) := '4A474B12E0D47F49B0ECD6498000E0C444235F01D74B01DC0FE02B4B7B2D02070F1F9123C786ACC3E1AE7F2B110D320A100032C2B1995DC0E535C1662FBC25D06E490B5D02AE8FFC71D7BFAEBA87361A0240681551D41FEE0750544C86529880F900D40F';
wwv_flow_imp.g_varchar2_table(110) := '7FF292757F1D8B3BA4B1728DB51D0D10C82A4000C82AC7764E02AEF703F0C120274E1A291070BDEECFA97F05C50E7C080480C00BA4A17BDC0FA0A18A8CA10801D7C5BF6FA021E6F43F3F08942940002853977D5F1770794BA069CCF70298345A050E1D3D';
wwv_flow_imp.g_varchar2_table(111) := '26878F1EB70E8F47FEAC443428488000501024BB692FE0FAD96042003349A3C0C9774FCB9E370F5887C6757F2B110D0A1420001488C9AEDA0BCCCE4CCBD8C5F35626F37E80C175EB64E386416B5B1A2010BA80EB9BFECC38B8EE1F7A3575F58F00A0AB9E';
wwv_flow_imp.g_varchar2_table(112) := 'C18FC6F5D1401302B63C70BF340696053F263A88402B01D7C7FDCCF6BCEA977954B50001A06A718E27840026410A02AEAFF935165CF74F61468437460240783551DF23D7F703CCFF55C43703D4CF078D03747DD69FC55F63F5E3191301209E5AA9EA2921';
wwv_flow_imp.g_varchar2_table(113) := '40553919CC0201B3F8BFFAFA1E19BB346175E12F7F2B110D4A1420009488CBAEDB0BF83C19C08783984D31085CBB764D76BDBE57CE5F18B176973BFEAD443428598000503230BB2F3604F009616654A802E62FFFBD6F1D705EFCFB97AF948E8EC5A10E87';
wwv_flow_imp.g_varchar2_table(114) := '7E2520400048A0C8A10FD1F575C1661CDC13107A35D3EC9FCF697F23C4E37E69CE93D0464D0008AD2289F687109068E1150CDBE76E7F167F05055734040280A262C63E14D76F0634CF04F09E80D82B1E7FFF7D9EF367F18FBFDEDA464000D056D1C8C7E3';
wwv_flow_imp.g_varchar2_table(115) := 'FA8E806608E08D8191173CE2EEFBBCE1CF0C930FFC445C6CA55D2700282D6CCCC32204C45CBD34FAEEFA6EFFA6068B7F1AF322B651120062AB5822FDF509018684AF082632310218A6EB57FD58FC0328165D682B40006082042BE0734F002120D832AAEA';
wwv_flow_imp.g_varchar2_table(116) := 'D89E7DFBE5E4F019E73171B7BF33150D6B102000D480CE21DD057C9E0E307BE53141775B5ABA0BF83CE3DFDC2B8BBFBB2F2DEB112000D4E3CE513D047CDE18D80C01DC1CE8014CD3B602BE77FA9B37FCF5F63764496717B208042D400008BA3C74AE29E0';
wwv_flow_imp.g_varchar2_table(117) := '1B02B824C0DC2942E0E8F12179FBD011E75D99C59F37FC3973D1B066010240CD05E0F0EE023E1F106AEE954B02EEBEB4FC50C09CF27F7DEF3E19796FCC99850FFB3853D130100102402085A01B6E022604989B0327C72FB96DF0C17D015C1270E64ABEA1';
wwv_flow_imp.g_varchar2_table(118) := 'EF237E068CC53FF9691325000120CAB2A5DDE92C21804B0269CF1997D19B2FF9BDB9FF6DAFBBFC59FC5D646913AA000120D4CAD02FAB80EFBB02CC0EB92460654DB281799FFF8E9777CBF4CCACD7F87BFA96494FEF32AF6D688C4028020480502A413F32';
wwv_flow_imp.g_varchar2_table(119) := '0964B939D084002E0964E256B991EF8D7E06813BFD554E85E406450048AEE4FA069CF5928009029B376D94B5AB56EA4361445601F32E7F73A39FEF5FFD5CEFB7D2D220120102402485A29B76812C9704CC5E57DCD69007EFBF57BABB3AED07A145F40259';
wwv_flow_imp.g_varchar2_table(120) := '5EEAD31C34A7FCA32F3F0358204000603AA812C87249C000705940D534B8E960CCC23F7CFAACD773FDCD1D71CA5FFFFC487184048014ABAE7CCC592F091004F44E8C2CD7F99B1A5D4B7BE63FE5CB0F02DA040800DA2ACA78AE0B64BD24D00C025B1EB85F';
wwv_flow_imp.g_varchar2_table(121) := '1A03DCE11DF3943277F7EFD977C0EB853EFCD51F73C5E9BB8F0001C0478BB6D10964BD24D01CE8E0FA75F22B77DFC9FD019155DE9CEE7F6768488E1C1BCAD4735EE99B898D8D22132000445630BAEB2F90E79240F36CC0F2C67259B766156704FCF92BDD';
wwv_flow_imp.g_varchar2_table(122) := 'C22CFC877F7E42864E9ECA745CB3F0772DFD24CFF667D263A3D8040800B1558CFE6616C81B049A618047073397A0B40DCF5FB828478E9DC874AABFD929EEF02FAD3CEC3850010240A085A15BE50964F9A8D08DBDE1A981F2EAE3BA67F3EADE63EF9C92E3';
wwv_flow_imp.g_varchar2_table(123) := '27DEF17E967FE131B8C3DF559C76DA040800DA2ACA789C05E63F2A3431267357E79CB7210864A62A6CC33C8FF3DDB8F073BABFB0B2B0A30805080011168D2E172750C46581E6A501F37AE15B07FAB94FA0B8F27C644F452DFCF3F5E21DFE255589DDC624';
wwv_flow_imp.g_varchar2_table(124) := '400088A95AF4B534011304CC2786CD5981BC3FCDCB038481BC9222CD453FEF69FE664FCC6B7C7B071AD2D1B1387FE7D80302910B1000222F20DD2F566076665A2E4F5C92D9999942764C18F0676C2EFA43A74EC9E4E494FF0E6EB205D7F90B616427CA04';
wwv_flow_imp.g_varchar2_table(125) := '0800CA0ACA708A11306702A62FFFA2B020C06582F6752963D13747340B7F4F6FBF98B7F9F18300021F152000302310682350E4A581858749FDCC8059F02F4F4DCB7BA36352E45FFA4D63738DDF2CFA9CEAE7D71B81D60204006607020E0245DD2CD8EA50';
wwv_flow_imp.g_varchar2_table(126) := '261098970D2D6F0CA8FC3CB159F04746C7646A6A5ACE9D3F9FEB79FD5686CD97F8B0F03B4C689A2020220400A601021E02CD20602E0FE4797CD076C88581A0BBAB2BBA270B9AA7F4CD38DF3E74C436DC5CFF9EB7F7E5E263E38405080009179FA1671730';
wwv_flow_imp.g_varchar2_table(127) := '41E0CACC4CE1F709B43B4360FE9D394BF0FEFF0E8809064BBBBB6AFB4EC1C2D3F8A64F174746646E6EAE94BFEE6FE6C2C29F7DFEB22502468000C03C4020A7405567056CE1A067E952E9EE5E2A3D4BBBA5BBBBEB7A7313149A3F2630989FEEAECEEBFF3F';
wwv_flow_imp.g_varchar2_table(128) := 'B390377FCC75F9E6CFD4F4FBFF6C4EDB377FCC226FBEB057D4DDF9BEF4CD45FF96259DB2A4F3C371F9EE87F608204000600E2050A840D9F70A14DAD94876C6A21F49A1E86674029C0188AE64743806011304E6AE5E9D7FB150112F178A61CC45F69145BF';
wwv_flow_imp.g_varchar2_table(129) := '484DF685C0CD050800CC0C044A16200CB801B3E8BB39D10A81A20408004549B21F041C044C18303FE60642F3D6C194CF0E9805DF3CA77F4B6797704DDF61F2D00481820508000583B23B047C059A4F149840706DEE6AA16F1FF4ED4B99EDCD827FCB922E';
wwv_flow_imp.g_varchar2_table(130) := 'E958BC9805BF4C68F68D80A30001C0118A66085425A02510344FE91BB79EDE6555F1711C0410701420003842D10C813A059AF7115C9B9B9BBF74607EEA3E5B601678F3D3FCABFEFD7FE6F1BC3AE709C746C0478000E0A3455B04021458785F81E95E332C';
wwv_flow_imp.g_varchar2_table(131) := '34BB6A8242F3A7D976E15B0C9B0BB969B3F0DDF98B3EF864AE3965DFFC31FF7E514707CFE007380FE81202BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF';
wwv_flow_imp.g_varchar2_table(132) := '0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC810104000010410F0152000F88AD11E01041040000105020400';
wwv_flow_imp.g_varchar2_table(133) := '05456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B4470001041040408100014041111902020820800002BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18';
wwv_flow_imp.g_varchar2_table(134) := 'ED114000010410502040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC81010';
wwv_flow_imp.g_varchar2_table(135) := '4000010410F0152000F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B4470001041040408100014041111902020820800002BE0204005F31DA23800002';
wwv_flow_imp.g_varchar2_table(136) := '0820A0408000A0A0880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820';
wwv_flow_imp.g_varchar2_table(137) := 'E02B4000F015A33D0208208000020A0408000A8AC810104000010410F0152000F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B4470001041040408100';
wwv_flow_imp.g_varchar2_table(138) := '014041111902020820800002BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E0';
wwv_flow_imp.g_varchar2_table(139) := '2B467B0410400001041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC810104000010410F0152000F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232';
wwv_flow_imp.g_varchar2_table(140) := '040410400001047C050800BE62B4470001041040408100014041111902020820800002BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF0001C0578CF60820';
wwv_flow_imp.g_varchar2_table(141) := '800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC810104000010410F0152000F88AD11E010410400001050204000545640808208000';
wwv_flow_imp.g_varchar2_table(142) := '0208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B4470001041040408100014041111902020820800002BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18ED11400001041050';
wwv_flow_imp.g_varchar2_table(143) := '2040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC810104000010410F01520';
wwv_flow_imp.g_varchar2_table(144) := '00F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B4470001041040408100014041111902020820800002BE0204005F31DA238000020820A0408000A0A0';
wwv_flow_imp.g_varchar2_table(145) := '880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001041408100014149121208000020820E02B4000F015A33D';
wwv_flow_imp.g_varchar2_table(146) := '0208208000020A0408000A8AC810104000010410F0152000F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C050800BE62B44700010410404081000140411119020208';
wwv_flow_imp.g_varchar2_table(147) := '20800002BE0204005F31DA238000020820A0408000A0A0880C010104104000015F010280AF18ED114000010410502040005050448680000208208080AF0001C0578CF60820800002082810200028282243400001041040C0578000E02B467B0410400001';
wwv_flow_imp.g_varchar2_table(148) := '041408100014149121208000020820E02B4000F015A33D0208208000020A0408000A8AC810104000010410F0152000F88AD11E0104104000010502040005456408082080000208F80A10007CC5688F00020820808002010280822232040410400001047C';
wwv_flow_imp.g_varchar2_table(149) := '050800BE62B4470001041040408100014041111902020820800002BE02FF1FE2E0A987C093018F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11138292140056313100)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000187449444154785EED5D7D8C1DD5753FF376EDFDF29A75DF16F0175E4760AC1410142511C2C576036D15B5258A94B6F92B3654C5';
wwv_flow_imp.g_varchar2_table(2) := '2B8A63A98A50584560A56B8A2A55C6B45D13098C235595AAAA52FB0752D3129B04CB4968826330B581E0E70F6C63BC5DDBEBFDB277DF9433CB3CCFCECE7B6F3EEEDCB91FBF27A1C4F6CCBDE7FCCE39BF39E7DC3B771CC20F0800016B1170ACD51C8A0301';
wwv_flow_imp.g_varchar2_table(3) := '20402000380110B018011080C5C687EA400004001F000216230002B0D8F8501D088000E00340C062044000161B1FAA030110007C0008588C0008C062E34375200002800F00018B110001586C7CA80E044000F0012060310220008B8D0FD5810008003E00';
wwv_flow_imp.g_varchar2_table(4) := '042C46000460B1F1A13A100001C0078080C50880002C363E5407022000F80010B018011080C5C687EA400004001F000216230002B0D8F8501D088000E00340C062044000161B1FAA030110007C0008588C000820C2F88F3CF75237FFF5E2E9E945FE3F5F';
wwv_flow_imp.g_varchar2_table(5) := '731CEFEFF0D3038105AE3B1A94F4726BEB95979F7C74CEDFE9A149BE525A4B00DB9E1DEA9BA9D20687A8CF216755D5A13EC7A53E22EF3FFCCC45A0E23A5429B9546115ABE4BEDE52A5CACEEFF6EF3757E5FA9A594100C160771D67BDE3D2061B8D0D9D1B';
wwv_flow_imp.g_varchar2_table(6) := '22E0118243B49F49E18581FE576CC0CB5802E0A0AF56691302DE0637CE4DC70A91BBB754A5FDA666084611801FF444CE3791CAE71614B60EEC91C1AE81FE674C02C00802E0C077ABCED32ED126938C035D9444A0C265825375F79A9015684D005E6DEF3A';
wwv_flow_imp.g_varchar2_table(7) := '7B50D32B1928C60BE53AB4BF65C6DDAE331168490078E21B1F5B5A29F8E94AD22B4EC9DDBEF33BFD5E2351A79F7604B07570E81922E7699D4086AC5620A0658F401B0240BA6F451099A064A5547237EA920D684100DBBE37B4A15A72F699E01DD0C10A04';
wwv_flow_imp.g_varchar2_table(8) := 'B4C906942780270687367DBA536F8F156E03250D43C0DDAEFAB2A1D204F0ADC1DD7BB0B467584C58A78EDA24A02C013CB163F73E2CEF59172D462ACCAB04CF0F6CD9ACA2724A12009EFC2ABA0A64CA86809A998072048065BE6C6E86BB5546403D12508A';
wwv_flow_imp.g_varchar2_table(9) := '00D0ED57D979219B1804D42201650860F6451EE7B81890310A10501601A5F60928430068FA29EBB0104C3002FC0EC10B4F6DD92878D854C3294100A8FB53D90E37698D801AA540E10480D45F6B2F86F0E911A894AAEEE6A2DF242C9C0090FAA7F720DCA9';
wwv_flow_imp.g_varchar2_table(10) := '37022A9402851200BAFE7A3B30A4CF8E40A9EA6E2C320B289400F0F4CFEE4018416F048ACE020A23003CFDF5765C482F0E8122B380C20800DB7DC5391046D21B8122B380C20860EBE06E576FB3417A20200C81CAAE812DAB858D9660A0420800EFF827B0';
wwv_flow_imp.g_varchar2_table(11) := '102EB5048162F6051442005B0777F3965F7C82CB12D7869AB11028240B904E0078FAC772065C642102453403A51300B6FD5AE8D950392602F2CB80020800E97F4C6FC065962150C46A40110480EEBF658E0D75E323B06B608BD498943A19EAFFF88E802B';
wwv_flow_imp.g_varchar2_table(12) := 'ED4440761F402A0160F38F9D4E0DADE32320BB0C904A0058FE8BEF08B8D25A04A42E07CA2600D4FFD6FA35148F8980990480833F629A1F97598F80CC3E80B40C000D40EBFD1A00C444C04802400330A6F571191020791B82A465002000F83510888780CC';
wwv_flow_imp.g_varchar2_table(13) := '9500690480D37FE2191F5701012309004B80706C20101B01692B01D232001C0012DBF8B8100890AC2DC12000381B105010812BAD0B16BFFCE4A3A3798B268500B60DBEB8B44AEE99BC95C1F840C014044AE42CDB39F0D8D9BCF50101E48D30C607022910';
wwv_flow_imp.g_varchar2_table(14) := '0001A4000DB7000153100001986249E8010452206014013CBEE3FB6B5ADCEAB11438E01620602502334EE9F67F78EA2FDECB5B79293D001040DE66C4F8A621000230CDA20AE93333335D9366667A9A5A5A5BBD3FB7B4CCFE2F7EC523000228DE06DA4AC0';
wwv_flow_imp.g_varchar2_table(15) := '01CE817DEDEA94A7C3B5A9499AFDBB99583AB5B4B67864506A69A5856DED546A69F1FE173F79088000E461ADFD4C1CDCD7A6A6BC20E760BF3A351BF8A27F4C0C0B16B67B64D0DED9257A788C17400004007768880007FBE4F858AE01DF48003F4B68EF5C';
wwv_flow_imp.g_varchar2_table(16) := '0432C8C157410039806AC29057A726697CF452D3A77C575787A76E6FB997BA3A3BA8A3A39D3ADADBA9B3633695EF686FABC13131793D63189F98A489C9499ABA7A8D4647AFD0C4C4389DFF64B82174C80CC47B1608403CA65A8F38367A8926C7AFD4ADE3';
wwv_flow_imp.g_varchar2_table(17) := '39E0BB3A3BA9B75CA6DF58D243E5253708D3D72788E1918B746178844E9C3C55776C2603CE0ABABAC5CD2F4C118D0602016864AC3C45E5C01FBB7C29720A0EFA552B577A4FF7154B6FCA538C39633321342303104136738000B2E1A7FDDD9CEA8F5E1C8E';
wwv_flow_imp.g_varchar2_table(18) := '7CE273E0AF5D739BD4A0AF07A84F06A74E7F14592A30117475F7A04F90D0234100090133E5726EEE8D8E0C47D6F8AB6E5949B7DFBA7A4EFDAE92DE4C06C73E381E59222C6C6BA3EE2565EC3588693010404CA04CBAAC5EBAFFF9B56B68C5B29B950DFCB0';
wwv_flow_imp.g_varchar2_table(19) := '0D98084E9F3947EF1E9DBB931565417C6F0501C4C74AFB2BEB3DF539D5BFE7AE3B8536F46482C54470E8ED23F34A0326829EDE9B900D3430060840A6A7163817D7FA172F9C9F2381DFDCBBED73AB0A944CCCD4BC9C78FAECC774BC52A1B1B189DAA0C806';
wwv_flow_imp.g_varchar2_table(20) := '1AE30B0210E37F4A8F1295F2DFF89B65BAEF0BBFADB4DC6984E36CE083CA49FAF0C3CA5CB25B7C03960C23000501A4F1328DEEB978E1E3798D3EAEF54D78EAD733036703274F9F99D71BE80209CC830C04A051302715351CFCBAD7FA49F5E76CE0C0CFDE';
wwv_flow_imp.g_varchar2_table(21) := '9C5312F0BB058B9794930E65ECF52000034D1BD5ECE3E07F70FD3A03B56DAC521409705FA07CD372EBB08852180460A01B849FFCA6D6FB714DC72470F8DD6374EEDCC7739A8320012210405C2FD2E43A047FB4A1A2F60CA01C00016812D6F1C444F037C6';
wwv_flow_imp.g_varchar2_table(22) := '29AA39683B09200388175BCA5F155EEAB33DEDAF67B0A84D4336AF0E8000940FEDE6028637F920F89B37067FFA3F6FD1E5CBD7BF88D5D37BA395C79181009AC797D25770C77FF8DCF5AFA1D9DAED4F6AA4F0EA80ADDB864100493D47B1EBC375FFBAFBBE';
wwv_flow_imp.g_varchar2_table(23) := 'A8ED9E7ED9D03209FCF0473FAE4DCB6F12F2BB0336FD40001A5B3B5CF79BBEC32F0F53FDFAC4697AE7C8FFD686B6AD1F0002C8C3AB248C89BA5F0CC8BC32F0CB5FBD5D7B93904B81EE9EB235FD001080183F923E4A38F57FF82B0F4997C19409C3FD009B';
wwv_flow_imp.g_varchar2_table(24) := '4A011080865ECCC7745F1EB97E82EEBDF7DCA5C4B15D1A425913995F25FEC55B876B7FB665550004A0A1D70E7FFC51ED0C3F5B97FCF8A9ED1F2DCEC790673D9D38AA14B061AB30084033020837FE6CEBFABFFFE1093A71EAD49C37FC7C13667DDB71E4F2';
wwv_flow_imp.g_varchar2_table(25) := '15FAF11B076B1EC16F0D9AFE652210806604107CFAF3E19D77DFB156330DD2895BEFD8AFA8D1B2AC861C7AE768EDB0511BDE1A0401A4F3C742EE0AD7FEBFF7BB0F6873806716C01A05FFCD3796E9DCF9F95F144A4B8EE1BD01A6670120802C9E29F95E1B';
wwv_flow_imp.g_varchar2_table(26) := '9FFE51C17FC7DA5BE9EB7FF410ADE95B51B3C07B95D334B4F75FE69041DA4CE0E09BBF9CB32C68722F0004203988D34E177EFADB50FB4705FF830FDC478FFEE91FD685F1AFFE7A179D393BFBDE7FDA6DD1E15E80C92B022080B41129F9BEE0BABF0D9DFF';
wwv_flow_imp.g_varchar2_table(27) := '34C1CF2619BE384ADBFFEE45FA6478C4B3505AA20C660126EF0B0001480EE4B4D39DFFE864ED56D3D7FDD306BF0FD0B3FFF8033A7CE498F7C7B4BD80E1914BF4C6C19F7B6398DC0C0401A48D4889F785D37F9377FD650D7E36CB9E7F7D957EB8EF8067A1';
wwv_flow_imp.g_varchar2_table(28) := 'B4D9922DCD401080C4404E3B5530FD4FFB444B3BB7CCFB44043FCBFB1FAF1DA07FFEB757331100DF6C4319000290E9E129E70AA6FF696BDA94534BBB4D54F0B3C0CFEDFE273AF4F6BB994A00AF9F604119000290E6E2E926B221FD1719FCDC04FCCB81BF';
wwv_flow_imp.g_varchar2_table(29) := '11D22F09970126AE068000D2C5A5B4BBF8A51F26812C0D2D69C2A6984864F0F3F4C10620FF396BBF24580698788028082085D3CABC25B8F9C7B4EE7FDEC12F022F7EF7C0FFFCB889AB01200099D19C62AE60FD6FD2D6DFBC833F6DF73F6CA2601FC05B55';
wwv_flow_imp.g_varchar2_table(30) := '587E4B0A2BAA7B0B08405DDB78A97FF0BDFFACE9AC2AAAEA12FC8C97E97D0010802A511121479000443DD18A5657A7E0F7B10AF6014C3B3310045074443498DFB406A08EC1CFE609BE220C024817304EBADB92DDF5F88EEFAF6971ABB37B400DF8053700';
wwv_flow_imp.g_varchar2_table(31) := 'A57DB34D1518740D7EC62FD80834EDBD006400AA4448841C3257003840FD5F477B9B5054740E7E06C2E40D412000A1AE2E76B0BC7700467D319735E0D7687BCBBDB472F9D2CC67EDE91EFC6102E03F9BB4120002101BB34247CB7309307C0A6E3DC1B394';
wwv_flow_imp.g_varchar2_table(32) := '1E26043FE3125E090001247773F400126216FEE69FC83D00C19A368E58690ED63025F8A308A07CF3326A69698D039DF2D7200350D44479114078630BABFF8DAF7D85EEBFF74E2AF72CA6F74F7C44C77E7D925EFBC9C139C76B25210193821F0420264090';
wwv_flow_imp.g_varchar2_table(33) := '0124C4314C00A23601FDF7EB6FD48ED4E60335FBBFF92773CED6F3C5E4976A76FCFD9EDAF15A7E6FE0C1F5EB1A6A625AF0FBCAFEFBABFF55D3DBA497829001240C4C5997E74100E1BA7FFBB7FB23833FA863F08CBD6624606AF0B3DE41024009903C0A90';
wwv_flow_imp.g_varchar2_table(34) := '0124C42C8F1220B8A165C5F265F4B74F3D1E4BAA38246072F0830062B949C38B40000931CC9B00FEECAB7F400F3FF43BB1A56A4402A6077F78150019406CB7A95D0802488E19895E060CEE69E7C6DF1F7FF9FE44524591C0FD5FFA021D7AFB48ED1C7D1E';
wwv_flow_imp.g_varchar2_table(35) := 'B0D9D1DD8D260DBFCFAFC23B1058064CE426911783005260287A2350B004F8F2BA2FD29F7FE3E1C4528549203C8069C1CFFA99FC4A309A80894340DE0DA2B702079B807CB8C5F3DBBF4DE59EEEC40AD5230113839FC109E366D29782400089DD5FDE0DA2';
wwv_flow_imp.g_varchar2_table(36) := '5F060AA7B249FB008D56074C0D7ED639B871CAB463C14000F2E239F14CC1D78145D5C2C13280054AD30BF015E1F3F70F1F394A1BD77D29713FC11F43C59A3F6CA820662080C46EECDD801E400ADCC6462FD1D8E54BDE9DA20820AA639F850452A855BB45';
wwv_flow_imp.g_varchar2_table(37) := '87E06761839BA74CFB5A3032802C1E9CF3BD57A726E9E285F3DE2C49B6E236138B49E0C0CFDEACED08CC9A09349B2FEADF75097E963DB809080490C6DAC80052A116DE0B20F2A3204592804EC11FDE3D69D21E00764A6400A94253DE4DA21B8141C98B20';
wwv_flow_imp.g_varchar2_table(38) := '019D829FB13279050004202F8E53CF94471FA02812D02DF81927931B802080D46129EFC6BCFA00B24940C7E0678CFEF3B5D76972EAAA079769F53F08405E1CA79E29CF3E802C12D035F84DAFFF4100A9C352EE8DC13E80A8E5C0280DF2E809E81AFC36A4';
wwv_flow_imp.g_varchar2_table(39) := 'FF2000B9719C7AB6E00742442E07E64D023A073F6363F2F29F6F7BAC02A40E4B7937CA2A037C8D446402BA07BF0DE93F320079319C79265965800812D03DF81903D33F0B8E0C207348CA1D20B81AC0338BDC14544F9334998009C11F7EFDD7A43300C3B6';
wwv_flow_imp.g_varchar2_table(40) := '460920378E33CD263B0B606193908009C1CF3ABF75F81D3A79FAAC672B7E6DDAA4D77F41009942B0D89BC3CDC07BEEBA33F3977BE268144502FCFAEF577FFF01EF28F19FFEEA28ED3BF0733A7CE4FA6719F35CAD882373DA6BC2AF4C9BB8F61FC4061940';
wwv_flow_imp.g_varchar2_table(41) := '5A4F29E03E6E06721630333DE3CDBEEA969574F71D6BA548124502F526D635F8C34F7FFEB3495F018AB21708404AF8889B249805C8EA05F8D247BD4A1CD64C262989437576A470ED6FDAA7C04100A23DA680F1C25940DEFB02A254E413722E0C0FCF3908';
wwv_flow_imp.g_varchar2_table(42) := '94E5905592E4057BB0F36F7AEDEF63880C202F6FCA71DCF08AC0BDF7DC452B96DE94E38CD1437346303E3129A50F91B772E1757F933BFFE801E4ED4D12C60FAE08F0D3978FE7EE686F9330B37953841B7F0BDBDAA8A7573EA116812C3280225017306778';
wwv_flow_imp.g_varchar2_table(43) := '77A0CE8D370170641A2298FAF340B63CFD5957104026D729F6E6E059012CC9E7D7AEA1DB3EB7AA58A1349B3DFCA9741B1A7F28013473D27AE27216303A324C57A7A6BC4B4C68C4C9344DB8EB6F53EA8F26A04C4FCB71AE7029807E403CB0B9EEFFC5A1C3';
wwv_flow_imp.g_varchar2_table(44) := '34FC7F176B379876DE5F1C245002C44149F16BC27B038A581A541CA279E2D95CF7A304D0CD5B63C81BEE078004EA83160E7EDBEA7E10408C80D2F1923009E8BC2B2F2FFCC3C16F63DD0F02C8CBBB0A1E37DC1464714002D78D82E09FEFA0E801141CB4A2';
wwv_flow_imp.g_varchar2_table(45) := 'A78F22019403730FF860CC6D7FF263154074E429345EF87D017F89D0C6DD82512F3021F8AF3B2B3200850257A4284C02BC3AE07F5CD44612181B1FA7370EBE593BD71F4F7E940022634CF9B1EA91C0AA952B8DDF3118DEE187E08F76576400CA87717601';
wwv_flow_imp.g_varchar2_table(46) := 'C3AB033C22BF3B70F79DBF65DC0B44F5CE2CB079A9AF91078100B2C7971623845F21F64B0293B281A8A73EBFD7DFDD53A6856DED5AD849B6902000D98817385FD40A814F043A1FE651EFA98F665F7367030134C7C8A82BA2FA02BE82BC67E0F65B576B53';
wwv_flow_imp.g_varchar2_table(47) := '1670E09F3E738EDE3DFADE3C1B21E58FE7B620807838197755A36CA0B7DC4B2B972F55F6A41F0EFC631F1CA713274FCDB30B3FF5BB9794A9A5A5D5389BE5A11008200F54351AD35B2A1CBD583B6938283A6F205ABBE6B6428E1B8B82F0C2F0081D7DFF83';
wwv_flow_imp.g_varchar2_table(48) := '396FF0F9D771ADDFD5DD43ED9D5D1AA15FBCA82080E26D50B8047E5930397EA52E117056D05B5E229D0C782DFFCCB94F22D37C068E03BFBD73117575DF50388E3A0A0002D0D16A39C9CC44706D6AAA6E46E0370C7D32E8686F175E26F8757DF8D4E1B0CA';
wwv_flow_imp.g_varchar2_table(49) := '087C314E00021083A371A37069C019817FDA503D05B94CE8EAECA48E8E4EEAEAECA08E8E766262E8EC985D760B1E54CAC1EDFFF834E189C9499A9898A4B1F1099A98189F73CC78BDF990EA8B75351080583C8D1BCDCF0AE290415ECAE3699F17B2381434';
wwv_flow_imp.g_varchar2_table(50) := '3F640D1CD92703DE54549D996E9A1DA485C00F78AFE4406D9F16C658F721038805132E8A42C02704FE379F14F8EFFC6F1736438D039D97EB167CB64B6FC1C236ECD86B069AE07F0701080614C35D4780C920EA87357A75BC0404A08E2D200910908E8051';
wwv_flow_imp.g_varchar2_table(51) := '04B06DF0C5A55572CF4847111302014D110001686A38880D044420502267D9CE81C7CE8A18ABD1184EDE13F0F8C80064A08C394C420004609235A10B104888805104F0C8732F752F9ABE76392106B81C08588BC095D6058B5F7EF2D1D1BC019052028000';
wwv_flow_imp.g_varchar2_table(52) := 'F23623C6370D01A308808DB37570B76B9A91A00F10C80B815D035BA43C9CA54CF219011C27A2BEBC00C3B840C020042ABB06B6AC96A18F34027862C7EE7D8E4B1B642885398080CE08B80EED7FE1A92D1B65E80002908132E60002091070885E797E60CB';
wwv_flow_imp.g_varchar2_table(53) := 'E604B7A4BE541A016C1D1C7A86C8793AB5A4B811085882809104B0ED7B431BAA25679F2536849A402035022EB99B5F18E87F25F500096E9496016C7B76A8AF5A75B811881F1000020D102895DCD53BBFD35F910112084006CA980308244040D612208B24';
wwv_flow_imp.g_varchar2_table(54) := '8D007832AC0424F0025C6A2502325700A413C0B70677EF718936596959280D04622020B301289D00D0088CE101B8C46A04643600E513001A81563B37946F8E80CC06A07402401FA0B903E00A7B11909DFE174200D81064AF8343F36608B8DB770DF43FD3';
wwv_flow_imp.g_varchar2_table(55) := 'EC2A91FF2E75158005471F40A4F93096490894AAEEC69DDFEDDF2F5327E904803240A67931974608487B0330884931043038B4C921678F46C681A8402057046477FF7D650A21006C0BCED59730B88608C8EEFE174A00280334F450889C1B024574FF0B27';
wwv_flow_imp.g_varchar2_table(56) := '00340373F3270CAC19024534FF0A270064019A7929C4CD0501D97BFFC34A14D203F085402F20179FC2A01A2150E4D39F612A9400900568E4A91055380245D6FE4A94002C04B200E17E85013541A0A8CE7F109EC233002F0BC0BE004D5C16628A4340FEB6';
wwv_flow_imp.g_varchar2_table(57) := 'DF28D99520009402E2DC0A23A98F40D18D3FE532009402EA3B2D241487800AA9BF323D8020AC2805C4391946521381A2BBFE61549429017CC1F0BAB09A8E0BA9B22350D47EFF46922B47002C2C4820BBB36104B5105061C94FE9266050B8D9A5413E3C14';
wwv_flow_imp.g_varchar2_table(58) := '5F1252CB8D214D1A04546AFA295F02F8028204D2B81AEE510D01559FFC4A3601A38C8772403597863CF1115063AD5FBB1E405860AC0EC477395CA90602AA75FBEBA1A26413304A582E09665C678FE3D206354C0C2980C07C04B8DE6F71DCCDB2BEED97D5';
wwv_flow_imp.g_varchar2_table(59) := '06DA1080AF284A82AC26C7FDF921A07ECAAF4D13B09191381B70ABCED3F8CC587EAE8C91E323A0DB533FA899761940507810417C27C595E211D039F0B5590588633610411C94708D28047869CFA9BA7B659FE12F4A7E6332803020FEDE01D771D6A35998';
wwv_flow_imp.g_varchar2_table(60) := '87BB583D6685C8DD2BFBCB3D7923AE7509D0AC4FC0BB09410679BB90D1E37B415FAAD27E139EF65196329600C2BD82992A6D2891B3BEEA501FB203A383368B725EC0F300A63DE9EB8162050144950AFC773E29F0FFFF8C18FA8888FFC3CF5C042AAE4395';
wwv_flow_imp.g_varchar2_table(61) := '924B954FDFCE3BC16A9AFC846F66462B09A019288F3CF752375FB3787A7A917FED35C7F1FE0E3F3D1058E0BAA34149770E3C76560FC9E54A0902908B376603024A21000250CA1C100608C845000420176FCC060494420004A09439200C10908B0008402E';
wwv_flow_imp.g_varchar2_table(62) := 'DE980D082885000840297340182020170110805CBC311B10500A01108052E6803040402E022000B978633620A014022000A5CC016180805C04400072F1C66C4040290440004A9903C20001B9088000E4E28DD980805208800094320784010272110001C8';
wwv_flow_imp.g_varchar2_table(63) := 'C51BB30101A510000128650E080304E4220002908B376603024A21000250CA1C100608C845000420176FCC060494420004A09439200C10908B0008402EDE980D082885000840297340182020170110805CBC311B10500A01108052E6803040402E022000';
wwv_flow_imp.g_varchar2_table(64) := 'B978633620A01402FF0F852A28E2789C35240000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11138292403213313101)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138283757789313088)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15605630881682
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138284038401313089)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15605630881686
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138284347900313089)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15605630881688
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138284676896313089)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15605630881691
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138284919461313090)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15605630881691
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138285233168313090)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15605630881691
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138285579861313090)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15605630881691
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138285880309313091)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15605630881697
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138286168837313091)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138286469262313091)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138286795950313091)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138287015060313091)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138287399537313091)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11138287633058313092)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15605630881698
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(11138294166756313102)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15605630881861
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(11138294530266313104)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_version_scn=>15605630881864
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11138793845147320308)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15605630957672
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11138802124645320315)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(11138802124645320315)||'.'
,p_location=>'STATIC'
,p_version_scn=>15605630957790
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138802487610320315)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138802884967320315)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138803290256320315)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11138814755369320324)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(11138814755369320324)||'.'
,p_location=>'STATIC'
,p_version_scn=>15605630957903
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138815073503320324)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138815499190320324)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138815890728320325)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138816272248320325)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/participant_nume_participant
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11138343268805314585)
,p_lov_name=>'PARTICIPANT.NUME_PARTICIPANT'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PARTICIPANT'
,p_return_column_name=>'PARTICIPANT_ID'
,p_display_column_name=>'NUME_PARTICIPANT'
,p_default_sort_column_name=>'NUME_PARTICIPANT'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605630896061
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11138794587916320310)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(11138794587916320310)||'.'
,p_location=>'STATIC'
,p_version_scn=>15605630957708
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11138794833953320310)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11138294770187313104)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11138846060153320656)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(11138288507376313092)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138288717934313093)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138322610050313306)
,p_short_name=>'Organizator'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138337661278313959)
,p_short_name=>'Participant'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138355784078314595)
,p_short_name=>'Bilet'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138374797207315212)
,p_short_name=>'Scena'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138391517826315854)
,p_short_name=>'Artist'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138405608108316482)
,p_short_name=>'Spectacol'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138629379083317102)
,p_short_name=>'Sponsor'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138641115164317748)
,p_short_name=>'Administreaza'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138652683098318364)
,p_short_name=>'Desfasoara'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138665258827318992)
,p_short_name=>'Emite'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138681015244319608)
,p_short_name=>'Sustine'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138697855556320230)
,p_short_name=>'Sponsorizeaza'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11138836867996320344)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11140155376142651342)
,p_short_name=>'Exercitiul C'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11140494728748389320)
,p_short_name=>'Exercitiul D'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11142546513146761551)
,p_short_name=>'Exercitiul F Compus'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11142978865772495840)
,p_short_name=>'Excercitiul F Complex'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11138289452877313093)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(11139531555697612878)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(11139531555697612878)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_1)'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#fdfdfd","@g_Accent-OG":"#141313"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#11139531555697612878.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323031342C20323032332C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A2F2A210D0A20436F707972696768742028632920323031342C20323032332C20';
wwv_flow_imp.g_varchar2_table(2) := '4F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D7765696768742D73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A';
wwv_flow_imp.g_varchar2_table(3) := '203172656D3B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E67';
wwv_flow_imp.g_varchar2_table(4) := '2D783A20302E373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A';
wwv_flow_imp.g_varchar2_table(5) := '20302E323572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A2031';
wwv_flow_imp.g_varchar2_table(6) := '72656D3B0D0A20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(7) := '772D736D293B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D737061';
wwv_flow_imp.g_varchar2_table(8) := '63696E672D783A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464';
wwv_flow_imp.g_varchar2_table(9) := '696E673A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A652C203172656D29202B20766172282D2D612D63762D6865616465722D69';
wwv_flow_imp.g_varchar2_table(10) := '74656D2D73706163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(11) := '2D2D612D63762D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E';
wwv_flow_imp.g_varchar2_table(12) := '373572656D3B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D626163';
wwv_flow_imp.g_varchar2_table(13) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(14) := '3172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(15) := '63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E';
wwv_flow_imp.g_varchar2_table(16) := '672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E74';
wwv_flow_imp.g_varchar2_table(17) := '2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(18) := '636865636B626F782D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768743A20302E31323572656D3B0D0A20202D2D612D636865636B';
wwv_flow_imp.g_varchar2_table(19) := '626F782D6C6162656C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(20) := '3A20302E323572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D646576';
wwv_flow_imp.g_varchar2_table(21) := '2D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D0A20202D2D612D646174657069636B65722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(22) := '756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D626F726465722D7261646975733A20766172282D2D75742D62';
wwv_flow_imp.g_varchar2_table(23) := '6F726465722D726164697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D6865616465722D626F726465722D63';
wwv_flow_imp.g_varchar2_table(24) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069';
wwv_flow_imp.g_varchar2_table(25) := '636B65722D6D6F6E74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D73697A653A2031';
wwv_flow_imp.g_varchar2_table(26) := '72656D3B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(27) := '2D612D646174657069636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E';
wwv_flow_imp.g_varchar2_table(28) := '742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D';
wwv_flow_imp.g_varchar2_table(29) := '7469746C652D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B';
wwv_flow_imp.g_varchar2_table(30) := '65722D63616C656E6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D68';
wwv_flow_imp.g_varchar2_table(31) := '65616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D7465';
wwv_flow_imp.g_varchar2_table(32) := '78742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E74';
wwv_flow_imp.g_varchar2_table(33) := '2D73697A653A20302E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F';
wwv_flow_imp.g_varchar2_table(34) := '726465722D7261646975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D63';
wwv_flow_imp.g_varchar2_table(35) := '6F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D6461';
wwv_flow_imp.g_varchar2_table(36) := '74657069636B65722D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D646174657069636B65722D63616C65';
wwv_flow_imp.g_varchar2_table(37) := '6E6461722D6461792D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(38) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D746578742D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(39) := '72282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261';
wwv_flow_imp.g_varchar2_table(40) := '636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65';
wwv_flow_imp.g_varchar2_table(41) := '722D74696D657069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E742D73697A653A20302E38373572';
wwv_flow_imp.g_varchar2_table(42) := '656D3B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D636F6E7472';
wwv_flow_imp.g_varchar2_table(43) := '6F6C2D736570657261746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D793A20302E37';
wwv_flow_imp.g_varchar2_table(44) := '3572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D666F6E742D73697A653A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(45) := '66732D636F6E74726F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(46) := '2D626F64792D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D7061';
wwv_flow_imp.g_varchar2_table(47) := '6464696E672D783A203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(48) := '742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078';
wwv_flow_imp.g_varchar2_table(49) := '293B0D0A20202D2D612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66732D6974656D2D737562';
wwv_flow_imp.g_varchar2_table(50) := '2D67726F75702D73706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D783A203172656D3B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(51) := '63686172742D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(52) := '63686172742D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D612D66732D6368617274';
wwv_flow_imp.g_varchar2_table(53) := '2D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D612D66732D63686172742D62';
wwv_flow_imp.g_varchar2_table(54) := '61636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D736861646F773A20766172282D2D75742D726567696F6E2D626F782D73';
wwv_flow_imp.g_varchar2_table(55) := '6861646F77293B0D0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D726164';
wwv_flow_imp.g_varchar2_table(56) := '6975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D74657874';
wwv_flow_imp.g_varchar2_table(57) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075';
wwv_flow_imp.g_varchar2_table(58) := '742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(59) := '612D66696C6564726F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E';
wwv_flow_imp.g_varchar2_table(60) := '672D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(61) := '202D2D612D66696C6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D6C696E652D6865696768743A20302E38373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(62) := '202D2D612D66696C6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D7769647468';
wwv_flow_imp.g_varchar2_table(63) := '3A20313572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D626F726465722D7261646975733A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(64) := '0D0A20202D2D612D66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(65) := '696E7075742D626F726465722D7374796C653A206461736865643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B0D0A20202D2D612D6669656C642D73656C6563742D6172726F';
wwv_flow_imp.g_varchar2_table(66) := '772D70616464696E673A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D67762D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(67) := '766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D63656C6C2D70616464696E672D783A20302E357265';
wwv_flow_imp.g_varchar2_table(68) := '6D3B0D0A20202D2D612D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D67762D696E7365727465642D6261';
wwv_flow_imp.g_varchar2_table(69) := '636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(70) := '67762D6772616E64746F74616C2D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D696E666F2D7368';
wwv_flow_imp.g_varchar2_table(71) := '616465293B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D68';
wwv_flow_imp.g_varchar2_table(72) := '65616465722D63656C6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D783A20302E373572656D3B0D';
wwv_flow_imp.g_varchar2_table(73) := '0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(74) := '6172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D62757474';
wwv_flow_imp.g_varchar2_table(75) := '6F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(76) := '2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(77) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D65';
wwv_flow_imp.g_varchar2_table(78) := '73736167652D70616464696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(79) := '202D2D612D67762D6E6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D67762D6E6F646174';
wwv_flow_imp.g_varchar2_table(80) := '612D6D6573736167652D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(81) := '6F6C6F72293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F7264';
wwv_flow_imp.g_varchar2_table(82) := '65722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465';
wwv_flow_imp.g_varchar2_table(83) := '722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E756261';
wwv_flow_imp.g_varchar2_table(84) := '722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73697A65';
wwv_flow_imp.g_varchar2_table(85) := '3A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D70';
wwv_flow_imp.g_varchar2_table(86) := '616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D6D656E752D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(87) := '646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D6D656E752D7365702D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(88) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(89) := '2D2D612D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E';
wwv_flow_imp.g_varchar2_table(90) := '672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A20302E373572656D3B0D0A20202D2D612D6D';
wwv_flow_imp.g_varchar2_table(91) := '656E752D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D7261646975733A20307265';
wwv_flow_imp.g_varchar2_table(92) := '6D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D736861646F773A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(93) := '742D736861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(94) := '3A20302E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79293B0D0A20202D2D612D706F707570';
wwv_flow_imp.g_varchar2_table(95) := '6C6F762D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D666F6E742D7765696768742C20766172282D';
wwv_flow_imp.g_varchar2_table(96) := '2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D63686970';
wwv_flow_imp.g_varchar2_table(97) := '2D72656D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(98) := '612D706F7075706C6F762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D73746174652D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(99) := '722C20766172282D2D612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F722C2072676261';
wwv_flow_imp.g_varchar2_table(100) := '28302C20302C20302C20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D72762D626F64792D70616464';
wwv_flow_imp.g_varchar2_table(101) := '696E672D793A20302E323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D612D70657263656E742D6368';
wwv_flow_imp.g_varchar2_table(102) := '6172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975733A20302E31323572656D3B';
wwv_flow_imp.g_varchar2_table(103) := '0D0A20202D2D612D70657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D63686172742D6261722D6261636B67';
wwv_flow_imp.g_varchar2_table(104) := '726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172';
wwv_flow_imp.g_varchar2_table(105) := '792D636F6E7472617374293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D';
wwv_flow_imp.g_varchar2_table(106) := '636F6E74726F6C732D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D';
wwv_flow_imp.g_varchar2_table(107) := '636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(108) := '6465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D73706163696E673A20302E357265';
wwv_flow_imp.g_varchar2_table(109) := '6D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D77696474683A2031382E';
wwv_flow_imp.g_varchar2_table(110) := '373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6C696E652D';
wwv_flow_imp.g_varchar2_table(111) := '6865696768743A203172656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(112) := '2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(113) := '2D696E7075742D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(114) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F';
wwv_flow_imp.g_varchar2_table(115) := '726465722D726164697573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(116) := '72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D783A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(117) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768743A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(118) := '2D2D612D73706C69747465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D6865696768743A2033';
wwv_flow_imp.g_varchar2_table(119) := '72656D3B0D0A20202D2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D73';
wwv_flow_imp.g_varchar2_table(120) := '746172726174696E672D73746172732D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(121) := '2D7377697463682D77696474683A20322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(122) := '2D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(123) := '6C6F723A20766172282D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D73';
wwv_flow_imp.g_varchar2_table(124) := '77697463682D636865636B65642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D636865636B';
wwv_flow_imp.g_varchar2_table(125) := '65642D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E32357265';
wwv_flow_imp.g_varchar2_table(126) := '6D3B0D0A20202D2D612D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D626F726465722D';
wwv_flow_imp.g_varchar2_table(127) := '77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(128) := '2D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E';
wwv_flow_imp.g_varchar2_table(129) := '6E65722D626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D7061646469';
wwv_flow_imp.g_varchar2_table(130) := '6E672D783A20302E3572656D3B0D0A20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D747265657669';
wwv_flow_imp.g_varchar2_table(131) := '65772D6E6F64652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(132) := '302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20202D2D612D74';
wwv_flow_imp.g_varchar2_table(133) := '726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C616365686F6C64';
wwv_flow_imp.g_varchar2_table(134) := '65722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E67';
wwv_flow_imp.g_varchar2_table(135) := '2D793A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(136) := '2E373572656D3B0D0A20202D2D612D636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(137) := '3A20302E31323572656D3B0D0A20202D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(138) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(139) := '202D2D612D636869702D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(140) := '676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20';
wwv_flow_imp.g_varchar2_table(141) := '202D2D612D636869702D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(142) := '756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(143) := '72676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(144) := '352C203235352C20302E32293B0D0A20202D2D612D636869702D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D62';
wwv_flow_imp.g_varchar2_table(145) := '6F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D61';
wwv_flow_imp.g_varchar2_table(146) := '72792D7368616465293B0D0A20202D2D612D736561726368726573756C74732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D706164';
wwv_flow_imp.g_varchar2_table(147) := '64696E672D783A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D793A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F723A20233030303B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(148) := '726573756C74736974656D2D626F726465722D77696474683A203170783B0D0A20202D2D612D726573756C74736974656D2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(149) := '202D2D612D726573756C74736974656D2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D';
wwv_flow_imp.g_varchar2_table(150) := '2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D6761703A20302E3572656D';
wwv_flow_imp.g_varchar2_table(151) := '3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73706163696E673A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D726573756C';
wwv_flow_imp.g_varchar2_table(152) := '74736974656D2D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(153) := '74656D2D7375627469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C74736974656D2D6865616465722D73';
wwv_flow_imp.g_varchar2_table(154) := '706163696E672C20302E323572656D293B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E';
wwv_flow_imp.g_varchar2_table(155) := '2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962';
wwv_flow_imp.g_varchar2_table(156) := '757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D666F6E742D73697A653A20';
wwv_flow_imp.g_varchar2_table(157) := '302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(158) := '6F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D73697A';
wwv_flow_imp.g_varchar2_table(159) := '653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F6E742D73697A653A20302E37357265';
wwv_flow_imp.g_varchar2_table(160) := '6D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D726573756C74736974656D2D62616467652D626F';
wwv_flow_imp.g_varchar2_table(161) := '726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D737061';
wwv_flow_imp.g_varchar2_table(162) := '63696E673A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(163) := '75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B0D0A20202D2D612D73656172636872';
wwv_flow_imp.g_varchar2_table(164) := '6573756C74732D706167696E6174696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D7370696E6E65722D73697A653A203272';
wwv_flow_imp.g_varchar2_table(165) := '656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D77696474683A20302E323572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A20202D2D612D6C6F76652D61706578';
wwv_flow_imp.g_varchar2_table(166) := '2D6D617267696E3A203020302E31323572656D3B0D0A20202D2D612D6C6F76652D617065782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C2023463030293B0D0A20202D2D6A75692D6469616C';
wwv_flow_imp.g_varchar2_table(167) := '6F672D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D6A';
wwv_flow_imp.g_varchar2_table(168) := '75692D6469616C6F672D746578742D636F6C6F723A20766172282D2D75742D726567696F6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F7229293B0D0A20202D2D6A75692D';
wwv_flow_imp.g_varchar2_table(169) := '6469616C6F672D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F';
wwv_flow_imp.g_varchar2_table(170) := '672D626F726465722D77696474683A20303B0D0A20202D2D6A75692D6469616C6F672D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(171) := '626F726465722D72616469757329293B0D0A20202D2D6A75692D6469616C6F672D736861646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D726567696F6E2D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(172) := '2C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D7061';
wwv_flow_imp.g_varchar2_table(173) := '6464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(174) := '723A207472616E73706172656E743B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D6A75692D';
wwv_flow_imp.g_varchar2_table(175) := '6469616C6F672D7469746C656261722D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D';
wwv_flow_imp.g_varchar2_table(176) := '0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(177) := '29293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F';
wwv_flow_imp.g_varchar2_table(178) := '672D7469746C652D636C6F73652D77696474683A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F7365';
wwv_flow_imp.g_varchar2_table(179) := '2D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465';
wwv_flow_imp.g_varchar2_table(180) := '722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D7261646975732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(181) := '2D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D';
wwv_flow_imp.g_varchar2_table(182) := '793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D793A20302E3735';
wwv_flow_imp.g_varchar2_table(183) := '72656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(184) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(185) := '6F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(186) := '6465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A20302E3572656D3B0D0A20202D2D6A7569';
wwv_flow_imp.g_varchar2_table(187) := '2D746F6F6C7469702D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D73697A653A20302E38373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(188) := '20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D666F6E742D73697A653A20312E3132';
wwv_flow_imp.g_varchar2_table(189) := '3572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A20233030303030303B0D0A20202D2D6F6A65742D';
wwv_flow_imp.g_varchar2_table(190) := '746F6F6C7469702D7365636F6E646172792D746578742D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F6C6F723A207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(191) := '20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6C6F722D736368656D653A206461726B3B0D0A20202D2D75742D70616C657474652D67656E657269633A20233064306430643B0D0A20202D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(192) := '67656E657269632D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C657474652D67656E657269632D73686164653A20233036303630363B0D0A20202D2D75742D70616C657474652D67656E657269632D746578743A20236666663B0D';
wwv_flow_imp.g_varchar2_table(193) := '0A20202D2D612D67762D6865616465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D7265706F72742D63656C6C2D616C74';
wwv_flow_imp.g_varchar2_table(194) := '2D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C20';
wwv_flow_imp.g_varchar2_table(195) := '3235352C20302E303235293B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D6865616465722D626F782D736861646F773A2076617228';
wwv_flow_imp.g_varchar2_table(196) := '2D2D75742D736861646F772D736D293B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(197) := '352C203235352C20302E31293B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D77696474683A203170783B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(198) := '6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D77696474683A203072656D3B0D0A20202D2D75742D6E61767461';
wwv_flow_imp.g_varchar2_table(199) := '62732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(200) := '6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465722D7261646975733A20313670783B0D0A20202D2D75742D626F64792D6E61762D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(201) := '6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D626F726465722D77696474683A203070783B0D0A20202D2D75742D626F64792D7469746C652D626F782D';
wwv_flow_imp.g_varchar2_table(202) := '736861646F773A203020317078203020302072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D626F64792D7469746C652D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C7572';
wwv_flow_imp.g_varchar2_table(203) := '28387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372756D622D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(204) := '742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D0A20202D2D75742D6865726F2D726567696F6E2D7469746C652D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(205) := '723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A203170783B0D0A20202D2D75742D726567696F6E2D626F782D736861646F773A20766172';
wwv_flow_imp.g_varchar2_table(206) := '282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D726567696F6E2D6C69';
wwv_flow_imp.g_varchar2_table(207) := '6E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D75742D726567696F6E2D62';
wwv_flow_imp.g_varchar2_table(208) := '6F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D793A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(209) := '0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20';
wwv_flow_imp.g_varchar2_table(210) := '202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D6C69';
wwv_flow_imp.g_varchar2_table(211) := '6E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(212) := '6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D626F782D736861646F773A2076';
wwv_flow_imp.g_varchar2_table(213) := '6172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D626F';
wwv_flow_imp.g_varchar2_table(214) := '726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(215) := '7573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D6261636B67726F756E642D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(216) := '282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D776964746829';
wwv_flow_imp.g_varchar2_table(217) := '3B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D75742D616C6572742D7469746C652D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(218) := '696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6D';
wwv_flow_imp.g_varchar2_table(219) := '672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(220) := '6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D75742D636172646C6973742D626F782D736861646F773A2076617228';
wwv_flow_imp.g_varchar2_table(221) := '2D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162732D6974656D2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(222) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D';
wwv_flow_imp.g_varchar2_table(223) := '636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D66';
wwv_flow_imp.g_varchar2_table(224) := '6F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(225) := '352C203235352C20302E31293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D726573756C';
wwv_flow_imp.g_varchar2_table(226) := '7473726567696F6E2D6261636B67726F756E642D636F6C6F723A20233030303B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(227) := '0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D62';
wwv_flow_imp.g_varchar2_table(228) := '61636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20233236323632363B0D0A20202D2D75742D77702D747261636B2D636F6C6F';
wwv_flow_imp.g_varchar2_table(229) := '723A20233236323632363B0D0A20202D2D612D7172636F64652D73697A653A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D6D643A20313672656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(230) := '2D2D612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C';
wwv_flow_imp.g_varchar2_table(231) := '652D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C';
wwv_flow_imp.g_varchar2_table(232) := '652D636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7072696D61';
wwv_flow_imp.g_varchar2_table(233) := '72792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(234) := '2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135';
wwv_flow_imp.g_varchar2_table(235) := '293B0D0A20202D2D612D636861742D757365722D7072696D6172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D62';
wwv_flow_imp.g_varchar2_table(236) := '61636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C65';
wwv_flow_imp.g_varchar2_table(237) := '7474652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(238) := '2D612D636861742D757365722D7365636F6E646172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F726465722D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(239) := '2D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D62';
wwv_flow_imp.g_varchar2_table(240) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D636861742D6D6573736167652D61637469';
wwv_flow_imp.g_varchar2_table(241) := '6F6E2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D6461';
wwv_flow_imp.g_varchar2_table(242) := '6E676572293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(243) := '3B0D0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20236666663B0D0A20202D2D66632D6576656E';
wwv_flow_imp.g_varchar2_table(244) := '742D73656C65637465642D6F7665726C61792D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A2072676261283235352C203235352C203235352C20';
wwv_flow_imp.g_varchar2_table(245) := '302E32293B0D0A20202D2D612D6469616772616D2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(246) := '6F7229293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D65';
wwv_flow_imp.g_varchar2_table(247) := '6E742D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C20302C20302E3329203020367078203132';
wwv_flow_imp.g_varchar2_table(248) := '70783B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20233333333333333B0D';
wwv_flow_imp.g_varchar2_table(249) := '0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E642D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33382D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E';
wwv_flow_imp.g_varchar2_table(250) := '642D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(251) := '31293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33312D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D69';
wwv_flow_imp.g_varchar2_table(252) := '6E61746F722D746578742D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935';
wwv_flow_imp.g_varchar2_table(253) := '293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(254) := '752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D';
wwv_flow_imp.g_varchar2_table(255) := '626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6469616772616D2D';
wwv_flow_imp.g_varchar2_table(256) := '6261636B67726F756E64293B0D0A20202D2D612D6469616772616D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D7465726D696E6174';
wwv_flow_imp.g_varchar2_table(257) := '65643A20766172282D2D75742D70616C657474652D7761726E696E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D646961677261';
wwv_flow_imp.g_varchar2_table(258) := '6D2D726F7574652D6163746976653A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D70616C657474652D7375636365737329';
wwv_flow_imp.g_varchar2_table(259) := '3B0D0A20202D2D612D6469616772616D2D726F7574652D64656661756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F7574652D77616974696E673A2076617228';
wwv_flow_imp.g_varchar2_table(260) := '2D2D75742D70616C657474652D696E666F293B0D0A20202D2D612D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D0A20202D2D612D63722D636865636B';
wwv_flow_imp.g_varchar2_table(261) := '626F782D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A2020';
wwv_flow_imp.g_varchar2_table(262) := '2D2D75742D616C7465726E6174652D68656164696E672D666F6E742D66616D696C793A20766172282D2D612D626173652D666F6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D';
wwv_flow_imp.g_varchar2_table(263) := '7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D6E6F726D616C293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B';
wwv_flow_imp.g_varchar2_table(264) := '0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A203170783B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D636F6D706F6E656E742D626F';
wwv_flow_imp.g_varchar2_table(265) := '782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E30';
wwv_flow_imp.g_varchar2_table(266) := '3235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E6572';
wwv_flow_imp.g_varchar2_table(267) := '2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(268) := '2C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A20236666663B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F723A20236666663B0D0A';
wwv_flow_imp.g_varchar2_table(269) := '20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A2072676261283235352C203235352C203235352C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(270) := '2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(271) := '2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(272) := '6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F';
wwv_flow_imp.g_varchar2_table(273) := '6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F772D736D3A203020302E31323572656D20302E323572656D202D302E3132357265';
wwv_flow_imp.g_varchar2_table(274) := '6D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(275) := '772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D7261646975732D736D3A20302E31323572656D3B0D0A20202D2D75742D626F726465722D72';
wwv_flow_imp.g_varchar2_table(276) := '61646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F726465722D7261646975733A20766172282D2D75742D626F726465722D7261646975732D6D';
wwv_flow_imp.g_varchar2_table(277) := '64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20236664666466643B0D0A20202D2D75742D70616C657474652D7072696D6172792D636F6E74726173743A20233365336533653B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(278) := '2D70616C657474652D7072696D6172792D73686164653A20233139313931393B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A20766172282D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F74207B';
wwv_flow_imp.g_varchar2_table(279) := '0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E652D636F6C6F723A20236664666466643B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(280) := '2D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6261636B67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D75742D686561';
wwv_flow_imp.g_varchar2_table(281) := '6465722D746578742D636F6C6F723A20233365336533653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6261636B67726F756E642D636F6C6F723A20233134313331333B0D0A20202D2D75742D626F64792D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(282) := '3A20236563656365633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20233138313731373B0D0A20202D2D75742D626F64792D616374696F6E732D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(283) := '6F723A20236630663066303B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A20233138313731373B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D686F7665722D';
wwv_flow_imp.g_varchar2_table(284) := '6261636B67726F756E642D636F6C6F723A20233332333033303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B67726F756E642D636F6C6F723A20233163316131613B0D0A20202D2D75742D626F64792D7469';
wwv_flow_imp.g_varchar2_table(285) := '746C652D746578742D636F6C6F723A20236634663466343B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A2072676261283234342C203234342C203234342C20302E3635293B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(286) := '0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20233231316631663B0D0A20202D2D75742D626F64792D736964656261722D746578742D636F6C6F723A20236563656365633B0D0A7D0D0A3A726F6F7420';
wwv_flow_imp.g_varchar2_table(287) := '7B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20236361636163613B0D0A20202D2D75742D626F64792D6E61762D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D626F64792D6E6176';
wwv_flow_imp.g_varchar2_table(288) := '2D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D747261636B2D6261636B6772';
wwv_flow_imp.g_varchar2_table(289) := '6F756E642D636F6C6F723A20236361636163613B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20236361636163613B0D0A20202D2D75742D6E6176746162732D746578742D636F6C6F723A20233030303030303B';
wwv_flow_imp.g_varchar2_table(290) := '0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(291) := '3A20236231623162313B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(292) := '72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20236361636163613B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D746578742D636F6C6F723A20233030303030';
wwv_flow_imp.g_varchar2_table(293) := '303B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A20236231623162313B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E';
wwv_flow_imp.g_varchar2_table(294) := '742D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D69';
wwv_flow_imp.g_varchar2_table(295) := '74656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D6865616465722D6D656E75626172';
wwv_flow_imp.g_varchar2_table(296) := '2D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D686561';
wwv_flow_imp.g_varchar2_table(297) := '6465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20233030303030303B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D626F726465722D636F6C6F723A207267626128302C20';
wwv_flow_imp.g_varchar2_table(298) := '302C20302C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A20236231623162313B0D0A20202D2D612D74726565766965772D6E6F64';
wwv_flow_imp.g_varchar2_table(299) := '652D73656C65637465642D746578742D636F6C6F723A20233030303030303B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D6261636B67726F756E642D636F6C6F723A20236231623162313B0D0A20202D2D612D7472656576';
wwv_flow_imp.g_varchar2_table(300) := '6965772D6E6F64652D666F63757365642D746578742D636F6C6F723A20233030303030303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20233030303030303B';
wwv_flow_imp.g_varchar2_table(301) := '0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A2023666466';
wwv_flow_imp.g_varchar2_table(302) := '6466643B0D0A20202D2D75742D74726565766965772D62616467652D746578742D636F6C6F723A20233365336533653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20233061303930393B0D';
wwv_flow_imp.g_varchar2_table(303) := '0A20202D2D612D6D656E752D746578742D636F6C6F723A20236532653265323B0D0A20202D2D612D6D656E752D64656661756C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D65';
wwv_flow_imp.g_varchar2_table(304) := '6E752D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20236664';
wwv_flow_imp.g_varchar2_table(305) := '666466643B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20233365336533653B0D0A20202D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F';
wwv_flow_imp.g_varchar2_table(306) := '63757365642D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D75742D726567696F6E2D6865616465';
wwv_flow_imp.g_varchar2_table(307) := '722D746578742D636F6C6F723A20236439643964393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F723A20233061303930393B0D0A20202D2D75742D726567696F6E2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(308) := '6F723A20236532653265323B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A20233061303930393B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A202330';
wwv_flow_imp.g_varchar2_table(309) := '66306530653B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20233234323232323B0D0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233066306530';
wwv_flow_imp.g_varchar2_table(310) := '653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20233937393739373B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20236666666666663B0D';
wwv_flow_imp.g_varchar2_table(311) := '0A20202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20233038303830383B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D746578743A20236335633563353B0D0A7D0D0A3A726F6F74207B0D0A';
wwv_flow_imp.g_varchar2_table(312) := '20202D2D75742D70616C657474652D737563636573733A20233338383732393B0D0A20202D2D75742D70616C657474652D737563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D736861';
wwv_flow_imp.g_varchar2_table(313) := '64653A20233063316530393B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A20233535376434653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233030364244383B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(314) := '75742D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E666F2D73686164653A20233030313833303B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A2023343037';
wwv_flow_imp.g_varchar2_table(315) := '3561633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20234642434534413B0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20233030303B0D0A20202D2D75742D70';
wwv_flow_imp.g_varchar2_table(316) := '616C657474652D7761726E696E672D73686164653A20233337326431303B0D0A20202D2D75742D70616C657474652D7761726E696E672D746578743A20233861373433323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D6461';
wwv_flow_imp.g_varchar2_table(317) := '6E6765723A20234545303730313B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20233334303230303B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(318) := '2D70616C657474652D64616E6765722D746578743A20236237343334303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D636F6C6F722D313A20233330394644423B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A2023666666666666';
wwv_flow_imp.g_varchar2_table(319) := '3B0D0A20202D2D752D636F6C6F722D323A20233133423643463B0D0A20202D2D752D636F6C6F722D322D636F6E74726173743A20236534663966643B0D0A20202D2D752D636F6C6F722D333A20233245424642433B0D0A20202D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(320) := '2D636F6E74726173743A20236630666366623B0D0A20202D2D752D636F6C6F722D343A20233343414638353B0D0A20202D2D752D636F6C6F722D342D636F6E74726173743A20236630666166363B0D0A20202D2D752D636F6C6F722D353A202338314242';
wwv_flow_imp.g_varchar2_table(321) := '35463B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D363A20234444444535333B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20233261326130383B0D0A2020';
wwv_flow_imp.g_varchar2_table(322) := '2D2D752D636F6C6F722D373A20234642434534413B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20233434333330323B0D0A20202D2D752D636F6C6F722D383A20234544383133453B0D0A20202D2D752D636F6C6F722D382D636F6E74';
wwv_flow_imp.g_varchar2_table(323) := '726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D393A20234539354235343B0D0A20202D2D752D636F6C6F722D392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31303A20234538354438383B0D';
wwv_flow_imp.g_varchar2_table(324) := '0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31313A20234341353839443B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666666666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(325) := '2D752D636F6C6F722D31323A20233835344539423B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A20236636663066383B0D0A20202D2D752D636F6C6F722D31333A20233541363841443B0D0A20202D2D752D636F6C6F722D31332D63';
wwv_flow_imp.g_varchar2_table(326) := '6F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31343A20234146424143353B0D0A20202D2D752D636F6C6F722D31342D636F6E74726173743A20233331336134343B0D0A20202D2D752D636F6C6F722D31353A2023364538';
wwv_flow_imp.g_varchar2_table(327) := '3539383B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31363A20233539623265323B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666666666663B';
wwv_flow_imp.g_varchar2_table(328) := '0D0A20202D2D752D636F6C6F722D31373A20233432633564393B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173743A20233035313531373B0D0A20202D2D752D636F6C6F722D31383A20233538636363393B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(329) := '2D31382D636F6E74726173743A20233039316331633B0D0A20202D2D752D636F6C6F722D31393A20233633626639643B0D0A20202D2D752D636F6C6F722D31392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32303A';
wwv_flow_imp.g_varchar2_table(330) := '20233961633937663B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233230333331363B0D0A20202D2D752D636F6C6F722D32313A20236534653537353B0D0A20202D2D752D636F6C6F722D32312D636F6E74726173743A20233463';
wwv_flow_imp.g_varchar2_table(331) := '346330663B0D0A20202D2D752D636F6C6F722D32323A20236663643836653B0D0A20202D2D752D636F6C6F722D32322D636F6E74726173743A20233639346630323B0D0A20202D2D752D636F6C6F722D32333A20236631396136353B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(332) := '636F6C6F722D32332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32343A20236564376337363B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(333) := '722D32353A20236564376461303B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32363A20236435373962313B0D0A20202D2D752D636F6C6F722D32362D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(334) := '3A20236666666666663B0D0A20202D2D752D636F6C6F722D32373A20233964373161663B0D0A20202D2D752D636F6C6F722D32372D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32383A20233762383662643B0D0A20';
wwv_flow_imp.g_varchar2_table(335) := '202D2D752D636F6C6F722D32382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32393A20236266633864313B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20233364343835343B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(336) := '2D636F6C6F722D33303A20233862396461643B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D33313A20233139386363613B0D0A20202D2D752D636F6C6F722D33312D636F6E';
wwv_flow_imp.g_varchar2_table(337) := '74726173743A20236536663466633B0D0A20202D2D752D636F6C6F722D33323A20233032613562653B0D0A20202D2D752D636F6C6F722D33322D636F6E74726173743A20236331663666653B0D0A20202D2D752D636F6C6F722D33333A20233138623161';
wwv_flow_imp.g_varchar2_table(338) := '653B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236430663966383B0D0A20202D2D752D636F6C6F722D33343A20233234613437353B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236432663565383B0D0A';
wwv_flow_imp.g_varchar2_table(339) := '20202D2D752D636F6C6F722D33353A20233661616434323B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A20236636666266343B0D0A20202D2D752D636F6C6F722D33363A20236339636133393B0D0A20202D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(340) := '362D636F6E74726173743A20233033303330313B0D0A20202D2D752D636F6C6F722D33373A20236439623133623B0D0A20202D2D752D636F6C6F722D33372D636F6E74726173743A20233132306530333B0D0A20202D2D752D636F6C6F722D33383A2023';
wwv_flow_imp.g_varchar2_table(341) := '6437366132373B0D0A20202D2D752D636F6C6F722D33382D636F6E74726173743A20236666666666653B0D0A20202D2D752D636F6C6F722D33393A20236432343233623B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A202366666666';
wwv_flow_imp.g_varchar2_table(342) := '66663B0D0A20202D2D752D636F6C6F722D34303A20236431343336663B0D0A20202D2D752D636F6C6F722D34302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34313A20236261336438383B0D0A20202D2D752D636F';
wwv_flow_imp.g_varchar2_table(343) := '6C6F722D34312D636F6E74726173743A20236664663966623B0D0A20202D2D752D636F6C6F722D34323A20233737333339333B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236538643566303B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(344) := '34333A20233364346561333B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A20236538656266363B0D0A20202D2D752D636F6C6F722D34343A20233863396562303B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(345) := '236666666666663B0D0A20202D2D752D636F6C6F722D34353A20233465373339313B0D0A20202D2D752D636F6C6F722D34352D636F6E74726173743A20236561656666343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(346) := '65722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233430343034303B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(347) := '236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F723A20236532653265323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D';
wwv_flow_imp.g_varchar2_table(348) := '7261646975733A203270783B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A202331';
wwv_flow_imp.g_varchar2_table(349) := '30306630663B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A20236538653865383B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20233261323832383B0D0A20202D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(350) := '642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A20233033303330333B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(351) := '6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20236664666466643B0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236664666466643B0D0A20202D2D75742D6669656C';
wwv_flow_imp.g_varchar2_table(352) := '642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233331333133313B0D0A';
wwv_flow_imp.g_varchar2_table(353) := '20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A20233130306630663B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A';
wwv_flow_imp.g_varchar2_table(354) := '20202D2D612D636865636B626F782D746578742D636F6C6F723A20233331333133313B0D0A20202D2D612D636865636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D612D636865636B62';
wwv_flow_imp.g_varchar2_table(355) := '6F782D636865636B65642D746578742D636F6C6F723A20233331333133313B0D0A20202D2D612D636865636B626F782D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D';
wwv_flow_imp.g_varchar2_table(356) := '0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20233061303930393B0D0A20202D2D612D67762D63656C6C2D626F726465722D636F6C6F723A20233232323232323B0D0A20202D2D612D67762D6865616465';
wwv_flow_imp.g_varchar2_table(357) := '722D63656C6C2D626F726465722D636F6C6F723A20233234323232323B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20236532653265323B0D0A20202D2D612D7265706F72742D63';
wwv_flow_imp.g_varchar2_table(358) := '6F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20233061303930393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A203372656D3B0D0A7D0D0A3A726F6F74207B0D0A';
wwv_flow_imp.g_varchar2_table(359) := '20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D73';
wwv_flow_imp.g_varchar2_table(360) := '6964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E74656E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(361) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(362) := '723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3129';
wwv_flow_imp.g_varchar2_table(363) := '3B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(364) := '2C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(365) := '7574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20';
wwv_flow_imp.g_varchar2_table(366) := '202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A2072676261283235352C';
wwv_flow_imp.g_varchar2_table(367) := '203235352C203235352C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D337078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B';
wwv_flow_imp.g_varchar2_table(368) := '67726F756E642D636F6C6F723A20233561353935393B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(369) := '6F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D';
wwv_flow_imp.g_varchar2_table(370) := '2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(371) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D';
wwv_flow_imp.g_varchar2_table(372) := '617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D73';
wwv_flow_imp.g_varchar2_table(373) := '6861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(374) := '2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E';
wwv_flow_imp.g_varchar2_table(375) := '2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(376) := '74746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(377) := '2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E65';
wwv_flow_imp.g_varchar2_table(378) := '3B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D43617264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F';
wwv_flow_imp.g_varchar2_table(379) := '757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B';
wwv_flow_imp.g_varchar2_table(380) := '6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233234323432343B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(381) := '6F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(382) := '2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236630663066303B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(383) := '78742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(384) := '6F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D42757474';
wwv_flow_imp.g_varchar2_table(385) := '6F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D70';
wwv_flow_imp.g_varchar2_table(386) := '6C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E';
wwv_flow_imp.g_varchar2_table(387) := '47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A2023666466';
wwv_flow_imp.g_varchar2_table(388) := '6466643B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236430643064303B0D0A20202D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(389) := '6F7665722D746578742D636F6C6F723A20233234323432343B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D6275';
wwv_flow_imp.g_varchar2_table(390) := '74746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564';
wwv_flow_imp.g_varchar2_table(391) := '202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65';
wwv_flow_imp.g_varchar2_table(392) := '64202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(393) := '7472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236430643064303B0D0A7D0D0A2E742D427574746F6E2D2D686F742E74';
wwv_flow_imp.g_varchar2_table(394) := '2D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(395) := '2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(396) := '65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D4275';
wwv_flow_imp.g_varchar2_table(397) := '74746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F';
wwv_flow_imp.g_varchar2_table(398) := '742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_imp.g_varchar2_table(399) := '2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(400) := '6F723A20236430643064303B0D0A2020636F6C6F723A20236430643064303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234642434534413B0D0A20';
wwv_flow_imp.g_varchar2_table(401) := '202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236663646337633B0D0A20202D2D612D627574746F6E2D686F7665722D746578';
wwv_flow_imp.g_varchar2_table(402) := '742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236661633733313B0D0A20202D2D612D627574746F6E2D61';
wwv_flow_imp.g_varchar2_table(403) := '63746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(404) := '74746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(405) := '2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234642434534413B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(406) := '636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20233030303B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(407) := '427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(408) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A7D0D0A2E742D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(409) := '2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A2020';
wwv_flow_imp.g_varchar2_table(410) := '636F6C6F723A20233861373433323B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233338383732393B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(411) := '2D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233438616533353B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(412) := '2D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233330373332333B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(413) := '3A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(414) := '726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7375636365';
wwv_flow_imp.g_varchar2_table(415) := '73732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233338383732393B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(416) := '6E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E';
wwv_flow_imp.g_varchar2_table(417) := '742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E';
wwv_flow_imp.g_varchar2_table(418) := '743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F';
wwv_flow_imp.g_varchar2_table(419) := '6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A2020636F6C6F723A20233535376434653B0D';
wwv_flow_imp.g_varchar2_table(420) := '0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234545303730313B0D0A20202D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(421) := '746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236665323932343B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(422) := '282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236435303630313B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D63';
wwv_flow_imp.g_varchar2_table(423) := '6F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D62';
wwv_flow_imp.g_varchar2_table(424) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(425) := '64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234545303730313B0D';
wwv_flow_imp.g_varchar2_table(426) := '0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A20202D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(427) := '746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(428) := '627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861';
wwv_flow_imp.g_varchar2_table(429) := '646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E';
wwv_flow_imp.g_varchar2_table(430) := '6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(431) := '7574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A2020636F6C6F723A20236237343334303B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(432) := '723A20233937393739373B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236134613461343B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(433) := '2D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A2023386138613861';
wwv_flow_imp.g_varchar2_table(434) := '3B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(435) := '636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(436) := '746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(437) := '7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(438) := '652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B20';
wwv_flow_imp.g_varchar2_table(439) := '7B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(440) := '6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D707269';
wwv_flow_imp.g_varchar2_table(441) := '6D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C65747465';
wwv_flow_imp.g_varchar2_table(442) := '2D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(443) := '74746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_imp.g_varchar2_table(444) := '73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(445) := '6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E65';
wwv_flow_imp.g_varchar2_table(446) := '6E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C';
wwv_flow_imp.g_varchar2_table(447) := '0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(448) := '3365336533653B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(449) := '636B67726F756E642D636F6C6F723A20234545303730313B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F7665';
wwv_flow_imp.g_varchar2_table(450) := '72202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233338383732393B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42';
wwv_flow_imp.g_varchar2_table(451) := '7574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233937393739373B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E74';
wwv_flow_imp.g_varchar2_table(452) := '2D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E742D427574746F6E2D2D686F74';
wwv_flow_imp.g_varchar2_table(453) := '202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466643B0D0A7D0D0A3A726F';
wwv_flow_imp.g_varchar2_table(454) := '6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E653B0D0A20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(455) := '2D63762D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(456) := '642D636F6C6F723A20233061303930393B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D63762D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(457) := '636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D68';
wwv_flow_imp.g_varchar2_table(458) := '6F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A20302034707820302E3572656D2030207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(459) := '31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D746578742D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(460) := '72282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D73686164';
wwv_flow_imp.g_varchar2_table(461) := '6F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20236664666466643B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(462) := '2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(463) := '2D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(464) := '69636F6E2D6261636B67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20233365336533653B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A203130';
wwv_flow_imp.g_varchar2_table(465) := '30253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(466) := '0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A20233365336533653B0D0A20202D2D612D63762D696E697469616C732D6261636B';
wwv_flow_imp.g_varchar2_table(467) := '67726F756E642D636F6C6F723A20236664666466643B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D7765696768743A203430303B0D0A';
wwv_flow_imp.g_varchar2_table(468) := '20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20236132613261323B0D0A20202D2D612D63762D626F64792D70616464696E672D';
wwv_flow_imp.g_varchar2_table(469) := '783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F';
wwv_flow_imp.g_varchar2_table(470) := '6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(471) := '6768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20236132613261323B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(472) := '616374696F6E732D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E73';
wwv_flow_imp.g_varchar2_table(473) := '2D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D';
wwv_flow_imp.g_varchar2_table(474) := '0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D617267696E2D626C6F636B2D73746172743A207661';
wwv_flow_imp.g_varchar2_table(475) := '72282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A7D0D0A2E612D43617264566965772D66756C6C4C';
wwv_flow_imp.g_varchar2_table(476) := '696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F6375732D626F726465722D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(477) := '7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E612D43617264566965772D6D656469612061207B';
wwv_flow_imp.g_varchar2_table(478) := '0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(479) := '6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D70616464';
wwv_flow_imp.g_varchar2_table(480) := '696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D';
wwv_flow_imp.g_varchar2_table(481) := '3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20726762612832';
wwv_flow_imp.g_varchar2_table(482) := '35352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D62616467652D626163';
wwv_flow_imp.g_varchar2_table(483) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D29207B0D0A2020636F6C6F723A20696E6865';
wwv_flow_imp.g_varchar2_table(484) := '7269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A666F637573207B';
wwv_flow_imp.g_varchar2_table(485) := '0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(486) := '656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735';
wwv_flow_imp.g_varchar2_table(487) := '293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D62';
wwv_flow_imp.g_varchar2_table(488) := '6F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A20322E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(489) := '0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A207661';
wwv_flow_imp.g_varchar2_table(490) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A';
wwv_flow_imp.g_varchar2_table(491) := '20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D6376';
wwv_flow_imp.g_varchar2_table(492) := '2D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B0D0A';
wwv_flow_imp.g_varchar2_table(493) := '20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D';
wwv_flow_imp.g_varchar2_table(494) := '7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(495) := '302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(496) := '6C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D6564696120';
wwv_flow_imp.g_varchar2_table(497) := '7B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E';
wwv_flow_imp.g_varchar2_table(498) := '672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F63';
wwv_flow_imp.g_varchar2_table(499) := '6B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E';
wwv_flow_imp.g_varchar2_table(500) := '7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D69';
wwv_flow_imp.g_varchar2_table(501) := '6D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(502) := '65722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A';
wwv_flow_imp.g_varchar2_table(503) := '653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541';
wwv_flow_imp.g_varchar2_table(504) := '202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6261636B6772';
wwv_flow_imp.g_varchar2_table(505) := '6F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F6479202B202E612D43617264566965772D61';
wwv_flow_imp.g_varchar2_table(506) := '6374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(507) := '2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D636F6C756D6E3A20';
wwv_flow_imp.g_varchar2_table(508) := '343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E612D4361';
wwv_flow_imp.g_varchar2_table(509) := '7264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(510) := '656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E';
wwv_flow_imp.g_varchar2_table(511) := '612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D73746172743A20303B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(512) := '0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(513) := '352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A2034';
wwv_flow_imp.g_varchar2_table(514) := '72656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A207661';
wwv_flow_imp.g_varchar2_table(515) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A';
wwv_flow_imp.g_varchar2_table(516) := '20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D6376';
wwv_flow_imp.g_varchar2_table(517) := '2D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B0D0A20202D';
wwv_flow_imp.g_varchar2_table(518) := '2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20';
wwv_flow_imp.g_varchar2_table(519) := '202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67';
wwv_flow_imp.g_varchar2_table(520) := '726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(521) := '2D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(522) := '6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D62';
wwv_flow_imp.g_varchar2_table(523) := '6F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D';
wwv_flow_imp.g_varchar2_table(524) := '6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(525) := '2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73';
wwv_flow_imp.g_varchar2_table(526) := '697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D696E6C696E652D73746172743A20';
wwv_flow_imp.g_varchar2_table(527) := '63616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D';
wwv_flow_imp.g_varchar2_table(528) := '31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D';
wwv_flow_imp.g_varchar2_table(529) := '69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D4361726456';
wwv_flow_imp.g_varchar2_table(530) := '6965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D436172645669';
wwv_flow_imp.g_varchar2_table(531) := '65772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D4361726456';
wwv_flow_imp.g_varchar2_table(532) := '6965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(533) := '2031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A6529202F2032293B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(534) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6865616465722D697465';
wwv_flow_imp.g_varchar2_table(535) := '6D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C';
wwv_flow_imp.g_varchar2_table(536) := '6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F';
wwv_flow_imp.g_varchar2_table(537) := '6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542';
wwv_flow_imp.g_varchar2_table(538) := '202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D69636F6E57';
wwv_flow_imp.g_varchar2_table(539) := '726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E7365743B0D0A2020646973706C6179';
wwv_flow_imp.g_varchar2_table(540) := '3A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479207B0D0A2020746578742D616C6967';
wwv_flow_imp.g_varchar2_table(541) := '6E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A206175746F3B0D0A20206D617267696E2D696E';
wwv_flow_imp.g_varchar2_table(542) := '6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467653A6E6F74283A66697273742D';
wwv_flow_imp.g_varchar2_table(543) := '6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(544) := '6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A20206865696768743A20756E7365743B';
wwv_flow_imp.g_varchar2_table(545) := '0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474683A20756E7365743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(546) := '742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(547) := '2D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(548) := '2D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A7D0D0A2E742D436172';
wwv_flow_imp.g_varchar2_table(549) := '6473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(550) := '2D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(551) := '6C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(552) := '2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D706164';
wwv_flow_imp.g_varchar2_table(553) := '64696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(554) := '762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(555) := '6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D7365';
wwv_flow_imp.g_varchar2_table(556) := '636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D626F64793A6E6F74282E';
wwv_flow_imp.g_varchar2_table(557) := '6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469';
wwv_flow_imp.g_varchar2_table(558) := '612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D4361726456';
wwv_flow_imp.g_varchar2_table(559) := '6965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E';
wwv_flow_imp.g_varchar2_table(560) := '742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(561) := '74796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A';
wwv_flow_imp.g_varchar2_table(562) := '7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A2020202064';
wwv_flow_imp.g_varchar2_table(563) := '6973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F';
wwv_flow_imp.g_varchar2_table(564) := '6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D6669727374202E61';
wwv_flow_imp.g_varchar2_table(565) := '2D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D6564';
wwv_flow_imp.g_varchar2_table(566) := '69612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D';
wwv_flow_imp.g_varchar2_table(567) := '43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A202067726964';
wwv_flow_imp.g_varchar2_table(568) := '2D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(569) := '6C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D726F772D656E64';
wwv_flow_imp.g_varchar2_table(570) := '3A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D4361726473526567696F6E2D2D';
wwv_flow_imp.g_varchar2_table(571) := '7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6963';
wwv_flow_imp.g_varchar2_table(572) := '6F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D';
wwv_flow_imp.g_varchar2_table(573) := '43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D617828302C20766172282D2D61';
wwv_flow_imp.g_varchar2_table(574) := '2D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E';
wwv_flow_imp.g_varchar2_table(575) := '3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A20302E3837357265';
wwv_flow_imp.g_varchar2_table(576) := '6D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669656C642D696E707574';
wwv_flow_imp.g_varchar2_table(577) := '2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D';
wwv_flow_imp.g_varchar2_table(578) := '3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D7369';
wwv_flow_imp.g_varchar2_table(579) := '7A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B';
wwv_flow_imp.g_varchar2_table(580) := '0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E';
wwv_flow_imp.g_varchar2_table(581) := '742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(582) := '0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075';
wwv_flow_imp.g_varchar2_table(583) := '706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(584) := '696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E33373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(585) := '20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E3138373572656D3B';
wwv_flow_imp.g_varchar2_table(586) := '0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D';
wwv_flow_imp.g_varchar2_table(587) := '466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(588) := '20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D46';
wwv_flow_imp.g_varchar2_table(589) := '6F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(590) := '7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(591) := '69656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F';
wwv_flow_imp.g_varchar2_table(592) := '66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D';
wwv_flow_imp.g_varchar2_table(593) := '636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B';
wwv_flow_imp.g_varchar2_table(594) := '6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C';
wwv_flow_imp.g_varchar2_table(595) := '6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D';
wwv_flow_imp.g_varchar2_table(596) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D697465';
wwv_flow_imp.g_varchar2_table(597) := '6D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6974';
wwv_flow_imp.g_varchar2_table(598) := '656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E';
wwv_flow_imp.g_varchar2_table(599) := '742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D6865';
wwv_flow_imp.g_varchar2_table(600) := '6C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(601) := '65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(602) := '2D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C6520';
wwv_flow_imp.g_varchar2_table(603) := '73656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C0D0A';
wwv_flow_imp.g_varchar2_table(604) := '2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D';
wwv_flow_imp.g_varchar2_table(605) := '6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E742D466F726D2D6669';
wwv_flow_imp.g_varchar2_table(606) := '656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E373572656D3B0D';
wwv_flow_imp.g_varchar2_table(607) := '0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464';
wwv_flow_imp.g_varchar2_table(608) := '696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D3B';
wwv_flow_imp.g_varchar2_table(609) := '0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A';
wwv_flow_imp.g_varchar2_table(610) := '653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(611) := '75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(612) := '653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(613) := '75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D63';
wwv_flow_imp.g_varchar2_table(614) := '6869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E3572';
wwv_flow_imp.g_varchar2_table(615) := '656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7377697463682D77';
wwv_flow_imp.g_varchar2_table(616) := '696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D7377697463682D746F67';
wwv_flow_imp.g_varchar2_table(617) := '676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(618) := '69656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C';
wwv_flow_imp.g_varchar2_table(619) := '61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D7772';
wwv_flow_imp.g_varchar2_table(620) := '61707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D70';
wwv_flow_imp.g_varchar2_table(621) := '616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765';
wwv_flow_imp.g_varchar2_table(622) := '2E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D';
wwv_flow_imp.g_varchar2_table(623) := '69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574';
wwv_flow_imp.g_varchar2_table(624) := '746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(625) := '725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A2032';
wwv_flow_imp.g_varchar2_table(626) := '72656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C';
wwv_flow_imp.g_varchar2_table(627) := '64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C7042';
wwv_flow_imp.g_varchar2_table(628) := '7574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E617065';
wwv_flow_imp.g_varchar2_table(629) := '782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D66696C652D2D6E61';
wwv_flow_imp.g_varchar2_table(630) := '746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E3735';
wwv_flow_imp.g_varchar2_table(631) := '72656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65';
wwv_flow_imp.g_varchar2_table(632) := '722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C632876';
wwv_flow_imp.g_varchar2_table(633) := '6172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(634) := '69656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F';
wwv_flow_imp.g_varchar2_table(635) := '6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(636) := '2D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F';
wwv_flow_imp.g_varchar2_table(637) := '6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(638) := '2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E';
wwv_flow_imp.g_varchar2_table(639) := '7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(640) := '20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D666965';
wwv_flow_imp.g_varchar2_table(641) := '6C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F7265207B0D0A20207472616E';
wwv_flow_imp.g_varchar2_table(642) := '73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E31357320656173652C20626F782D';
wwv_flow_imp.g_varchar2_table(643) := '736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E752D726164696F3A61';
wwv_flow_imp.g_varchar2_table(644) := '66746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F70616369747920302E3135732065617365';
wwv_flow_imp.g_varchar2_table(645) := '2C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A626566';
wwv_flow_imp.g_varchar2_table(646) := '6F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A6163746976653A6265666F72652C0D';
wwv_flow_imp.g_varchar2_table(647) := '0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B0D0A7D0D0A2E726F2D';
wwv_flow_imp.g_varchar2_table(648) := '636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A61667465722C0D0A696E7075';
wwv_flow_imp.g_varchar2_table(649) := '743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D446174655069636B65722D63616C656E';
wwv_flow_imp.g_varchar2_table(650) := '6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C20317078293B0D0A2020626F';
wwv_flow_imp.g_varchar2_table(651) := '726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465';
wwv_flow_imp.g_varchar2_table(652) := '722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A2020646973706C61793A2066';
wwv_flow_imp.g_varchar2_table(653) := '6C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C65';
wwv_flow_imp.g_varchar2_table(654) := '6E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172656D';
wwv_flow_imp.g_varchar2_table(655) := '29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D446174655069636B65722D74696D654D';
wwv_flow_imp.g_varchar2_table(656) := '696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D61726561733A2022';
wwv_flow_imp.g_varchar2_table(657) := '73656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C6563742C0D0A2E612D446174';
wwv_flow_imp.g_varchar2_table(658) := '655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206F7264';
wwv_flow_imp.g_varchar2_table(659) := '65723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E612D446174655069636B';
wwv_flow_imp.g_varchar2_table(660) := '65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74696D654D696E757465';
wwv_flow_imp.g_varchar2_table(661) := '733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D616C6C223B0D0A2020';
wwv_flow_imp.g_varchar2_table(662) := '677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069636B65722D6D6F6E74';
wwv_flow_imp.g_varchar2_table(663) := '687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D446174655069636B65';
wwv_flow_imp.g_varchar2_table(664) := '722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C';
wwv_flow_imp.g_varchar2_table(665) := '6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C';
wwv_flow_imp.g_varchar2_table(666) := '6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E74';
wwv_flow_imp.g_varchar2_table(667) := '2D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(668) := '612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(669) := '3B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(670) := '2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(671) := '282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F72293B';
wwv_flow_imp.g_varchar2_table(672) := '0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A20202D2D612D627574';
wwv_flow_imp.g_varchar2_table(673) := '746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(674) := '636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(675) := '2D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(676) := '2D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D686F7665722D73686164';
wwv_flow_imp.g_varchar2_table(677) := '6F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(678) := '626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236430643064303B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(679) := '642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D666F6375736564202E';
wwv_flow_imp.g_varchar2_table(680) := '742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(681) := '293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B67726F756E642D636F6C6F72293B0D0A7D';
wwv_flow_imp.g_varchar2_table(682) := '0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D77696474682C2031707829202A202D';
wwv_flow_imp.g_varchar2_table(683) := '3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D746F702D77696474683A20303B';
wwv_flow_imp.g_varchar2_table(684) := '0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C696E653A20766172282D2D75742D666F';
wwv_flow_imp.g_varchar2_table(685) := '6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A202D';
wwv_flow_imp.g_varchar2_table(686) := '3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D73706163653A206E6F777261703B0D';
wwv_flow_imp.g_varchar2_table(687) := '0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D6974656D2D6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(688) := '742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A20303B0D0A7D0D0A2E742D48656164';
wwv_flow_imp.g_varchar2_table(689) := '65722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D63';
wwv_flow_imp.g_varchar2_table(690) := '757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D';
wwv_flow_imp.g_varchar2_table(691) := '4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D6261636B67726F';
wwv_flow_imp.g_varchar2_table(692) := '756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A612D73656C656374207B';
wwv_flow_imp.g_varchar2_table(693) := '0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E6973';
wwv_flow_imp.g_varchar2_table(694) := '2D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(695) := '772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236139613961393B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(696) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_imp.g_varchar2_table(697) := '704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(698) := '6F6C6F723A20236231623162313B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572';
wwv_flow_imp.g_varchar2_table(699) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236131613161312021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_imp.g_varchar2_table(700) := '772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E';
wwv_flow_imp.g_varchar2_table(701) := '612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F';
wwv_flow_imp.g_varchar2_table(702) := '67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D54726565566965772D63';
wwv_flow_imp.g_varchar2_table(703) := '6F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D7374';
wwv_flow_imp.g_varchar2_table(704) := '796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D6261';
wwv_flow_imp.g_varchar2_table(705) := '73652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D63';
wwv_flow_imp.g_varchar2_table(706) := '6F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(707) := '2D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A20307265';
wwv_flow_imp.g_varchar2_table(708) := '6D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(709) := '2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D54726565';
wwv_flow_imp.g_varchar2_table(710) := '4E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(711) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(712) := '65654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D74';
wwv_flow_imp.g_varchar2_table(713) := '6578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D54';
wwv_flow_imp.g_varchar2_table(714) := '7265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D62';
wwv_flow_imp.g_varchar2_table(715) := '61636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_imp.g_varchar2_table(716) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374796C';
wwv_flow_imp.g_varchar2_table(717) := '6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6E61';
wwv_flow_imp.g_varchar2_table(718) := '762D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E61';
wwv_flow_imp.g_varchar2_table(719) := '2D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_imp.g_varchar2_table(720) := '6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072';
wwv_flow_imp.g_varchar2_table(721) := '696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D';
wwv_flow_imp.g_varchar2_table(722) := '2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D';
wwv_flow_imp.g_varchar2_table(723) := '54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_imp.g_varchar2_table(724) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F';
wwv_flow_imp.g_varchar2_table(725) := '64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420';
wwv_flow_imp.g_varchar2_table(726) := '766172282D2D75742D70616C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(727) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D2D73';
wwv_flow_imp.g_varchar2_table(728) := '74796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A';
wwv_flow_imp.g_varchar2_table(729) := '2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A';
wwv_flow_imp.g_varchar2_table(730) := '7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(731) := '3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A202020';
wwv_flow_imp.g_varchar2_table(732) := '206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(733) := '2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A20302E32';
wwv_flow_imp.g_varchar2_table(734) := '3572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(735) := '726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D6375727265';
wwv_flow_imp.g_varchar2_table(736) := '6E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C656374656420';
wwv_flow_imp.g_varchar2_table(737) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466643B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E6973';
wwv_flow_imp.g_varchar2_table(738) := '2D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_imp.g_varchar2_table(739) := '6565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_imp.g_varchar2_table(740) := '6C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20233365336533652021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C65';
wwv_flow_imp.g_varchar2_table(741) := '42202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666666666';
wwv_flow_imp.g_varchar2_table(742) := '2021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A2030';
wwv_flow_imp.g_varchar2_table(743) := '2E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(744) := '636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D74657874';
wwv_flow_imp.g_varchar2_table(745) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D70';
wwv_flow_imp.g_varchar2_table(746) := '6F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(747) := '642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(748) := '69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D64';
wwv_flow_imp.g_varchar2_table(749) := '69616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A20696E73';
wwv_flow_imp.g_varchar2_table(750) := '657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2E69';
wwv_flow_imp.g_varchar2_table(751) := '732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75';
wwv_flow_imp.g_varchar2_table(752) := '742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(753) := '3A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A';
wwv_flow_imp.g_varchar2_table(754) := '2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D69636F6E';
wwv_flow_imp.g_varchar2_table(755) := '6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(756) := '2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(757) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(758) := '742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F766572';
wwv_flow_imp.g_varchar2_table(759) := '2D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(760) := '2D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(761) := '636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A20';
wwv_flow_imp.g_varchar2_table(762) := '20626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970';
wwv_flow_imp.g_varchar2_table(763) := '653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(764) := '522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61';
wwv_flow_imp.g_varchar2_table(765) := '727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D';
wwv_flow_imp.g_varchar2_table(766) := '626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(767) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(768) := '6172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D62';
wwv_flow_imp.g_varchar2_table(769) := '6F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229203020';
wwv_flow_imp.g_varchar2_table(770) := '302030203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233066306530653B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(771) := '6F6C6F723A20233137313531353B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D';
wwv_flow_imp.g_varchar2_table(772) := '656E752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(773) := '636F6C6F723A20233134313331333B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(774) := '6F6C6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(775) := '2D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(776) := '696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F';
wwv_flow_imp.g_varchar2_table(777) := '6C427265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233134313331333B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A202063';
wwv_flow_imp.g_varchar2_table(778) := '6F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74726F';
wwv_flow_imp.g_varchar2_table(779) := '6C732D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F7274207B0D';
wwv_flow_imp.g_varchar2_table(780) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(781) := '686F7665722D6261636B67726F756E642D636F6C6F723A20233066353638653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263682C';
wwv_flow_imp.g_varchar2_table(782) := '0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162';
wwv_flow_imp.g_varchar2_table(783) := '656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A2023306635363865';
wwv_flow_imp.g_varchar2_table(784) := '3B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6669';
wwv_flow_imp.g_varchar2_table(785) := '6C7465722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A202332344342';
wwv_flow_imp.g_varchar2_table(786) := '37463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233064343932653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D';
wwv_flow_imp.g_varchar2_table(787) := '2D636F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(788) := '2D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A2020';
wwv_flow_imp.g_varchar2_table(789) := '2D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F757042';
wwv_flow_imp.g_varchar2_table(790) := '792C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F757042';
wwv_flow_imp.g_varchar2_table(791) := '79207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C61';
wwv_flow_imp.g_varchar2_table(792) := '62656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D';
wwv_flow_imp.g_varchar2_table(793) := '6167677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F72742D63';
wwv_flow_imp.g_varchar2_table(794) := '6F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(795) := '642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952522D';
wwv_flow_imp.g_varchar2_table(796) := '7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(797) := '69636F6E2D6261636B67726F756E642D636F6C6F723A20234646424532413B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233836356430303B0D0A';
wwv_flow_imp.g_varchar2_table(798) := '7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D';
wwv_flow_imp.g_varchar2_table(799) := '2D666C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(800) := '6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D';
wwv_flow_imp.g_varchar2_table(801) := '6172792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D6974';
wwv_flow_imp.g_varchar2_table(802) := '656D2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(803) := '2D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233034306130653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D6974';
wwv_flow_imp.g_varchar2_table(804) := '656D2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(805) := '63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(806) := '20233265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D';
wwv_flow_imp.g_varchar2_table(807) := '4952522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74';
wwv_flow_imp.g_varchar2_table(808) := '726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(809) := '6F6C6F723A20233439353135363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E67';
wwv_flow_imp.g_varchar2_table(810) := '732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D7265';
wwv_flow_imp.g_varchar2_table(811) := '706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D626163';
wwv_flow_imp.g_varchar2_table(812) := '6B67726F756E642D636F6C6F723A20233439353135363B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233139313931393B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(813) := '47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(814) := '6E642D636F6C6F723A20233064306430643B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2069';
wwv_flow_imp.g_varchar2_table(815) := '6E7075743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731275D';
wwv_flow_imp.g_varchar2_table(816) := '3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C6162';
wwv_flow_imp.g_varchar2_table(817) := '656C2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C6261722D62';
wwv_flow_imp.g_varchar2_table(818) := '6C6F636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D646961';
wwv_flow_imp.g_varchar2_table(819) := '6772616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E207B0D';
wwv_flow_imp.g_varchar2_table(820) := '0A20202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261636B';
wwv_flow_imp.g_varchar2_table(821) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F7665';
wwv_flow_imp.g_varchar2_table(822) := '72207B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(823) := '74746F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D746F6F';
wwv_flow_imp.g_varchar2_table(824) := '6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C6173';
wwv_flow_imp.g_varchar2_table(825) := '742D6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B666C6F';
wwv_flow_imp.g_varchar2_table(826) := '77417070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020';
wwv_flow_imp.g_varchar2_table(827) := '626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464696E';
wwv_flow_imp.g_varchar2_table(828) := '67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C2033';
wwv_flow_imp.g_varchar2_table(829) := '72656D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D2076';
wwv_flow_imp.g_varchar2_table(830) := '6172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C';
wwv_flow_imp.g_varchar2_table(831) := '6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D52656769';
wwv_flow_imp.g_varchar2_table(832) := '6F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D202876';
wwv_flow_imp.g_varchar2_table(833) := '6172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A';
wwv_flow_imp.g_varchar2_table(834) := '653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D2920';
wwv_flow_imp.g_varchar2_table(835) := '2A203229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C';
wwv_flow_imp.g_varchar2_table(836) := '6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E612D';
wwv_flow_imp.g_varchar2_table(837) := '576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567';
wwv_flow_imp.g_varchar2_table(838) := '696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D626C';
wwv_flow_imp.g_varchar2_table(839) := '6F636B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D746578742D64';
wwv_flow_imp.g_varchar2_table(840) := '656661756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F7265';
wwv_flow_imp.g_varchar2_table(841) := '2D746578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(842) := '64616E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(843) := '6F722D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A';
wwv_flow_imp.g_varchar2_table(844) := '652D736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D61726769';
wwv_flow_imp.g_varchar2_table(845) := '6E3A20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D626F';
wwv_flow_imp.g_varchar2_table(846) := '726465722D636F6C6F723A20233333333333333B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F722D68';
wwv_flow_imp.g_varchar2_table(847) := '6F7665723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F6A2D';
wwv_flow_imp.g_varchar2_table(848) := '6C696E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(849) := '756E642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D74';
wwv_flow_imp.g_varchar2_table(850) := '6578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E65';
wwv_flow_imp.g_varchar2_table(851) := '6E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(852) := '2D6F6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(853) := '2D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A2D70';
wwv_flow_imp.g_varchar2_table(854) := '7269766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D752D';
wwv_flow_imp.g_varchar2_table(855) := '636F6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F';
wwv_flow_imp.g_varchar2_table(856) := '75746C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D636F';
wwv_flow_imp.g_varchar2_table(857) := '6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A2076617228';
wwv_flow_imp.g_varchar2_table(858) := '2D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D63';
wwv_flow_imp.g_varchar2_table(859) := '6F6E7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D62617365';
wwv_flow_imp.g_varchar2_table(860) := '2D66696C7465723A20696E766572742831293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32';
wwv_flow_imp.g_varchar2_table(861) := '293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D64617465';
wwv_flow_imp.g_varchar2_table(862) := '7069636B65722D63616C656E6461722D6461792D63757272656E742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D66696C6564726F702D69636F6E2D616374696F6E2D6261636B';
wwv_flow_imp.g_varchar2_table(863) := '67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B';
wwv_flow_imp.g_varchar2_table(864) := '0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A20202D2D612D636861742D73656E642D6275';
wwv_flow_imp.g_varchar2_table(865) := '74746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(866) := '236666666666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233632363336343B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574';
wwv_flow_imp.g_varchar2_table(867) := '746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D636861742D6D6573736167652D7072652D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B';
wwv_flow_imp.g_varchar2_table(868) := '0D0A20202D2D612D636861742D616374696F6E732D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(869) := '612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F';
wwv_flow_imp.g_varchar2_table(870) := '722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(871) := '2C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236263623662313B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20233030303B0D';
wwv_flow_imp.g_varchar2_table(872) := '0A20202D2D612D6469616772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20236263623662313B0D0A20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A20233231323332353B0D0A20202D2D70';
wwv_flow_imp.g_varchar2_table(873) := '7269736D2D636F6D6D656E743A20233641393935353B0D0A20202D2D707269736D2D737472696E673A20234345393137383B0D0A20202D2D707269736D2D6C69746572616C3A20233943444346453B0D0A20202D2D707269736D2D6B6579776F72643A20';
wwv_flow_imp.g_varchar2_table(874) := '234335383643303B0D0A20202D2D707269736D2D66756E6374696F6E3A20234443444341413B0D0A20202D2D707269736D2D64656C657465643A20234345393137383B0D0A20202D2D707269736D2D636C6173733A20233445433942303B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(875) := '707269736D2D6275696C74696E3A20234443444341413B0D0A20202D2D707269736D2D70726F70657274793A20233943444346453B0D0A20202D2D707269736D2D6E616D6573706163653A20233445433942303B0D0A20202D2D707269736D2D6E756D62';
wwv_flow_imp.g_varchar2_table(876) := '65723A20234235434541383B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(11139531953544612882)
,p_theme_id=>42
,p_file_name=>'11139531555697612878.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11138287960772313092)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15605630881698
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11138292818386313102)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15605630881855
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11138293496082313102)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15605630881855
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11138846288885320656)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15605630963672
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11138846501412320657)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15605630963676
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(11138288226011313092)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15605630881698
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Interfata Baza De Date'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138308226486313120)
,p_plug_name=>'Interfata Baza De Date'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138790143855320304)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11138784950926320300)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Organizator'
,p_alias=>'ORGANIZATOR1'
,p_step_title=>'Organizator'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138318094934313300)
,p_plug_name=>'Organizator'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORGANIZATOR'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Organizator'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138318154781313300)
,p_name=>'Organizator'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ADMIN_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ADMIN_ID:\#ADMIN_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138318154781313300
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138318805662313302)
,p_db_column_name=>'ADMIN_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admin ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138319234986313303)
,p_db_column_name=>'NUME_ORGANIZATOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nume Organizator'
,p_column_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20,RR:IR_ADMIN_ID:\#ADMIN_ID#\'
,p_column_linktext=>'#NUME_ORGANIZATOR#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138319681874313303)
,p_db_column_name=>'PRENUME_ORGANIZATOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Prenume Organizator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138320011536313304)
,p_db_column_name=>'NUMAR_DE_TELEFON'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Numar De Telefon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138320464054313304)
,p_db_column_name=>'EMAIL_ORGANIZATOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email Organizator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138700664763320234)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387007'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_ORGANIZATOR:PRENUME_ORGANIZATOR:NUMAR_DE_TELEFON:EMAIL_ORGANIZATOR'
,p_sort_column_1=>'NUME_ORGANIZATOR'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138322131250313305)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138320943056313304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138318094934313300)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138321251908313304)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138318094934313300)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138321740544313305)
,p_event_id=>wwv_flow_imp.id(11138321251908313304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138318094934313300)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Organizator'
,p_alias=>'ORGANIZATOR'
,p_page_mode=>'MODAL'
,p_step_title=>'Organizator'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138309833619313291)
,p_plug_name=>'Organizator'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORGANIZATOR'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138313621604313296)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138314045651313297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138313621604313296)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138315479209313298)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138313621604313296)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ADMIN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138315876741313299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138313621604313296)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ADMIN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138316283063313299)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138313621604313296)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ADMIN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138310131067313293)
,p_name=>'P3_ADMIN_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_item_source_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Admin ID'
,p_source=>'ADMIN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138310550486313294)
,p_name=>'P3_NUME_ORGANIZATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_item_source_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nume Organizator'
,p_source=>'NUME_ORGANIZATOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138310913198313294)
,p_name=>'P3_PRENUME_ORGANIZATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_item_source_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prenume Organizator'
,p_source=>'PRENUME_ORGANIZATOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138311335038313295)
,p_name=>'P3_NUMAR_DE_TELEFON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_item_source_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Numar De Telefon'
,p_source=>'NUMAR_DE_TELEFON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138311758884313295)
,p_name=>'P3_EMAIL_ORGANIZATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_item_source_plug_id=>wwv_flow_imp.id(11138309833619313291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Organizator'
,p_source=>'EMAIL_ORGANIZATOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138314178540313297)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138314045651313297)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138314983116313298)
,p_event_id=>wwv_flow_imp.id(11138314178540313297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138317064129313299)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138309833619313291)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Organizator'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138317064129313299
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138317471676313300)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138317471676313300
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138316627490313299)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138309833619313291)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Organizator'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138316627490313299
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Participant'
,p_alias=>'PARTICIPANT1'
,p_step_title=>'Participant'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138333038637313955)
,p_plug_name=>'Participant'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PARTICIPANT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Participant'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138333138063313955)
,p_name=>'Participant'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PARTICIPANT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_PARTICIPANT_ID:\#PARTICIPANT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138333138063313955
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138333808900313957)
,p_db_column_name=>'PARTICIPANT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Participant ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138334269184313957)
,p_db_column_name=>'NUME_PARTICIPANT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nume Participant'
,p_column_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6,RR:IR_PARTICIPANT_ID:\#NUME_PARTICIPANT#\'
,p_column_linktext=>'#NUME_PARTICIPANT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138334609470313957)
,p_db_column_name=>'PRENUME_PARTICIPANT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Prenume Participant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138335098342313958)
,p_db_column_name=>'EMAIL_PARTICIPANT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email Participant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138335421471313958)
,p_db_column_name=>'DATA_NASTERII'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Nasterii'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138708969522320241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387090'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_PARTICIPANT:PRENUME_PARTICIPANT:EMAIL_PARTICIPANT:DATA_NASTERII'
,p_sort_column_1=>'NUME_PARTICIPANT'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138337175432313959)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138335997795313958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138333038637313955)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138336288734313958)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138333038637313955)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138336707059313959)
,p_event_id=>wwv_flow_imp.id(11138336288734313958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138333038637313955)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Participant'
,p_alias=>'PARTICIPANT'
,p_page_mode=>'MODAL'
,p_step_title=>'Participant'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138324878025313947)
,p_plug_name=>'Participant'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PARTICIPANT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138328606201313952)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138329007948313952)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138328606201313952)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138330402634313953)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138328606201313952)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_PARTICIPANT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138330853474313953)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138328606201313952)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_PARTICIPANT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138331222350313953)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138328606201313952)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_PARTICIPANT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138325170547313949)
,p_name=>'P5_PARTICIPANT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_item_source_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Participant ID'
,p_source=>'PARTICIPANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138325525053313949)
,p_name=>'P5_NUME_PARTICIPANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_item_source_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nume Participant'
,p_source=>'NUME_PARTICIPANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138325925358313950)
,p_name=>'P5_PRENUME_PARTICIPANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_item_source_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prenume Participant'
,p_source=>'PRENUME_PARTICIPANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138326365891313950)
,p_name=>'P5_EMAIL_PARTICIPANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_item_source_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Participant'
,p_source=>'EMAIL_PARTICIPANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138326792597313950)
,p_name=>'P5_DATA_NASTERII'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_item_source_plug_id=>wwv_flow_imp.id(11138324878025313947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Nasterii'
,p_source=>'DATA_NASTERII'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138329120158313952)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138329007948313952)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138329948221313952)
,p_event_id=>wwv_flow_imp.id(11138329120158313952)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138332075446313954)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138324878025313947)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Participant'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138332075446313954
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138332480654313954)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138332480654313954
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138331603994313954)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138324878025313947)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Participant'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138331603994313954
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Bilet'
,p_alias=>'BILET1'
,p_step_title=>'Bilet'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138350351362314590)
,p_plug_name=>'Bilet'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BILET'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Bilet'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138350418798314590)
,p_name=>'Bilet'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'BILET_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_BILET_ID:\#BILET_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138350418798314590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138351116259314592)
,p_db_column_name=>'BILET_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Bilet ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138351529292314592)
,p_db_column_name=>'CATEGORIE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Categorie'
,p_column_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20,RR:IR_BILET_ID:\#BILET_ID#\'
,p_column_linktext=>'#CATEGORIE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138351950853314593)
,p_db_column_name=>'PRET'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Pret'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138352310804314593)
,p_db_column_name=>'METODA_PLATA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Metoda Plata'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138352755448314593)
,p_db_column_name=>'STATUS_PLATA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status Plata'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138353128328314593)
,p_db_column_name=>'STATUS_BILET'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status Bilet'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138353536059314594)
,p_db_column_name=>'PARTICIPANT_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Participant'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11138343268805314585)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138717162645320247)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CATEGORIE:PRET:METODA_PLATA:STATUS_PLATA:STATUS_BILET:PARTICIPANT_ID'
,p_sort_column_1=>'CATEGORIE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138355244844314595)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138354050353314594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138350351362314590)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138354392375314594)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138350351362314590)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138354856346314594)
,p_event_id=>wwv_flow_imp.id(11138354392375314594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138350351362314590)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Bilet'
,p_alias=>'BILET'
,p_page_mode=>'MODAL'
,p_step_title=>'Bilet'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138340426011314580)
,p_plug_name=>'Bilet'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BILET'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138345934205314587)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138346366511314587)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138345934205314587)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138347778612314588)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138345934205314587)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_BILET_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138348115308314588)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138345934205314587)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_BILET_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138348518313314589)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138345934205314587)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_BILET_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138340796316314582)
,p_name=>'P7_BILET_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bilet ID'
,p_source=>'BILET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138341159639314583)
,p_name=>'P7_CATEGORIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Categorie'
,p_source=>'CATEGORIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138341501760314583)
,p_name=>'P7_PRET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pret'
,p_source=>'PRET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138341952263314584)
,p_name=>'P7_METODA_PLATA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Metoda Plata'
,p_source=>'METODA_PLATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138342302276314584)
,p_name=>'P7_STATUS_PLATA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Plata'
,p_source=>'STATUS_PLATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138342741190314584)
,p_name=>'P7_STATUS_BILET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Bilet'
,p_source=>'STATUS_BILET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138343101901314585)
,p_name=>'P7_PARTICIPANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_item_source_plug_id=>wwv_flow_imp.id(11138340426011314580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Participant'
,p_source=>'PARTICIPANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARTICIPANT.NUME_PARTICIPANT'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138346401085314587)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138346366511314587)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138347272347314588)
,p_event_id=>wwv_flow_imp.id(11138346401085314587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138349311925314589)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138340426011314580)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bilet'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138349311925314589
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138349736671314589)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138349736671314589
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138348995867314589)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138340426011314580)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bilet'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138348995867314589
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Scena'
,p_alias=>'SCENA1'
,p_step_title=>'Scena'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138370531529315208)
,p_plug_name=>'Scena'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SCENA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Scena'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138370694782315208)
,p_name=>'Scena'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'SCENA_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_SCENA_ID:\#SCENA_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138370694782315208
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138371376020315209)
,p_db_column_name=>'SCENA_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Scena ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138371766849315210)
,p_db_column_name=>'SUPRAFATA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suprafata'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138372113193315210)
,p_db_column_name=>'NUME_SCENA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nume Scena'
,p_column_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:18,RR:IR_SCENA_ID:\#SCENA_ID#\'
,p_column_linktext=>'#NUME_SCENA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138372536489315210)
,p_db_column_name=>'DOTARI'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dotari'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138728006219320256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387281'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUPRAFATA:NUME_SCENA:DOTARI'
,p_sort_column_1=>'SUPRAFATA'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138374228503315211)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138373019966315211)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138370531529315208)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138373310267315211)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138370531529315208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138373841670315211)
,p_event_id=>wwv_flow_imp.id(11138373310267315211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138370531529315208)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Scena'
,p_alias=>'SCENA'
,p_page_mode=>'MODAL'
,p_step_title=>'Scena'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138362928861315200)
,p_plug_name=>'Scena'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SCENA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138366186930315204)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138366569756315205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138366186930315204)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138367993618315206)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138366186930315204)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_SCENA_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138368374679315206)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138366186930315204)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_SCENA_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138368751950315206)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138366186930315204)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_SCENA_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138363257922315202)
,p_name=>'P9_SCENA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_item_source_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scena ID'
,p_source=>'SCENA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138363784231315203)
,p_name=>'P9_SUPRAFATA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_item_source_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Suprafata'
,p_source=>'SUPRAFATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138364134954315203)
,p_name=>'P9_NUME_SCENA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_item_source_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nume Scena'
,p_source=>'NUME_SCENA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138364543421315203)
,p_name=>'P9_DOTARI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_item_source_plug_id=>wwv_flow_imp.id(11138362928861315200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dotari'
,p_source=>'DOTARI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138366690646315205)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138366569756315205)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138367413348315205)
,p_event_id=>wwv_flow_imp.id(11138366690646315205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138369537831315207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138362928861315200)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Scena'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138369537831315207
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138369949522315207)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138369949522315207
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138369142892315206)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138362928861315200)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Scena'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138369142892315206
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Artist'
,p_alias=>'ARTIST1'
,p_step_title=>'Artist'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138386428638315848)
,p_plug_name=>'Artist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ARTIST'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Artist'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138386547554315848)
,p_name=>'Artist'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ARTIST_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_ARTIST_ID:\#ARTIST_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138386547554315848
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138387220835315850)
,p_db_column_name=>'ARTIST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Artist ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138387665555315851)
,p_db_column_name=>'NUME_ARTIST'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nume Artist'
,p_column_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:22,RR:IR_ARTIST_ID:\#ARTIST_ID#\'
,p_column_linktext=>'#NUME_ARTIST#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138388040517315851)
,p_db_column_name=>'GEN_MUZICAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Gen Muzical'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138388570828315851)
,p_db_column_name=>'TARA_PROVENIENTA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tara Provenienta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138388927453315852)
,p_db_column_name=>'TIP_ARTIST'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tip Artist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138389326834315852)
,p_db_column_name=>'ONORARIU'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Onorariu'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138735354278320262)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387354'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_ARTIST:GEN_MUZICAL:TARA_PROVENIENTA:TIP_ARTIST:ONORARIU'
,p_sort_column_1=>'NUME_ARTIST'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138391032793315853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138389887903315852)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138386428638315848)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138390155319315852)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138386428638315848)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138390673325315853)
,p_event_id=>wwv_flow_imp.id(11138390155319315852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138386428638315848)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Artist'
,p_alias=>'ARTIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Artist'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138377579572315840)
,p_plug_name=>'Artist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ARTIST'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138382031194315845)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138382439534315845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138382031194315845)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138383819762315846)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138382031194315845)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ARTIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138384228359315846)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138382031194315845)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ARTIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138384639363315847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138382031194315845)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ARTIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138377829985315842)
,p_name=>'P11_ARTIST_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Artist ID'
,p_source=>'ARTIST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138378278302315842)
,p_name=>'P11_NUME_ARTIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nume Artist'
,p_source=>'NUME_ARTIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138378619938315843)
,p_name=>'P11_GEN_MUZICAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gen Muzical'
,p_source=>'GEN_MUZICAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138379059547315843)
,p_name=>'P11_TARA_PROVENIENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tara Provenienta'
,p_source=>'TARA_PROVENIENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138379405345315843)
,p_name=>'P11_TIP_ARTIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tip Artist'
,p_source=>'TIP_ARTIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138379832108315844)
,p_name=>'P11_ONORARIU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_item_source_plug_id=>wwv_flow_imp.id(11138377579572315840)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Onorariu'
,p_source=>'ONORARIU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138382523745315845)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138382439534315845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138383356774315846)
,p_event_id=>wwv_flow_imp.id(11138382523745315845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138385412755315847)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138377579572315840)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Artist'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138385412755315847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138385853905315847)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138385853905315847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138385010987315847)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138377579572315840)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Artist'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138385010987315847
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Spectacol'
,p_alias=>'SPECTACOL1'
,p_step_title=>'Spectacol'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138401403253316478)
,p_plug_name=>'Spectacol'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPECTACOL'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Spectacol'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138401515759316478)
,p_name=>'Spectacol'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'SPECTACOL_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_SPECTACOL_ID:\#SPECTACOL_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138401515759316478
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138402299317316480)
,p_db_column_name=>'SPECTACOL_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Spectacol ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138402690260316480)
,p_db_column_name=>'ORA_INCEPUT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ora Inceput'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138403012920316480)
,p_db_column_name=>'ORA_SFARSIT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ora Sfarsit'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138403413331316480)
,p_db_column_name=>'ZIUA_CONCERT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ziua Concert'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138744822009320270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387449'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORA_INCEPUT:ORA_SFARSIT:ZIUA_CONCERT'
,p_sort_column_1=>'ORA_INCEPUT'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138405133977316482)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138403990204316481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138401403253316478)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138404261934316481)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138401403253316478)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138404782692316481)
,p_event_id=>wwv_flow_imp.id(11138404261934316481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138401403253316478)
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Spectacol'
,p_alias=>'SPECTACOL'
,p_page_mode=>'MODAL'
,p_step_title=>'Spectacol'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138393190703316470)
,p_plug_name=>'Spectacol'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPECTACOL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138397030119316474)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138397428059316475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138397030119316474)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138398882202316476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138397030119316474)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_SPECTACOL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138399202854316476)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138397030119316474)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_SPECTACOL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138399679832316476)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138397030119316474)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_SPECTACOL_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138393417980316471)
,p_name=>'P13_SPECTACOL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_item_source_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spectacol ID'
,p_source=>'SPECTACOL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138393837573316472)
,p_name=>'P13_ORA_INCEPUT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_item_source_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ora Inceput'
,p_source=>'ORA_INCEPUT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138394621192316473)
,p_name=>'P13_ORA_SFARSIT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_item_source_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ora Sfarsit'
,p_source=>'ORA_SFARSIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138395425045316473)
,p_name=>'P13_ZIUA_CONCERT'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_item_source_plug_id=>wwv_flow_imp.id(11138393190703316470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ziua Concert'
,p_source=>'ZIUA_CONCERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11138394359820316472)
,p_validation_name=>'P13_ORA_INCEPUT must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P13_ORA_INCEPUT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(11138393837573316472)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11138395113083316473)
,p_validation_name=>'P13_ORA_SFARSIT must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P13_ORA_SFARSIT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(11138394621192316473)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138397512350316475)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138397428059316475)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138398392279316475)
,p_event_id=>wwv_flow_imp.id(11138397512350316475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138400419228316477)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138393190703316470)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Spectacol'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138400419228316477
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138400878226316477)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138400878226316477
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138400083850316476)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138393190703316470)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Spectacol'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138400083850316476
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Sponsor'
,p_alias=>'SPONSOR1'
,p_step_title=>'Sponsor'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138424784837317097)
,p_plug_name=>'Sponsor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPONSOR'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Sponsor'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138424826120317097)
,p_name=>'Sponsor'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'SPONSOR_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_SPONSOR_ID:\#SPONSOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138424826120317097
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138425515089317099)
,p_db_column_name=>'SPONSOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Sponsor ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138425949765317099)
,p_db_column_name=>'SUMA_SPONSORIZARE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suma Sponsorizare'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138426336450317099)
,p_db_column_name=>'NUME_SPONSOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nume Sponsor'
,p_column_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:24,RR:IR_SPONSOR_ID:\#SPONSOR_ID#\'
,p_column_linktext=>'#NUME_SPONSOR#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138626714657317100)
,p_db_column_name=>'SITE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138627184768317100)
,p_db_column_name=>'TARA_ORIGINE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tara Origine'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138751952263320275)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387520'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUMA_SPONSORIZARE:NUME_SPONSOR:SITE:TARA_ORIGINE'
,p_sort_column_1=>'SUMA_SPONSORIZARE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138628802182317101)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138627605076317100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138424784837317097)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138627904485317101)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138424784837317097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138628478871317101)
,p_event_id=>wwv_flow_imp.id(11138627904485317101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138424784837317097)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Sponsor'
,p_alias=>'SPONSOR'
,p_page_mode=>'MODAL'
,p_step_title=>'Sponsor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138416535396317089)
,p_plug_name=>'Sponsor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPONSOR'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138420384341317094)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138420734505317094)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138420384341317094)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138422199525317095)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138420384341317094)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_SPONSOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138422545656317095)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138420384341317094)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_SPONSOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138422904200317095)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138420384341317094)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_SPONSOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138416875101317091)
,p_name=>'P15_SPONSOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_item_source_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sponsor ID'
,p_source=>'SPONSOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138417285901317091)
,p_name=>'P15_SUMA_SPONSORIZARE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_item_source_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Suma Sponsorizare'
,p_source=>'SUMA_SPONSORIZARE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138417693640317092)
,p_name=>'P15_NUME_SPONSOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_item_source_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nume Sponsor'
,p_source=>'NUME_SPONSOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138418051091317092)
,p_name=>'P15_SITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_item_source_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site'
,p_source=>'SITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138418411312317092)
,p_name=>'P15_TARA_ORIGINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_item_source_plug_id=>wwv_flow_imp.id(11138416535396317089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tara Origine'
,p_source=>'TARA_ORIGINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138420815293317094)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138420734505317094)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138421624754317095)
,p_event_id=>wwv_flow_imp.id(11138420815293317094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138423788326317096)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138416535396317089)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sponsor'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138423788326317096
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138424156751317096)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138424156751317096
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138423301362317096)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138416535396317089)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sponsor'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138423301362317096
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Administreaza'
,p_alias=>'ADMINISTREAZA1'
,p_step_title=>'Administreaza'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138637704294317744)
,p_plug_name=>'Administreaza'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ADMINISTREAZA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Administreaza'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138637852117317744)
,p_name=>'Administreaza'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ADMIN_ID'
,p_base_pk2=>'SCENA_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_ADMIN_ID,P17_SCENA_ID:\#ADMIN_ID#\,\#SCENA_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138637852117317744
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138638571188317746)
,p_db_column_name=>'ADMIN_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admin'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138638956765317746)
,p_db_column_name=>'SCENA_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Scena'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138760528279320282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387606'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SCENA_ID'
,p_sort_column_1=>'SCENA_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138640604068317747)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138639425689317746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138637704294317744)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138639761864317746)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138637704294317744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138640231808317747)
,p_event_id=>wwv_flow_imp.id(11138639761864317746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138637704294317744)
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Administreaza'
,p_alias=>'ADMINISTREAZA'
,p_page_mode=>'MODAL'
,p_step_title=>'Administreaza'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138631619237317737)
,p_plug_name=>'Administreaza'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ADMINISTREAZA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138633343024317741)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138633723135317741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138633343024317741)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138635115906317742)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138633343024317741)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P17_ADMIN_ID is not null and :P17_SCENA_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138635597327317742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138633343024317741)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P17_ADMIN_ID is not null and :P17_SCENA_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138635938880317742)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138633343024317741)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P17_ADMIN_ID is null or :P17_SCENA_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138631960648317739)
,p_name=>'P17_ADMIN_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138631619237317737)
,p_item_source_plug_id=>wwv_flow_imp.id(11138631619237317737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Admin'
,p_source=>'ADMIN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138632304607317740)
,p_name=>'P17_SCENA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138631619237317737)
,p_item_source_plug_id=>wwv_flow_imp.id(11138631619237317737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scena'
,p_source=>'SCENA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138633873127317741)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138633723135317741)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138634623462317742)
,p_event_id=>wwv_flow_imp.id(11138633873127317741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138636704282317743)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138631619237317737)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Administreaza'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138636704282317743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138637142810317743)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138637142810317743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138636372855317743)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138631619237317737)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Administreaza'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138636372855317743
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Desfasoara'
,p_alias=>'DESFASOARA1'
,p_step_title=>'Desfasoara'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138649277420318360)
,p_plug_name=>'Desfasoara'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SE_DESFASOARA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Desfasoara'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138649397383318360)
,p_name=>'Desfasoara'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'SPECTACOL_ID'
,p_base_pk2=>'SCENA_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_SPECTACOL_ID,P19_SCENA_ID:\#SPECTACOL_ID#\,\#SCENA_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138649397383318360
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138650053676318362)
,p_db_column_name=>'SPECTACOL_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Spectacol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138650485239318362)
,p_db_column_name=>'SCENA_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Scena'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138765122059320285)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387652'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SCENA_ID'
,p_sort_column_1=>'SCENA_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138652121479318363)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138650930330318363)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138649277420318360)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138651243636318363)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138649277420318360)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138651734049318363)
,p_event_id=>wwv_flow_imp.id(11138651243636318363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138649277420318360)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Desfasoara'
,p_alias=>'DESFASOARA'
,p_page_mode=>'MODAL'
,p_step_title=>'Desfasoara'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138643111260318354)
,p_plug_name=>'Desfasoara'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SE_DESFASOARA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138644886585318357)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138645258898318357)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138644886585318357)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138646689915318358)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138644886585318357)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P19_SPECTACOL_ID is not null and :P19_SCENA_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138647068808318358)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138644886585318357)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P19_SPECTACOL_ID is not null and :P19_SCENA_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138647429084318359)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138644886585318357)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P19_SPECTACOL_ID is null or :P19_SCENA_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138643406065318356)
,p_name=>'P19_SPECTACOL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138643111260318354)
,p_item_source_plug_id=>wwv_flow_imp.id(11138643111260318354)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spectacol'
,p_source=>'SPECTACOL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138643882977318356)
,p_name=>'P19_SCENA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138643111260318354)
,p_item_source_plug_id=>wwv_flow_imp.id(11138643111260318354)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scena'
,p_source=>'SCENA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138645367392318357)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138645258898318357)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138646185395318358)
,p_event_id=>wwv_flow_imp.id(11138645367392318357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138648294662318359)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138643111260318354)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Desfasoara'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138648294662318359
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138648667266318359)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138648667266318359
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138647830475318359)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138643111260318354)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Desfasoara'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138647830475318359
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Emite'
,p_alias=>'EMITE1'
,p_step_title=>'Emite'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138661706779318987)
,p_plug_name=>'Emite'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EMITE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Emite'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138661874500318987)
,p_name=>'Emite'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ADMIN_ID'
,p_base_pk2=>'BILET_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ADMIN_ID,P21_BILET_ID:\#ADMIN_ID#\,\#BILET_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138661874500318987
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138662689592318989)
,p_db_column_name=>'ADMIN_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admin'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138663063698318990)
,p_db_column_name=>'BILET_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Bilet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138769750565320289)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387698'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BILET_ID'
,p_sort_column_1=>'BILET_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138664796324318991)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138663587562318990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138661706779318987)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138663899282318991)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138661706779318987)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138664374143318991)
,p_event_id=>wwv_flow_imp.id(11138663899282318991)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138661706779318987)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Emite'
,p_alias=>'EMITE'
,p_page_mode=>'MODAL'
,p_step_title=>'Emite'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138655565351318979)
,p_plug_name=>'Emite'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EMITE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138657240767318982)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138657772725318983)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138657240767318982)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138659148661318984)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138657240767318982)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P21_ADMIN_ID is not null and :P21_BILET_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138659584789318985)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138657240767318982)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P21_ADMIN_ID is not null and :P21_BILET_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138659940966318985)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138657240767318982)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P21_ADMIN_ID is null or :P21_BILET_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138655885628318981)
,p_name=>'P21_ADMIN_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138655565351318979)
,p_item_source_plug_id=>wwv_flow_imp.id(11138655565351318979)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Admin'
,p_source=>'ADMIN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138656241739318982)
,p_name=>'P21_BILET_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138655565351318979)
,p_item_source_plug_id=>wwv_flow_imp.id(11138655565351318979)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bilet'
,p_source=>'BILET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138657826107318983)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138657772725318983)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138658641841318984)
,p_event_id=>wwv_flow_imp.id(11138657826107318983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138660761447318986)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138655565351318979)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Emite'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138660761447318986
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138661114190318986)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138661114190318986
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138660353351318985)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138655565351318979)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Emite'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138660353351318985
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Sustine'
,p_alias=>'SUSTINE1'
,p_step_title=>'Sustine'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138677663572319604)
,p_plug_name=>'Sustine'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SUSTINE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Sustine'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138677781051319604)
,p_name=>'Sustine'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ARTIST_ID'
,p_base_pk2=>'SPECTACOL_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ARTIST_ID,P23_SPECTACOL_ID:\#ARTIST_ID#\,\#SPECTACOL_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138677781051319604
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138678406049319606)
,p_db_column_name=>'ARTIST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Artist'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138678813585319606)
,p_db_column_name=>'SPECTACOL_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Spectacol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138774374339320292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387744'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECTACOL_ID'
,p_sort_column_1=>'SPECTACOL_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138680598236319607)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138679351217319607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138677663572319604)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:23::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138679612914319607)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138677663572319604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138680173261319607)
,p_event_id=>wwv_flow_imp.id(11138679612914319607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138677663572319604)
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Sustine'
,p_alias=>'SUSTINE'
,p_page_mode=>'MODAL'
,p_step_title=>'Sustine'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138671305501319598)
,p_plug_name=>'Sustine'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SUSTINE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138673048293319601)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138673403648319601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138673048293319601)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138675025925319602)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138673048293319601)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P23_ARTIST_ID is not null and :P23_SPECTACOL_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138675473547319603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138673048293319601)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P23_ARTIST_ID is not null and :P23_SPECTACOL_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138675893323319603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138673048293319601)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P23_ARTIST_ID is null or :P23_SPECTACOL_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138671615653319600)
,p_name=>'P23_ARTIST_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138671305501319598)
,p_item_source_plug_id=>wwv_flow_imp.id(11138671305501319598)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Artist'
,p_source=>'ARTIST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138672004308319600)
,p_name=>'P23_SPECTACOL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138671305501319598)
,p_item_source_plug_id=>wwv_flow_imp.id(11138671305501319598)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spectacol'
,p_source=>'SPECTACOL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138673502704319601)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138673403648319601)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138674532881319602)
,p_event_id=>wwv_flow_imp.id(11138673502704319601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138676640936319603)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138671305501319598)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sustine'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138676640936319603
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138677090519319604)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138677090519319604
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138676268152319603)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138671305501319598)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sustine'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138676268152319603
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Sponsorizeaza'
,p_alias=>'SPONSORIZEAZA1'
,p_step_title=>'Sponsorizeaza'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138694085061320226)
,p_plug_name=>'Sponsorizeaza'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPONSORIZEAZA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Sponsorizeaza'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138694134247320226)
,p_name=>'Sponsorizeaza'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'SPONSOR_ID'
,p_base_pk2=>'SPECTACOL_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_SPONSOR_ID,P25_SPECTACOL_ID:\#SPONSOR_ID#\,\#SPECTACOL_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138694134247320226
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138694886509320228)
,p_db_column_name=>'SPONSOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Sponsor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138695286128320228)
,p_db_column_name=>'SPECTACOL_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Spectacol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138695627364320228)
,p_db_column_name=>'SUMA_SPONSORIZARE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Suma Sponsorizare'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138778912703320296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111387790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECTACOL_ID:SUMA_SPONSORIZARE'
,p_sort_column_1=>'SPECTACOL_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138697306347320229)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138696115870320228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138694085061320226)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138696445418320229)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138694085061320226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138696916667320229)
,p_event_id=>wwv_flow_imp.id(11138696445418320229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138694085061320226)
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Sponsorizeaza'
,p_alias=>'SPONSORIZEAZA'
,p_page_mode=>'MODAL'
,p_step_title=>'Sponsorizeaza'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138687149914320219)
,p_plug_name=>'Sponsorizeaza'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SPONSORIZEAZA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138689689675320222)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138690077671320223)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138689689675320222)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138691402379320224)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138689689675320222)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P25_SPONSOR_ID is not null and :P25_SPECTACOL_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138691838847320224)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11138689689675320222)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P25_SPONSOR_ID is not null and :P25_SPECTACOL_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138692259534320224)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138689689675320222)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P25_SPONSOR_ID is null or :P25_SPECTACOL_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138687582711320221)
,p_name=>'P25_SPONSOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_item_source_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sponsor'
,p_source=>'SPONSOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138687902182320221)
,p_name=>'P25_SPECTACOL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_item_source_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spectacol'
,p_source=>'SPECTACOL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138688342671320222)
,p_name=>'P25_SUMA_SPONSORIZARE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_item_source_plug_id=>wwv_flow_imp.id(11138687149914320219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Suma Sponsorizare'
,p_source=>'SUMA_SPONSORIZARE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138690116785320223)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138690077671320223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138690945367320224)
,p_event_id=>wwv_flow_imp.id(11138690116785320223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138693076844320225)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11138687149914320219)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sponsorizeaza'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138693076844320225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138693463741320225)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11138693463741320225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138692667275320225)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11138687149914320219)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sponsorizeaza'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138692667275320225
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Exercitiul C'
,p_alias=>'EXERCITIUL-C'
,p_step_title=>'Exercitiul C'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11140154846511651342)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11140155589194651343)
,p_plug_name=>'Exercitiul C'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nume_participant, p.prenume_participant, b.categorie, s.nume_scena, sp.ora_inceput ',
'FROM Participant p',
'JOIN Bilet b ON p.participant_id = b.participant_id',
'JOIN Se_Desfasoara sd ON b.bilet_id = sd.spectacol_id',
'JOIN Spectacol sp ON sd.spectacol_id = sp.spectacol_id',
'JOIN Scena s ON sd.scena_id = s.scena_id',
'WHERE b.metoda_plata = ''Card'' ',
'  AND sp.ziua_concert = TO_DATE(''2025-07-08'', ''YYYY-MM-DD'');',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Exercitiul C'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11140155651820651343)
,p_name=>'Exercitiul C'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11140155651820651343
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140156398714651345)
,p_db_column_name=>'NUME_PARTICIPANT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nume Participant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140156753951651345)
,p_db_column_name=>'PRENUME_PARTICIPANT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Prenume Participant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140157169693651346)
,p_db_column_name=>'CATEGORIE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Categorie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140157675749651346)
,p_db_column_name=>'NUME_SCENA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nume Scena'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140158049868651346)
,p_db_column_name=>'ORA_INCEPUT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ora Inceput'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11140164432831652188)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111401645'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_PARTICIPANT:PRENUME_PARTICIPANT:CATEGORIE:NUME_SCENA:ORA_INCEPUT'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Exercitiul D'
,p_alias=>'EXERCITIUL-D'
,p_step_title=>'Exercitiul D'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11140494293725389319)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11140494932782389320)
,p_plug_name=>'Exercitiul D'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.nume_scena, COUNT(sp.spectacol_id) AS numar_spectacole',
'FROM Scena s',
'JOIN Se_Desfasoara sd ON s.scena_id = sd.scena_id',
'JOIN Spectacol sp ON sd.spectacol_id = sp.spectacol_id',
'GROUP BY s.nume_scena',
'HAVING COUNT(sp.spectacol_id) >= 3;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Exercitiul D'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11140495083553389320)
,p_name=>'Exercitiul D'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11140495083553389320
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140495779098389322)
,p_db_column_name=>'NUME_SCENA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nume Scena'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11140496172990389322)
,p_db_column_name=>'NUMAR_SPECTACOLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Numar Spectacole'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11140216412537660445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111402165'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_SCENA:NUMAR_SPECTACOLE'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Exercitiul F Compus'
,p_alias=>'EXERCITIUL-F-COMPUS'
,p_step_title=>'Exercitiul F Compus'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11142546075309761550)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11142546798643761551)
,p_name=>'Exercitiul F Compus'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'VIZUALIZARE_BILETE'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11142547321231761778)
,p_query_column_id=>1
,p_column_alias=>'CATEGORIE'
,p_column_display_sequence=>1
,p_column_heading=>'Categorie'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11142547777727761779)
,p_query_column_id=>2
,p_column_alias=>'NUMAR_BILETE'
,p_column_display_sequence=>2
,p_column_heading=>'Numar Bilete'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11142548101402761779)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_INCASARI'
,p_column_display_sequence=>3
,p_column_heading=>'Total Incasari'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Excercitiul F Complex'
,p_alias=>'EXCERCITIUL-F-COMPLEX'
,p_step_title=>'Excercitiul F Complex'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11142978303474495839)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11142979082690495841)
,p_name=>'Excercitiul F Complex'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'V_SPONSORIZARI'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11143003657686496087)
,p_query_column_id=>1
,p_column_alias=>'NUME_SPONSOR'
,p_column_display_sequence=>1
,p_column_heading=>'Nume Sponsor'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11143004051470496088)
,p_query_column_id=>2
,p_column_alias=>'NR_SPECTACOLE'
,p_column_display_sequence=>2
,p_column_heading=>'Nr Spectacole'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11143004450256496088)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_SPONSORIZARE'
,p_column_display_sequence=>3
,p_column_heading=>'Total Sponsorizare'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Interfata Baza De Date - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138301235628313112)
,p_plug_name=>'Interfata Baza De Date'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138302954164313116)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11138301235628313112)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138301797880313114)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138301235628313112)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138302143412313115)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138301235628313112)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138302549710313115)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138301235628313112)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138305135500313117)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138305135500313117
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138305674120313117)
,p_page_process_id=>wwv_flow_imp.id(11138305135500313117)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138306150786313118)
,p_page_process_id=>wwv_flow_imp.id(11138305135500313117)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138303220084313116)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138303220084313116
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138303779815313116)
,p_page_process_id=>wwv_flow_imp.id(11138303220084313116)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138304219313313117)
,p_page_process_id=>wwv_flow_imp.id(11138303220084313116)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138304742203313117)
,p_page_process_id=>wwv_flow_imp.id(11138303220084313116)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138307074564313118)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138307074564313118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138306641321313118)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11138306641321313118
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11138294166756313102)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138836309938320344)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11138288507376313092)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138838412427320345)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138838863637320346)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(11138838412427320345)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(11138837022815320344)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(11138293496082313102)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138839258852320346)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138839674149320346)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(11138839258852320346)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11138840007502320347)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(11138839674149320346)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11138840725596320349)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11138841123259320349)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138845650240320656)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(11138839674149320346)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(11138837780518320345)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11138294166756313102)
,p_required_patch=>wwv_flow_imp.id(11138293496082313102)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138790580783320304)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138790699012320304)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138793088742320307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138790580783320304)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138791630111320307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138790580783320304)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11138793483173320308)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138793765434320308)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138790699012320304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138794416827320310)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138790699012320304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(11138794587916320310)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138791769043320307)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138791630111320307)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138792441822320307)
,p_event_id=>wwv_flow_imp.id(11138791769043320307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138795657731320311)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10010_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>11138795657731320311
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138796004225320311)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10010_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>11138796004225320311
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138796387571320311)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138796458240320311)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138796565395320311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138796458240320311)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138799532091320313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138796458240320311)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11138807282687320318)
,p_branch_action=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138800889011320314)
,p_name=>'P10020_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138796387571320311)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138801288693320314)
,p_name=>'P10020_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138796387571320311)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138801619027320314)
,p_name=>'P10020_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138796387571320311)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138802004040320315)
,p_name=>'P10020_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(11138796387571320311)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(11138802124645320315)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138803959529320316)
,p_name=>'P10020_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138796387571320311)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11138806862733320318)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_FEEDBACK is null and :P10020_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138799656190320313)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138799532091320313)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138800332872320313)
,p_event_id=>wwv_flow_imp.id(11138799656190320313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138804364429320316)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11138796565395320311)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>11138804364429320316
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138804896067320317)
,p_page_process_id=>wwv_flow_imp.id(11138804364429320316)
,p_page_id=>10020
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10020_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138805335624320317)
,p_page_process_id=>wwv_flow_imp.id(11138804364429320316)
,p_page_id=>10020
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138805898348320317)
,p_page_process_id=>wwv_flow_imp.id(11138804364429320316)
,p_page_id=>10020
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10020_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138806369828320317)
,p_page_process_id=>wwv_flow_imp.id(11138804364429320316)
,p_page_id=>10020
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10020_RATING'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138796952115320312)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138796843691320311)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138796952115320312)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138797030101320312)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138796843691320311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138808862296320319)
,p_event_id=>wwv_flow_imp.id(11138797030101320312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(11138294166756313102)
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138798211382320312)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11138821998958320328)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP:P10024_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TUDORBLIDARU@GMAIL.COM'
,p_internal_uid=>11138821998958320328
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138822662858320330)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138823013352320331)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138823440113320331)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138823868229320332)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138824212748320332)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138824643574320332)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11138802124645320315)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138825024634320333)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138825490195320333)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11138814755369320324)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138825874711320334)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138826203438320334)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138826670903320334)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138827063629320335)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11138827488618320335)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11138832060140320339)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111388321'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138832913509320340)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138798211382320312)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138798152139320312)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11138798211382320312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138833609954320341)
,p_event_id=>wwv_flow_imp.id(11138798152139320312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11138798211382320312)
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138294770187313104)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(11138294166756313102)
,p_required_patch=>wwv_flow_imp.id(11138292818386313102)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138797549841320312)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138797678258320312)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138797769460320312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138797678258320312)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138810457965320321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11138797678258320312)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138797932138320312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11138797678258320312)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10024_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138812019496320322)
,p_name=>'P10024_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138812548001320322)
,p_name=>'P10024_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138812980516320323)
,p_name=>'P10024_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138813381495320323)
,p_name=>'P10024_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138813873740320323)
,p_name=>'P10024_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138814296084320324)
,p_name=>'P10024_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138814610304320324)
,p_name=>'P10024_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(11138814755369320324)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138816989444320325)
,p_name=>'P10024_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11138797549841320312)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138810583144320321)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11138810457965320321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138811217823320321)
,p_event_id=>wwv_flow_imp.id(11138810583144320321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138817407319320326)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10024_ID )',
'loop',
'   :P10024_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10024_FILED           := l_feedback.filed;',
'   :P10024_RATING_ICON     := l_feedback.rating_icon;',
'   :P10024_FEEDBACK        := l_feedback.feedback;',
'   :P10024_RESPONSE        := l_feedback.public_response;',
'   :P10024_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10024_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138817407319320326
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138817740180320326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11138797769460320312)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11138817740180320326
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138818236297320326)
,p_page_process_id=>wwv_flow_imp.id(11138817740180320326)
,p_page_id=>10024
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10024_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138818757695320326)
,p_page_process_id=>wwv_flow_imp.id(11138817740180320326)
,p_page_id=>10024
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10024_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138819256761320327)
,p_page_process_id=>wwv_flow_imp.id(11138817740180320326)
,p_page_id=>10024
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10024_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138819672110320327)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11138797932138320312)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>11138819672110320327
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11138820198339320327)
,p_page_process_id=>wwv_flow_imp.id(11138819672110320327)
,p_page_id=>10024
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10024_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138820680234320328)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11138797932138320312)
,p_internal_uid=>11138820680234320328
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11138821068892320328)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11138821068892320328
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138846060153320656)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(11138846501412320657)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138851153499320661)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138851595016320661)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11138852033897320662)
,p_region_id=>wwv_flow_imp.id(11138851595016320661)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138852686075320662)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11138850145637320660)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11138846060153320656)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(11138846288885320656)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138847500310320658)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11138847977160320658)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11138847227632320657)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11138848459703320659)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11138847977160320658)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11138848788621320659)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138849228708320659)
,p_event_id=>wwv_flow_imp.id(11138848788621320659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11138849777731320660)
,p_event_id=>wwv_flow_imp.id(11138848788621320659)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
