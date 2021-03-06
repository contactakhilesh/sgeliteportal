USE [appdata]
GO
/****** Object:  Table [dbo].[rpt_inv_sum_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[rpt_inv_sum_det]
GO
/****** Object:  Table [dbo].[rpt_inv_sum_det]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_inv_sum_det]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rpt_inv_sum_det](
	[sum_seq_n] [numeric](18, 0) NOT NULL,
	[line_n] [numeric](18, 0) NOT NULL,
	[invoice_n] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_job_n] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_tra_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_ref_n] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_d] [datetime] NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chg01_a] [numeric](11, 3) NULL,
	[chg02_a] [numeric](11, 3) NULL,
	[chg03_a] [numeric](11, 3) NULL,
	[chg04_a] [numeric](11, 3) NULL,
	[chg05_a] [numeric](11, 3) NULL,
	[chg06_a] [numeric](11, 3) NULL,
	[chg07_a] [numeric](11, 3) NULL,
	[chg08_a] [numeric](11, 3) NULL,
	[chg09_a] [numeric](11, 3) NULL,
	[chg10_a] [numeric](11, 3) NULL,
	[chg11_a] [numeric](11, 3) NULL,
	[chg12_a] [numeric](11, 3) NULL,
	[chg13_a] [numeric](11, 3) NULL,
	[chg14_a] [numeric](11, 3) NULL,
	[chg15_a] [numeric](11, 3) NULL,
	[chg16_a] [numeric](11, 3) NULL,
	[chg17_a] [numeric](11, 3) NULL,
	[chg18_a] [numeric](11, 3) NULL,
	[chg19_a] [numeric](11, 3) NULL,
	[chg20_a] [numeric](11, 3) NULL,
	[chg21_a] [numeric](11, 3) NULL,
	[chg22_a] [numeric](11, 3) NULL,
	[chg23_a] [numeric](11, 3) NULL,
	[chg24_a] [numeric](11, 3) NULL,
	[chg25_a] [numeric](11, 3) NULL,
	[chg26_a] [numeric](11, 3) NULL,
	[chg27_a] [numeric](11, 3) NULL,
	[chg28_a] [numeric](11, 3) NULL,
	[chg29_a] [numeric](11, 3) NULL,
	[chg30_a] [numeric](11, 3) NULL,
	[chg31_a] [numeric](11, 3) NULL,
	[chg32_a] [numeric](11, 3) NULL,
	[chg33_a] [numeric](11, 3) NULL,
	[chg34_a] [numeric](11, 3) NULL,
	[chg35_A] [numeric](11, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[rpt_inv_sum_det] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[rpt_inv_sum_det] TO [public] AS [dbo]
GO
