USE [appdata]
GO
/****** Object:  Table [dbo].[ord_mgmt_job]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ord_mgmt_job]
GO
/****** Object:  Table [dbo].[ord_mgmt_job]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ord_mgmt_job]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ord_mgmt_job](
	[export_n] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parentAcctid] [numeric](10, 0) NULL,
	[business_unit] [numeric](10, 0) NULL,
 CONSTRAINT [PK_ord_ord_mgmt_job] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ord_mgmt_job] TO  SCHEMA OWNER 
GO
