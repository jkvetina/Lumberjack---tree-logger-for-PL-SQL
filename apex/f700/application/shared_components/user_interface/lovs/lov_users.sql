prompt --application/shared_components/user_interface/lovs/lov_users
begin
--   Manifest
--     LOV_USERS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9526531750928358
,p_default_application_id=>700
,p_default_id_offset=>28323188538908472
,p_default_owner=>'DEV'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(62092403289705015)
,p_lov_name=>'LOV_USERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    u.user_id   AS label_,',
'    u.user_id   AS value_',
'FROM users u;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VALUE_'
,p_display_column_name=>'LABEL_'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'LABEL_'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
