CREATE OR REPLACE PACKAGE wiki AS

    /**
     * This package is part of the Lumberjack project under MIT licence.
     * https://github.com/jkvetina/#lumberjack
     *
     * Copyright (c) Jan Kvetina, 2020
     *
     *                                                      (R)
     *                      ---                  ---
     *                    #@@@@@@              &@@@@@@
     *                    @@@@@@@@     .@      @@@@@@@@
     *          -----      @@@@@@    @@@@@@,   @@@@@@@      -----
     *       &@@@@@@@@@@@    @@@   &@@@@@@@@@.  @@@@   .@@@@@@@@@@@#
     *           @@@@@@@@@@@   @  @@@@@@@@@@@@@  @   @@@@@@@@@@@
     *             \@@@@@@@@@@   @@@@@@@@@@@@@@@   @@@@@@@@@@
     *               @@@@@@@@@   @@@@@@@@@@@@@@@  &@@@@@@@@
     *                 @@@@@@@(  @@@@@@@@@@@@@@@  @@@@@@@@
     *                  @@@@@@(  @@@@@@@@@@@@@@   @@@@@@@
     *                  .@@@@@,   @@@@@@@@@@@@@   @@@@@@
     *                   @@@@@@  *@@@@@@@@@@@@@   @@@@@@
     *                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.
     *                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     *                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@
     *                     ,@@@@@@@@@@@@@@@@@@@@@@@@@
     *                       ,@@@@@@@@@@@@@@@@@@@@@
     *                            jankvetina.cz
     *                               -------
     *
     */



    PROCEDURE desc_table (
        in_name VARCHAR2
    );



    PROCEDURE desc_view (
        in_name     VARCHAR2
    );



    PROCEDURE desc_spec (
        in_name         VARCHAR2,
        in_overload     NUMBER      := 1
    );



    PROCEDURE desc_body (
        in_name         VARCHAR2,
        in_overload     NUMBER      := 1
    );



    PROCEDURE desc_package (
        in_package      VARCHAR2
    );



    PROCEDURE desc_select (
        in_cursor       IN OUT  SYS_REFCURSOR,
        in_cols_width   IN OUT  SYS_REFCURSOR
    );

END;
/

