USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[prodgrp_dt] DROP CONSTRAINT IF EXISTS [FK_prodgrp_dt_product_mast]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[prodgrp_dt] DROP CONSTRAINT IF EXISTS [FK_prodgrp_dt_prodgrp_hd]
GO
/****** Object:  Table [dbo].[prodgrp_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[prodgrp_dt]
GO
/****** Object:  Table [dbo].[prodgrp_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NOT NULL,
 CONSTRAINT [PK_prodgrp_dt] PRIMARY KEY CLUSTERED 
(
	[prodgrp_id] ASC,
	[product_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[prodgrp_dt] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prodgrp_dt_prodgrp_hd]') AND parent_object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]'))
ALTER TABLE [dbo].[prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [dbo].[prodgrp_hd] ([prodgrp_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prodgrp_dt_prodgrp_hd]') AND parent_object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]'))
ALTER TABLE [dbo].[prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_prodgrp_hd]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prodgrp_dt_product_mast]') AND parent_object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]'))
ALTER TABLE [dbo].[prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_product_mast] FOREIGN KEY([cust_id], [product_id])
REFERENCES [dbo].[PRODUCT_MAST] ([CUST_ID], [PRODUCT_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prodgrp_dt_product_mast]') AND parent_object_id = OBJECT_ID(N'[dbo].[prodgrp_dt]'))
ALTER TABLE [dbo].[prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_product_mast]
GO
