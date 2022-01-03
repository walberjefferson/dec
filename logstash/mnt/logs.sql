SELECT * FROM "public"."indicadores_dashboard_ue"
where id > :sql_last_value order by id asc limit 1000;
