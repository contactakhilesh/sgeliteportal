USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_TRANS](
	[NC_TRAN_NO] [numeric](10, 0) NOT NULL,
	[NC_TRAN_DT] [datetime] NOT NULL,
	[NC_DD_ACTION] [datetime] NULL,
	[NC_CUST_ID] [varchar](10) NOT NULL,
	[NC_SHIPP_REFN] [varchar](40) NULL,
	[NC_PARTIES] [varchar](20) NULL,
	[NC_COMPLAIN_DESC] [text] NULL,
	[NC_ACTION_BY] [varchar](50) NULL,
	[NC_ACTION_DT] [datetime] NULL,
	[NO_CAUSE_DESC] [text] NULL,
	[NC_CORRECTIVE] [text] NULL,
	[NC_DT_IMPLEMENT] [datetime] NULL,
	[NC_COST_INCURRD] [numeric](11, 3) NULL,
	[NC_BILL_TO] [varchar](100) NULL,
	[NC_REF_N] [numeric](10, 0) NOT NULL,
	[NC_REF_IND] [char](1) NOT NULL,
	[NC_CURRENCY_ID] [varchar](10) NULL,
	[NC_JOB_N] [numeric](10, 0) NOT NULL,
	[NC_VERIFIED_BY] [varchar](50) NULL,
	[created_by] [varchar](20) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_dt] [datetime] NULL,
	[NC_MASTER_TRAN_NO] [numeric](10, 0) NULL,
	[nc_rootind] [char](1) NULL,
	[nc_bldfc_validated] [char](1) NULL,
	[nc_ddfc_validated] [char](1) NULL,
	[nc_ebkg_validated] [char](1) NULL,
	[carrier_id] [varchar](10) NULL,
	[create_subjob_nc] [char](1) NOT NULL,
	[reserved_booked_etd] [datetime] NULL,
	[show_report] [varchar](1) NULL,
	[RvsBCtoCSP_d] [datetime] NULL,
 CONSTRAINT [NC_TRANS_PK] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
