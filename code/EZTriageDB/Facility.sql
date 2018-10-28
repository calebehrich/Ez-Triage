CREATE STATISTICS [Facility]
	ON [dbo].[SomeTableOrView]
		(SomeColumn)
	WITH
	SAMPLE 50 PERCENT
