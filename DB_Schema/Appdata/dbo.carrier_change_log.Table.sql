USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_change_log](
	[seq_n] [numeric](18, 0) NOT NULL,
	[export_bkg_direct_n] [numeric](18, 0) NULL,
	[export_n] [numeric](18, 0) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[from_vendor_id] [varchar](10) NULL,
	[to_vendor_id] [varchar](10) NULL,
	[by_user] [varchar](50) NULL,
	[changed_dt] [datetime] NULL,
 CONSTRAINT [PK_carrier_change_log] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
