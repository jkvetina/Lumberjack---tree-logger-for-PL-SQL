CREATE OR REPLACE VIEW p910_nav_overview AS
WITH q AS (
    SELECT
        ROWNUM AS seq#,
        q.page_id
    FROM (
        SELECT
            LEVEL AS lvl,
            n.page_id,
            n.parent_id,
            n.page_group,
            n.group_id,
            n.order#
        FROM nav_top_src n
        CONNECT BY n.app_id         = PRIOR n.app_id
            AND n.parent_id         = PRIOR n.page_id
        START WITH n.parent_id      IS NULL
        ORDER SIBLINGS BY n.order# NULLS LAST, n.page_id
    ) q
)
SELECT
    n.app_id,
    n.page_id,
    n.parent_id,
    p.page_alias,
    p.page_name,
    p.page_title,
    --
    CASE
        WHEN r.page_id IS NOT NULL
            THEN apex.get_icon('fa-minus-square', 'Remove record from Navigation table')
        END AS status,
    --
    n.order#,
    n.css_class,
    n.is_hidden,
    p.page_group,
    --
    CASE WHEN p.page_id IS NOT NULL
        THEN apex.get_developer_page_link(n.page_id)
        END AS page_link,
    --
    CASE WHEN p.authorization_scheme LIKE '%MUST_NOT_BE_PUBLIC_USER%'
        THEN apex.get_icon('fa-check-square', 'MUST_NOT_BE_PUBLIC_USER')
        ELSE p.authorization_scheme
        END AS auth_scheme,
    q.seq#
FROM navigation n
LEFT JOIN apex_application_pages p
    ON p.application_id         = n.app_id
    AND p.page_id               = n.page_id
LEFT JOIN p910_nav_pages_to_remove r
    ON r.app_id                 = n.app_id
    AND r.page_id               = n.page_id
LEFT JOIN q
    ON q.page_id                = n.page_id
WHERE n.app_id                  = sess.get_app_id()
UNION ALL
SELECT
    a.app_id,
    a.page_id,
    a.parent_id,
    a.page_alias,
    a.page_name,
    a.page_title,
    --
    apex.get_icon('fa-plus-square', 'Create record in Navigation table') AS status,
    --
    a.order#,
    a.css_class,
    a.is_hidden,
    a.page_group,
    --
    apex.get_developer_page_link(a.page_id) AS page_link,
    --
    CASE WHEN a.auth_scheme LIKE '%MUST_NOT_BE_PUBLIC_USER%'
        THEN apex.get_icon('fa-check-square', 'MUST_NOT_BE_PUBLIC_USER')
        ELSE a.auth_scheme
        END AS auth_scheme,
    NULL AS seq#
FROM p910_nav_pages_to_add a
WHERE a.app_id          = sess.get_app_id();

