USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_all_check]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_kpijobs_all_check]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_all_check]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs_all_check]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_kpijobs_all_check](
	[CostCentre] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[inv_gst] [numeric](23, 5) NULL,
	[GST] [numeric](11, 2) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs_all_check] TO  SCHEMA OWNER 
GO
