USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PM4_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PM4_DET]
GO
/****** Object:  Table [dbo].[DOC_PM4_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PM4_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PM4_DET](
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
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyer] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[portdelivery] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[refno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_operator] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loc_board_ship] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[container_nos] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marks_no] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[kind_of_packages] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[net_wt] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_delivered_as] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_PM4_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PM4_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_PM4_DET] TO [public] AS [dbo]
GO
