

/*
SCRIPT PURPOSE:
  THIS SCRIPT CREATES NEW DATBASE NAME DATWAREHOUSE AFTER CHECKING IF IT ALREADY EXIST.
    GOLD, SILVER, BRONZE
*/





-- create Database 'DataWarehouse'
USE master;
GO

  -- Drop and recreate the DataWarehouse database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse') 
BEGIN 
    ALTER  DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWAREHOUSE;
END;
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
