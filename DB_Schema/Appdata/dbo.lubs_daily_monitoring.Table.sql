USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lubs_daily_monitoring](
	[s_con1] [varchar](50) NULL,
	[cust_ord_no] [varchar](50) NULL,
	[port_disc_name] [varchar](50) NULL,
	[prod_name] [varchar](50) NULL,
	[cr_name] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[inco_term] [varchar](10) NULL,
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
	[shipping_point] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_lubs_daily_monitoring] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
