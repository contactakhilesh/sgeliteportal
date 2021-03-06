USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_GREAT_AMERICAN_POLICY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_GREAT_AMERICAN_POLICY]
GO
/****** Object:  Table [dbo].[DOC_GREAT_AMERICAN_POLICY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_GREAT_AMERICAN_POLICY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_GREAT_AMERICAN_POLICY](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins_val] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ins_val_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_issued] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_date] [datetime] NULL,
	[insurer] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_voyage] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_of_receipt] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_loading] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_discharge] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[final_dest] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[spl_inst] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cur_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_GREAT_AMERICAN_POLICY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_GREAT_AMERICAN_POLICY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_GREAT_AMERICAN_POLICY] TO [public] AS [dbo]
GO
