CREATE FUNCTION [dbo].[FN_SPLITPOS2]
(
	@delimiter CHAR(1)
    ,@string NVARCHAR(MAX)    
	,@Pos	   int
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @RESULT VARCHAR(255);

    DECLARE @start INT, @end INT 

	DECLARE @POS2 INT = 1;

    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string) 
    WHILE @start < LEN(@string) + 1 BEGIN 
        IF @end = 0  
            SET @end = LEN(@string) + 1
       
        --INSERT INTO @output (splitdata) VALUES(SUBSTRING(@string, @start, @end - @start)) 

		IF(@POS2 = @POS)
		BEGIN
			RETURN SUBSTRING(@string, @start, @end - @start);
		END

        SET @start = @end + 1 
        SET @end = CHARINDEX(@delimiter, @string, @start)
        SET @POS2 = @POS2 + 1;
    END 

	RETURN '';
END;