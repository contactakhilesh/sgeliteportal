USE [appdata]
GO
/****** Object:  Table [dbo].[permit_master_carrier_agent]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_master_carrier_agent]
GO
/****** Object:  Table [dbo].[permit_master_carrier_agent]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_master_carrier_agent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_master_carrier_agent](
	[carrier_agent] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[fax_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tel_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_add] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_permit_master_carrier_agent] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_master_carrier_agent] TO  SCHEMA OWNER 
GO
