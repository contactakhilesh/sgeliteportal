USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_ADDRESS_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_ADDRESS_MAST]
GO
/****** Object:  Table [dbo].[DOC_ADDRESS_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_ADDRESS_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_ADDRESS_MAST](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipto_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_add6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_ADDRESS_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_ADDRESS_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_ADDRESS_MAST] TO [public] AS [dbo]
GO
