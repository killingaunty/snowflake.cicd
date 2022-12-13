USE SCHEMA POC_DWH_CLOUD;

CREATE OR REPLACE TABLE ARTICLE_MASTERDATA (
ARTICLE_NUMBER NVARCHAR(18) COMMENT 'Article',
ARTICLE_NAME NVARCHAR(40) COMMENT 'Article Text',
ARTICLE_GENERIC_NUMBER NVARCHAR(18) COMMENT 'Generic Article',
ARTICLE_GENERIC_NAME NVARCHAR(40) COMMENT 'Generic Article Text',
STYLE NVARCHAR(10) COMMENT 'Style',
STYLE_NAME NVARCHAR(60) COMMENT 'Style Text',
BRAND NVARCHAR(4) COMMENT 'Article Brand',
BRAND_NAME NVARCHAR(30) COMMENT 'Article Brand Text',
DIVISION NVARCHAR(2) COMMENT 'Article Division',
DIVISION_SHORT_NAME NVARCHAR(6) COMMENT 'Division Text',
DIVISION_NAME NVARCHAR(20) COMMENT 'Division Long Text',
OPTION_TYPE NVARCHAR(3) COMMENT 'Article Option Type',
OPTION_TYPE_NAME NVARCHAR(40) COMMENT 'Option Type Text',
OPTION_TYPE_CLUSTER NVARCHAR(10) COMMENT 'Article Option Type Cluster',
MH1_WORLD NVARCHAR(2) COMMENT 'MH1 World',
MH1_WORLD_NAME NVARCHAR(20) COMMENT 'MH1 World Text',
MH2_GENDER NVARCHAR(2) COMMENT 'MH2 Gender',
MH2_GENDER_NAME NVARCHAR(40) COMMENT 'MH2 Gender Text',
MH3_LIFESTYLE NVARCHAR(2) COMMENT 'MH3 Lifestyle',
MH3_LIFESTYLE_NAME NVARCHAR(20) COMMENT 'MH3 Lifestyle Text',
MH4_BUSINESS NVARCHAR(2) COMMENT 'MH4 Business',
MH4_BUSINESS_NAME NVARCHAR(20) COMMENT 'MH4 Business Text',
MH5_PRODUCT_GROUP NVARCHAR(2) COMMENT 'MH5 Product Group',
MH5_PRODUCT_GROUP_NAME NVARCHAR(40) COMMENT 'MH5 Product Group Text',
MH6_SUB_PRODUCT_GROUP NVARCHAR(2) COMMENT 'MH6 Sub Product Group',
MH6_SUB_PRODUCT_GROUP_NAME NVARCHAR(40) COMMENT 'MH6 Sub Product Group Text',
MAIN_COLOR NVARCHAR(3) COMMENT 'Article Main Color',
MAIN_COLOR_NAME NVARCHAR(20) COMMENT 'Main Color Text',
COLOR_CODE NVARCHAR(3) COMMENT 'Article Color',
COLOR_CODE_DESCRIPTION NVARCHAR(40) COMMENT 'Article Color Text',
SIZE1 NVARCHAR(18) COMMENT 'Article Size 1',
SIZE2 NVARCHAR(18) COMMENT 'Article Size 2',
OMNI_DIVISION NVARCHAR(5) COMMENT 'Omni Channel Division',
OMNI_DIVISION_NAME NVARCHAR(60) COMMENT 'Omni Channel Division Text',
OMNI_PROD_GRP NVARCHAR(10) COMMENT 'Omni Channel Product Group',
OMNI_PROD_GRP_NAME NVARCHAR(60) COMMENT 'Omni Channel Product Group Text',
OMNI_OPTION_TYPE NVARCHAR(3) COMMENT 'Omni Option Type',
OMNI_OPTION_TYPE_NAME NVARCHAR(40) COMMENT 'Omni Option Type Text',
OMNI_MM_TYPE NVARCHAR(2) COMMENT 'Omni MM Type',
OMNI_MM_TYPE_NAME NVARCHAR(40) COMMENT 'Omni MM Type Text',
OMNI_OUTLET_DIV NVARCHAR(5) COMMENT 'Omni Combi Outlet Division',
OMNI_OUTLET_DIV_NAME NVARCHAR(60) COMMENT 'Omni Combi Outlet Division Text',
OMNI_OUTLET_PROD_GRP NVARCHAR(10) COMMENT 'Omni Combi Outlet Product Group',
OMNI_OUTLET_PROD_GRP_NAME NVARCHAR(60) COMMENT 'Omni Combi Outlet Product Group Text',
OMNI_GENDER NVARCHAR(2) COMMENT 'Omni Gender',
OMNI_GENDER_NAME NVARCHAR(40) COMMENT 'Omni Gender Text',
SEASON_YEAR_LAST NVARCHAR(4) COMMENT 'Season Year (Last)',
SEASON_LAST NVARCHAR(4) COMMENT 'Season Main (Last)',
SEASON_LAST_NAME NVARCHAR(20) COMMENT 'Season Main Text (Last)',
SEASON_SUB_LAST NVARCHAR(2) COMMENT 'Season Sub (Last)',
SEASON_SUB_LAST_NAME NVARCHAR(20) COMMENT 'Season Sub Text (Last)',
SEASON_YEAR_SEASON_LAST NVARCHAR(10) COMMENT 'Season Year Season (Last)',
DIVISION_GENDER NVARCHAR(12) COMMENT 'Division Gender',
DIVISION_GENDER_NAME NVARCHAR(46) COMMENT 'Division Gender Text',
DIVISION_GENDER_LONG_NAME NVARCHAR(60) COMMENT 'Division Gender Long Text',
GENDER_CLUSTER NVARCHAR(10) COMMENT 'Article Gender Cluster',
GENDER_CLUSTER_NAME NVARCHAR(40) COMMENT 'Article Gender Cluster Text',
COUNTRY_OF_ORIGIN NVARCHAR(3) COMMENT 'Article Country of Origin',
COUNTRY_OF_ORIGIN_NAME NVARCHAR(15) COMMENT 'Article Country of Origin Text',
EAN11 NVARCHAR(18) COMMENT 'Article Main GTIN',
PRIMARY KEY (ARTICLE_NUMBER)
);



CREATE OR REPLACE TABLE  CALENDAR (
DATE NVARCHAR(8) COMMENT 'PVH Date (Calendar)',
FISCAL_YEAR NVARCHAR(4) COMMENT 'Fiscal Year',
FISCAL_YEAR_PERIOD NVARCHAR(7) COMMENT 'Fiscal Year Period',
FISCAL_PERIOD NVARCHAR(3) COMMENT 'Fiscal Period',
FISCAL_YEAR_WEEK NVARCHAR(6) COMMENT 'Fiscal Year Week',
FISCAL_WEEK NVARCHAR(2) COMMENT 'Fiscal Week Nr',
FISCAL_YEAR_QUARTER NVARCHAR(5) COMMENT 'Fiscal Year Quarter',
FISCAL_QUARTER NVARCHAR(1) COMMENT 'Fiscal Quarter',
FISCAL_WEEK_IN_PERIOD NVARCHAR(1) COMMENT 'Fiscal week number in Period',
FISCAL_PERIOD_IN_QUARTER NVARCHAR(1) COMMENT 'Fiscal period in Quarter',
WEEK_NUMBER NVARCHAR(6) COMMENT 'Calendar Year / Week',
WEEK NVARCHAR(2) COMMENT 'Week Number',
YEAR_MONTH NVARCHAR(6) COMMENT 'Calendar Year Month',
MONTH NVARCHAR(2) COMMENT 'Calendar Month',
YEAR NVARCHAR(4) COMMENT 'Calendar Year',
QUARTER NVARCHAR(1) COMMENT 'Quarter',
YEAR_QUARTER NVARCHAR(5) COMMENT 'Calendar Year Quarter',
DAY_IN_WEEK NVARCHAR(1) COMMENT 'Weekday',
DAY_IN_FISCAL_PERIOD NVARCHAR(2) COMMENT 'Day Number in Fiscal Period',
DAY_IN_FISCAL_YEAR NVARCHAR(3) COMMENT 'Day Number in Fiscal Year',
DAY_IN_YEAR NVARCHAR(3) COMMENT 'Day Number in Year',
PRIMARY KEY (DATE)
);



CREATE OR REPLACE TABLE ECOM_SALES (
SALES_DOCUMENT NVARCHAR(10) COMMENT 'Sales Document',
SALES_DOCUMENT_ITEM NVARCHAR(6) COMMENT 'Sales Document item',
SALES_ORGANIZATION NVARCHAR(4) COMMENT 'Sales Organization',
ORDER_REASON NVARCHAR(3) COMMENT 'Order Reason',
DOCUMENT_TYPE NVARCHAR(4) COMMENT 'Sales Document Type',
REASON_REJECTION NVARCHAR(2) COMMENT 'Reason For Rejection',
ACCOUNT NVARCHAR(10) COMMENT 'Account',
PROFIT_CENTER NVARCHAR(10) COMMENT 'Profit Center',
COUNTRY NVARCHAR(3) COMMENT 'Country',
POSTALCODE NVARCHAR(10) COMMENT 'Postal Code',
DIVISION NVARCHAR(2) COMMENT 'Division (FI)',
DOC_CURRCY NVARCHAR(5) COMMENT 'Document currency',
LOC_CURRCY NVARCHAR(5) COMMENT 'Local currency',
SITE_ID NVARCHAR(6) COMMENT 'Site',
COMP_CODE NVARCHAR(4) COMMENT 'Company Code',
SITE_FMS NVARCHAR(4) COMMENT 'FMS Site',
BRAND NVARCHAR(6) COMMENT 'Brand',
ARTICLE_NUMBER NVARCHAR(18) COMMENT 'Article',
SEASON NVARCHAR(4) COMMENT 'Season',
SEASON_SUB NVARCHAR(2) COMMENT 'Season Sub',
SEASON_YEAR NVARCHAR(4) COMMENT 'Season Year',
ORDER_ENTRY_DATE NVARCHAR(8) COMMENT 'E-Com Order Entry Date',
ORDER_SHIPPING_DATE NVARCHAR(8) COMMENT 'Shipping Date',
EANUPC NVARCHAR(18) COMMENT 'GTIN (EAN)',
WEBORDER_NUMBER NVARCHAR(30) COMMENT 'Webshop Order Number',
OMNI_SALES_TYPE NVARCHAR(20) COMMENT 'Omnichannel Sales Type Code',
UNITS_ORDERED DECIMAL(17,3) COMMENT 'Ordered Units',
UNITS_RETURNED DECIMAL(17,3) COMMENT 'Returned Units',
UNITS_CANCELLED DECIMAL(17,3) COMMENT 'Cancelled Units',
UNITS_NET DECIMAL(17,3) COMMENT 'Net Units',
UNITS_CONFIRMED DECIMAL(17,3) COMMENT 'Confirmed Units',
NR_ORDERS INTEGER COMMENT '# of Orders',
NR_ORDERS_ONO INTEGER COMMENT '# of Orders Own&Operated',
NR_ORDERS_PP INTEGER COMMENT '# of Orders Partner Programs',
NR_CONFIRMED_ORDERS INTEGER COMMENT '# of Confirmed orders',
NR_RETURNS INTEGER COMMENT '# of Returns',
NR_FULL_CANCELLATIONS INTEGER COMMENT '# of Full Cancellations',
VAL_GROSS_ORDER DECIMAL(17,2) COMMENT 'Gross Order Entry Value',
VAL_GROSS_INCL_VAT DECIMAL(17,2) COMMENT 'Gross Sales incl. VAT',
VAL_MARKDOWN DECIMAL(17,2) COMMENT 'Markdown Value',
VAL_RETURN DECIMAL(17,2) COMMENT 'Returned Value',
VAL_MARKDOWN_RET DECIMAL(17,2) COMMENT 'Markdown Returned Value',
VAL_NET_ORDER DECIMAL(17,2) COMMENT 'Net Order Entry Value',
VAL_ORDER_RET_COST DECIMAL(17,2) COMMENT 'Ordered Retail Cost Value',
VAL_RETURN_RET_COST DECIMAL(17,2) COMMENT 'Returned Retail Cost Value',
VAL_GROSS_RETURN DECIMAL(17,2) COMMENT 'Gross Returned Sales',
VAL_TAX DECIMAL(17,2) COMMENT 'Tax Amount',
PRIMARY KEY (SALES_DOCUMENT, SALES_DOCUMENT_ITEM)
);
