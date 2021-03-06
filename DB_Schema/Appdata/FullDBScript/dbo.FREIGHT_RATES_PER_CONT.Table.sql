USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FREIGHT_RATES_PER_CONT', N'COLUMN',N'CURRENCY_ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FREIGHT_RATES_PER_CONT', @level2type=N'COLUMN',@level2name=N'CURRENCY_ID'

GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FREIGHT_RATES_PER_CONT]') AND type in (N'U'))
ALTER TABLE [dbo].[FREIGHT_RATES_PER_CONT] DROP CONSTRAINT IF EXISTS [DF_FREIGHT_RATES_PER_CONT_CURRENCY_ID]
GO
/****** Object:  Table [dbo].[FREIGHT_RATES_PER_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[FREIGHT_RATES_PER_CONT]
GO
/****** Object:  Table [dbo].[FREIGHT_RATES_PER_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FREIGHT_RATES_PER_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FREIGHT_RATES_PER_CONT](
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PARENTACCTID] [int] NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT20_RATE] [numeric](18, 2) NULL,
	[CONT40_RATE] [numeric](18, 2) NULL,
 CONSTRAINT [PK_FREIGHT_RATES_PER_CONT] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC,
	[PORT_ID] ASC,
	[PARENTACCTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[FREIGHT_RATES_PER_CONT] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FREIGHT_RATES_PER_CONT', N'COLUMN',N'CURRENCY_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Freight rates per container size used in SABIC ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FREIGHT_RATES_PER_CONT', @level2type=N'COLUMN',@level2name=N'CURRENCY_ID'
GO
