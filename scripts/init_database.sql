/*
=======================================
 Create Database and Schemas
=======================================
*/

  


USE master;
GO

-- Drop and recreate 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.database WHERE name='DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO  

--Create the database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA GOLD;
GO
