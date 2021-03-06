IF EXISTS 
(
  SELECT * 
  FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'MyTVO_Car'
  AND column_name = 'cStVIN'
)
BEGIN
ALTER TABLE [dbo].[MyTVO_Car]
DROP COLUMN [cStVIN]
END
GO

IF EXISTS 
(
  SELECT * 
  FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'MyTVO_Car'
  AND column_name = 'cEndVIN'
)
BEGIN
ALTER TABLE [dbo].[MyTVO_Car]
DROP COLUMN [cEndVIN]
END
GO

IF EXISTS 
(
  SELECT * 
  FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'MyTVO_Car'
  AND column_name = 'cABIRef'
)
BEGIN
ALTER TABLE [dbo].[MyTVO_Car]
DROP COLUMN [cABIRef]
END
GO