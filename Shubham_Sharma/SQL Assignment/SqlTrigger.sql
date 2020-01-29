--TRIGGER FOR TABLE DUMMY_TABLE
CREATE TRIGGER dbo.dummy_config_trigger
ON dbo.dummy_config
AFTER UPDATE
as
BEGIN
	DECLARE @change varchar(30)
	SET @change = (SELECT Path from inserted)
	EXECUTE dbo.spUpdatePath @change
END