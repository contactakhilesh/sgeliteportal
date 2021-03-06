USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_prodgrp] DROP CONSTRAINT IF EXISTS [FK_costcentre_prodgrp_prodgrp_hd]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_prodgrp] DROP CONSTRAINT IF EXISTS [FK_costcentre_prodgrp_costcentre_grp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_prodgrp] DROP CONSTRAINT IF EXISTS [DF__costcentr__PLANT__4342AD08]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_prodgrp] DROP CONSTRAINT IF EXISTS [DF_costcentre_prodgrp_created_dt]
GO
/****** Object:  Table [dbo].[costcentre_prodgrp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[costcentre_prodgrp]
GO
/****** Object:  Table [dbo].[costcentre_prodgrp]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[costcentre_prodgrp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[cost_centre] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[item_charge] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[costcentre_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[account_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[PLANT_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_COSTCENTRE_PRODGRP] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[prodgrp_id] ASC,
	[cost_centre] ASC,
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[costcentre_prodgrp] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_prodgrp_costcentre_grp]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]'))
ALTER TABLE [dbo].[costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [dbo].[costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_prodgrp_costcentre_grp]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]'))
ALTER TABLE [dbo].[costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_prodgrp_prodgrp_hd]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]'))
ALTER TABLE [dbo].[costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [dbo].[prodgrp_hd] ([prodgrp_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_prodgrp_prodgrp_hd]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_prodgrp]'))
ALTER TABLE [dbo].[costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd]
GO
