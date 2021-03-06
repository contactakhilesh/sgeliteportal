USE [AMERICA]
GO
/****** Object:  Table [dbo].[IMPORT_REF]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_REF](
	[IMPORT_REF_N] [numeric](10, 0) NOT NULL,
	[REF_YM] [varchar](6) NOT NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NULL,
	[OCEAN_BL] [varchar](30) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[PORT_DISC_ID] [varchar](10) NOT NULL,
	[CR_BKG_REF_N] [varchar](50) NOT NULL,
	[CR_PERMIT_N] [varchar](30) NULL,
	[ETA] [datetime] NOT NULL,
	[ETD] [datetime] NOT NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CLOSE_IND] [varchar](1) NOT NULL,
	[REF_CLOSE_D] [datetime] NOT NULL,
	[CLOSE_USER_ID] [varchar](20) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[D_CUST_ID] [varchar](10) NULL,
	[DROP_IND] [varchar](1) NULL,
	[NVO_BL] [varchar](30) NULL,
	[NO_HBL] [numeric](2, 0) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) NULL,
	[NO_DO] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) NULL,
	[REMARKS3] [varchar](1000) NULL,
	[REMARKS4] [varchar](100) NULL,
	[REMARKS5] [varchar](100) NULL,
	[VESSEL2] [varchar](30) NULL,
	[VOYAGE2] [varchar](20) NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[SUM_M3] [numeric](11, 3) NULL,
	[SUM_WT] [numeric](11, 3) NULL,
	[SUM_DN] [numeric](11, 3) NULL,
	[SUM_CN] [numeric](11, 3) NULL,
	[SUM_PV] [numeric](11, 3) NULL,
	[SUM_JC] [numeric](11, 3) NULL,
	[SUM_IV] [numeric](11, 3) NULL,
	[UP_USER_ID] [varchar](20) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[TRANS_MODE] [char](10) NULL,
	[ATA] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[permit_by_nvocc] [varchar](1) NULL,
	[cust_id_ref] [varchar](10) NULL,
 CONSTRAINT [PK_IMPORT_REF] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[IMPORT_REF] TO  SCHEMA OWNER 
GO
