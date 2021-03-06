USE [AMERICA]
GO
/****** Object:  Table [dbo].[form_ab]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[form_ab](
	[trans_id] [numeric](10, 0) NULL,
	[trans_date] [datetime] NULL,
	[trans_name] [varchar](100) NULL,
	[vessel_ref_fr] [numeric](10, 0) NULL,
	[vessel_ref_to] [numeric](10, 0) NULL,
	[export_n] [numeric](10, 0) NULL,
	[remarks_from] [varchar](255) NULL,
	[remarks_to] [varchar](255) NULL,
	[note] [varchar](255) NULL,
	[nc_party_code] [varchar](10) NULL,
	[nc_type_code] [varchar](10) NULL,
	[nc_complaint_desc] [varchar](255) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[form_ab] TO  SCHEMA OWNER 
GO
/****** Object:  Index [form_ab_idx]    Script Date: 3/14/2018 6:00:03 AM ******/
CREATE UNIQUE CLUSTERED INDEX [form_ab_idx] ON [dbo].[form_ab]
(
	[trans_id] ASC,
	[trans_date] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
