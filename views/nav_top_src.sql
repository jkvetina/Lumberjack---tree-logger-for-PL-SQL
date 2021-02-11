CREATE OR REPLACE VIEW nav_top_src AS
WITH curr AS (
    SELECT
        n.app_id,
        n.page_id,
        n.parent_id,
        sess.get_root_page_id(n.page_id)    AS root_id,
        sess.get_page_group(n.page_id)      AS page_group
    FROM navigation n
    WHERE n.app_id      = sess.get_app_id()
        AND n.page_id   = COALESCE(nav.get_peeked_page_id(), sess.get_page_id())
)
SELECT
    n.app_id,
    n.page_id,
    n.parent_id,
    a.page_alias,
    a.page_name,
    a.page_title,
    NULL                        AS page_target,
    NULL                        AS page_onclick,
    a.page_group,
    a.authorization_scheme      AS auth_scheme,
    n.css_class,
    i.item_name                 AS reset_item,
    g.page_id                   AS group_id,
    n.order#,
    n.is_hidden,
    curr.page_id                AS curr_page_id,
    curr.parent_id              AS curr_parent_id,
    curr.root_id                AS curr_root_id
FROM navigation n
JOIN curr
    ON curr.app_id              = n.app_id
JOIN apex_application_pages a
    ON a.application_id         = n.app_id
    AND a.page_id               = n.page_id
LEFT JOIN apex_application_page_items i
    ON i.application_id         = a.application_id
    AND i.page_id               = a.page_id
    AND i.item_name             = 'P' || TO_CHAR(a.page_id) || '_RESET'
LEFT JOIN navigation_groups g
    ON g.app_id                 = n.app_id
    AND g.page_id               = n.page_id
    AND g.page_group            = sess.get_page_group(curr.page_id)
UNION ALL
SELECT
    n.app_id,
    NULL                        AS page_id,
    NULL                        AS parent_id,
    n.page_alias,
    n.page_name,
    n.page_title,
    n.page_target,
    n.page_onclick,
    n.page_group,
    n.auth_scheme,
    n.css_class,
    NULL                        AS reset_item,
    NULL                        AS group_id,
    n.order#,
    n.is_hidden,
    curr.page_id                AS curr_page_id,
    curr.parent_id              AS curr_parent_id,
    curr.root_id                AS curr_root_id
FROM navigation_extras n
JOIN curr
    ON curr.app_id              = n.app_id;
--
COMMENT ON TABLE nav_top_src    IS 'Source data for top menu and for Navigation page';

