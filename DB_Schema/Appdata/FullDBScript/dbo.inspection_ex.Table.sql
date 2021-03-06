USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inspection_ex]') AND type in (N'U'))
ALTER TABLE [dbo].[inspection_ex] DROP CONSTRAINT IF EXISTS [FK_inspection_ex_export_n]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inspection_ex]') AND type in (N'U'))
ALTER TABLE [dbo].[inspection_ex] DROP CONSTRAINT IF EXISTS [DF_inspection_ex_created_dt]
GO
/****** Object:  Table [dbo].[inspection_ex]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[inspection_ex]
GO
/****** Object:  Table [dbo].[inspection_ex]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inspection_ex]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inspection_ex](
	[export_n] [numeric](10, 0) NOT NULL,
	[group_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[location_id] [numeric](10, 0) NULL,
	[location_addr1] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[location_addr2] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_person] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_inspection_ex] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[inspection_ex] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_inspection_ex_export_n]') AND parent_object_id = OBJECT_ID(N'[dbo].[inspection_ex]'))
ALTER TABLE [dbo].[inspection_ex]  WITH CHECK ADD  CONSTRAINT [FK_inspection_ex_export_n] FOREIGN KEY([export_n])
REFERENCES [dbo].[EXPORT] ([EXPORT_N])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_inspection_ex_export_n]') AND parent_object_id = OBJECT_ID(N'[dbo].[inspection_ex]'))
ALTER TABLE [dbo].[inspection_ex] CHECK CONSTRAINT [FK_inspection_ex_export_n]
GO
