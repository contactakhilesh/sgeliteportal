USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_all_check]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_kpijobs_all_check](
	[CostCentre] [varchar](10) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[inv_gst] [numeric](23, 5) NULL,
	[GST] [numeric](11, 2) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs_all_check] TO  SCHEMA OWNER 
GO
