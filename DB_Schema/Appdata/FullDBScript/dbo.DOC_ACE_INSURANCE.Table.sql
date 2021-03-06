USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_ACE_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_ACE_INSURANCE]
GO
/****** Object:  Table [dbo].[DOC_ACE_INSURANCE]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_ACE_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_ACE_INSURANCE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_hos_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_fig] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_ACE_INSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_ACE_INSURANCE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_ACE_INSURANCE] TO [public] AS [dbo]
GO
