USE [appdata]
GO
/****** Object:  Table [dbo].[doc_trans_despatch]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_trans_despatch]
GO
/****** Object:  Table [dbo].[doc_trans_despatch]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_trans_despatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_trans_despatch](
	[doc_head_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trans_head_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[despatch] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_no] [int] NULL,
	[remarks2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_NUMBER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORD_NUMBER] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_instruction] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_trans_despatch] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_trans_despatch] TO  SCHEMA OWNER 
GO
