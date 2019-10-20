 CREATE FUNCTION udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
  BEGIN
        IF(@StartDate IS NULL OR @EndDate IS NULL)
		BEGIN
		      RETURN 0;
		END

		RETURN DATEDIFF(HOUR, @StartDate, @EndDate)
    END