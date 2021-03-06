USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_charge]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_charge] DROP CONSTRAINT IF EXISTS [FK_costcentre_charge_costcentre_grp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_charge]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_charge] DROP CONSTRAINT IF EXISTS [FK_costcentre_charge_chgcode_mast]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_charge]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_charge] DROP CONSTRAINT IF EXISTS [DF__costcentr__ISSAM__47133DEC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_charge]') AND type in (N'U'))
ALTER TABLE [dbo].[costcentre_charge] DROP CONSTRAINT IF EXISTS [DF_costcentre_charge_created_dt]
GO
/****** Object:  Table [dbo].[costcentre_charge]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[costcentre_charge]
GO
/****** Object:  Table [dbo].[costcentre_charge]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costcentre_charge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[costcentre_charge](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[ISSAMPLEORDERCHG] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_costcentre_charge] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[chgcode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[costcentre_charge] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_charge_chgcode_mast]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_charge]'))
ALTER TABLE [dbo].[costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_chgcode_mast] FOREIGN KEY([chgcode_id])
REFERENCES [dbo].[CHGCODE_MAST] ([CHGCODE_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_charge_chgcode_mast]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_charge]'))
ALTER TABLE [dbo].[costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_chgcode_mast]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_charge_costcentre_grp]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_charge]'))
ALTER TABLE [dbo].[costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [dbo].[costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_costcentre_charge_costcentre_grp]') AND parent_object_id = OBJECT_ID(N'[dbo].[costcentre_charge]'))
ALTER TABLE [dbo].[costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_costcentre_grp]
GO
