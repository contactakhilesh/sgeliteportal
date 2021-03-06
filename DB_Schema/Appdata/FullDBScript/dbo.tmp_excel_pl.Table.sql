USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_excel_pl]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_excel_pl]
GO
/****** Object:  Table [dbo].[tmp_excel_pl]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_excel_pl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tmp_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_excel_pl] TO  SCHEMA OWNER 
GO
