/*
==========================================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
==========================================================================================
Script Purpose:
This stored procedure loads data into the 'bronze' schema from external CSV files.
performs the following actions:
Truncates the bronze tables before loading data.
Uses the 'BULK INSERT' command to load data from csv Files to bronze tables.

Parameters:

None.
This stored procedure does not accept any parameters or return any values.

Usage Example:
EXEC bronze.load_bronze;
==========================================================================================
*/
create procedure [bronze].[load_bronze]
as 
	begin
	TRUNCATE TABLE bronze.crm_cust_info;
	bulk insert bronze.crm_cust_info
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);

	TRUNCATE TABLE [bronze].[crm_prd_info];
	bulk insert [bronze].[crm_prd_info]
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);

	TRUNCATE TABLE [bronze].[crm_sales_details];
	bulk insert [bronze].[crm_sales_details]
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);

	TRUNCATE TABLE [bronze].[erp_cust_az12];
	bulk insert [bronze].[erp_cust_az12]
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);

	TRUNCATE TABLE [bronze].[erp_px_cat_g1v2];
	bulk insert [bronze].[erp_px_cat_g1v2]
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);


	TRUNCATE TABLE [bronze].[rp_loc_a101];
	bulk insert [bronze].[rp_loc_a101]
	from 'C:\Users\vmall\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	with
	(
	firstrow = 2,
	fieldterminator = ','
	);
