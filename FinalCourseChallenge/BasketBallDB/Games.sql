CREATE TABLE [dbo].[Games]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[MatchDate] DATETIME NOT NULL,
	[Venue] VARCHAR(50) NOT NULL,
	[Completed] SMALLINT NOT NULL,
	[CourtFee] MONEY NOT NULL,
	[WhoPaid] VARCHAR(50) NULL,
	CONSTRAINT UQ_DateVenue UNIQUE (MatchDate, Venue),
	CONSTRAINT CHK_CompleteValid CHECK ([Completed] = 0 OR [Completed] = 1 OR [Completed] = 3)


)
