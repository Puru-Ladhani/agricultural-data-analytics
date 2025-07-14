 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'ADD Storage Role ARN'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbi.project.1551/')
  COMMENT = 'Optional Comment'

    //description Integration Object
  desc integration PBI_Integration;

//drop integration PBI_Integration

--------------------------------------------
//drop database PowerBI

CREATE database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int,	Location string,	Area	int,
Rainfall	float, Temperature	float, Soil_type string,
Irrigation	string, yeilds	int,Humidity	float,
Crops	string,price	int,Season string
