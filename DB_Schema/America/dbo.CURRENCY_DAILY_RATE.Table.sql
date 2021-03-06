USE [AMERICA]
GO
/****** Object:  Table [dbo].[CURRENCY_DAILY_RATE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRENCY_DAILY_RATE](
	[CURRENCY_EX_RATE_D] [datetime] NOT NULL,
	[CURRENCY_BASE_IND] [varchar](1) NOT NULL,
	[FROM_CURRENCY] [varchar](10) NOT NULL,
	[TO_CURRENCY] [varchar](10) NOT NULL,
	[CURRENCY_DAILY_RATE] [numeric](11, 4) NOT NULL,
	[USER_ID] [varchar](10) NULL,
	[ENTRY_D] [datetime] NULL,
 CONSTRAINT [PK_CURRENCY_DAILY_RATE] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_EX_RATE_D] ASC,
	[CURRENCY_BASE_IND] ASC,
	[FROM_CURRENCY] ASC,
	[TO_CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CURRENCY_DAILY_RATE] TO  SCHEMA OWNER 
GO
