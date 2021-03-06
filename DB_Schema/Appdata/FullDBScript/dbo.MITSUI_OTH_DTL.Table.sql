USE [appdata]
GO
/****** Object:  Table [dbo].[MITSUI_OTH_DTL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[MITSUI_OTH_DTL]
GO
/****** Object:  Table [dbo].[MITSUI_OTH_DTL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MITSUI_OTH_DTL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MITSUI_OTH_DTL](
	[export_n] [numeric](9, 0) NOT NULL,
	[remarks_1] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks_2] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks_3] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[number_of_amendment] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ack_to] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ack_attn] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ack_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ack_body] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ack_email_by] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[MITSUI_OTH_DTL] TO  SCHEMA OWNER 
GO
