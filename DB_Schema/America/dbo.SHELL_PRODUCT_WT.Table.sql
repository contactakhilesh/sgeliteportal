USE [AMERICA]
GO
/****** Object:  Table [dbo].[SHELL_PRODUCT_WT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHELL_PRODUCT_WT](
	[ProductName] [varchar](100) NULL,
	[HsCode] [varchar](40) NULL,
	[PackingNetWt] [varchar](40) NULL,
	[NetWt] [numeric](18, 3) NULL,
	[GrossWt] [numeric](18, 3) NULL,
	[M3] [numeric](18, 3) NULL,
	[Remarks] [varchar](150) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SHELL_PRODUCT_WT] TO  SCHEMA OWNER 
GO
