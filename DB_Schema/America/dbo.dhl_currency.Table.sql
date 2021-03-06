USE [AMERICA]
GO
/****** Object:  Table [dbo].[dhl_currency]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dhl_currency](
	[Currency_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Currency_cd] [varchar](3) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[Decimal] [smallint] NULL,
 CONSTRAINT [PK__dhl_currency__119F9925] PRIMARY KEY CLUSTERED 
(
	[Currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dhl_currency] TO  SCHEMA OWNER 
GO
