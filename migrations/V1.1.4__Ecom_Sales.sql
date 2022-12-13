USE SCHEMA PUBLIC;

CREATE VIEW VIEW_ECOM_SALES AS (

SELECT --article.ARTICLE_NUMBER,
article.ARTICLE_NAME,
article.ARTICLE_GENERIC_NUMBER,
article.ARTICLE_GENERIC_NAME,
article.STYLE,
article.STYLE_NAME,
article.BRAND,
article.BRAND_NAME,
article.DIVISION,
article.DIVISION_SHORT_NAME,
article.DIVISION_NAME,
article.OPTION_TYPE,
article.OPTION_TYPE_NAME,
article.OPTION_TYPE_CLUSTER,
article.MH1_WORLD,
article.MH1_WORLD_NAME,
article.MH2_GENDER,
article.MH2_GENDER_NAME,
article.MH3_LIFESTYLE,
article.MH3_LIFESTYLE_NAME,
article.MH4_BUSINESS,
article.MH4_BUSINESS_NAME,
article.MH5_PRODUCT_GROUP,
article.MH5_PRODUCT_GROUP_NAME,
article.MH6_SUB_PRODUCT_GROUP,
article.MH6_SUB_PRODUCT_GROUP_NAME,
article.MAIN_COLOR,
article.MAIN_COLOR_NAME,
article.COLOR_CODE,
article.COLOR_CODE_DESCRIPTION,
article.SIZE1,
article.SIZE2,
article.OMNI_DIVISION,
article.OMNI_DIVISION_NAME,
article.OMNI_PROD_GRP,
article.OMNI_PROD_GRP_NAME,
article.OMNI_OPTION_TYPE,
article.OMNI_OPTION_TYPE_NAME,
article.OMNI_MM_TYPE,
article.OMNI_MM_TYPE_NAME,
article.OMNI_OUTLET_DIV,
article.OMNI_OUTLET_DIV_NAME,
article.OMNI_OUTLET_PROD_GRP,
article.OMNI_OUTLET_PROD_GRP_NAME,
article.OMNI_GENDER,
article.OMNI_GENDER_NAME,
article.SEASON_YEAR_LAST,
article.SEASON_LAST,
article.SEASON_LAST_NAME,
article.SEASON_SUB_LAST,
article.SEASON_SUB_LAST_NAME,
article.SEASON_YEAR_SEASON_LAST,
article.DIVISION_GENDER,
article.DIVISION_GENDER_NAME,
article.DIVISION_GENDER_LONG_NAME,
article.GENDER_CLUSTER,
article.GENDER_CLUSTER_NAME,
article.COUNTRY_OF_ORIGIN,
article.COUNTRY_OF_ORIGIN_NAME,
article.EAN11,
--calendar.DATE,
calendar.ORDER_FISCAL_YEAR,
calendar.ORDER_FISCAL_YEAR_PERIOD,
calendar.ORDER_FISCAL_PERIOD,
calendar.ORDER_FISCAL_YEAR_WEEK,
calendar.ORDER_FISCAL_WEEK,
calendar.ORDER_FISCAL_YEAR_QUARTER,
calendar.ORDER_FISCAL_QUARTER,
calendar.ORDER_FISCAL_WEEK_IN_PERIOD,
calendar.ORDER_FISCAL_PERIOD_IN_QUARTER,
calendar.ORDER_WEEK_NUMBER,
calendar.ORDER_WEEK,
calendar.ORDER_YEAR_MONTH,
calendar.ORDER_MONTH,
calendar.ORDER_YEAR,
calendar.ORDER_QUARTER,
calendar.ORDER_YEAR_QUARTER,
calendar.ORDER_DAY_IN_WEEK,
calendar.ORDER_DAY_IN_FISCAL_PERIOD,
calendar.ORDER_DAY_IN_FISCAL_YEAR,
calendar.ORDER_DAY_IN_YEAR,
sales.SALES_DOCUMENT,
sales.SALES_DOCUMENT_ITEM,
sales.SALES_ORGANIZATION,
sales.ORDER_REASON,
sales.DOCUMENT_TYPE,
sales.REASON_REJECTION,
sales.ACCOUNT,
sales.PROFIT_CENTER,
sales.COUNTRY,
sales.POSTALCODE,
--sales.DIVISION,
sales.DOC_CURRCY,
sales.LOC_CURRCY,
sales.SITE_ID,
sales.COMP_CODE,
sales.SITE_FMS,
--sales.BRAND,
sales.ARTICLE_NUMBER,
sales.SEASON,
sales.SEASON_SUB,
sales.SEASON_YEAR,
sales.ORDER_ENTRY_DATE,
sales.ORDER_SHIPPING_DATE,
sales.EANUPC,
sales.WEBORDER_NUMBER,
sales.OMNI_SALES_TYPE,
sales.UNITS_ORDERED,
sales.UNITS_RETURNED,
sales.UNITS_CANCELLED,
sales.UNITS_NET,
sales.UNITS_CONFIRMED,
sales.NR_ORDERS,
sales.NR_ORDERS_ONO,
sales.NR_ORDERS_PP,
sales.NR_CONFIRMED_ORDERS,
sales.NR_RETURNS,
sales.NR_FULL_CANCELLATIONS,
sales.VAL_GROSS_ORDER,
sales.VAL_GROSS_INCL_VAT,
sales.VAL_MARKDOWN,
sales.VAL_RETURN,
sales.VAL_MARKDOWN_RET,
sales.VAL_NET_ORDER,
sales.VAL_ORDER_RET_COST,
sales.VAL_RETURN_RET_COST,
sales.VAL_GROSS_RETURN,
sales.VAL_TAX
FROM ECOM_SALES AS sales
LEFT JOIN ARTICLE_MASTERDATA as article 
ON sales.ARTICLE_NUMBER = sales.ARTICLE_NUMBER
LEFT JOIN CALENDAR as calendar 
ON calendar.DATE = sales.ORDER_ENTRY_DATE

);