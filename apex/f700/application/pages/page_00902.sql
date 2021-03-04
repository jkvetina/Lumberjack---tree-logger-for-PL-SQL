prompt --application/pages/page_00902
begin
--   Manifest
--     PAGE: 00902
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9526531750928358
,p_default_application_id=>700
,p_default_id_offset=>28323188538908472
,p_default_owner=>'DEV'
);
wwv_flow_api.create_page(
 p_id=>902
,p_user_interface_id=>wwv_flow_api.id(63766922917014449)
,p_name=>'#fa-user-secret Sessions'
,p_alias=>'SESSIONS'
,p_step_title=>'Sessions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(64766608684607384)
,p_step_template=>wwv_flow_api.id(64127379571157916)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(63770652250014528)
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20210301203046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12341489114558320)
,p_plug_name=>'Activity Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(63687285315014341)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P902_SHOW_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12341509114558321)
,p_region_id=>wwv_flow_api.id(12341489114558320)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12341665679558322)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_seq=>10
,p_name=>'Pages'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.*',
'FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
''))
,p_items_value_column_name=>'COUNT_PAGES'
,p_items_label_column_name=>'CHART_LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12342021614558326)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_seq=>20
,p_name=>'Forms'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.*',
'FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
''))
,p_items_value_column_name=>'COUNT_FORMS'
,p_items_label_column_name=>'CHART_LABEL'
,p_line_style=>'dotted'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12341988511558325)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_seq=>30
,p_name=>'Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.*',
'FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
''))
,p_items_value_column_name=>'COUNT_USERS'
,p_items_label_column_name=>'CHART_LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12342185590558327)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_seq=>40
,p_name=>'Business #1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.*',
'FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
''))
,p_items_value_column_name=>'COUNT_BUSINESS#1'
,p_items_label_column_name=>'CHART_LABEL'
,p_line_style=>'solid'
,p_line_type=>'none'
,p_marker_rendered=>'on'
,p_marker_shape=>'square'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'beforeMarker'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12342271269558328)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_seq=>50
,p_name=>'Business #2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.*',
'FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
''))
,p_items_value_column_name=>'COUNT_BUSINESS#2'
,p_items_label_column_name=>'CHART_LABEL'
,p_line_style=>'solid'
,p_line_type=>'none'
,p_marker_rendered=>'on'
,p_marker_shape=>'square'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'beforeMarker'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12341705756558323)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12341877705558324)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>0
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12480358780064842)
,p_chart_id=>wwv_flow_api.id(12341509114558321)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_min=>0
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54195600298789905)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64142195941700285)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM p902_sessions;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="timing">#TIMING#s</span>',
''))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9540026789654007)
,p_name=>'TIMER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Timer'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9540187532654008)
,p_name=>'LOGS_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGS_'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Logs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.::P901_SESSION_ID,P901_RESET:&SESSION_ID.,Y'
,p_link_text=>'&LOGS_.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15351189129894543)
,p_name=>'PAGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGES'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Pages'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.::P901_SESSION_ID,P901_FLAG,P901_RESET:&SESSION_ID.,P,Y'
,p_link_text=>'&PAGES.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15351292780894544)
,p_name=>'FORMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORMS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Forms'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.::P901_SESSION_ID,P901_FLAG,P901_RESET:&SESSION_ID.,F,Y'
,p_link_text=>'&FORMS.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15351357263894545)
,p_name=>'TRIGGERS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRIGGERS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Triggers'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.::P901_SESSION_ID,P901_FLAG,P901_RESET:&SESSION_ID.,G,Y'
,p_link_text=>'&TRIGGERS.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15351432797894546)
,p_name=>'LOG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOG_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447049012327316)
,p_name=>'SESSION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SESSION_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Session Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:901:&SESSION.::&DEBUG.:RP,:P901_SESSION_ID,P901_RESET:&SESSION_ID.,Y'
,p_link_text=>'&SESSION_ID.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447180590327317)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'User Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.:RP:P902_USER_ID:&USER_ID.'
,p_link_text=>'&USER_ID.'
,p_link_attributes=>'class="FILTER"'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447284956327318)
,p_name=>'APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447383611327319)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Page Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447448786327320)
,p_name=>'APEX_ITEMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_ITEMS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apex Items'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447533958327321)
,p_name=>'SESSION_DB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SESSION_DB'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Session Db'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447635225327322)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'DATE'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54447751926327323)
,p_name=>'UPDATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_AT'
,p_data_type=>'DATE'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(55597199768321124)
,p_name=>'REDIRECT_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REDIRECT_'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Redirect'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_link_target=>'#'
,p_link_text=>'&REDIRECT_.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(55597312755321125)
,p_name=>'DELETE_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETE_'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.:RP,:P902_DELETE:&SESSION_ID.'
,p_link_text=>'&DELETE_.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(54446930347327315)
,p_internal_uid=>54446930347327315
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    return unified_ig_toolbar(config, '''');',
'}',
''))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(54515315111621837)
,p_interactive_grid_id=>wwv_flow_api.id(54446930347327315)
,p_static_id=>'312295'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(54515368426621838)
,p_report_id=>wwv_flow_api.id(54515315111621837)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10149692650357058)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(9540026789654007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10168315087372759)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(9540187532654008)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16173185202249576)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(15351189129894543)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16174064450249581)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(15351292780894544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16174944601249584)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(15351357263894545)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16175868723249588)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(15351432797894546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54515922443621840)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(54447049012327316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54516422812621842)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(54447180590327317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54516893282621843)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(54447284956327318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54517428913621844)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(54447383611327319)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54517899945621846)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(54447448786327320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>363
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54518347933621847)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(54447533958327321)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54518919165621848)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(54447635225327322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54519409627621849)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(54447751926327323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(55644959122302124)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(55597199768321124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(55645518469302126)
,p_view_id=>wwv_flow_api.id(54515368426621838)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(55597312755321125)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31285915379817509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(54195600298789905)
,p_button_name=>'CLEAR_FILTERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63744470351014400)
,p_button_image_alt=>'&CLEAR_FILTERS.'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.:RP,:P902_RESET:Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15351675837894548)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(54195600298789905)
,p_button_name=>'SHOW_CHART'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63744470351014400)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<span class="fa fa-line-chart" title="Show Chart"></span>'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.::P902_SHOW_CHART:Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15349525759894527)
,p_name=>'P902_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15351510387894547)
,p_name=>'P902_SHOW_CHART'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31286339758817510)
,p_name=>'P902_RESET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31286796325817511)
,p_name=>'P902_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31287182695817512)
,p_name=>'P902_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31287874142817513)
,p_name=>'P902_DELETE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(54195600298789905)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31288534393817515)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_SESSION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sess.delete_session (',
'    in_session_id => apex.get_item(''$DELETE''),',
'    in_created_at => app.get_date() - 1',
');',
'--',
'apex.set_item(''$DELETE'');',
'apex.redirect(',
'    in_names => ''P902_RESET'',  -- keep current filters',
'    in_values => ''''',
');',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P902_DELETE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16188049071424204)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_CHART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- refresh temp table for charts',
'DELETE FROM p902_activity_chart s',
'WHERE s.user_id = sess.get_user_id();',
'--',
'INSERT INTO p902_activity_chart (',
'    user_id, bucket_id,',
'    chart_label, count_pages, count_forms, count_users,',
'    count_business#1, count_business#2',
')',
'SELECT',
'    sess.get_user_id(),',
'    s.bucket_id,',
'    s.chart_label,',
'    s.count_pages,',
'    s.count_forms,',
'    s.count_users,',
'    s.count_business#1,',
'    s.count_business#2',
'FROM p902_activity_chart_src s;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P902_SHOW_CHART'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
