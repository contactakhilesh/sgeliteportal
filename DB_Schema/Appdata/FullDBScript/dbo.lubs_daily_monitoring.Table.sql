USE [appdata]
GO
/****** Object:  Table [dbo].[lubs_daily_monitoring]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[lubs_daily_monitoring]
GO
/****** Object:  Table [dbo].[lubs_daily_monitoring]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lubs_daily_monitoring]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lubs_daily_monitoring](
	[s_con1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cr_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inco_term] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
	[eta_pol] [datetime] NULL,
	[orig_rdd] [datetime] NULL,
	[current_rdd] [datetime] NULL,
	[backlog] [numeric](18, 0) NULL,
	[booked_d] [datetime] NULL,
	[bkg_cfm_d] [datetime] NULL,
	[late_bkg] [numeric](18, 0) NULL,
	[etd] [datetime] NULL,
	[actual_sail_d] [datetime] NULL,
	[last_apply_msg1] [datetime] NULL,
	[hi_cutoff_d] [datetime] NULL,
	[hi_sent_d] [datetime] NULL,
	[shipping_point] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_lubs_daily_monitoring] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[lubs_daily_monitoring] TO  SCHEMA OWNER 
GO
