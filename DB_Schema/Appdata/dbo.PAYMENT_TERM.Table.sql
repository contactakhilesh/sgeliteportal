USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PAYMENT_TERM](
	[ID] [numeric](10, 0) NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[VALID] [char](2) NULL,
	[lcgroup] [varchar](50) NULL,
 CONSTRAINT [ID_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
