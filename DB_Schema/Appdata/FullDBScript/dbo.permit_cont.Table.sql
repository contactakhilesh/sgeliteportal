USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cont]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cont]
GO
/****** Object:  Table [dbo].[permit_cont]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cont]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cont](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[seq_no] [numeric](5, 0) NOT NULL,
	[ctn_no] [varchar](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ctn_type_size] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ctn_wt_value] [decimal](3, 0) NOT NULL,
	[ctn_seal_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cont] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cont] TO  SCHEMA OWNER 
GO
