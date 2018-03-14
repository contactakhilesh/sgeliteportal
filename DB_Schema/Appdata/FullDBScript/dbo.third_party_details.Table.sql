USE [appdata]
GO
/****** Object:  Table [dbo].[third_party_details]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[third_party_details]
GO
/****** Object:  Table [dbo].[third_party_details]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[third_party_details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[third_party_details](
	[party_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_cc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[addr1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[addr2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[addr3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[addr4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[attn] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[telno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_third_party_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[third_party_details] TO  SCHEMA OWNER 
GO
