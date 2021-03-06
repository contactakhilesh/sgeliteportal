USE [appdata]
GO
/****** Object:  Table [dbo].[carrier_change_log]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_change_log]
GO
/****** Object:  Table [dbo].[carrier_change_log]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_change_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_change_log](
	[seq_n] [numeric](18, 0) NOT NULL,
	[export_bkg_direct_n] [numeric](18, 0) NULL,
	[export_n] [numeric](18, 0) NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[from_vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[by_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[changed_dt] [datetime] NULL,
 CONSTRAINT [PK_carrier_change_log] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_change_log] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[carrier_change_log] TO [public] AS [dbo]
GO
