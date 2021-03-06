USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice_hub]') AND type in (N'U'))
ALTER TABLE [dbo].[invoice_hub] DROP CONSTRAINT IF EXISTS [DF__invoice_h__creat__31AE0CB2]
GO
/****** Object:  Table [dbo].[invoice_hub]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[invoice_hub]
GO
/****** Object:  Table [dbo].[invoice_hub]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invoice_hub]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[invoice_hub](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hub_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[contact_person] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_invoice_hub] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[invoice_hub] TO  SCHEMA OWNER 
GO
