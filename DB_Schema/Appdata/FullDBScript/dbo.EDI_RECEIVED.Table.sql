USE [appdata]
GO
/****** Object:  Table [dbo].[EDI_RECEIVED]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EDI_RECEIVED]
GO
/****** Object:  Table [dbo].[EDI_RECEIVED]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDI_RECEIVED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDI_RECEIVED](
	[msg_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[recv_date] [datetime] NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_filename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[processed_date] [datetime] NULL,
	[idoc_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EDI_RECEIVED] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EDI_RECEIVED] TO  SCHEMA OWNER 
GO
