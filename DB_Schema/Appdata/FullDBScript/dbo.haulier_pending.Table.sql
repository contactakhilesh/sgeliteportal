USE [appdata]
GO
/****** Object:  Trigger [postinsert_haulier_pending]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_haulier_pending]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[haulier_pending]') AND type in (N'U'))
ALTER TABLE [dbo].[haulier_pending] DROP CONSTRAINT IF EXISTS [DF__haulier_p__proce__1DA71405]
GO
/****** Object:  Table [dbo].[haulier_pending]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[haulier_pending]
GO
/****** Object:  Table [dbo].[haulier_pending]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[haulier_pending]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[haulier_pending](
	[group_n] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[prod_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipping_point] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[plant_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[processed] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[prod_ids] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_haulier_pending] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[haulier_pending] TO  SCHEMA OWNER 
GO
