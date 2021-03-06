USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PCOO_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PCOO_DET]
GO
/****** Object:  Table [dbo].[DOC_PCOO_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PCOO_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PCOO_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dep_dt] [datetime] NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyer] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_produced] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_exported] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PCOO_DET] TO  SCHEMA OWNER 
GO
