USE [appdata]
GO
/****** Object:  Table [dbo].[SHELL_PRODUCT_WT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SHELL_PRODUCT_WT]
GO
/****** Object:  Table [dbo].[SHELL_PRODUCT_WT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SHELL_PRODUCT_WT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SHELL_PRODUCT_WT](
	[ProductName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HsCode] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PackingNetWt] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NetWt] [numeric](18, 3) NULL,
	[GrossWt] [numeric](18, 3) NULL,
	[M3] [numeric](18, 3) NULL,
	[Remarks] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SHELL_PRODUCT_WT] TO  SCHEMA OWNER 
GO
