CREATE OR REPLACE PACKAGE uploader AS

    -- DML ERR tables just for Uploder to investigate failed rows
    dml_tables_owner        CONSTANT VARCHAR2(30)       := 'DEV';
    dml_tables_postfix      CONSTANT VARCHAR2(30)       := '_U$';
    dml_tables_cols         CONSTANT NUMBER(4)          := 60;



    PROCEDURE upload_file (
        in_session_id       sessions.session_id%TYPE,
        in_file_name        uploaded_files.file_name%TYPE,
        in_target           uploaded_files.uploader_id%TYPE     := NULL
    );



    PROCEDURE upload_files (
        in_session_id       sessions.session_id%TYPE
    );



    FUNCTION get_basename (
        in_file_name        uploaded_files.file_name%TYPE
    )
    RETURN VARCHAR2;



    PROCEDURE parse_file (
        in_file_name        uploaded_file_sheets.file_name%TYPE,
        in_uploader_id      uploaded_file_sheets.uploader_id%TYPE       := NULL
    );



    PROCEDURE delete_file (
        in_file_name        uploaded_files.file_name%TYPE
    );



    PROCEDURE download_file (
        in_file_name        uploaded_files.file_name%TYPE
    );



    PROCEDURE create_uploader (
        in_uploader_id      uploaders.uploader_id%TYPE
    );



    PROCEDURE create_uploader_mappings (
        in_uploader_id      uploaders_mapping.uploader_id%TYPE,
        in_clear_current    BOOLEAN                                 := FALSE
    );



    FUNCTION get_dml_err_table_name (
        in_table_name       VARCHAR2
    )
    RETURN VARCHAR2;



    PROCEDURE rebuild_dml_err_table (
        in_table_name       uploaders.target_table%TYPE
    );

END;
/
