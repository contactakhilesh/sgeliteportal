USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_port_email]') AND type in (N'U'))
ALTER TABLE [dbo].[carrier_port_email] DROP CONSTRAINT IF EXISTS [DF__carrier_p__modif__6636E38A]
GO
/****** Object:  Index [carrier_port_email_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [carrier_port_email_idx1] ON [dbo].[carrier_port_email]
GO
/****** Object:  Table [dbo].[carrier_port_email]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_port_email]
GO
/****** Object:  Table [dbo].[carrier_port_email]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_port_email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_port_email](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bkg_toemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bkg_ccemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[si_toemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[si_ccemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[modified_dt] [datetime] NOT NULL,
	[bl_confirm_toemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_confirm_ccemail] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_carrier_port_email] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_port_email] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [carrier_port_email_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[carrier_port_email]') AND name = N'carrier_port_email_idx1')
CREATE UNIQUE NONCLUSTERED INDEX [carrier_port_email_idx1] ON [dbo].[carrier_port_email]
(
	[vendor_id] ASC,
	[port_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
