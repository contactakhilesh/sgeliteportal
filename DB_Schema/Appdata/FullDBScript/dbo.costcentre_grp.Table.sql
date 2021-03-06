USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_grp]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_grp] DROP CONSTRAINT IF EXISTS [DF_costcenter_group_created_date]
GO
/****** Object:  Table [dbo].[costcentre_grp]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[costcentre_grp]
GO
/****** Object:  Table [dbo].[costcentre_grp]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_grp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[costcentre_grp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[ccgrp_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_costcenter_group] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[costcentre_grp] TO  SCHEMA OWNER 
GO
