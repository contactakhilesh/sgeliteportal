USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_HOME_ASSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_HOME_ASSURANCE]
GO
/****** Object:  Table [dbo].[DOC_HOME_ASSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HOME_ASSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_HOME_ASSURANCE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins_date] [datetime] NULL,
	[comp_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policy_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_ref_remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_date] [datetime] NULL,
	[country_from] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payable_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[markings1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[markings2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[markings3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[markings4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[markings5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_HOME_ASSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_HOME_ASSURANCE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_HOME_ASSURANCE] TO [public] AS [dbo]
GO
