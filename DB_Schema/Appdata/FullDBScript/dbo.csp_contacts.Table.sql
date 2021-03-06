USE [appdata]
GO
/****** Object:  Table [dbo].[csp_contacts]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[csp_contacts]
GO
/****** Object:  Table [dbo].[csp_contacts]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[csp_contacts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[csp_contacts](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[team_email] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tel_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__csp_contacts__143DA55C] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[csp_contacts] TO  SCHEMA OWNER 
GO
