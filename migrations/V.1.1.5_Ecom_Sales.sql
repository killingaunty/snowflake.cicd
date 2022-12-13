USE SCHEMA PUBLIC;
create or replace file format csv_format
  type = csv
  field_delimiter = '|'
  skip_header = 1
  FIELD_OPTIONALLY_ENCLOSED_BY = '"';

create or replace stage stg_article_masterdata file_format = csv_format;
create or replace stage stg_ecom_sales file_format = csv_format;
create or replace stage stg_calendar file_format = csv_format;
