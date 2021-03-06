USE [AMERICA]
GO
/****** Object:  Table [dbo].[RAVAGO_EXCEL_RAW]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAVAGO_EXCEL_RAW](
	[MSQ_SEQ_N] [numeric](10, 0) NOT NULL,
	[ravago_PO] [varchar](20) NULL,
	[gdReference_ID] [varchar](20) NULL,
	[mode_of_trans] [varchar](50) NULL,
	[port_of_export] [varchar](20) NULL,
	[port_of_unload] [varchar](50) NULL,
	[ultimate_dest_city] [varchar](40) NULL,
	[ultimate_dest_country] [varchar](40) NULL,
	[carrier] [varchar](40) NULL,
	[vessel_name] [varchar](40) NULL,
	[booking_num] [varchar](20) NULL,
	[estimate_sailing_dt] [datetime] NULL,
	[commodity_desc] [varchar](50) NULL,
	[NET_WT] [decimal](11, 3) NULL,
	[GROSS_WT] [decimal](11, 3) NULL,
	[consignee_name] [varchar](70) NULL,
	[consignee_add1] [varchar](150) NULL,
	[consignee_add2] [varchar](150) NULL,
	[status] [varchar](20) NULL,
	[order_received] [datetime] NULL,
	[order_create] [datetime] NOT NULL,
	[doc_cutoff_date] [datetime] NULL,
	[EXXON_REF_NO] [varchar](50) NULL,
 CONSTRAINT [PK_RAVAGO_EXCEL_RAW] PRIMARY KEY CLUSTERED 
(
	[MSQ_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[RAVAGO_EXCEL_RAW] TO  SCHEMA OWNER 
GO
