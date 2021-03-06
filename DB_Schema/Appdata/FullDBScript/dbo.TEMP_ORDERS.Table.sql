USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_ORDERS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_ORDERS]
GO
/****** Object:  Table [dbo].[TEMP_ORDERS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_ORDERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_ORDERS](
	[total_packages] [numeric](12, 3) NULL,
	[total_wt] [numeric](12, 3) NULL,
	[total_m3] [numeric](12, 4) NULL,
	[userid] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_created] [datetime] NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_text] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_tot_pack_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dtl_wtm3_ind] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_ORDERS] TO  SCHEMA OWNER 
GO
