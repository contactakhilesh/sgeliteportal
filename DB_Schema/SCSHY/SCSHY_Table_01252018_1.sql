USE [SCSHY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AC_GROUP](
	[G_NO] [numeric](2, 0) NOT NULL,
	[G_DESC] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AC_STATUS](
	[AC_YEAR] [numeric](4, 0) NOT NULL,
	[AC_CODE] [numeric](15, 4) NOT NULL,
	[AC_PERIOD] [numeric](2, 0) NOT NULL,
	[FROM_DT] [datetime] NULL,
	[TO_DT] [datetime] NULL,
	[CURR_BAL] [numeric](15, 2) NULL,
	[OPEN_BAL] [numeric](15, 2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[BUD_AMT] [numeric](15, 2) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
 CONSTRAINT [PK_AC_STATUS] PRIMARY KEY NONCLUSTERED 
(
	[AC_YEAR] ASC,
	[AC_CODE] ASC,
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ac_status_20100223](
	[AC_YEAR] [numeric](4, 0) NOT NULL,
	[AC_CODE] [numeric](15, 4) NOT NULL,
	[AC_PERIOD] [numeric](2, 0) NOT NULL,
	[FROM_DT] [datetime] NULL,
	[TO_DT] [datetime] NULL,
	[CURR_BAL] [numeric](15, 2) NULL,
	[OPEN_BAL] [numeric](15, 2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[BUD_AMT] [numeric](15, 2) NULL,
	[DOC_AMT] [numeric](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ac_status_20110131](
	[AC_YEAR] [numeric](4, 0) NOT NULL,
	[AC_CODE] [numeric](15, 4) NOT NULL,
	[AC_PERIOD] [numeric](2, 0) NOT NULL,
	[FROM_DT] [datetime] NULL,
	[TO_DT] [datetime] NULL,
	[CURR_BAL] [numeric](15, 2) NULL,
	[OPEN_BAL] [numeric](15, 2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[BUD_AMT] [numeric](15, 2) NULL,
	[DOC_AMT] [numeric](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ACC_PARTY](
	[PARTY_CODE] [varchar](10) NOT NULL,
	[MAST_CODE] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PARTY] PRIMARY KEY NONCLUSTERED 
(
	[PARTY_CODE] ASC,
	[MAST_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ACTIVE_LOG](
	[ACTIVITY_SEQ_N] [varchar](30) NOT NULL,
	[ACTIVITY_ID] [varchar](30) NOT NULL,
	[ACTIVITY_DESC] [varchar](100) NULL,
	[USER_ID] [varchar](30) NULL,
	[SCHEMANAME] [varchar](30) NULL,
	[OSUSER] [varchar](30) NULL,
	[MACHINE] [varchar](30) NULL,
	[TERMINAL] [varchar](30) NULL,
	[PROGRAM] [varchar](30) NULL,
	[CREATE_D] [datetime] NULL,
 CONSTRAINT [PK_ACTIVE_LOG] PRIMARY KEY NONCLUSTERED 
(
	[ACTIVITY_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AGENT_RATES](
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHG_A] [numeric](11, 2) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CHG_I] [numeric](11, 2) NULL,
	[CHG_C] [numeric](11, 2) NULL,
	[REBATE_I20] [numeric](11, 3) NULL,
	[REBATE_I40] [numeric](11, 3) NULL,
	[REBATE_E20] [numeric](11, 3) NULL,
	[REBATE_E40] [numeric](11, 3) NULL,
	[REMARKS] [varchar](20) NULL,
 CONSTRAINT [PK_AGENT_RATES] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AIR_MARKING](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](10) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NULL,
	[LINE_WT] [numeric](11, 3) NULL,
	[LINE_M3] [numeric](11, 3) NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NULL,
	[CONT_N] [varchar](20) NULL,
	[SEAL_N] [varchar](20) NULL,
	[ATT_CONT_N] [varchar](20) NULL,
	[ATT_SEAL_N] [varchar](20) NULL,
	[MKGS1] [varchar](40) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[MKGS4] [varchar](40) NULL,
	[MKGS5] [varchar](40) NULL,
	[MKGS6] [varchar](40) NULL,
	[MKGS7] [varchar](40) NULL,
	[MKGS8] [varchar](40) NULL,
	[MKGS9] [varchar](40) NULL,
	[MKGS10] [varchar](40) NULL,
	[MKGS11] [varchar](40) NULL,
	[MKGS12] [varchar](40) NULL,
	[MKGS13] [varchar](40) NULL,
	[MKGS14] [varchar](40) NULL,
	[MKGS15] [varchar](40) NULL,
	[DES1] [varchar](100) NULL,
	[DES2] [varchar](100) NULL,
	[DES3] [varchar](100) NULL,
	[DES4] [varchar](100) NULL,
	[DES5] [varchar](100) NULL,
	[DES6] [varchar](100) NULL,
	[DES7] [varchar](100) NULL,
	[DES8] [varchar](100) NULL,
	[DES9] [varchar](100) NULL,
	[DES10] [varchar](100) NULL,
	[DES11] [varchar](100) NULL,
	[DES12] [varchar](100) NULL,
	[DES13] [varchar](100) NULL,
	[DES14] [varchar](100) NULL,
	[DES15] [varchar](100) NULL,
	[LINE_CHG_IND] [varchar](1) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
 CONSTRAINT [PK_AIR_MARKING] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AIR_RATE_MAST](
	[CUST_ID] [char](10) NOT NULL,
	[PORT_ID] [char](10) NOT NULL,
	[VENDOR_ID] [char](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[AMT_MIN] [numeric](11, 3) NOT NULL,
	[AMT_45] [numeric](11, 3) NOT NULL,
	[AMT_100] [numeric](11, 3) NOT NULL,
	[AMT_250] [numeric](11, 3) NOT NULL,
	[AMT_500] [numeric](11, 3) NOT NULL,
	[AMT_1000] [numeric](11, 3) NOT NULL,
	[AMT_MAX] [numeric](11, 3) NOT NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[EX_RATE_IND] [varchar](1) NULL,
	[AUTO_BILL_IND] [varchar](1) NULL,
	[CHARGE_WT_IND] [varchar](1) NULL,
	[TRA_TYPE] [varchar](3) NULL,
	[AIR_LINE_ID] [varchar](10) NULL,
	[AMT_LESS45] [numeric](11, 3) NULL,
	[AMT_300] [numeric](11, 3) NULL,
	[CHG_CODE_ID] [varchar](10) NULL,
 CONSTRAINT [PK_AIR_RATE] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_ID] ASC,
	[VENDOR_ID] ASC,
	[PORT_LOAD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AIRWAYBILL](
	[JOB_N] [varchar](10) NOT NULL,
	[JOB_TYPE] [varchar](10) NOT NULL,
	[MAWB_N] [varchar](40) NULL,
	[HAWB_N] [varchar](40) NULL,
	[PLACE_ORIG] [varchar](40) NULL,
	[PLACE_DEST] [varchar](40) NULL,
	[SHIPPER_N] [varchar](70) NULL,
	[SHIPPER_1] [varchar](70) NULL,
	[SHIPPER_2] [varchar](70) NULL,
	[SHIPPER_3] [varchar](70) NULL,
	[SHIPPER_4] [varchar](70) NULL,
	[SHIPPER_5] [varchar](70) NULL,
	[CONSIGNEE_N] [varchar](70) NULL,
	[CONSIGNEE_1] [varchar](70) NULL,
	[CONSIGNEE_2] [varchar](70) NULL,
	[CONSIGNEE_3] [varchar](70) NULL,
	[CONSIGNEE_4] [varchar](70) NULL,
	[CONSIGNEE_5] [varchar](70) NULL,
	[NP_1] [varchar](70) NULL,
	[NP_2] [varchar](70) NULL,
	[NP_3] [varchar](70) NULL,
	[NP_4] [varchar](70) NULL,
	[NP_5] [varchar](70) NULL,
	[ISSUE_1] [varchar](70) NULL,
	[ISSUE_2] [varchar](70) NULL,
	[ISSUE_3] [varchar](70) NULL,
	[ISSUE_4] [varchar](70) NULL,
	[ISSUE_5] [varchar](70) NULL,
	[ACINFO_1] [varchar](70) NULL,
	[ACINFO_2] [varchar](70) NULL,
	[ACINFO_3] [varchar](70) NULL,
	[ACINFO_4] [varchar](70) NULL,
	[ACINFO_5] [varchar](70) NULL,
	[ACINFO_6] [varchar](70) NULL,
	[ACINFO_7] [varchar](70) NULL,
	[ACINFO_8] [varchar](70) NULL,
	[IATA_N] [varchar](40) NULL,
	[AC_N] [varchar](40) NULL,
	[CARRIER_1] [varchar](40) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[PPD_1] [varchar](10) NULL,
	[PPD_2] [varchar](10) NULL,
	[CARRIAGE_V] [varchar](10) NULL,
	[CUSTOMS_V] [varchar](10) NULL,
	[NAME_ORIG] [varchar](40) NULL,
	[NAME_DEST] [varchar](40) NULL,
	[FLIGHT_DATE] [varchar](40) NULL,
	[INSURE_A] [varchar](20) NULL,
	[HANDLING_1] [varchar](80) NULL,
	[HANDLING_2] [varchar](80) NULL,
	[HANDLING_3] [varchar](80) NULL,
	[HANDLING_4] [varchar](80) NULL,
	[HANDLING_5] [varchar](80) NULL,
	[NO_PC] [varchar](10) NULL,
	[GROSS_W] [varchar](20) NULL,
	[KG_LB] [varchar](10) NULL,
	[RATE_CLASS] [varchar](10) NULL,
	[COMM_N] [varchar](10) NULL,
	[CHG_W] [varchar](20) NULL,
	[RATE_CHG] [varchar](20) NULL,
	[TOTAL_CHG] [varchar](20) NULL,
	[TOT_NO_PC] [varchar](10) NULL,
	[TOT_GROSS_W] [varchar](20) NULL,
	[TOT_TOTAL_CHG] [varchar](20) NULL,
	[GOOD_DESC_1] [varchar](40) NULL,
	[GOOD_DESC_2] [varchar](40) NULL,
	[GOOD_DESC_3] [varchar](40) NULL,
	[GOOD_DESC_4] [varchar](40) NULL,
	[GOOD_DESC_5] [varchar](40) NULL,
	[GOOD_DESC_6] [varchar](40) NULL,
	[GOOD_DESC_7] [varchar](40) NULL,
	[GOOD_DESC_8] [varchar](40) NULL,
	[GOOD_DESC_9] [varchar](40) NULL,
	[GOOD_DESC_10] [varchar](40) NULL,
	[GOOD_DESC_11] [varchar](40) NULL,
	[GOOD_DESC_12] [varchar](40) NULL,
	[GOOD_DESC_13] [varchar](40) NULL,
	[GOOD_DESC_14] [varchar](40) NULL,
	[GOOD_DESC_15] [varchar](40) NULL,
	[GOOD_DESC_16] [varchar](40) NULL,
	[PREPAID_W] [varchar](20) NULL,
	[COLLECT_W] [varchar](20) NULL,
	[PREPAID_V] [varchar](20) NULL,
	[COLLECT_V] [varchar](20) NULL,
	[PREPAID_T] [varchar](20) NULL,
	[COLLECT_T] [varchar](20) NULL,
	[PREPAID_OA] [varchar](20) NULL,
	[COLLECT_OA] [varchar](20) NULL,
	[PREPAID_OC] [varchar](20) NULL,
	[COLLECT_OC] [varchar](20) NULL,
	[PREPAID_TOT] [varchar](20) NULL,
	[COLLECT_TOT] [varchar](20) NULL,
	[EX_RATE] [varchar](20) NULL,
	[SIGNATURE_SA] [varchar](40) NULL,
	[EXECUTE_D] [varchar](20) NULL,
	[EXECUTE_P] [varchar](20) NULL,
	[SIGNATURE_CA] [varchar](40) NULL,
	[REMARKS1] [varchar](80) NULL,
	[REMARKS2] [varchar](80) NULL,
	[REMARKS3] [varchar](80) NULL,
	[REMARKS4] [varchar](80) NULL,
	[REMARKS5] [varchar](80) NULL,
	[REMARKS6] [varchar](80) NULL,
	[REMARKS7] [varchar](80) NULL,
	[REMARKS8] [varchar](80) NULL,
	[OTHERS1] [varchar](60) NULL,
	[OTHERS2] [varchar](60) NULL,
	[OTHERS3] [varchar](60) NULL,
	[TO_1] [varchar](50) NULL,
	[BY_1] [varchar](50) NULL,
	[TO_2] [varchar](50) NULL,
	[BY_2] [varchar](50) NULL,
	[FLIGHT_DATE2] [varchar](40) NULL,
	[CHG_DEST1] [varchar](20) NULL,
	[CHG_DEST2] [varchar](20) NULL,
	[NO_PKG1] [varchar](10) NULL,
	[LENGTH1] [varchar](10) NULL,
	[WEIGHT1] [varchar](10) NULL,
	[HEIGHT1] [varchar](10) NULL,
	[NO_PKG2] [varchar](10) NULL,
	[LENGTH2] [varchar](10) NULL,
	[WEIGHT2] [varchar](10) NULL,
	[HEIGHT2] [varchar](10) NULL,
	[NO_PKG3] [varchar](10) NULL,
	[LENGTH3] [varchar](10) NULL,
	[WEIGHT3] [varchar](10) NULL,
	[HEIGHT3] [varchar](10) NULL,
	[NO_PKG4] [varchar](10) NULL,
	[LENGTH4] [varchar](10) NULL,
	[WEIGHT4] [varchar](10) NULL,
	[HEIGHT4] [varchar](10) NULL,
	[NO_PKG5] [varchar](10) NULL,
	[LENGTH5] [varchar](10) NULL,
	[WEIGHT5] [varchar](10) NULL,
	[HEIGHT5] [varchar](10) NULL,
	[NO_PKG6] [varchar](10) NULL,
	[LENGTH6] [varchar](10) NULL,
	[WEIGHT6] [varchar](10) NULL,
	[HEIGHT6] [varchar](10) NULL,
	[CARRIER_2] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [allow_jobs_us_sanctions](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[CUST_ORD_NO] [varchar](40) NOT NULL,
	[APPROVED_BY] [varchar](50) NOT NULL,
	[APPROVED_DT] [datetime] NOT NULL,
	[REMARKS] [varchar](255) NULL,
 CONSTRAINT [PK_allow_jobs_us_sanctions] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[CUST_ORD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYABLE](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_NO] [varchar](20) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](12, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[SYS_DOC_NO] [varchar](20) NULL,
	[TERM_ID] [varchar](10) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[REV_TR_NO] [numeric](10, 0) NULL,
	[VOC_REF_N] [numeric](10, 0) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[cost_centre_c] [varchar](10) NULL,
 CONSTRAINT [PK_PAYABLE] PRIMARY KEY NONCLUSTERED 
(
	[AC_TR_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ap_payable_all_20120427](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_NO] [varchar](20) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](12, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[SYS_DOC_NO] [varchar](20) NULL,
	[TERM_ID] [varchar](10) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[REV_TR_NO] [numeric](10, 0) NULL,
	[VOC_REF_N] [numeric](10, 0) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[cost_centre_c] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYABLE_DET](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NULL,
	[AC_CODE] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
 CONSTRAINT [PK_PAYABLE_DET] PRIMARY KEY NONCLUSTERED 
(
	[AC_TR_NO] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ap_payable_det_all_20120427](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NULL,
	[AC_CODE] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ap_payable_det_open20120426](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NULL,
	[AC_CODE] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ap_payable_open20120426](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_NO] [varchar](20) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](12, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[SYS_DOC_NO] [varchar](20) NULL,
	[TERM_ID] [varchar](10) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[REV_TR_NO] [numeric](10, 0) NULL,
	[VOC_REF_N] [numeric](10, 0) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[cost_centre_c] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ap_payable_tmp](
	[party_type] [varchar](5) NULL,
	[party_code] [varchar](20) NULL,
	[party_name] [varchar](255) NULL,
	[doc_no] [varchar](20) NULL,
	[doc_type] [varchar](20) NULL,
	[doc_date] [datetime] NULL,
	[doc_curr] [varchar](10) NULL,
	[doc_amt] [decimal](16, 2) NULL,
	[loc_amt] [decimal](16, 2) NULL,
	[ac_tr_no] [numeric](20, 0) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_ap_payable_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYMENT](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[BANK_REC] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[cost_centre_c] [varchar](10) NULL,
 CONSTRAINT [PK_PAYMENT] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYMENT_20120524](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[BANK_REC] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[cost_centre_c] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYMENT_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INV_CR_NO] [varchar](20) NULL,
	[SUPP_INVOICE] [varchar](20) NULL,
	[CHECK_DOC_TYPE] [varchar](1) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[INV_DT] [datetime] NULL,
 CONSTRAINT [PK_PAYAMENT_DETX] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_PAYMENT_DET_20120524](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INV_CR_NO] [varchar](20) NULL,
	[SUPP_INVOICE] [varchar](20) NULL,
	[CHECK_DOC_TYPE] [varchar](1) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[INV_DT] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_VOUCHER](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](70) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](25) NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[POST_IND] [varchar](1) NULL,
	[BANK_REC] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[USER_ID] [varchar](30) NULL,
	[REV_DOC_NO] [varchar](20) NULL,
	[cost_centre_c] [varchar](10) NULL,
 CONSTRAINT [PK_VOUCH] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AP_VOUCHER_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
	[PERSON_ID] [varchar](20) NULL,
 CONSTRAINT [PK_VO_DET] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app_modules](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[group_name] [varchar](30) NOT NULL,
	[grp_order_no] [int] NOT NULL,
	[module_name] [varchar](50) NOT NULL,
	[mod_order_no] [int] NOT NULL,
	[hide] [char](1) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[application] [varchar](20) NOT NULL,
	[isforhistory] [char](1) NOT NULL,
	[window] [varchar](150) NULL,
	[datawindow] [varchar](150) NULL,
 CONSTRAINT [PK_app_modules] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [apps_quick_links](
	[apps_name] [varchar](50) NOT NULL,
	[URL] [varchar](200) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_apps_quick_links] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_CR_NOTE](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[CHGCODE_ID] [varchar](20) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
 CONSTRAINT [PK_CR] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_CR_NOTE_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[GST_TYPE] [char](1) NULL,
 CONSTRAINT [FD] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_INVOICE](
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](11, 6) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](15) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[CR_DOC_NO] [varchar](20) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[isconsolidated] [char](1) NOT NULL,
	[inv_tra_type] [char](1) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[invoice_n] [numeric](10, 0) NULL,
	[yy_invoice_amt] [numeric](15, 2) NULL,
 CONSTRAINT [PK_INCPOV] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC,
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ar_invoice_all_20120427](
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](11, 6) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](15) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[CR_DOC_NO] [varchar](20) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[isconsolidated] [char](1) NOT NULL,
	[inv_tra_type] [char](1) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[invoice_n] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_INVOICE_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[LINE_DOC_TYPE] [varchar](2) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[GST_TYPE] [char](1) NULL,
	[unit_qty] [numeric](11, 4) NULL,
	[unit_price] [numeric](12, 4) NOT NULL,
 CONSTRAINT [XXXXXXXXXX] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC,
	[LINE_DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ar_invoice_det_all_20120427](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[LINE_DOC_TYPE] [varchar](2) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[GST_TYPE] [char](1) NULL,
	[unit_qty] [numeric](5, 0) NOT NULL,
	[unit_price] [numeric](12, 4) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ar_invoice_det_open20120426](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[LINE_DOC_TYPE] [varchar](2) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[GST_TYPE] [char](1) NULL,
	[unit_qty] [numeric](5, 0) NOT NULL,
	[unit_price] [numeric](12, 4) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ar_invoice_open20120426](
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](11, 6) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](15) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[CR_DOC_NO] [varchar](20) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[isconsolidated] [char](1) NOT NULL,
	[inv_tra_type] [char](1) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[invoice_n] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ar_invoice_tmp](
	[party_type] [varchar](5) NULL,
	[party_code] [varchar](20) NULL,
	[party_name] [varchar](255) NULL,
	[doc_no] [varchar](20) NULL,
	[doc_type] [varchar](20) NULL,
	[doc_date] [datetime] NULL,
	[doc_curr] [varchar](10) NULL,
	[doc_amt] [decimal](16, 2) NULL,
	[loc_amt] [decimal](16, 2) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ac_tr_no] [numeric](5, 0) NULL,
	[doc_ex_rate] [decimal](9, 3) NULL,
 CONSTRAINT [pk_ar_invoice_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_RECEIPT](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[BANK_REC] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[BANK_NAME] [varchar](40) NULL,
 CONSTRAINT [PK_RECEIPTX] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_RECEIPT_20120524](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMARKS2] [nvarchar](50) NULL,
	[REMARKS3] [nvarchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[BANK_REC] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[BANK_NAME] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_RECEIPT_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INVOICE_NO] [varchar](20) NULL,
	[SUPP_INVOICE] [varchar](20) NULL,
	[CHECK_DOC_TYPE] [varchar](1) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[INV_DT] [datetime] NULL,
 CONSTRAINT [PK_RECEIPT_DET_AR] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_RECEIPT_DET_20120524](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [nvarchar](50) NULL,
	[REMAKRS2] [nvarchar](50) NULL,
	[REMAKRS3] [nvarchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INVOICE_NO] [varchar](20) NULL,
	[SUPP_INVOICE] [varchar](20) NULL,
	[CHECK_DOC_TYPE] [varchar](1) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[INV_DT] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ascii_table](
	[ascii_code] [int] NULL,
	[char_value] [char](2) NULL,
	[default_value] [varchar](10) NULL,
	[xml_value] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AUTO_DOCS_CREATION](
	[ROW_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[DOC_TYPE] [varchar](25) NULL,
	[UPD_DT] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AUTO_PROFORMA_LOG](
	[export_n] [numeric](10, 0) NOT NULL,
	[log_description] [varchar](255) NULL,
	[entry_d] [datetime] NULL,
	[entry_by] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AutoInvCode_Mast](
	[autoinvcode] [varchar](5) NOT NULL,
	[autoinvdesc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BAML_BANK_ACCTS](
	[cust_id] [varchar](10) NOT NULL,
	[advising_bank] [varchar](50) NOT NULL,
	[beneficiary] [varchar](50) NULL,
	[bank_account] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bkg_carrier_remarks](
	[indicator] [varchar](1) NOT NULL,
	[remarks] [varchar](255) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_bkg_carrier_remarks] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BKG_SI_EMAIL_ATTCH](
	[rowid] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[field_label] [varchar](255) NULL,
	[bc_req] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [boaml](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_head_no] [varchar](50) NOT NULL,
	[drawer_party_id] [int] NULL,
	[drawee_party_id] [int] NULL,
	[collect_from_party_id] [int] NULL,
	[tenor_type] [varchar](5) NULL,
	[documents_against_cd] [varchar](5) NULL,
	[protest_cd] [varchar](5) NULL,
	[our_bank_charge_for_cd] [varchar](5) NULL,
	[our_bank_waived_if_refused] [varchar](5) NULL,
	[os_bank_charge_for_cd] [varchar](5) NULL,
	[os_bank_waive_if_refused] [varchar](5) NULL,
	[remit_proceeds_by_cd] [varchar](5) NULL,
	[advise_acceptance_by_cd] [varchar](5) NULL,
	[advise_nonacceptance_by_cd] [varchar](5) NULL,
	[advise_pay_by_cd] [varchar](5) NULL,
	[advise_nonpay_by_cd] [varchar](5) NULL,
	[is_deleted] [tinyint] NULL,
	[bol_count] [int] NULL,
	[bol_total_count] [int] NULL,
	[consular_invoice_copy_count] [int] NULL,
	[consular_invoice_orig_count] [int] NULL,
	[policy_orig_count] [int] NULL,
	[policy_copy_count] [int] NULL,
	[airway_bill_orig_count] [int] NULL,
	[airway_bill_copy_count] [int] NULL,
	[drafts_presented_count] [int] NULL,
	[drafts_copy_count] [int] NULL,
	[collection_text] [text] NULL,
	[bol_non_nego_copy_count] [int] NULL,
	[tenor_phrase] [varchar](255) NULL,
	[tenor_days] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BOARD_TERM](
	[TERM_ID] [varchar](10) NOT NULL,
	[TERM_DESC] [varchar](50) NULL,
 CONSTRAINT [PK_BOARD_TERM] PRIMARY KEY NONCLUSTERED 
(
	[TERM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BOOKING_REQUEST_LOG](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[export_n] [numeric](9, 0) NOT NULL,
	[DocId] [varchar](35) NULL,
	[DocDate] [datetime] NULL,
	[Parties] [varchar](50) NULL,
	[ContactName] [varchar](35) NULL,
	[ContactNumber] [varchar](35) NULL,
	[ContactEmail] [varchar](35) NULL,
	[ShipmentId] [varchar](35) NULL,
	[PurchaseOrderNumber] [varchar](35) NULL,
	[ShipperOrderNumber] [varchar](35) NULL,
	[ShipmentComments] [varchar](500) NULL,
	[MovementType] [varchar](35) NULL,
	[ServiceType] [varchar](35) NULL,
	[TransportStage] [varchar](35) NULL,
	[TransportMode] [varchar](35) NULL,
	[ConveyanceName] [varchar](35) NULL,
	[VoyageTripNumber] [varchar](35) NULL,
	[CarrierSCAC] [char](4) NULL,
	[PlaceOfReceipt] [varchar](35) NULL,
	[EstimatedDeparturePOR] [datetime] NULL,
	[PortOfLoading] [varchar](35) NULL,
	[EstimatedDeparturePOL] [datetime] NULL,
	[PlaceOfDelivery] [varchar](35) NULL,
	[EstimatedArrivalDel] [datetime] NULL,
	[PortOfDischarge] [varchar](35) NULL,
	[EstimatedArrivalDisc] [datetime] NULL,
	[CarrierId] [varchar](35) NULL,
	[CarrierName] [varchar](100) NULL,
	[CarrierAddr1] [varchar](140) NULL,
	[CarrierAddr2] [varchar](35) NULL,
	[CarrierAddr3] [varchar](35) NULL,
	[CarrierAddr4] [varchar](35) NULL,
	[BookingParty] [varchar](100) NULL,
	[BookingPartyAddr1] [varchar](140) NULL,
	[BookingPartyAddr2] [varchar](35) NULL,
	[BookingPartyAddr3] [varchar](35) NULL,
	[BookingPartyAddr4] [varchar](35) NULL,
	[Shipper] [varchar](100) NULL,
	[ShipperAddr1] [varchar](140) NULL,
	[ShipperAddr2] [varchar](35) NULL,
	[ShipperAddr3] [varchar](35) NULL,
	[ShipperAddr4] [varchar](35) NULL,
	[Consignee] [varchar](100) NULL,
	[ConsigneeAddr1] [varchar](140) NULL,
	[ConsigneeAddr2] [varchar](35) NULL,
	[ConsigneeAddr3] [varchar](35) NULL,
	[ConsigneeAddr4] [varchar](35) NULL,
	[NotifyParty] [varchar](100) NULL,
	[NotifyPartyAddr1] [varchar](140) NULL,
	[NotifyPartyAddr2] [varchar](35) NULL,
	[NotifyPartyAddr3] [varchar](35) NULL,
	[NotifyPartyAddr4] [varchar](35) NULL,
	[EquipmentTypeCode] [varchar](10) NULL,
	[EquipmentCount] [int] NULL,
	[LineNumber] [int] NULL,
	[NumberOfPackages] [varchar](35) NULL,
	[PackageTypeCode] [varchar](8) NULL,
	[GoodsDescription] [varchar](max) NULL,
	[PackageDetailWeight] [decimal](15, 3) NULL,
	[UOM] [varchar](35) NULL,
 CONSTRAINT [PK_BOOKING_REQUEST_LOG] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [broker_email_param](
	[export_n] [numeric](10, 0) NULL,
	[param1] [varchar](255) NULL,
	[param2] [varchar](255) NULL,
	[param3] [varchar](255) NULL,
	[param4] [varchar](255) NULL,
	[param5] [varchar](255) NULL,
	[param6] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BT_REASONS](
	[Groupings] [int] NOT NULL,
	[Code] [char](50) NOT NULL,
	[Description] [char](250) NOT NULL,
 CONSTRAINT [PK_BT_REASONS] PRIMARY KEY CLUSTERED 
(
	[Groupings] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BUSINESS_UNIT_ASSIGNED](
	[user_id] [varchar](100) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[business_unit_id] [int] NOT NULL,
 CONSTRAINT [PK_BUSINESS_UNIT_ASSIGNED] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[parent_acct_id] ASC,
	[business_unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BUSINESS_UNIT_GROUPING](
	[parent_acct_id_group] [int] NOT NULL,
	[business_unit_id] [int] NOT NULL,
	[business_unit_description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_BUSINESS_UNIT_GROUPING] PRIMARY KEY CLUSTERED 
(
	[parent_acct_id_group] ASC,
	[business_unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_booking_param](
	[export_n] [numeric](10, 0) NULL,
	[param1] [varchar](255) NULL,
	[param2] [varchar](255) NULL,
	[param3] [varchar](500) NULL,
	[param4] [varchar](255) NULL,
	[param5] [varchar](255) NULL,
	[booking_type] [varchar](50) NULL
) ON [PRIMARY]

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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_code_mapping](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [nvarchar](10) NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[input_code] [nvarchar](20) NOT NULL,
	[output_code] [nvarchar](100) NOT NULL,
	[created_by] [nvarchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_conn](
	[vendor_id] [varchar](10) NOT NULL,
	[carrier_name] [varchar](70) NOT NULL,
	[carrier_conn] [varchar](50) NOT NULL,
	[env] [varchar](50) NULL,
	[scac] [varchar](50) NOT NULL,
	[contract_ref] [varchar](30) NULL,
	[FOB_CARRIER_CONN] [varchar](50) NULL,
	[cust_id] [varchar](255) NULL,
 CONSTRAINT [PK_carrier_conn] PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC,
	[carrier_conn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CARRIER_EMAIL_BY_CUSTOMER](
	[parentAcctid] [int] NOT NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[bl_confirm_toemail] [varchar](255) NULL,
	[bl_confirm_ccemail] [varchar](255) NULL,
	[modified_by] [varchar](50) NULL,
	[modified_dt] [datetime] NULL,
	[bl_chaserreminderlist] [varchar](255) NULL,
 CONSTRAINT [PK_CARRIER_EMAIL_BY_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[parentAcctid] ASC,
	[vendor_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CARRIER_EVENT](
	[EVENT_ID] [char](10) NOT NULL,
	[REF_N] [numeric](10, 0) NOT NULL,
	[ORDER_TYPE] [char](1) NULL,
	[ENTRY_TYPE] [varchar](1) NULL,
	[PORT_OF_CALL] [varchar](10) NULL,
	[CHANGE_FLAG] [varchar](1) NULL,
	[REVISED_DATE] [datetime] NULL,
	[REASON_FOR_DELAY] [varchar](500) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[MOD_BY] [varchar](20) NULL,
	[CREATE_DATE] [datetime] NULL,
	[MOD_DATE] [datetime] NOT NULL,
 CONSTRAINT [PK_CARRIER_EVENT] PRIMARY KEY CLUSTERED 
(
	[EVENT_ID] ASC,
	[REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[carrier_id] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_mapping](
	[VEND_SHORT_NAME] [varchar](70) NOT NULL,
	[VENDOR_ID] [varchar](10) NOT NULL,
	[ENVI] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nom_temp](
	[carrier_name] [varchar](50) NULL,
	[port_load_name] [varchar](50) NULL,
	[port_disc_name] [varchar](50) NULL,
	[cont_size] [varchar](10) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[Country_name] [varchar](50) NULL,
	[freight_cost] [decimal](10, 2) NULL,
	[pack_type] [varchar](10) NULL,
	[cost_151] [decimal](10, 2) NULL,
	[cost_208] [decimal](10, 2) NULL,
	[port_del_name] [varchar](50) NULL,
	[route_id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master](
	[cust_id] [varchar](10) NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_id] [varchar](10) NOT NULL,
	[port_disc_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[remarks] [varchar](255) NULL,
	[parentacctid] [int] NOT NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[ytd_shipped] [decimal](10, 2) NULL,
	[ytd_booked] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[port_del_id] [varchar](10) NULL,
	[freight_cost] [decimal](10, 3) NULL,
	[pack_type] [varchar](10) NULL,
	[pallet_cost_151] [decimal](10, 3) NULL,
	[loose_cost_208] [decimal](10, 3) NULL,
	[route_id] [varchar](10) NULL,
	[weekly_alloc_teu] [decimal](10, 2) NULL,
	[monthly_alloc_teu] [decimal](10, 2) NULL,
	[terminal_handling] [decimal](18, 3) NULL,
	[bl_fee] [decimal](18, 3) NULL,
	[admin_fee_per_cont] [decimal](18, 3) NULL,
	[service_option] [varchar](150) NULL,
	[routing] [varchar](150) NULL,
	[transit_time] [numeric](5, 0) NULL,
	[dest_free_time] [numeric](5, 0) NULL,
	[detention_charges] [numeric](10, 3) NULL,
	[demurrage_charges] [numeric](10, 3) NULL,
	[detention_currency_id] [varchar](10) NULL,
	[demurrage_currency_id] [varchar](10) NULL,
	[terminal_handling_currency_id] [varchar](10) NULL,
	[is_effective] [char](1) NULL,
	[all_water] [varchar](50) NULL,
	[mlp_servive] [varchar](50) NULL,
	[feu_forecast] [numeric](10, 2) NULL,
	[contract_number] [varchar](100) NULL,
	[hubbing_contract_number] [varchar](100) NULL,
	[comm_rate] [numeric](10, 5) NULL,
	[DTHC] [varchar](1) NULL,
	[dthc_include_indicator] [char](1) NULL,
 CONSTRAINT [PK_carrier_nominated_master] PRIMARY KEY CLUSTERED 
(
	[carrier_id] ASC,
	[port_load_id] ASC,
	[port_disc_id] ASC,
	[cont_size] ASC,
	[start_date] ASC,
	[end_date] ASC,
	[parentacctid] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master_8MAR2013_BACKUP](
	[cust_id] [varchar](10) NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_id] [varchar](10) NOT NULL,
	[port_disc_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[remarks] [varchar](255) NULL,
	[parentacctid] [int] NOT NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[ytd_shipped] [decimal](10, 2) NULL,
	[ytd_booked] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master_temp](
	[carrier_id] [varchar](10) NULL,
	[carrier_name] [varchar](50) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](100) NULL,
	[country_name] [varchar](100) NULL,
	[cont_size] [varchar](10) NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_carrier_nominated_master_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master2011](
	[carrier_name] [varchar](50) NOT NULL,
	[carrier_id] [varchar](10) NULL,
	[port_load] [varchar](50) NOT NULL,
	[port_disc] [varchar](50) NOT NULL,
	[port_del] [varchar](50) NULL,
	[port_cntry] [varchar](50) NOT NULL,
	[port_disc_id] [varchar](10) NULL,
	[remarks] [text] NULL,
	[cont_size] [varchar](10) NOT NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[allocation] [varchar](10) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_carrier_nominated_master2011] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_package_type](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [nvarchar](10) NOT NULL,
	[package_type] [nvarchar](100) NOT NULL,
	[created_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Carrier_Plants_Remarks](
	[port_id] [varchar](10) NULL,
	[cont_size] [varchar](10) NULL,
	[Remarks_plant] [varchar](max) NULL,
	[remarks_carrier] [varchar](max) NULL,
	[job_type] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_port_email](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[port_id] [varchar](10) NOT NULL,
	[bkg_toemail] [varchar](255) NULL,
	[bkg_ccemail] [varchar](255) NULL,
	[si_toemail] [varchar](255) NULL,
	[si_ccemail] [varchar](255) NULL,
	[modified_by] [varchar](10) NOT NULL,
	[modified_dt] [datetime] NOT NULL,
	[bl_confirm_toemail] [varchar](255) NULL,
	[bl_confirm_ccemail] [varchar](255) NULL,
 CONSTRAINT [PK_carrier_port_email] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_ports](
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_id] [varchar](10) NOT NULL,
	[port_disc_id] [varchar](10) NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_carrier_ports] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHG_GROUP_MAST](
	[GRPCODE_ID] [varchar](1) NOT NULL,
	[GRPCODE_DES] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CHG_GROUP_MAST] PRIMARY KEY NONCLUSTERED 
(
	[GRPCODE_ID] ASC,
	[GRPCODE_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHG_TYPE_MAST](
	[CHG_TYPE_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_DES] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CHG_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CHG_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHGCODE_BU_MAST](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[DEPT_ID] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [chgcode_mapping](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[environment_code] [varchar](10) NULL,
	[fr_chgcode_id] [varchar](10) NULL,
	[to_chgcode_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_chgcode_mapping] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHGCODE_MAST](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CHGCODE_DES] [varchar](40) NOT NULL,
	[CHG_UNIT] [varchar](10) NULL,
	[GST_TYPE_ID] [varchar](1) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_ID] [varchar](10) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NULL,
	[CHG_ACC_ID2] [varchar](10) NULL,
	[AR_CODE] [varchar](10) NULL,
	[AB_CODE] [varchar](10) NULL,
	[WT_M3_IND] [varchar](1) NULL,
	[GRPCODE_ID] [varchar](10) NULL,
	[CATEGORY] [varchar](1) NULL,
	[isunitprice_fixed] [char](1) NOT NULL,
	[hi_autoinvoice_addtlchg] [char](1) NOT NULL,
	[hi_autoinvoice_chgunitq] [numeric](11, 4) NOT NULL,
	[hi_autoinvoice_tratype] [char](1) NOT NULL,
	[hi_autoinvoice_currency] [varchar](10) NOT NULL,
	[hi_autoinvoice_chgunita] [numeric](11, 3) NOT NULL,
	[gst_type_id2] [varchar](2) NULL,
	[gst_type_id3] [varchar](2) NULL,
	[autoinvcode] [varchar](5) NULL,
	[cont_size] [varchar](3) NULL,
	[ACTIVE] [varchar](1) NULL,
	[F_INVENTORY_ITEM_ID] [varchar](50) NULL,
	[F_INVENTORY_ORG_ID] [varchar](50) NULL,
	[F_CATEGORY_ID] [varchar](50) NULL,
	[F_TAX_CLASIFICATION_CODE] [varchar](50) NULL,
 CONSTRAINT [PK_CHGCODE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [chgcode_mast_2009](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CHGCODE_DES] [varchar](40) NOT NULL,
	[CHG_UNIT] [varchar](10) NULL,
	[GST_TYPE_ID] [varchar](1) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_ID] [varchar](10) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NULL,
	[CHG_ACC_ID2] [varchar](10) NULL,
	[AR_CODE] [varchar](10) NULL,
	[AB_CODE] [varchar](10) NULL,
	[WT_M3_IND] [varchar](1) NULL,
	[GRPCODE_ID] [varchar](10) NULL,
	[CATEGORY] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHGCODE_MAST_2015](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CHGCODE_DES] [varchar](40) NOT NULL,
	[CHG_UNIT] [varchar](10) NULL,
	[GST_TYPE_ID] [varchar](1) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_ID] [varchar](10) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NULL,
	[CHG_ACC_ID2] [varchar](10) NULL,
	[AR_CODE] [varchar](10) NULL,
	[AB_CODE] [varchar](10) NULL,
	[WT_M3_IND] [varchar](1) NULL,
	[GRPCODE_ID] [varchar](10) NULL,
	[CATEGORY] [varchar](1) NULL,
	[isunitprice_fixed] [char](1) NOT NULL,
	[hi_autoinvoice_addtlchg] [char](1) NOT NULL,
	[hi_autoinvoice_chgunitq] [numeric](11, 4) NOT NULL,
	[hi_autoinvoice_tratype] [char](1) NOT NULL,
	[hi_autoinvoice_currency] [varchar](10) NOT NULL,
	[hi_autoinvoice_chgunita] [numeric](11, 3) NOT NULL,
	[gst_type_id2] [varchar](2) NULL,
	[gst_type_id3] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHGCODE_MAST_june2016](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CHGCODE_DES] [varchar](40) NOT NULL,
	[CHG_UNIT] [varchar](10) NULL,
	[GST_TYPE_ID] [varchar](1) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_ID] [varchar](10) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NULL,
	[CHG_ACC_ID2] [varchar](10) NULL,
	[AR_CODE] [varchar](10) NULL,
	[AB_CODE] [varchar](10) NULL,
	[WT_M3_IND] [varchar](1) NULL,
	[GRPCODE_ID] [varchar](10) NULL,
	[CATEGORY] [varchar](1) NULL,
	[isunitprice_fixed] [char](1) NOT NULL,
	[hi_autoinvoice_addtlchg] [char](1) NOT NULL,
	[hi_autoinvoice_chgunitq] [numeric](11, 4) NOT NULL,
	[hi_autoinvoice_tratype] [char](1) NOT NULL,
	[hi_autoinvoice_currency] [varchar](10) NOT NULL,
	[hi_autoinvoice_chgunita] [numeric](11, 3) NOT NULL,
	[gst_type_id2] [varchar](2) NULL,
	[gst_type_id3] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COL_UPTD_WITIN_THE_DAY](
	[column_name] [varchar](150) NOT NULL,
	[export_n] [numeric](18, 0) NOT NULL,
	[date_updated] [datetime] NOT NULL,
	[old_datetime_value] [datetime] NULL,
	[new_datetime_value] [datetime] NULL,
	[old_character_value] [varchar](1000) NULL,
	[new_character_value] [varchar](1000) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_last_updated] [varchar](100) NULL,
 CONSTRAINT [PK_rowid] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMBINE_JOBS_MASTER](
	[EXPORT_N_HD] [numeric](9, 0) NOT NULL,
	[EXPORT_N_DT] [numeric](9, 0) NOT NULL,
	[EXPORT_REF_N_DT] [numeric](9, 0) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[HBL_N] [varchar](20) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[JOB_TYPE] [varchar](1) NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](50) NULL,
	[entry_d] [datetime] NULL,
 CONSTRAINT [PK_COMBINE_JOBS_MASTER] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N_HD] ASC,
	[EXPORT_N_DT] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [connection_info](
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[spid] [int] NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[application] [varchar](255) NULL,
	[country_id] [varchar](10) NOT NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_connection_info] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [connection_info_idx1] UNIQUE NONCLUSTERED 
(
	[spid] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cons_inv_criteria](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ac_tr_no] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_cons_inv_criteria] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [consignee_to_eliteint](
	[cust_id] [varchar](10) NULL,
	[s_con_to_send] [varchar](70) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [consolidated_inv_error](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[error_desc] [varchar](200) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[source] [varchar](5) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [consolidated_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[server] [sysname] NOT NULL,
	[dbname] [sysname] NOT NULL,
	[environment] [varchar](100) NOT NULL,
 CONSTRAINT [PK_consolidated_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [consolidated_pl_roe](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[currency_id] [varchar](10) NOT NULL,
	[rate] [numeric](11, 4) NOT NULL,
 CONSTRAINT [PK_consolidated_pl_roe] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONT_TYPE_MAST](
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[CONT_TYPE_DES] [varchar](40) NOT NULL,
	[CONT_M3] [numeric](11, 3) NOT NULL,
	[CONT_WT] [numeric](11, 3) NOT NULL,
	[CONT_MAX_M3] [numeric](11, 3) NOT NULL,
	[CONT_MAX_WT] [numeric](11, 3) NOT NULL,
	[CONT_TEU] [numeric](1, 0) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[customs_cont_type] [varchar](5) NULL,
	[TARE_WT] [decimal](10, 2) NULL,
 CONSTRAINT [PK_CONT_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CONT_TYPE_ID] ASC,
	[CONT_TYPE_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONTAINER_BATCH_DETAIL](
	[export_n] [numeric](9, 0) NULL,
	[container_number] [varchar](50) NULL,
	[batch_order] [int] NULL,
	[batch_number] [varchar](100) NULL,
	[quantity] [numeric](12, 3) NULL,
	[package_type] [varchar](50) NULL,
	[manufacture_date] [datetime] NULL,
	[expiry_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONTAINER_PORT_STATUS](
	[CONTAINER_NUMBER] [varchar](20) NOT NULL,
	[BL_NUMBER] [varchar](20) NULL,
	[LINE_ID] [varchar](10) NULL,
	[SIZE] [varchar](50) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](30) NULL,
	[DCT_REFERENCE_NO] [varchar](50) NULL,
	[PORT_ROTATION_NO] [varchar](50) NULL,
	[ESTIMATED_ARRIVAL_TIME] [datetime] NULL,
	[ACTUAL_ARRIVAL_TIME] [datetime] NULL,
	[ESTIMATED_DEPARTURE_TIME] [datetime] NULL,
	[ACTUAL_DEPARTURE_TIME] [datetime] NULL,
	[CONTAINER_IN_TIME] [datetime] NULL,
	[CONTAINER_OUT_TIME] [datetime] NULL,
	[CURRENT_STATUS] [varchar](200) NULL,
	[CONTAINER_STATUS] [varchar](100) NULL,
	[ISO_CODE] [varchar](20) NULL,
	[GROSS_WEIGHT] [varchar](10) NULL,
	[UNIT_OF_MEASURE] [varchar](5) NULL,
	[LOAD_PORT] [varchar](20) NULL,
	[ORIGIN] [varchar](20) NULL,
	[DESTINATION] [varchar](50) NULL,
	[DISCHARGE_PORT] [varchar](50) NULL,
	[CONTAINER_SERVICE] [varchar](50) NULL,
	[SERVICE_DATE_MANIFESTED] [datetime] NULL,
	[SERVICE_DATE_TRUCK2YARD] [datetime] NULL,
	[SERVICE_DATE_PREXRAY] [datetime] NULL,
	[SERVICE_DATE_BOOKED_STRIPPPING] [datetime] NULL,
	[SERVICE_DATE_BOOKED_DOOROPEN] [datetime] NULL,
	[SERVICE_DATE_STRIP] [datetime] NULL,
	[SERVICE_DATE_STUFF] [datetime] NULL,
	[SERVICE_DATE_LOAD] [datetime] NULL,
	[NOTES] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONTAINER_VGM_Contact](
	[contact_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[contact_name] [varchar](150) NOT NULL,
	[contact_email] [varchar](150) NOT NULL,
	[contact_phone] [varchar](20) NULL,
	[cust_id] [varchar](10) NULL,
 CONSTRAINT [PK_Container_VGM_Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONTAINER_WAREHOUSE](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_ref_n] [numeric](9, 0) NOT NULL,
	[export_n] [numeric](9, 0) NOT NULL,
	[cont_n] [varchar](20) NOT NULL,
	[warehouse_id] [varchar](10) NULL,
 CONSTRAINT [PK_CONTAINER_WAREHOUSE] PRIMARY KEY CLUSTERED 
(
	[export_ref_n] ASC,
	[export_n] ASC,
	[cont_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COSCO_CARRIER_ID](
	[country_id] [varchar](10) NOT NULL,
	[carrier_id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_COSCO_CARRIER_ID] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC,
	[carrier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COST_CENTRE_MAST](
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[COST_CENTRE_DES] [varchar](40) NOT NULL,
	[yy_cost_centre_c] [varchar](12) NULL,
 CONSTRAINT [SYS_C0051878] PRIMARY KEY NONCLUSTERED 
(
	[COST_CENTRE_C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COST_CENTRE_MAST_2015](
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[COST_CENTRE_DES] [varchar](40) NOT NULL,
	[yy_cost_centre_c] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_charge](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[ISSAMPLEORDERCHG] [char](1) NOT NULL,
 CONSTRAINT [PK_costcentre_charge] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[chgcode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_grp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[ccgrp_name] [varchar](50) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_costcenter_group] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_plant](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[plant_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_costcentre_plant] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_prodgrp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[cost_centre] [char](1) NOT NULL,
	[item_charge] [varchar](100) NOT NULL,
	[costcentre_code] [varchar](15) NOT NULL,
	[account_code] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[PLANT_CODE] [varchar](10) NOT NULL,
 CONSTRAINT [PK_COSTCENTRE_PRODGRP] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[prodgrp_id] ASC,
	[cost_centre] ASC,
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COSTING](
	[COSTING_ID] [numeric](10, 0) NOT NULL,
	[REF_NO] [numeric](10, 0) NOT NULL,
	[REF_TYPE] [varchar](1) NOT NULL,
	[CHG_CODE] [varchar](10) NOT NULL,
	[CHG_A] [numeric](11, 3) NOT NULL,
	[CHG_DESC] [varchar](40) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[CHG_QTY] [numeric](11, 3) NULL,
	[CHG_UNIT_A] [numeric](11, 3) NULL,
	[CHG_EX_RATE] [numeric](11, 5) NULL,
	[CHG_CURRENCY] [varchar](10) NULL,
	[REV_IND] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COUNTRY_MAST](
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[COUNTRY_NAME] [varchar](50) NOT NULL,
	[cert_type] [varchar](50) NULL,
	[us_trade_sanctions] [varchar](1) NULL,
 CONSTRAINT [PK_COUNTRY_MAST] PRIMARY KEY NONCLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [country_region_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[country_id] [varchar](10) NULL,
	[country_fanar_code] [varchar](30) NULL,
	[region_fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CR_NOTE](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INVOICE_TYPE] [varchar](1) NULL,
	[CUST_ID] [varchar](10) NULL,
	[INV_YM] [varchar](6) NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NULL,
	[INV_TRA_TYPE] [varchar](1) NOT NULL,
	[INV_D] [datetime] NULL,
	[PRN_D] [datetime] NULL,
	[INV_PRN_D] [datetime] NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NULL,
	[INV_CANCEL_IND] [varchar](1) NULL,
	[INV_CANCEL_D] [datetime] NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[HBL_N] [varchar](30) NULL,
	[OCEAN_BL] [varchar](30) NULL,
	[GD_DES1] [varchar](40) NULL,
	[GD_DES2] [varchar](40) NULL,
	[GD_DES3] [varchar](40) NULL,
	[GD_DES4] [varchar](40) NULL,
	[GD_DES5] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[CREATE_D] [datetime] NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[INV_GST_A] [numeric](11, 2) NULL,
	[INV_TOT_STD_RATE] [numeric](11, 2) NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NULL,
	[INV_TOT_A] [numeric](11, 2) NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NULL,
	[PRINT_N] [numeric](10, 0) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[VOID_IND] [varchar](1) NULL,
	[CORRES_INVOICE_N] [numeric](10, 0) NULL,
	[CORRES_INVOICE_TYPE] [varchar](10) NULL,
	[INV_EX_RATE_USER_ID] [varchar](10) NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[GD_DES6] [varchar](40) NULL,
	[GD_DES7] [varchar](40) NULL,
	[GD_DES8] [varchar](40) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[oth_invoice_n] [numeric](10, 0) NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [PK_CR_NOTE] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CR_NOTE_DET](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NULL,
	[CHG_DES2] [varchar](40) NULL,
	[CHG_DES3] [varchar](40) NULL,
	[CHG_DES4] [varchar](40) NULL,
	[LINE_GST_TYPE] [varchar](1) NULL,
	[LINE_WT_M3_IND] [varchar](1) NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 3) NULL,
	[LINE_CHG_UNIT] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](11, 5) NULL,
	[LINE_GST_P] [numeric](11, 3) NULL,
	[LINE_GST_A] [numeric](11, 2) NULL,
	[LINE_TOT_A] [numeric](11, 2) NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
 CONSTRAINT [PK_CR_NOTE_DET] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC,
	[INV_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [credit_approval](
	[rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[customer_name] [varchar](255) NOT NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[address3] [varchar](50) NULL,
	[address4] [varchar](50) NULL,
	[address5] [varchar](50) NULL,
	[incorporation_dt] [datetime] NULL,
	[country_id] [varchar](10) NULL,
	[business_activity] [varchar](255) NULL,
	[paidup_capital] [varchar](50) NULL,
	[share_holders1] [varchar](50) NULL,
	[share_holders2] [varchar](50) NULL,
	[share_holders3] [varchar](50) NULL,
	[share_holders4] [varchar](50) NULL,
	[share_holders5] [varchar](50) NULL,
	[dir_name] [varchar](80) NULL,
	[dir_age] [int] NULL,
	[dir_background] [varchar](150) NULL,
	[pic_name] [varchar](80) NULL,
	[pic_designation] [varchar](50) NULL,
	[pic_department] [varchar](50) NULL,
	[branch] [char](1) NULL,
	[overseas_ofc] [varchar](50) NULL,
	[business_type] [varchar](50) NULL,
	[others] [varchar](50) NULL,
	[total_sales] [numeric](18, 2) NULL,
	[total_teu] [numeric](10, 0) NULL,
	[gross_profit] [numeric](18, 2) NULL,
	[credit_limit] [numeric](18, 2) NULL,
	[credit_term] [int] NULL,
	[opinion] [varchar](150) NULL,
	[sales_year1] [numeric](18, 2) NULL,
	[sales_year2] [numeric](18, 2) NULL,
	[sales_year3] [numeric](18, 2) NULL,
	[gp_year1] [numeric](18, 2) NULL,
	[gp_year2] [numeric](18, 2) NULL,
	[gp_year3] [numeric](18, 2) NULL,
	[opexpenses_year1] [numeric](18, 2) NULL,
	[opexpenses_year2] [numeric](18, 2) NULL,
	[opexpenses_year3] [numeric](18, 2) NULL,
	[netprofit_year1] [numeric](18, 2) NULL,
	[netprofit_year2] [numeric](18, 2) NULL,
	[netprofit_year3] [numeric](18, 2) NULL,
	[attachment] [char](1) NULL,
	[reason] [varchar](255) NULL,
	[applied_by] [varchar](50) NULL,
	[recommended_by] [varchar](50) NULL,
	[rec_credit_limit] [numeric](18, 2) NULL,
	[rec_credit_term] [int] NULL,
	[valid_dt] [datetime] NULL,
	[confirm1_by] [varchar](50) NULL,
	[confirm1_dt] [datetime] NULL,
	[confirm2_by] [varchar](50) NULL,
	[confirm2_dt] [datetime] NULL,
	[approve1] [char](1) NULL,
	[approve2] [char](1) NULL,
	[currency_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_credit_approval] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [csp_contacts](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[team_email] [varchar](255) NOT NULL,
	[tel_no] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CURRENCY_DAILY_RATE](
	[CURRENCY_EX_RATE_D] [datetime] NOT NULL,
	[CURRENCY_BASE_IND] [varchar](1) NOT NULL,
	[FROM_CURRENCY] [varchar](10) NOT NULL,
	[TO_CURRENCY] [varchar](10) NOT NULL,
	[CURRENCY_DAILY_RATE] [numeric](11, 4) NOT NULL,
	[USER_ID] [varchar](10) NULL,
	[ENTRY_D] [datetime] NULL,
 CONSTRAINT [PK_CURRENCY_DAILY_RATE] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_EX_RATE_D] ASC,
	[CURRENCY_BASE_IND] ASC,
	[FROM_CURRENCY] ASC,
	[TO_CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CURRENCY_MAST](
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[CURRENCY_NAME] [varchar](50) NOT NULL,
	[CURRENCY_EX_RATE] [numeric](10, 4) NULL,
 CONSTRAINT [PK_CURRENCY_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CURRENCY_MONTHLY_RATE](
	[CURRENCY_MONTH] [numeric](2, 0) NOT NULL,
	[CURRENCY_YEAR] [numeric](4, 0) NOT NULL,
	[CURRENCY_FROM] [varchar](10) NOT NULL,
	[CURRENCY_TO] [varchar](10) NOT NULL,
	[CURRENCY_MONTH_RATE] [numeric](11, 4) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[RATE_FROM] [numeric](11, 4) NULL,
	[RATE_TO] [numeric](11, 4) NULL,
	[CURRENCY_ID] [varchar](1) NOT NULL,
 CONSTRAINT [PK_CURRENCY_MONTHLY_RATE] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_MONTH] ASC,
	[CURRENCY_YEAR] ASC,
	[CURRENCY_FROM] ASC,
	[CURRENCY_TO] ASC,
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CURRENCY_RATE_YM](
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[RATE_YM] [varchar](6) NOT NULL,
	[CURRENCY_RATE] [numeric](11, 4) NOT NULL,
 CONSTRAINT [PK_CURRENCY_RATE_YM] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_ID] ASC,
	[RATE_YM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_BANK_MAST](
	[CUST_ID] [varchar](10) NOT NULL,
	[BANK_CODE] [varchar](40) NOT NULL,
	[BANK_NAME] [varchar](70) NOT NULL,
	[BANK_CTRY_ID] [varchar](10) NULL,
	[BANK_ACCT_ID] [varchar](15) NULL,
	[REMIT_INSTRUCTIONS] [varchar](600) NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[BANK_ADD_LINE1] [varchar](255) NULL,
	[BANK_ADD_LINE2] [varchar](255) NULL,
	[BANK_ADD_LINE3] [varchar](255) NULL,
 CONSTRAINT [PK_CUST_BANK_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[BANK_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cust_edocs_insurance](
	[cust_id] [varchar](10) NOT NULL,
	[from_n] [numeric](10, 0) NOT NULL,
	[to_n] [numeric](10, 0) NOT NULL,
	[prefix] [varchar](10) NULL,
	[valid] [numeric](1, 0) NOT NULL,
	[user_id] [varchar](20) NULL,
	[entry_d] [datetime] NULL,
	[max_n] [numeric](10, 0) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parent_id] [varchar](50) NULL,
	[email_status] [int] NULL,
 CONSTRAINT [PK_cust_edocs_insurance] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cust_not_sendxml_to_eliteint](
	[cust_id] [varchar](10) NOT NULL,
	[cust_name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_PER_IT_REQ](
	[ItRequestNo] [numeric](9, 0) NOT NULL,
	[CustId] [char](10) NOT NULL,
	[Environment] [char](10) NOT NULL,
 CONSTRAINT [PK_CUST_PER_IT_REQ] PRIMARY KEY CLUSTERED 
(
	[ItRequestNo] ASC,
	[CustId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_PLANT_MAST](
	[CUST_ID] [varchar](10) NOT NULL,
	[PLANT_CODE] [varchar](20) NOT NULL,
	[PLANT_DESC] [varchar](255) NULL,
	[EMAIL_ADDRESS] [varchar](255) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DATE] [datetime] NULL,
	[permit_email] [varchar](255) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_STAMP](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_STAMP_TYPE] [varchar](50) NOT NULL,
	[CUST_STAMP] [varchar](50) NULL,
 CONSTRAINT [PK_CUST_STAMP] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[CUST_STAMP_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cust_to_eliteint](
	[cust_id] [varchar](10) NOT NULL,
	[cust_name] [varchar](70) NOT NULL,
	[valid] [tinyint] NULL,
	[remarks] [varchar](100) NULL,
	[pdf_upload] [tinyint] NULL,
 CONSTRAINT [PK_cust_to_eliteint] PRIMARY KEY NONCLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_TYPE_MAST](
	[CUST_TYPE_ID] [varchar](10) NOT NULL,
	[CUST_TYPE_DES] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CUST_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CUST_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_TYPE_SUB_MAST](
	[CUST_TYPE_SUB_ID] [varchar](10) NOT NULL,
	[CUST_TYPE_SUB_DES] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CUST_TYPE_SUB_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CUST_TYPE_SUB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUST_USER_MAPPING](
	[custid] [varchar](50) NOT NULL,
	[roleid] [numeric](18, 0) NOT NULL,
	[rolename] [varchar](20) NULL,
	[userid] [varchar](10) NOT NULL,
	[username] [varchar](20) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK_CUST_USER_MAPPING] PRIMARY KEY CLUSTERED 
(
	[custid] ASC,
	[roleid] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_CONTRACT_MAST](
	[CONTRACT_N] [varchar](20) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[CONTRACT_D] [datetime] NULL,
	[EXPIRY_D] [datetime] NULL,
	[EFFECT_D] [datetime] NULL,
	[TERM] [varchar](20) NULL,
	[APP_NAME] [varchar](30) NULL,
	[APP_TITLE] [varchar](30) NULL,
	[APP_TEL] [varchar](20) NULL,
	[APP_MAIL] [varchar](20) NULL,
	[FRT_PAID_BY] [varchar](20) NULL,
	[FRT_COLLECT_BY] [varchar](20) NULL,
	[REMARKS] [varchar](100) NULL,
	[default_flag] [varchar](1) NULL,
 CONSTRAINT [PK_CUSTOMER_CONTRACT_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CONTRACT_N] ASC,
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_LOG](
	[CUST_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_MAST](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL,
	[include_in_consplrpt] [char](1) NOT NULL,
	[business_unit] [numeric](10, 0) NULL,
	[cancel_cust_id] [int] NULL,
	[def_dhl_senders_id] [numeric](9, 0) NULL,
	[DHL_ACCT_NO] [varchar](20) NULL,
	[ins_premium_rate] [decimal](9, 3) NULL,
	[LogoName] [char](50) NULL,
	[postal_code1] [varchar](9) NULL,
	[postal_code2] [varchar](9) NULL,
	[cust_stamp] [varchar](50) NULL,
	[invparty_id] [varchar](10) NULL,
	[TO_ENVI] [varchar](10) NULL,
	[F_PARTY_NUMBER] [numeric](20, 0) NULL,
	[F_CUST_ACCOUNT_NUMBER] [numeric](20, 0) NULL,
	[F_CUST_SITE_NUMBER] [numeric](20, 0) NULL,
	[bill_to_party] [varchar](10) NULL,
 CONSTRAINT [PK_CUSTOMER_MAST] PRIMARY KEY CLUSTERED 
(
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [customer_mast_2009](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_MAST_2015](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL,
	[include_in_consplrpt] [char](1) NOT NULL,
	[business_unit] [numeric](10, 0) NULL,
	[cancel_cust_id] [int] NULL,
	[def_dhl_senders_id] [numeric](9, 0) NULL,
	[DHL_ACCT_NO] [varchar](20) NULL,
	[ins_premium_rate] [decimal](9, 3) NULL,
	[LogoName] [char](50) NULL,
	[postal_code1] [varchar](9) NULL,
	[postal_code2] [varchar](9) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [customer_mast_iris](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_PAYMT](
	[CUST_ID] [varchar](10) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[DOC_ID] [varchar](50) NOT NULL,
	[PAY_TYPE] [varchar](10) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[PAY_D] [datetime] NOT NULL,
	[PAY_A] [numeric](11, 2) NOT NULL,
	[EX_RATE] [numeric](11, 4) NOT NULL,
	[PAY_A_LOCAL] [numeric](11, 2) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
 CONSTRAINT [PK_CUSTOMER_PAYMT] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_RATES](
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) NOT NULL,
	[AUTO_BILL_IND] [varchar](1) NOT NULL,
	[WT_M3_IND] [varchar](1) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[CONTRACT_N] [varchar](20) NOT NULL,
	[CONSIGNEE_ID] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) NULL,
	[CHG_GST] [varchar](10) NULL,
	[SEQ_N] [numeric](11, 0) NULL,
 CONSTRAINT [PK_CUSTOMER_RATES] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_ID] ASC,
	[CHGCODE_ID] ASC,
	[TRA_TYPE] ASC,
	[PORT_LOAD_ID] ASC,
	[CONTRACT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_RATES_2018JAN7_2](
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) NOT NULL,
	[AUTO_BILL_IND] [varchar](1) NOT NULL,
	[WT_M3_IND] [varchar](1) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[CONTRACT_N] [varchar](20) NOT NULL,
	[CONSIGNEE_ID] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) NULL,
	[CHG_GST] [varchar](10) NULL,
	[SEQ_N] [numeric](11, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [customer_rates_june0216](
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) NOT NULL,
	[AUTO_BILL_IND] [varchar](1) NOT NULL,
	[WT_M3_IND] [varchar](1) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[CONTRACT_N] [varchar](20) NOT NULL,
	[CONSIGNEE_ID] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) NULL,
	[CHG_GST] [varchar](10) NULL,
	[SEQ_N] [numeric](11, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_RATES_LOG](
	[LOG_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[CHG_UNIT_A] [numeric](11, 2) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 3) NOT NULL,
	[EX_RATE_IND] [varchar](1) NOT NULL,
	[AUTO_BILL_IND] [varchar](1) NOT NULL,
	[WT_M3_IND] [varchar](1) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
 CONSTRAINT [PK_CUSTOMER_RATES_LOG] PRIMARY KEY NONCLUSTERED 
(
	[LOG_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_TRUCK_CONFIG](
	[TRUCK_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[TRUCK_NAME] [varchar](50) NOT NULL,
	[TRUCK_LICENSE_N] [varchar](50) NULL,
	[TRUCK_CHASIS_N] [varchar](50) NULL,
	[TRUCK_TYPE] [varchar](10) NULL,
	[TRUCK_CAPACITY] [numeric](10, 3) NULL,
	[TRUCK_UOM] [varchar](10) NULL,
	[TRUCK_DESC] [varchar](100) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](20) NULL,
	[MODIFIED_D] [datetime] NULL,
	[truck_chg] [decimal](9, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[TRUCK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [database_info](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[environment_name] [varchar](50) NULL,
	[environment_code] [varchar](10) NULL,
	[database] [varchar](30) NULL,
	[ip] [varchar](20) NULL,
 CONSTRAINT [PK_database_info] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [date_label_mast](
	[label_id] [nvarchar](50) NOT NULL,
	[label_name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DATE_VALIDATIONS](
	[screen_name] [varchar](50) NOT NULL,
	[region_id] [varchar](10) NOT NULL,
	[key_field] [varchar](20) NOT NULL,
	[againts_field] [varchar](20) NULL,
	[FROM_D] [numeric](10, 0) NULL,
	[TO_D] [numeric](10, 0) NULL,
 CONSTRAINT [DATE_VALIDATIONS_PK] PRIMARY KEY NONCLUSTERED 
(
	[screen_name] ASC,
	[region_id] ASC,
	[key_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [depot_mast](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[name] [varchar](255) NOT NULL,
	[contact_person1] [varchar](150) NULL,
	[contact_person2] [varchar](150) NULL,
	[telephone1] [varchar](20) NULL,
	[telephone2] [varchar](20) NULL,
	[fax1] [varchar](20) NULL,
	[fax2] [varchar](20) NULL,
	[email1] [varchar](150) NULL,
	[email2] [varchar](150) NULL,
	[address] [varchar](255) NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) NULL,
 CONSTRAINT [PK_depot_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_airwaybills](
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[airwaybills_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybill_num] [varchar](16) NULL,
	[airwaybill_ref] [varchar](40) NOT NULL,
	[sender_cd] [varchar](30) NULL,
	[sender_company] [varchar](50) NULL,
	[sender_name] [varchar](50) NULL,
	[sender_country_cd] [varchar](2) NOT NULL,
	[sender_country_name] [varchar](30) NULL,
	[sender_address1] [varchar](50) NULL,
	[sender_address2] [varchar](50) NULL,
	[sender_address3] [varchar](50) NULL,
	[sender_zip] [varchar](12) NULL,
	[sender_iata] [varchar](3) NULL,
	[sender_city] [varchar](35) NULL,
	[sender_state] [varchar](35) NULL,
	[sender_phone] [varchar](18) NULL,
	[sender_mobile_fax] [varchar](18) NULL,
	[sender_email] [varchar](40) NULL,
	[sender_vat_gst] [varchar](20) NULL,
	[sender_reference] [varchar](35) NULL,
	[sender_export_license] [varchar](19) NULL,
	[sender_license_exp_dt] [datetime] NULL,
	[shipper_federal_tax_id] [varchar](19) NULL,
	[sender_account_num] [varchar](12) NOT NULL,
	[sender_tc_account] [varchar](12) NULL,
	[receiver_cd] [varchar](30) NULL,
	[receiver_company] [varchar](50) NULL,
	[receiver_attention] [varchar](50) NULL,
	[receiver_country_cd] [varchar](2) NOT NULL,
	[receiver_country_name] [varchar](30) NULL,
	[receiver_address_1] [varchar](50) NULL,
	[receiver_address_2] [varchar](50) NULL,
	[receiver_address_3] [varchar](50) NULL,
	[receiver_zip] [varchar](12) NULL,
	[receiver_iata] [varchar](3) NULL,
	[receiver_city] [varchar](35) NULL,
	[receiver_state] [varchar](35) NULL,
	[receiver_phone] [varchar](18) NULL,
	[receiver_mobile_fax] [varchar](18) NULL,
	[receiver_email1] [varchar](40) NULL,
	[receiver_email2] [varchar](40) NULL,
	[receiver_email3] [varchar](40) NULL,
	[receiver_account] [varchar](12) NULL,
	[receiver_import_license] [varchar](16) NULL,
	[receiver_license_expiry] [datetime] NULL,
	[receiver_reference] [varchar](30) NULL,
	[rcvr_always_send_prealert_flag] [bit] NULL,
	[receiver_vat_gst] [varchar](20) NULL,
	[mail_sort_cd] [varchar](2) NULL,
	[pre_alert_email] [text] NULL,
	[importer_cd] [varchar](30) NULL,
	[importer_company] [varchar](50) NULL,
	[importer_attention] [varchar](50) NULL,
	[importer_address_1] [varchar](50) NULL,
	[importer_address_2] [varchar](50) NULL,
	[importer_address_3] [varchar](50) NULL,
	[importer_city] [varchar](35) NULL,
	[importer_state] [varchar](35) NULL,
	[importer_zip] [varchar](12) NULL,
	[importer_country_cd] [varchar](2) NULL,
	[importer_country_name] [varchar](30) NULL,
	[importer_phone] [varchar](18) NULL,
	[importer_fax] [varchar](18) NULL,
	[importer_email] [varchar](40) NULL,
	[Importer_tax_id_Importer_VAT] [varchar](20) NULL,
	[shipper_state_tax_id] [varchar](19) NULL,
	[ship_dt] [datetime] NOT NULL,
	[shipment_pieces] [int] NOT NULL,
	[shipment_weight] [float] NOT NULL,
	[weight_rounded] [float] NULL,
	[dim_wt_length] [float] NULL,
	[dim_wt_height] [float] NULL,
	[dim_wt_width] [float] NULL,
	[shipment_dim_weight] [float] NULL,
	[awb_currency_cd] [varchar](3) NULL,
	[total_declared_value] [float] NULL,
	[contents1] [varchar](50) NULL,
	[contents2] [varchar](50) NULL,
	[contents3] [varchar](50) NULL,
	[product_id] [numeric](18, 0) NOT NULL,
	[global_product_cd] [varchar](2) NOT NULL,
	[Local_product_cd] [varchar](2) NOT NULL,
	[Product_content_cd] [varchar](3) NOT NULL,
	[package_charge] [float] NULL,
	[total_ship_charges] [float] NULL,
	[total_ship_charge_currency] [varchar](3) NULL,
	[billto_account_num] [varchar](12) NULL,
	[Shipment_billto_options] [tinyint] NULL,
	[delivery_notification_mode] [tinyint] NULL,
	[Insured_amount] [float] NULL,
	[insure_currency_cd] [varchar](3) NULL,
	[harm_commodity_cd] [varchar](20) NULL,
	[country_of_mfg] [varchar](30) NULL,
	[Type_of_export] [varchar](1) NULL,
	[Terms_of_trade_cd] [varchar](3) NULL,
	[tax_id] [varchar](19) NULL,
	[Import_vat_num] [varchar](20) NULL,
	[export_licence_num] [varchar](12) NULL,
	[export_licence_expiry_dt] [datetime] NULL,
	[import_licence_num] [varchar](16) NULL,
	[dos_exempt_flag] [bit] NULL,
	[FTSR_exemption_no] [varchar](10) NULL,
	[dos_exempt_criteria] [varchar](30) NULL,
	[duty_billto_option] [tinyint] NULL,
	[duty_billing_cd] [varchar](30) NULL,
	[vat_billto_option] [tinyint] NULL,
	[VAT_billing_code] [varchar](30) NULL,
	[VAT_billto_country] [varchar](30) NULL,
	[VAT_billto_country_cd] [varchar](2) NULL,
	[duty_billing_accounts_account] [varchar](12) NULL,
	[duty_billing_accounts_vat] [varchar](20) NULL,
	[duty_billing_accounts_ctry_cd] [varchar](2) NULL,
	[duty_billing_accts_ctry_name] [varchar](30) NULL,
	[aggregate_charge] [float] NULL,
	[ETA_period] [int] NULL,
	[ETA_Units] [smallint] NULL,
	[Service_level] [text] NULL,
	[international_flag] [bit] NULL,
	[Dutiable_flag] [bit] NULL,
	[dim_wt_used_flag] [bit] NULL,
	[aggregate_billing_flag] [bit] NULL,
	[split_billing_flag] [bit] NULL,
	[delivery_duties_paid_flag] [bit] NULL,
	[content_attached_flag] [bit] NULL,
	[insurance_service_flag] [bit] NULL,
	[shipment_multiple_ref_flag] [bit] NULL,
	[neutral_delivery_service_flag] [bit] NULL,
	[dos_attached_flag] [bit] NULL,
	[CIPL_attached_flag] [bit] NULL,
	[SED_attached_flag] [bit] NULL,
	[NAFTA_attached_flag] [bit] NULL,
	[piece_details_attached_flag] [bit] NULL,
	[Advisory_Attached_flag] [bit] NULL,
	[dos_advisory_status] [tinyint] NULL,
	[Last_advisory_status] [tinyint] NULL,
	[dos_exempt_advisory_status] [tinyint] NULL,
	[Courier_flag] [bit] NULL,
	[pickup_time] [datetime] NULL,
	[Pickup_dt] [datetime] NULL,
	[courier_initials] [varchar](5) NULL,
	[cal_delivery_dt] [varchar](4) NULL,
	[entry_time] [datetime] NULL,
	[last_advisory_custom_text] [text] NULL,
	[manifest_dt] [datetime] NULL,
	[manifest_time] [datetime] NULL,
	[card_type] [varchar](2) NULL,
	[card_name] [varchar](30) NULL,
	[card_num] [varchar](30) NULL,
	[card_exp_dt] [datetime] NULL,
	[cost_center] [varchar](30) NULL,
	[duty_billing_accounts_company] [varchar](50) NULL,
	[duty_billing_accts_attention] [varchar](50) NULL,
	[duty_billing_accts_address_1] [varchar](50) NULL,
	[duty_billing_accts_address_2] [varchar](50) NULL,
	[duty_billing_accts_address_3] [varchar](50) NULL,
	[duty_billing_accounts_city] [varchar](35) NULL,
	[duty_billing_accounts_state] [varchar](35) NULL,
	[duty_billing_accounts_zip] [varchar](12) NULL,
	[duty_billing_accounts_phone] [varchar](18) NULL,
	[duty_billing_accounts_fax] [varchar](18) NULL,
	[duty_billing_accounts_iata] [varchar](3) NULL,
	[TC_sticker_num] [varchar](10) NULL,
	[AES] [int] NULL,
	[print_flag] [bit] NULL,
	[manifested_flag] [bit] NULL,
	[rate_table] [varchar](7) NULL,
	[move_crt] [varchar](11) NULL,
	[label_prt_flag] [bit] NULL,
	[SAT_flag] [bit] NOT NULL,
	[DVU_flag] [bit] NOT NULL,
	[PDN_flag] [bit] NULL,
	[dutiable_ship_advisory_status] [tinyint] NULL,
	[Trans_ID] [varchar](15) NULL,
	[COD_value] [float] NOT NULL,
	[COD_currency] [varchar](3) NULL,
	[Delivery_terminal_name] [varchar](35) NULL,
	[Delivery_branch_name] [varchar](35) NULL,
	[RTN_flag] [bit] NOT NULL,
	[All_pieces_printed_flag] [bit] NOT NULL,
	[Schedule_number] [varchar](4) NULL,
	[Backend] [varchar](3) NULL,
	[Shipment_VAT] [varchar](20) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Exchange_Flag] [bit] NOT NULL,
	[Deferred_Flag] [bit] NOT NULL,
	[Dangerous_Goods_Flag] [bit] NOT NULL,
	[Delivery_Instructions] [varchar](70) NULL,
	[NoOfPallet] [int] NOT NULL,
	[Pallet_Type] [varchar](40) NULL,
	[Fixed_Delivery_date] [datetime] NULL,
	[Master_Airwaybill_Ref] [varchar](40) NULL,
	[Dangerous_Class] [varchar](7) NULL,
	[PreDelivery_Route_Code] [varchar](40) NULL,
	[Province_Code] [varchar](40) NULL,
	[Sort_Code] [varchar](3) NULL,
	[Pickup_Alert_Shown_Flag] [bit] NOT NULL,
	[Piece_Details_Mandatory] [bit] NOT NULL,
	[Origin_station_Code] [varchar](3) NULL,
	[COD_Payment_Type] [varchar](40) NULL,
	[LP_Number] [varchar](35) NULL,
	[Routing_Code] [varchar](3) NULL,
	[Branch_ReamusId] [varchar](6) NULL,
	[Terminal_ReamusId] [varchar](6) NULL,
	[Receiver_state_tax_id] [varchar](19) NULL,
	[receiver_federal_tax_id] [varchar](19) NULL,
	[Invalid_Flag] [bit] NULL,
	[FileName] [varchar](255) NULL,
	[Err_filename] [varchar](500) NULL,
 CONSTRAINT [PK_dhl_airwaybills] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_airwaybills_backup_16MAY2013](
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[airwaybills_id] [numeric](18, 0) NOT NULL,
	[airwaybill_num] [varchar](16) NULL,
	[airwaybill_ref] [varchar](40) NOT NULL,
	[sender_cd] [varchar](30) NULL,
	[sender_company] [varchar](50) NULL,
	[sender_name] [varchar](50) NULL,
	[sender_country_cd] [varchar](2) NOT NULL,
	[sender_country_name] [varchar](30) NULL,
	[sender_address1] [varchar](50) NULL,
	[sender_address2] [varchar](50) NULL,
	[sender_address3] [varchar](50) NULL,
	[sender_zip] [varchar](12) NULL,
	[sender_iata] [varchar](3) NULL,
	[sender_city] [varchar](35) NULL,
	[sender_state] [varchar](35) NULL,
	[sender_phone] [varchar](18) NULL,
	[sender_mobile_fax] [varchar](18) NULL,
	[sender_email] [varchar](40) NULL,
	[sender_vat_gst] [varchar](20) NULL,
	[sender_reference] [varchar](35) NULL,
	[sender_export_license] [varchar](19) NULL,
	[sender_license_exp_dt] [datetime] NULL,
	[shipper_federal_tax_id] [varchar](19) NULL,
	[sender_account_num] [varchar](12) NOT NULL,
	[sender_tc_account] [varchar](12) NULL,
	[receiver_cd] [varchar](30) NULL,
	[receiver_company] [varchar](50) NULL,
	[receiver_attention] [varchar](50) NULL,
	[receiver_country_cd] [varchar](2) NOT NULL,
	[receiver_country_name] [varchar](30) NULL,
	[receiver_address_1] [varchar](50) NULL,
	[receiver_address_2] [varchar](50) NULL,
	[receiver_address_3] [varchar](50) NULL,
	[receiver_zip] [varchar](12) NULL,
	[receiver_iata] [varchar](3) NULL,
	[receiver_city] [varchar](35) NULL,
	[receiver_state] [varchar](35) NULL,
	[receiver_phone] [varchar](18) NULL,
	[receiver_mobile_fax] [varchar](18) NULL,
	[receiver_email1] [varchar](40) NULL,
	[receiver_email2] [varchar](40) NULL,
	[receiver_email3] [varchar](40) NULL,
	[receiver_account] [varchar](12) NULL,
	[receiver_import_license] [varchar](16) NULL,
	[receiver_license_expiry] [datetime] NULL,
	[receiver_reference] [varchar](30) NULL,
	[rcvr_always_send_prealert_flag] [bit] NULL,
	[receiver_vat_gst] [varchar](20) NULL,
	[mail_sort_cd] [varchar](2) NULL,
	[pre_alert_email] [text] NULL,
	[importer_cd] [varchar](30) NULL,
	[importer_company] [varchar](50) NULL,
	[importer_attention] [varchar](50) NULL,
	[importer_address_1] [varchar](50) NULL,
	[importer_address_2] [varchar](50) NULL,
	[importer_address_3] [varchar](50) NULL,
	[importer_city] [varchar](35) NULL,
	[importer_state] [varchar](35) NULL,
	[importer_zip] [varchar](12) NULL,
	[importer_country_cd] [varchar](2) NULL,
	[importer_country_name] [varchar](30) NULL,
	[importer_phone] [varchar](18) NULL,
	[importer_fax] [varchar](18) NULL,
	[importer_email] [varchar](40) NULL,
	[Importer_tax_id_Importer_VAT] [varchar](20) NULL,
	[shipper_state_tax_id] [varchar](19) NULL,
	[ship_dt] [datetime] NOT NULL,
	[shipment_pieces] [int] NOT NULL,
	[shipment_weight] [float] NOT NULL,
	[weight_rounded] [float] NULL,
	[dim_wt_length] [float] NULL,
	[dim_wt_height] [float] NULL,
	[dim_wt_width] [float] NULL,
	[shipment_dim_weight] [float] NULL,
	[awb_currency_cd] [varchar](3) NULL,
	[total_declared_value] [float] NULL,
	[contents1] [varchar](50) NULL,
	[contents2] [varchar](50) NULL,
	[contents3] [varchar](50) NULL,
	[product_id] [numeric](18, 0) NOT NULL,
	[global_product_cd] [varchar](2) NOT NULL,
	[Local_product_cd] [varchar](2) NOT NULL,
	[Product_content_cd] [varchar](3) NOT NULL,
	[package_charge] [float] NULL,
	[total_ship_charges] [float] NULL,
	[total_ship_charge_currency] [varchar](3) NULL,
	[billto_account_num] [varchar](12) NULL,
	[Shipment_billto_options] [tinyint] NULL,
	[delivery_notification_mode] [tinyint] NULL,
	[Insured_amount] [float] NULL,
	[insure_currency_cd] [varchar](3) NULL,
	[harm_commodity_cd] [varchar](20) NULL,
	[country_of_mfg] [varchar](30) NULL,
	[Type_of_export] [varchar](1) NULL,
	[Terms_of_trade_cd] [varchar](3) NULL,
	[tax_id] [varchar](19) NULL,
	[Import_vat_num] [varchar](20) NULL,
	[export_licence_num] [varchar](12) NULL,
	[export_licence_expiry_dt] [datetime] NULL,
	[import_licence_num] [varchar](16) NULL,
	[dos_exempt_flag] [bit] NULL,
	[FTSR_exemption_no] [varchar](10) NULL,
	[dos_exempt_criteria] [varchar](30) NULL,
	[duty_billto_option] [tinyint] NULL,
	[duty_billing_cd] [varchar](30) NULL,
	[vat_billto_option] [tinyint] NULL,
	[VAT_billing_code] [varchar](30) NULL,
	[VAT_billto_country] [varchar](30) NULL,
	[VAT_billto_country_cd] [varchar](2) NULL,
	[duty_billing_accounts_account] [varchar](12) NULL,
	[duty_billing_accounts_vat] [varchar](20) NULL,
	[duty_billing_accounts_ctry_cd] [varchar](2) NULL,
	[duty_billing_accts_ctry_name] [varchar](30) NULL,
	[aggregate_charge] [float] NULL,
	[ETA_period] [int] NULL,
	[ETA_Units] [smallint] NULL,
	[Service_level] [text] NULL,
	[international_flag] [bit] NULL,
	[Dutiable_flag] [bit] NULL,
	[dim_wt_used_flag] [bit] NULL,
	[aggregate_billing_flag] [bit] NULL,
	[split_billing_flag] [bit] NULL,
	[delivery_duties_paid_flag] [bit] NULL,
	[content_attached_flag] [bit] NULL,
	[insurance_service_flag] [bit] NULL,
	[shipment_multiple_ref_flag] [bit] NULL,
	[neutral_delivery_service_flag] [bit] NULL,
	[dos_attached_flag] [bit] NULL,
	[CIPL_attached_flag] [bit] NULL,
	[SED_attached_flag] [bit] NULL,
	[NAFTA_attached_flag] [bit] NULL,
	[piece_details_attached_flag] [bit] NULL,
	[Advisory_Attached_flag] [bit] NULL,
	[dos_advisory_status] [tinyint] NULL,
	[Last_advisory_status] [tinyint] NULL,
	[dos_exempt_advisory_status] [tinyint] NULL,
	[Courier_flag] [bit] NULL,
	[pickup_time] [datetime] NULL,
	[Pickup_dt] [datetime] NULL,
	[courier_initials] [varchar](5) NULL,
	[cal_delivery_dt] [varchar](4) NULL,
	[entry_time] [datetime] NULL,
	[last_advisory_custom_text] [text] NULL,
	[manifest_dt] [datetime] NULL,
	[manifest_time] [datetime] NULL,
	[card_type] [varchar](2) NULL,
	[card_name] [varchar](30) NULL,
	[card_num] [varchar](30) NULL,
	[card_exp_dt] [datetime] NULL,
	[cost_center] [varchar](30) NULL,
	[duty_billing_accounts_company] [varchar](50) NULL,
	[duty_billing_accts_attention] [varchar](50) NULL,
	[duty_billing_accts_address_1] [varchar](50) NULL,
	[duty_billing_accts_address_2] [varchar](50) NULL,
	[duty_billing_accts_address_3] [varchar](50) NULL,
	[duty_billing_accounts_city] [varchar](35) NULL,
	[duty_billing_accounts_state] [varchar](35) NULL,
	[duty_billing_accounts_zip] [varchar](12) NULL,
	[duty_billing_accounts_phone] [varchar](18) NULL,
	[duty_billing_accounts_fax] [varchar](18) NULL,
	[duty_billing_accounts_iata] [varchar](3) NULL,
	[TC_sticker_num] [varchar](10) NULL,
	[AES] [int] NULL,
	[print_flag] [bit] NULL,
	[manifested_flag] [bit] NULL,
	[rate_table] [varchar](7) NULL,
	[move_crt] [varchar](11) NULL,
	[label_prt_flag] [bit] NULL,
	[SAT_flag] [bit] NOT NULL,
	[DVU_flag] [bit] NOT NULL,
	[PDN_flag] [bit] NULL,
	[dutiable_ship_advisory_status] [tinyint] NULL,
	[Trans_ID] [varchar](15) NULL,
	[COD_value] [float] NOT NULL,
	[COD_currency] [varchar](3) NULL,
	[Delivery_terminal_name] [varchar](35) NULL,
	[Delivery_branch_name] [varchar](35) NULL,
	[RTN_flag] [bit] NOT NULL,
	[All_pieces_printed_flag] [bit] NOT NULL,
	[Schedule_number] [varchar](4) NULL,
	[Backend] [varchar](3) NULL,
	[Shipment_VAT] [varchar](20) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Exchange_Flag] [bit] NOT NULL,
	[Deferred_Flag] [bit] NOT NULL,
	[Dangerous_Goods_Flag] [bit] NOT NULL,
	[Delivery_Instructions] [varchar](70) NULL,
	[NoOfPallet] [int] NOT NULL,
	[Pallet_Type] [varchar](40) NULL,
	[Fixed_Delivery_date] [datetime] NULL,
	[Master_Airwaybill_Ref] [varchar](40) NULL,
	[Dangerous_Class] [varchar](7) NULL,
	[PreDelivery_Route_Code] [varchar](40) NULL,
	[Province_Code] [varchar](40) NULL,
	[Sort_Code] [varchar](3) NULL,
	[Pickup_Alert_Shown_Flag] [bit] NOT NULL,
	[Piece_Details_Mandatory] [bit] NOT NULL,
	[Origin_station_Code] [varchar](3) NULL,
	[COD_Payment_Type] [varchar](40) NULL,
	[LP_Number] [varchar](35) NULL,
	[Routing_Code] [varchar](3) NULL,
	[Branch_ReamusId] [varchar](6) NULL,
	[Terminal_ReamusId] [varchar](6) NULL,
	[Receiver_state_tax_id] [varchar](19) NULL,
	[receiver_federal_tax_id] [varchar](19) NULL,
	[Invalid_Flag] [bit] NULL,
	[FileName] [varchar](255) NULL,
	[Err_filename] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_country](
	[country_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[terms_of_trade_reqd_flag] [bit] NOT NULL,
	[terms_of_payments_reqd_flag] [bit] NOT NULL,
	[invoice_number_reqd_flag] [bit] NOT NULL,
	[export_type_reqd_flag] [bit] NOT NULL,
	[export_reason_reqd_flag] [bit] NOT NULL,
	[US_certificate_of_origin_flag] [bit] NOT NULL,
	[currency_cd] [varchar](3) NOT NULL,
	[state_label] [varchar](9) NULL,
	[UsePostCode_flag] [bit] NOT NULL,
	[ddp_in_flag] [varchar](1) NOT NULL,
	[ddp_out_flag] [varchar](1) NOT NULL,
	[ddu_flag] [varchar](1) NOT NULL,
	[dvu_flag] [varchar](1) NOT NULL,
	[nds_flag] [varchar](1) NOT NULL,
	[sat_flag] [varchar](1) NOT NULL,
	[Threshold_value] [float] NULL,
	[tc_allowed_flag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_country_postcodes](
	[country_postcodes_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[postal_format] [varchar](12) NOT NULL,
	[postal_sig_digits] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[country_postcodes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_currency](
	[Currency_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Currency_cd] [varchar](3) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[Decimal] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_directory](
	[directory_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[IATA] [varchar](3) NOT NULL,
	[City] [varchar](35) NOT NULL,
	[Z_sector] [varchar](3) NULL,
	[Z_rate_subset] [varchar](1) NULL,
	[L_sector] [varchar](3) NULL,
	[L_rate_subset] [varchar](1) NULL,
	[A_sector] [varchar](3) NULL,
	[A_rate_subset] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[directory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_products](
	[products_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[local_product_cd] [varchar](2) NOT NULL,
	[global_product_cd] [varchar](2) NOT NULL,
	[product_name] [varchar](30) NOT NULL,
	[product_content_cd] [varchar](3) NOT NULL,
	[weight_desc] [varchar](5) NULL,
	[price_flat_rate_flag] [bit] NOT NULL,
	[proforma_required] [tinyint] NOT NULL,
	[price_high_value] [float] NOT NULL,
	[effective_from] [datetime] NULL,
	[effective_till] [datetime] NULL,
	[dpgm_product_flag] [bit] NOT NULL,
	[domestic_dim_wt_divisor] [float] NOT NULL,
	[domestic_shipment_allowed_flag] [bit] NOT NULL,
	[domestic_agg_allowed_flag] [bit] NOT NULL,
	[domestic_aggregate_weight_min] [float] NULL,
	[domestic_aggregate_price_min] [float] NULL,
	[intl_dim_wt_divisor] [float] NULL,
	[intl_shipment_allowed_flag] [bit] NOT NULL,
	[intl_aggregate_allowed_flag] [bit] NOT NULL,
	[intl_aggregate_weight_min] [float] NOT NULL,
	[intl_aggregate_price_min] [float] NOT NULL,
	[Product_notes] [text] NULL,
	[product_type] [smallint] NULL,
	[Routing_barcode] [varchar](3) NULL,
	[VCF_Calc_Weight] [bit] NOT NULL,
	[Domestic_Weight_Min] [float] NULL,
	[Domestic_Weight_Max] [float] NULL,
	[Intl_Weight_Min] [float] NULL,
	[Intl_Weight_Max] [float] NULL,
	[Domestic_Wt_Round_Factor] [float] NULL,
	[Intl_Wt_Round_Factor] [float] NULL,
	[Domestic_Max_Wt_Per_Item] [float] NULL,
	[Intl_Max_Wt_Per_Item] [float] NULL,
	[Shipment_Identifier] [smallint] NULL,
	[Lp_Identifier] [smallint] NULL,
	[Domestic_Max_Advanced_Days] [smallint] NULL,
	[Intl_Max_Advanced_days] [smallint] NULL,
	[Allow_Dangerous_Goods] [bit] NULL,
	[Allow_Exchange_Shipment] [bit] NULL,
	[Domestic_No_Of_Pieces] [smallint] NULL,
	[Domestic_Max_Pallet_No] [int] NULL,
	[Intl_No_Of_Pieces] [smallint] NULL,
	[Intl_Max_Pallet_No] [int] NULL,
	[Domestic_Max_Pallet_wt] [float] NULL,
	[Intl_Max_Pallet_wt] [float] NULL,
	[Shipment_Multi_Ref] [bit] NULL,
	[Piece_Multi_Ref] [bit] NULL,
	[Piece_Details_Mandatory] [bit] NULL,
	[Domestic_Min_Length_Piece] [float] NULL,
	[Domestic_Min_Width_Piece] [float] NULL,
	[Domestic_Min_Height_Piece] [float] NULL,
	[Domestic_Max_Length_Piece] [float] NULL,
	[Domestic_Max_Width_Piece] [float] NULL,
	[Domestic_Max_Height_Piece] [float] NULL,
	[Intl_Min_Length_Piece] [float] NULL,
	[Intl_Min_Width_Piece] [float] NULL,
	[Intl_Min_Height_Piece] [float] NULL,
	[Intl_Max_Length_Piece] [float] NULL,
	[Intl_Max_Width_Piece] [float] NULL,
	[Intl_Max_Height_Piece] [float] NULL,
	[Allow_Delivery_Instruction] [bit] NULL,
	[Pickup_Alert_Msg] [text] NULL,
	[Domestic_Metric_Dim_Wt_Divisor] [float] NULL,
	[Intl_Metric_Dim_Wt_Divisor] [float] NULL,
	[Domestic_Wt_Default] [float] NULL,
	[Intl_Wt_Default] [float] NULL,
	[Domestic_Warning_Message] [bit] NOT NULL,
	[Intl_Warning_Message] [bit] NOT NULL,
	[US2ndDay] [bit] NULL,
	[Domestic_fixed_del_dt_flag] [bit] NOT NULL,
	[Intl_Fixed_Del_dt_flag] [bit] NOT NULL,
	[Domestic_max_dimensional_weight] [float] NULL,
	[Intl_Max_Dimensional_weight] [float] NULL,
 CONSTRAINT [PK_dhl_products] PRIMARY KEY CLUSTERED 
(
	[products_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_receivers](
	[receivers_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[receiver_cd] [varchar](30) NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[attention] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[address_1] [varchar](50) NULL,
	[address_2] [varchar](50) NULL,
	[address_3] [varchar](50) NULL,
	[Zip] [varchar](12) NULL,
	[Iata] [varchar](3) NULL,
	[city] [varchar](35) NULL,
	[state] [varchar](35) NULL,
	[phone] [varchar](18) NULL,
	[mobile_fax] [varchar](18) NULL,
	[email1] [varchar](40) NULL,
	[email2] [varchar](40) NULL,
	[email3] [varchar](40) NULL,
	[vat_gst] [varchar](20) NULL,
	[account] [varchar](12) NULL,
	[import_licence] [varchar](16) NULL,
	[licence_expiry] [datetime] NULL,
	[reference] [varchar](30) NULL,
	[contents_1] [varchar](30) NULL,
	[contents_2] [varchar](30) NULL,
	[contents_3] [varchar](30) NULL,
	[mail_sort_cd] [varchar](2) NULL,
	[pre_alert_email] [text] NULL,
	[email_advisory_type] [varchar](30) NULL,
	[always_send_pre_alert_flag] [bit] NULL,
	[rec_default_sender_id] [varchar](30) NULL,
	[rec_default_product_id] [numeric](18, 0) NULL,
	[rec_default_local_product_cd] [varchar](2) NULL,
	[rec_default_global_product_cd] [varchar](2) NULL,
	[rec_default_service_id] [varchar](3) NULL,
	[receiver_retention] [bit] NULL,
	[Rec_Default_Product_name] [varchar](30) NULL,
	[Rec_Default_Service_name] [varchar](50) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[federal_tax_id] [varchar](19) NULL,
	[state_tax_id] [varchar](19) NULL,
 CONSTRAINT [PK_dhl_receivers] PRIMARY KEY CLUSTERED 
(
	[receivers_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_senders](
	[Senders_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sender_cd] [varchar](30) NOT NULL,
	[company] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Country_cd] [varchar](2) NOT NULL,
	[Country_name] [varchar](30) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Address3] [varchar](50) NULL,
	[Zip] [varchar](12) NULL,
	[Iata] [varchar](3) NULL,
	[City] [varchar](35) NULL,
	[State] [varchar](35) NULL,
	[Phone] [varchar](18) NULL,
	[mobile_fax] [varchar](18) NULL,
	[Email] [varchar](40) NULL,
	[vat_gst] [varchar](20) NULL,
	[Account_num] [varchar](12) NOT NULL,
	[tc_account] [varchar](12) NULL,
	[sender_reference] [varchar](35) NULL,
	[cost_center] [varchar](30) NULL,
	[contents_1] [varchar](30) NULL,
	[contents_2] [varchar](30) NULL,
	[contents_3] [varchar](30) NULL,
	[card_type] [varchar](15) NULL,
	[card_num] [varchar](30) NULL,
	[card_exp_dt] [datetime] NULL,
	[export_lic] [varchar](19) NULL,
	[license_exp_dt] [datetime] NULL,
	[federal_tax_id] [varchar](30) NULL,
	[state_tax_id] [varchar](19) NULL,
	[def_del_notification] [smallint] NULL,
	[sender_schedule_number] [varchar](4) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Destination_Billing] [bit] NOT NULL,
 CONSTRAINT [PK_dhl_senders] PRIMARY KEY CLUSTERED 
(
	[Senders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_state](
	[state_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[State] [varchar](35) NOT NULL,
	[Country_cd] [varchar](2) NOT NULL,
	[Country_name] [varchar](30) NOT NULL,
	[postal_abbreviation] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_surcharge](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](10) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[basis] [bit] NOT NULL,
	[percentage] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dhl_surcharge] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_zip](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[city_name] [varchar](35) NULL,
	[state_name] [varchar](35) NULL,
	[zip_low] [varchar](12) NULL,
	[Zip_high] [varchar](12) NULL,
	[Iata] [varchar](3) NOT NULL,
 CONSTRAINT [PK__dhl_zip__6A26A4A8] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [direct_collection_approver](
	[approver_id] [varchar](50) NOT NULL,
	[approver_name] [varchar](50) NOT NULL,
	[approver_email] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_ACE_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[elite_ref_no] [varchar](50) NULL,
	[elite_hos_ref_no] [varchar](50) NULL,
	[po_no] [varchar](20) NULL,
	[insurer] [varchar](50) NULL,
	[amount_fig] [varchar](50) NULL,
	[amount_words] [varchar](500) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](400) NULL,
 CONSTRAINT [PK_DOC_ACE_INSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_ADDRESS_MAST](
	[doc_head_no] [varchar](30) NOT NULL,
	[scc_ref_no] [varchar](20) NOT NULL,
	[scc_ref_type] [varchar](20) NOT NULL,
	[shipper_add1] [varchar](100) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[other_add1] [varchar](70) NULL,
	[other_add2] [varchar](70) NULL,
	[other_add3] [varchar](70) NULL,
	[other_add4] [varchar](70) NULL,
	[other_add5] [varchar](70) NULL,
	[other_add6] [varchar](70) NULL,
	[shipto_add1] [varchar](70) NULL,
	[shipto_add2] [varchar](70) NULL,
	[shipto_add3] [varchar](70) NULL,
	[shipto_add4] [varchar](70) NULL,
	[shipto_add5] [varchar](70) NULL,
	[shipto_add6] [varchar](70) NULL,
	[billto_add1] [varchar](70) NULL,
	[billto_add2] [varchar](70) NULL,
	[billto_add3] [varchar](70) NULL,
	[billto_add4] [varchar](70) NULL,
	[billto_add5] [varchar](70) NULL,
	[billto_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[notify_add1] [varchar](70) NULL,
	[notify_add2] [varchar](70) NULL,
	[notify_add3] [varchar](70) NULL,
	[notify_add4] [varchar](70) NULL,
	[notify_add5] [varchar](70) NULL,
	[notify_add6] [varchar](70) NULL,
 CONSTRAINT [PK_DOC_ADDRESS_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_AMROBANK_EXCHANGE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[exg_amount] [varchar](80) NULL,
	[exg_date] [datetime] NULL,
	[payment_term] [varchar](200) NULL,
	[to_order] [varchar](200) NULL,
	[amount_words] [varchar](500) NULL,
	[credit_no] [varchar](80) NULL,
	[credit_dt] [datetime] NULL,
	[issued_by] [varchar](80) NULL,
	[issued_to] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_app_collect](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[doc_date] [datetime] NULL,
	[to_name] [varchar](200) NULL,
	[ref_no] [varchar](30) NULL,
	[contact_name] [varchar](50) NULL,
	[contact_tel] [varchar](50) NULL,
	[contact_fax] [varchar](50) NULL,
	[draft_o] [varchar](10) NULL,
	[draft_c] [varchar](10) NULL,
	[draft_tenor] [varchar](150) NULL,
	[comm_inv_o] [varchar](10) NULL,
	[comm_inv_c] [varchar](10) NULL,
	[pack_list_o] [varchar](10) NULL,
	[pack_list_c] [varchar](10) NULL,
	[bill_lading_o] [varchar](10) NULL,
	[bill_lading_c] [varchar](10) NULL,
	[phyto_cert_o] [varchar](10) NULL,
	[phyto_cert_c] [varchar](10) NULL,
	[cert_qty_wt_o] [varchar](10) NULL,
	[cert_qty_wt_c] [varchar](10) NULL,
	[pack_decla_o] [varchar](10) NULL,
	[pack_decla_c] [varchar](10) NULL,
	[insur_cert_o] [varchar](10) NULL,
	[insur_cert_c] [varchar](10) NULL,
	[co_o] [varchar](10) NULL,
	[co_c] [varchar](10) NULL,
	[fumi_cert_c] [varchar](10) NULL,
	[fumi_cert_o] [varchar](10) NULL,
	[cert_analysis_o] [varchar](10) NULL,
	[cert_analysis_c] [varchar](10) NULL,
	[collect_bank] [varchar](600) NULL,
	[ins1] [varchar](2) NULL,
	[ins2] [varchar](2) NULL,
	[ins3] [varchar](2) NULL,
	[ins4] [varchar](2) NULL,
	[ins4_percent] [numeric](11, 3) NULL,
	[ins4_from] [varchar](50) NULL,
	[ins4_to] [varchar](50) NULL,
	[ins5] [varchar](2) NULL,
	[ins6] [varchar](2) NULL,
	[ins7] [varchar](2) NULL,
	[ins8] [varchar](2) NULL,
	[ins9] [varchar](2) NULL,
	[ins10] [varchar](2) NULL,
	[ins10_to] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[company_name] [varchar](200) NULL,
	[tot_value] [numeric](22, 3) NULL,
	[ship_cert_o] [varchar](10) NULL,
	[ship_cert_c] [varchar](10) NULL,
	[ben_cert_o] [varchar](10) NULL,
	[ben_cert_c] [varchar](10) NULL,
	[cover_type] [varchar](2) NULL,
	[cert_heat_treat_o] [varchar](10) NULL,
	[cert_heat_treat_c] [varchar](10) NULL,
	[cert_quality_o] [varchar](10) NULL,
	[cert_quality_c] [varchar](10) NULL,
	[letter_credit_n] [varchar](70) NULL,
	[doc1] [varchar](100) NULL,
	[doc2] [varchar](100) NULL,
	[doc3] [varchar](100) NULL,
	[doc4] [varchar](100) NULL,
	[doc5] [varchar](100) NULL,
	[doc1_o] [varchar](10) NULL,
	[doc1_c] [varchar](10) NULL,
	[doc2_o] [varchar](10) NULL,
	[doc2_c] [varchar](10) NULL,
	[doc3_o] [varchar](10) NULL,
	[doc3_c] [varchar](10) NULL,
	[doc4_o] [varchar](10) NULL,
	[doc4_c] [varchar](10) NULL,
	[doc5_o] [varchar](10) NULL,
	[doc5_c] [varchar](10) NULL,
	[issuing_bank] [varchar](200) NULL,
	[draft_n] [varchar](30) NULL,
	[remarks] [varchar](1000) NULL,
	[em_csr] [varchar](100) NULL,
	[currency_id] [varchar](5) NULL,
	[receipt_funds_clause] [varchar](500) NULL,
	[std_clause] [varchar](500) NULL,
	[discrepancies_clause] [varchar](500) NULL,
	[clause1] [varchar](500) NULL,
	[business_unit] [varchar](50) NULL,
	[bank_ref] [varchar](100) NULL,
	[signagent] [varchar](1) NULL,
	[fax_discripancy] [varchar](20) NULL,
	[fax_discripancy_HK] [varchar](20) NULL,
	[lc_confirm] [varchar](2) NULL,
	[doc_to] [varchar](2) NULL,
	[doc_pro] [varchar](2) NULL,
	[intnl_stnby] [varchar](2) NULL,
	[san_frdinfo] [varchar](500) NULL,
	[INS11] [varchar](2) NULL,
	[INS12] [varchar](2) NULL,
	[INS13] [varchar](2) NULL,
	[lc_expiry] [varchar](50) NULL,
	[drawee_name] [varchar](200) NULL,
	[approval_flag] [varchar](2) NULL,
	[approved_by] [varchar](50) NULL,
	[approved_date] [datetime] NULL,
	[requested_by] [varchar](50) NULL,
 CONSTRAINT [PK_doc_app_collect] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Doc_app_collect_csr](
	[cust_id] [varchar](10) NULL,
	[csr_name] [varchar](50) NULL,
	[csr_tel] [varchar](50) NULL,
	[csr_fax] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[csr_email] [varchar](200) NULL,
 CONSTRAINT [PK_doc_app_collect_csr] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_app_collect_csr2](
	[cust_id] [varchar](10) NULL,
	[csr_name] [varchar](50) NULL,
	[csr_tel] [varchar](50) NULL,
	[csr_fax] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_APPCOL_DOC_COUNT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) NOT NULL,
	[doc_name] [varchar](200) NOT NULL,
	[no_of_copies] [varchar](5) NULL,
	[duplicate_copies] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_APPCOL_DOC_COUNT_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_BC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[att_desc1] [varchar](70) NULL,
	[att_desc2] [varchar](70) NULL,
	[att_desc3] [varchar](70) NULL,
	[att_desc4] [varchar](70) NULL,
	[att_desc5] [varchar](70) NULL,
	[att_desc6] [varchar](70) NULL,
	[commodity_desc1] [varchar](250) NULL,
	[commodity_desc2] [varchar](70) NULL,
	[commodity_desc3] [varchar](70) NULL,
	[commodity_desc4] [varchar](70) NULL,
	[commodity_desc5] [varchar](70) NULL,
	[commodity_desc6] [varchar](70) NULL,
	[last_comment] [varchar](2000) NULL,
	[first_comment] [varchar](2000) NULL,
	[qty_opt] [varchar](100) NULL,
	[price_unit_uom] [varchar](100) NULL,
	[contract_no] [varchar](100) NULL,
	[inv_value] [varchar](100) NULL,
	[vessel_opt] [varchar](100) NULL,
	[commodity_opt] [varchar](100) NULL,
	[qty_uom] [varchar](100) NULL,
	[price_opt] [varchar](100) NULL,
	[inv_opt] [varchar](100) NULL,
	[sail_opt] [varchar](100) NULL,
	[lc_opt] [varchar](100) NULL,
	[net_wt_opt] [varchar](100) NULL,
	[bl_opt] [varchar](100) NULL,
 CONSTRAINT [PK_DOC_BC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_BILL_OF_EXCHANGE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[invoice_no1] [varchar](20) NULL,
	[inv_dt1] [datetime] NULL,
	[usd1] [varchar](50) NULL,
	[tenor1] [varchar](50) NULL,
	[amount_words1] [varchar](500) NULL,
	[credit_no1] [varchar](20) NULL,
	[credit_dt1] [datetime] NULL,
	[issued_by1] [varchar](50) NULL,
	[to1] [varchar](80) NULL,
	[invoice_no2] [varchar](20) NULL,
	[inv_dt2] [datetime] NULL,
	[usd2] [varchar](50) NULL,
	[tenor2] [varchar](50) NULL,
	[amount_words2] [varchar](500) NULL,
	[credit_no2] [varchar](20) NULL,
	[credit_dt2] [datetime] NULL,
	[issued_by2] [varchar](50) NULL,
	[to2] [varchar](80) NULL,
	[signparty1] [varchar](80) NULL,
	[signparty2] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_BILL_OF_EXCHANGE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_cert_insurance](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[cert_n] [varchar](20) NULL,
	[policy_n] [varchar](20) NULL,
	[premium_amt] [decimal](12, 3) NULL,
	[premium_rate] [decimal](12, 3) NULL,
	[premium_date] [datetime] NULL,
	[premium_place] [varchar](50) NULL,
	[header_ind] [varchar](15) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[port_of_load] [varchar](40) NULL,
	[port_of_discharge] [varchar](40) NULL,
	[product_desc] [varchar](500) NULL,
	[num_of_packages] [varchar](30) NULL,
	[cover_text] [varchar](550) NULL,
	[insured_amt] [decimal](12, 2) NULL,
	[insured_value] [decimal](12, 2) NULL,
	[currency_id] [varchar](5) NULL,
	[assured] [varchar](255) NULL,
	[marks_and_num] [varchar](600) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[user_id] [varchar](50) NULL,
	[cause_text] [varchar](50) NULL,
	[port_rec_name] [varchar](40) NULL,
	[port_del_name] [varchar](40) NULL,
	[duplicate_ind] [varchar](2) NULL,
	[fin_dest] [varchar](50) NULL,
	[certagent] [varchar](1) NULL,
	[signagent] [varchar](1) NULL,
	[type] [int] NULL,
	[po_no] [varchar](50) NULL,
	[print_po] [varchar](2) NULL,
	[lc_issuing_bank] [varchar](500) NULL,
	[print_lc_issuing_bank] [varchar](2) NULL,
	[lc_dated] [datetime] NULL,
	[print_lc_dated] [varchar](2) NULL,
 CONSTRAINT [PK_doc_cert_insurance] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_cert_range](
	[drid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[drno] [numeric](10, 0) NULL,
	[drinsuranceno] [varchar](50) NULL,
	[drcustid] [varchar](10) NULL,
	[drbatchid] [numeric](21, 0) NULL,
	[druserid] [varchar](30) NULL,
	[drstatus] [varchar](10) NULL,
	[drjobno] [numeric](10, 0) NULL,
	[isused] [char](1) NOT NULL,
	[ENVIRONMENT] [char](10) NULL,
 CONSTRAINT [PK_doc_cert_range] PRIMARY KEY CLUSTERED 
(
	[drid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ANALYSIS](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[seller_name] [varchar](80) NULL,
	[commodity] [varchar](5000) NULL,
	[qty] [numeric](18, 3) NULL,
	[origin] [varchar](50) NULL,
	[ship_from] [varchar](50) NULL,
	[pack_type] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[net_wt] [numeric](18, 4) NULL,
	[gross_wt] [numeric](18, 4) NULL,
	[batch_no] [varchar](20) NULL,
	[lot_no] [varchar](20) NULL,
	[indent_no] [varchar](50) NULL,
	[consignee_no] [varchar](50) NULL,
	[marking_desc] [varchar](500) NULL,
	[shore_tank_no] [varchar](30) NULL,
	[first_comments] [varchar](400) NULL,
	[create_dt] [datetime] NULL,
	[comp_name] [varchar](200) NULL,
	[comp_name_as] [varchar](50) NULL,
	[print_sign] [varchar](2) NULL,
	[material_name] [varchar](50) NULL,
	[material_n] [varchar](50) NULL,
	[material_n_bulk] [varchar](50) NULL,
	[spec_n] [varchar](50) NULL,
	[valid_from] [datetime] NULL,
	[spec_title] [varchar](50) NULL,
	[cust_n] [varchar](50) NULL,
	[order_n] [varchar](50) NULL,
	[delivery_note_n] [varchar](50) NULL,
	[delivery_d] [datetime] NULL,
	[shipment] [varchar](50) NULL,
	[cust_ord_n] [varchar](50) NULL,
	[container_n] [varchar](50) NULL,
	[control_lot_n] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[cert_n] [varchar](20) NULL,
	[cert_d] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[body_text] [varchar](2000) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[header_option_ind] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_CERTIFICATE_OF_ANALYSIS] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[export_n] [bigint] NULL,
	[import_n] [bigint] NULL,
	[ref_type] [varchar](255) NULL,
	[document_no] [varchar](255) NULL,
	[exporter_id] [varchar](255) NULL,
	[importer_id] [varchar](255) NULL,
	[producer_id] [varchar](255) NULL,
	[signature_id] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[is_deleted] [int] NULL,
	[consignee] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[modified_by] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[title] [varchar](255) NULL,
	[contact_info] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN_ENTITIES](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_certificate_of_origin_id] [bigint] NOT NULL,
	[entity_type_id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[address_line_1] [varchar](255) NULL,
	[address_line_2] [varchar](255) NULL,
	[address_line_3] [varchar](255) NULL,
	[address_line_4] [varchar](255) NULL,
	[address_line_5] [varchar](255) NULL,
	[address_line_6] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN_PRODUCTS](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_certificate_of_origin_id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[harmonize_code] [varchar](255) NULL,
	[producer] [varchar](255) NULL,
	[preference_criterion] [varchar](255) NULL,
	[regional_value_content] [varchar](255) NULL,
	[country_of_origin] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CHINA_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NOT NULL,
	[elite_ref_no] [varchar](50) NOT NULL,
	[rep_cover_note] [varchar](100) NULL,
	[insurer] [varchar](200) NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](500) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](1000) NULL,
	[claims_at] [varchar](100) NULL,
	[payable_to] [varchar](100) NULL,
	[ins_date] [datetime] NULL,
	[Survey_agent] [varchar](20) NULL,
	[currency] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CHINA_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) NOT NULL,
	[ship_ref] [varchar](50) NULL,
	[create_dt] [datetime] NULL,
	[sign_party] [varchar](80) NULL,
	[declare_clause] [varchar](1000) NULL,
	[title] [varchar](200) NULL,
	[header_ind] [varchar](20) NULL,
	[lc_no] [varchar](2000) NULL,
	[contract_no] [varchar](50) NULL,
	[vessel_voyage] [varchar](80) NULL,
	[po_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[req_clause] [varchar](500) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[emcc_letterhead] [varchar](2) NULL,
	[wood_text] [varchar](2) NULL,
	[signagent] [varchar](1) NULL,
 CONSTRAINT [PK_DOC_CHINA_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CO_GENERAL_ENTRY_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[header_option_ind] [varchar](20) NULL,
	[title] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[elite_refno] [varchar](80) NULL,
	[invoice_no] [varchar](50) NULL,
	[shipper_ref] [varchar](50) NULL,
	[add_ref_no] [varchar](2) NULL,
	[shipper_ref1] [varchar](50) NULL,
	[shipper_ref2] [varchar](50) NULL,
	[shipper_ref3] [varchar](50) NULL,
	[other_ref_no] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[eta] [datetime] NULL,
	[vessel] [varchar](50) NULL,
	[voyer] [varchar](50) NULL,
	[pol] [varchar](50) NULL,
	[pod] [varchar](50) NULL,
	[print_consignee] [varchar](2) NULL,
	[print_notify] [varchar](2) NULL,
	[print_markings] [varchar](2) NULL,
	[country_origin] [varchar](50) NULL,
	[remarks1] [varchar](1000) NULL,
	[remarks2] [varchar](100) NULL,
	[remarks3] [varchar](100) NULL,
	[remarks4] [varchar](100) NULL,
	[remarks5] [varchar](100) NULL,
	[remarks6] [varchar](100) NULL,
	[remarks7] [varchar](100) NULL,
	[remarks8] [varchar](100) NULL,
	[remarks9] [varchar](100) NULL,
	[remarks10] [varchar](100) NULL,
	[print_sign] [varchar](2) NULL,
	[print_comp_stamp] [varchar](2) NULL,
	[po_no] [varchar](50) NULL,
	[bl_no] [varchar](30) NULL,
	[print_goods_des_ind] [varchar](2) NULL,
	[print_container_ind] [varchar](2) NULL,
	[print_seal_ind] [varchar](2) NULL,
	[print_tot_cont_pkgs_no_ind] [varchar](2) NULL,
	[print_tot_cont_gross_wt_ind] [varchar](2) NULL,
	[print_tot_cont_net_wt_ind] [varchar](2) NULL,
	[print_tot_cont_measurement_ind] [varchar](2) NULL,
	[print_invoice_ind] [varchar](2) NULL,
	[port_del_name] [varchar](50) NULL,
	[port_rec_name] [varchar](50) NULL,
	[cust_ref_no] [varchar](50) NULL,
	[print_logo_ind] [varchar](2) NULL,
	[print_address_ind] [varchar](2) NULL,
	[print_chamber_ind] [varchar](2) NULL,
	[sign_party] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[marks_ind] [varchar](2) NULL,
	[hide_header] [varchar](2) NULL,
	[print_shipper_ind] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[print_chamber_clause] [varchar](2) NULL,
	[print_chamber_words] [varchar](2) NULL,
	[signagent] [varchar](1) NULL,
	[shipper_add_status] [varchar](1) NULL,
	[print_hbl_n] [varchar](2) NULL,
	[print_com_doc_st] [varchar](1) NULL,
	[print_to_whom_concern] [varchar](1) NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[shipped_status_flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COA_ATTACHMENT](
	[doc_head_no] [varchar](30) NOT NULL,
	[file_nm] [varchar](200) NULL,
	[act_file_nm] [varchar](200) NULL,
 CONSTRAINT [PK_DOC_COA_ATTACHMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COLLECTION_ORDER](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[left_add1] [varchar](600) NULL,
	[left_add2] [varchar](50) NULL,
	[left_add3] [varchar](50) NULL,
	[left_add4] [varchar](50) NULL,
	[left_add5] [varchar](50) NULL,
	[drawee_add1] [varchar](80) NULL,
	[drawee_add2] [varchar](80) NULL,
	[drawee_add3] [varchar](80) NULL,
	[drawee_add4] [varchar](80) NULL,
	[drawee_add5] [varchar](80) NULL,
	[drawee_add6] [varchar](80) NULL,
	[drawer_add1] [varchar](80) NULL,
	[drawer_add2] [varchar](80) NULL,
	[drawer_add3] [varchar](80) NULL,
	[drawer_add4] [varchar](80) NULL,
	[drawer_add5] [varchar](80) NULL,
	[drawer_add6] [varchar](80) NULL,
	[amount] [varchar](50) NULL,
	[inst1] [varchar](2) NULL,
	[inst2] [varchar](2) NULL,
	[inst3] [varchar](2) NULL,
	[inst4] [varchar](2) NULL,
	[inst5] [varchar](2) NULL,
	[inst6] [varchar](2) NULL,
	[inst7] [varchar](2) NULL,
	[inst8] [varchar](2) NULL,
	[inst9] [varchar](2) NULL,
	[inst10] [varchar](2) NULL,
	[inst11] [varchar](2) NULL,
	[inst12] [varchar](2) NULL,
	[inst13] [varchar](2) NULL,
	[inst14] [varchar](2) NULL,
	[inst15] [varchar](2) NULL,
	[inst16] [varchar](2) NULL,
	[inst17] [varchar](2) NULL,
	[create_dt] [datetime] NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[elite_ref] [varchar](50) NULL,
	[payment_terms] [varchar](500) NULL,
	[foot_shipper] [varchar](80) NULL,
	[foot_sig_ind] [varchar](2) NULL,
 CONSTRAINT [PK_DOC_COLLECTION_ORDER] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COLLECTION_ORDER_CLAUSES](
	[line_no] [int] NOT NULL,
	[col_desc] [varchar](500) NULL,
 CONSTRAINT [PK_DOC_COLLECTION_ORDER_CLAUSES] PRIMARY KEY CLUSTERED 
(
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COLORDER_CLAUSE_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line] [int] NOT NULL,
	[col_desc] [varchar](600) NULL,
	[check_ind] [varchar](2) NULL,
 CONSTRAINT [PK_DOC_COLORDER_CLAUSE_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CONT_DETAILS](
	[DOC_HEAD_NO] [varchar](30) NOT NULL,
	[LINE_NO] [numeric](18, 0) NOT NULL,
	[CONT_NUMBER] [varchar](50) NULL,
	[CONT_TYPE] [varchar](50) NULL,
	[CONT_SIZE] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_CONT_DETAILS] PRIMARY KEY CLUSTERED 
(
	[DOC_HEAD_NO] ASC,
	[LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COUNT](
	[doc_head_no] [varchar](30) NULL,
	[doc_send_count] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COURIER_MAST](
	[courier_id] [varchar](15) NOT NULL,
	[courier_name] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[courier_code] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_COURIER_MAST] PRIMARY KEY NONCLUSTERED 
(
	[courier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CUST_MAP_DET](
	[job_no] [varchar](30) NOT NULL,
	[job_type] [varchar](20) NOT NULL,
	[edoc_set] [varchar](50) NULL,
	[line_no] [varchar](20) NULL,
	[doc_id] [varchar](20) NOT NULL,
	[doc_name] [varchar](100) NULL,
	[link] [varchar](200) NULL,
 CONSTRAINT [pk_doc_cust_map_det] PRIMARY KEY CLUSTERED 
(
	[job_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_DOCUMENTARY_COLLECTION](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[left_add1] [varchar](50) NULL,
	[left_add2] [varchar](50) NULL,
	[left_add3] [varchar](50) NULL,
	[left_add4] [varchar](50) NULL,
	[left_add5] [varchar](50) NULL,
	[right_add1] [varchar](50) NULL,
	[right_add2] [varchar](50) NULL,
	[right_add3] [varchar](50) NULL,
	[right_add4] [varchar](50) NULL,
	[right_add5] [varchar](50) NULL,
	[head_remarks] [varchar](300) NULL,
	[collecting_bank1] [varchar](80) NULL,
	[collecting_bank2] [varchar](80) NULL,
	[collecting_bank3] [varchar](80) NULL,
	[collecting_bank4] [varchar](80) NULL,
	[drawee_add1] [varchar](80) NULL,
	[drawee_add2] [varchar](80) NULL,
	[drawee_add3] [varchar](80) NULL,
	[drawee_add4] [varchar](80) NULL,
	[drawee_add5] [varchar](80) NULL,
	[drawee_add6] [varchar](80) NULL,
	[drawer_add1] [varchar](80) NULL,
	[drawer_add2] [varchar](80) NULL,
	[drawer_add3] [varchar](80) NULL,
	[drawer_add4] [varchar](80) NULL,
	[drawer_add5] [varchar](80) NULL,
	[drawer_add6] [varchar](80) NULL,
	[dir_collect_nr] [varchar](50) NULL,
	[tenor] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[drafts] [varchar](10) NULL,
	[bls] [varchar](10) NULL,
	[invoices] [varchar](10) NULL,
	[plist] [varchar](10) NULL,
	[msds] [varchar](10) NULL,
	[eur1] [varchar](10) NULL,
	[atr] [varchar](10) NULL,
	[analyse1] [varchar](10) NULL,
	[analyse2] [varchar](10) NULL,
	[ship_from] [varchar](50) NULL,
	[ship_to] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[inst1] [varchar](2) NULL,
	[inst2] [varchar](2) NULL,
	[inst3] [varchar](2) NULL,
	[inst4] [varchar](2) NULL,
	[inst5] [varchar](2) NULL,
	[inst6] [varchar](2) NULL,
	[inst7] [varchar](2) NULL,
	[inst8] [varchar](2) NULL,
	[inst9] [varchar](2) NULL,
	[remit1] [varchar](2) NULL,
	[remit2] [varchar](2) NULL,
	[remit3] [varchar](2) NULL,
	[remit4] [varchar](2) NULL,
	[remit5] [varchar](2) NULL,
	[special_inst] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[due_date] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[elite_ref] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_DOCUMENTARY_COLLECTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_DOCUMENTARY_CREDIT](
	[doc_head_no] [varchar](30) NOT NULL,
	[credit_no] [varchar](80) NULL,
	[issued_by] [varchar](80) NULL,
	[ind1] [varchar](2) NULL,
	[ind2] [varchar](2) NULL,
	[ind3] [varchar](2) NULL,
	[ind4] [varchar](2) NULL,
	[ind5] [varchar](2) NULL,
	[ind6] [varchar](2) NULL,
	[ind7] [varchar](2) NULL,
	[ind8] [varchar](2) NULL,
	[contact] [varchar](50) NULL,
	[tel] [varchar](30) NULL,
	[remarks] [varchar](80) NULL,
	[ref_no] [varchar](50) NULL,
	[amt] [varchar](30) NULL,
	[tenor] [varchar](80) NULL,
	[mail_ind1] [varchar](2) NULL,
	[mail_ind2] [varchar](2) NULL,
	[mail_ind3] [varchar](2) NULL,
	[no_doc1] [varchar](10) NULL,
	[no_doc2] [varchar](10) NULL,
	[no_doc3] [varchar](10) NULL,
	[no_doc4] [varchar](10) NULL,
	[no_doc5] [varchar](10) NULL,
	[no_doc6] [varchar](10) NULL,
	[no_doc7] [varchar](10) NULL,
	[no_doc8] [varchar](10) NULL,
	[no_doc9] [varchar](10) NULL,
	[no_doc10] [varchar](10) NULL,
	[no_doc11] [varchar](10) NULL,
	[our_acno] [varchar](50) NULL,
	[currency] [varchar](5) NULL,
	[disposal_tel] [varchar](30) NULL,
	[exg_rate] [varchar](10) NULL,
	[acu_acno] [varchar](50) NULL,
	[currency1] [varchar](5) NULL,
	[utilise] [varchar](50) NULL,
	[loan_ref_no] [varchar](50) NULL,
	[create_dt] [datetime] NULL,
 CONSTRAINT [PK_DOC_DOCUMENTARY_CREDIT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_DRAFT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[tenor] [varchar](150) NULL,
	[payable_to] [varchar](500) NULL,
	[amount] [varchar](50) NULL,
	[amount_words] [varchar](500) NULL,
	[drawn_on] [varchar](500) NULL,
	[drawer_name] [varchar](200) NULL,
	[invoice_no] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[elite_ref] [varchar](50) NULL,
	[currency_id] [varchar](10) NULL,
	[msg1] [varchar](500) NULL,
	[msg2] [varchar](10) NULL,
	[place_drawing] [varchar](50) NULL,
	[draft_n] [varchar](20) NULL,
	[user_id] [varchar](50) NULL,
	[signagent] [varchar](1) NULL,
	[issuing_bank] [varchar](200) NULL,
	[drawee_name] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_EDOC_SET_MAST](
	[doc_set_id] [varchar](20) NOT NULL,
	[doc_set_desc] [varchar](80) NULL,
	[userid] [varchar](20) NULL,
	[dept_id] [varchar](20) NULL,
	[create_dt] [datetime] NULL,
 CONSTRAINT [PK_DOC_EDOC_SET_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_EXP_IMP_CHARGES](
	[doc_head_no] [varchar](30) NOT NULL,
	[report_title] [varchar](200) NULL,
	[ref_no] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_EXP_IMP_CHARGES] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_EXPORT_LOT](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[LOT_N] [varchar](20) NOT NULL,
	[BATCH_N] [varchar](20) NOT NULL,
	[DOC_HEAD_NO] [varchar](30) NULL,
 CONSTRAINT [PK_DOC_EXPORT_LOT] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC,
	[LOT_N] ASC,
	[BATCH_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FCL_CONTAINER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [numeric](18, 0) NOT NULL,
	[cont_n] [varchar](20) NULL,
	[seal_n] [varchar](100) NULL,
	[tot_wt] [numeric](11, 3) NULL,
	[tot_net_wt] [numeric](11, 3) NULL,
	[tot_packages] [numeric](18, 0) NULL,
	[tot_pack_type] [varchar](20) NULL,
	[wt_uom] [varchar](10) NULL,
	[caption] [varchar](80) NULL,
	[lot_n] [varchar](50) NULL,
	[cont_type_id] [varchar](50) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOC_FCL_CONTAINER_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FCL_CONTAINER_DET_2018JAN8](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [numeric](18, 0) NOT NULL,
	[cont_n] [varchar](20) NULL,
	[seal_n] [varchar](20) NULL,
	[tot_wt] [numeric](11, 3) NULL,
	[tot_net_wt] [numeric](11, 3) NULL,
	[tot_packages] [numeric](18, 0) NULL,
	[tot_pack_type] [varchar](20) NULL,
	[wt_uom] [varchar](10) NULL,
	[caption] [varchar](80) NULL,
	[lot_n] [varchar](50) NULL,
	[cont_type_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FIRST_COMMENT](
	[doc_head_no] [varchar](30) NOT NULL,
	[first_comment] [varchar](2000) NULL,
 CONSTRAINT [PK_DOC_FIRST_COMMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FORM3_DET](
	[doc_head_no] [varchar](30) NULL,
	[title] [varchar](200) NULL,
	[whereas_add1] [varchar](70) NULL,
	[whereas_add2] [varchar](70) NULL,
	[whereas_add3] [varchar](70) NULL,
	[whereas_add4] [varchar](70) NULL,
	[whereas_add5] [varchar](70) NULL,
	[whereas_add6] [varchar](70) NULL,
	[shipper1] [varchar](80) NULL,
	[product_desc] [varchar](800) NULL,
	[batch_no] [varchar](50) NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[shipper2] [varchar](100) NULL,
	[lc_no] [varchar](100) NULL,
	[lc_det] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FORM7_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[product_desc] [varchar](800) NULL,
	[batch_no] [varchar](50) NULL,
	[shipper1] [varchar](70) NULL,
	[shipper2] [varchar](70) NULL,
	[shipper3] [varchar](70) NULL,
	[shipper4] [varchar](70) NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL,
	[lc_no] [varchar](100) NULL,
	[lc_desc] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[place] [varchar](50) NULL,
	[signature_party] [varchar](200) NULL,
	[print_address_logo] [varchar](20) NULL,
	[print_footer_left] [varchar](2) NULL,
 CONSTRAINT [PK_DOC_FORM7_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_FORMD_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_add1] [varchar](70) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[dep_dt] [datetime] NULL,
	[vessel] [varchar](30) NULL,
	[voyer] [varchar](30) NULL,
	[pod] [varchar](50) NULL,
	[goods_produced] [varchar](50) NULL,
	[goods_exported] [varchar](50) NULL,
	[hs_code] [varchar](30) NULL,
 CONSTRAINT [PK_DOC_FORMD_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_GREAT_AMERICAN_POLICY](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[ship_ref] [varchar](50) NULL,
	[ins_val] [varchar](50) NULL,
	[Ins_val_words] [varchar](500) NULL,
	[place_issued] [varchar](80) NULL,
	[ship_date] [datetime] NULL,
	[insurer] [varchar](120) NULL,
	[vessel_voyage] [varchar](80) NULL,
	[place_of_receipt] [varchar](80) NULL,
	[port_of_loading] [varchar](80) NULL,
	[port_discharge] [varchar](80) NULL,
	[final_dest] [varchar](80) NULL,
	[spl_inst] [varchar](500) NULL,
	[cur_id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_GROUP_DET](
	[doc_group_no] [varchar](20) NOT NULL,
	[doc_group_name] [varchar](100) NULL,
	[doc_group_link] [varchar](50) NULL,
	[doc_short_name] [varchar](5) NULL,
	[doc_template] [varchar](200) NULL,
 CONSTRAINT [PK_DOC_GROUP_DET] PRIMARY KEY CLUSTERED 
(
	[doc_group_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HEAD_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_hbl_no] [varchar](30) NULL,
	[scc_ref_type] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_HEAD_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HEAD_MAST](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_id] [varchar](20) NULL,
	[doc_type] [varchar](100) NULL,
	[customer_name] [varchar](100) NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[create_date] [datetime] NULL,
	[last_modifyed_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[doc_count] [int] NULL,
 CONSTRAINT [PK_DOC_HEAD_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HISTORY](
	[doc_seq_no] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[job_no] [varchar](50) NULL,
	[job_type] [varchar](50) NULL,
	[edoc_set] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HOME_ASSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[amount] [varchar](50) NULL,
	[insurance_no] [varchar](20) NULL,
	[place] [varchar](80) NULL,
	[ins_date] [datetime] NULL,
	[comp_name] [varchar](200) NULL,
	[policy_no] [varchar](20) NULL,
	[amount_words] [varchar](500) NULL,
	[inv_ref_remarks] [varchar](100) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[bl_date] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL,
	[payable_to] [varchar](50) NULL,
	[markings1] [varchar](80) NULL,
	[markings2] [varchar](80) NULL,
	[markings3] [varchar](80) NULL,
	[markings4] [varchar](80) NULL,
	[markings5] [varchar](80) NULL,
	[remarks] [varchar](300) NULL,
 CONSTRAINT [PK_DOC_HOME_ASSURANCE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HSBC_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_ref_no] [varchar](50) NOT NULL,
	[elite_ref_no] [varchar](50) NOT NULL,
	[policy_no] [varchar](20) NULL,
	[comp_name] [varchar](200) NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](100) NULL,
	[tm_vessel] [varchar](20) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[port_load] [varchar](50) NULL,
	[port_disc] [varchar](50) NULL,
	[ship_date] [datetime] NULL,
	[Ins_clause1] [varchar](2) NULL,
	[special_cond] [varchar](1000) NULL,
	[claims_at] [varchar](100) NULL,
	[payable_to] [varchar](100) NULL,
	[ins_date] [datetime] NULL,
	[Ins_clause2] [varchar](2) NULL,
	[Ins_clause3] [varchar](2) NULL,
	[Ins_clause4] [varchar](2) NULL,
	[Ins_clause5] [varchar](2) NULL,
	[Ins_clause6] [varchar](2) NULL,
	[Ins_clause7] [varchar](2) NULL,
	[Ins_clause8] [varchar](2) NULL,
	[Ins_clause9] [varchar](2) NULL,
	[Ins_clause10] [varchar](2) NULL,
	[Ins_clause11] [varchar](2) NULL,
	[Ins_clause12] [varchar](2) NULL,
	[Survey_agent] [varchar](20) NULL,
	[tm_aircraft] [varchar](20) NULL,
	[tm_parcel] [varchar](20) NULL,
	[tm_land] [varchar](20) NULL,
	[tm_courier] [varchar](20) NULL,
	[pay_agent] [varchar](20) NULL,
	[currency] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_ins_deliver_to](
	[doc_head_no] [varchar](100) NOT NULL,
	[line_no] [int] NOT NULL,
	[attention] [varchar](100) NULL,
	[company] [varchar](50) NULL,
	[address] [varchar](300) NULL,
	[remarks] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[cust_name] [varchar](500) NULL,
	[special_instruction] [varchar](100) NULL,
 CONSTRAINT [PK_doc_trans_deliver_to] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_INV_CHARGES_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[sub_tot] [decimal](18, 2) NULL,
	[sub_tot_desc] [varchar](500) NULL,
	[gst_per] [int] NULL,
	[gst_amt] [decimal](18, 2) NULL,
	[gst_desc] [varchar](500) NULL,
	[total] [decimal](18, 2) NULL,
	[price_term] [varchar](70) NULL,
	[price_term_country] [varchar](100) NULL,
	[amt_words] [varchar](500) NULL,
	[price_term_port] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_INV_CHARGES_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LAST_COMMENT](
	[doc_head_no] [varchar](30) NOT NULL,
	[last_comment] [varchar](2000) NULL,
	[line_no] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_DOC_LAST_COMMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[lc_det] [varchar](4500) NULL,
 CONSTRAINT [PK_DOC_LC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LETTER_OF_AUTHORISATION](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[top_address1] [varchar](80) NULL,
	[top_address2] [varchar](80) NULL,
	[top_address3] [varchar](80) NULL,
	[top_address4] [varchar](80) NULL,
	[top_address5] [varchar](80) NULL,
	[authorise_name] [varchar](100) NULL,
	[ic_no] [varchar](50) NULL,
	[user_name] [varchar](80) NULL,
	[user_desig] [varchar](80) NULL,
	[create_dt] [datetime] NULL,
	[ref_no] [varchar](80) NULL,
	[certificate_no1] [varchar](50) NULL,
	[certificate_no2] [varchar](50) NULL,
	[certificate_no3] [varchar](50) NULL,
	[certificate_no4] [varchar](50) NULL,
	[certificate_no5] [varchar](50) NULL,
	[hs_code1] [varchar](50) NULL,
	[hs_code2] [varchar](50) NULL,
	[hs_code3] [varchar](50) NULL,
	[hs_code4] [varchar](50) NULL,
	[hs_code5] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_LETTER_OF_AUTHORISATION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LETTEROF_REQUEST](
	[doc_head_no] [varchar](30) NOT NULL,
	[report_title] [varchar](200) NULL,
	[messers] [varchar](100) NULL,
	[attention] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[req_days] [numeric](18, 0) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[bl_no] [varchar](50) NULL,
	[period] [varchar](50) NULL,
	[detention_det] [varchar](500) NULL,
	[comp_name] [varchar](100) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_45] [numeric](10, 0) NULL,
	[iso] [numeric](10, 0) NULL,
	[create_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LOG](
	[SERIAL_N] [numeric](10, 0) NOT NULL,
	[FY] [varchar](4) NULL,
	[DOC_N] [numeric](10, 0) NULL,
	[DOC_TYPE] [varchar](10) NULL,
	[ACTION_ID] [varchar](10) NULL,
	[USER_ID] [varchar](10) NULL,
	[ENTRY_D] [datetime] NULL,
	[ENTRY_T] [varchar](10) NULL,
 CONSTRAINT [PK_DOC_LOG] PRIMARY KEY NONCLUSTERED 
(
	[SERIAL_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_MAST](
	[DOC_ID] [varchar](20) NOT NULL,
	[DOC_NAME] [varchar](100) NOT NULL,
	[PARENT_ID] [varchar](20) NULL,
	[ORDER_ID] [varchar](10) NULL,
	[DOC_DEFAULT_TITLE] [varchar](200) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](20) NULL,
	[DOC_LINK] [varchar](500) NULL,
	[DOC_SHORT_NAME] [varchar](5) NULL,
	[DOC_TEMPLATE] [varchar](200) NULL,
	[DOC_GROUP_NO] [varchar](20) NULL,
	[DOC_FULLSET_PRINT_ORDER] [int] NOT NULL,
 CONSTRAINT [PK_DOC_MAST] PRIMARY KEY CLUSTERED 
(
	[DOC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[indent_no] [varchar](20) NULL,
	[sent_dt] [datetime] NULL,
	[sap_sono] [varchar](20) NULL,
	[po_no] [varchar](50) NULL,
	[pr_no] [varchar](20) NULL,
	[payment_term] [varchar](50) NULL,
	[sold_party_name] [varchar](80) NULL,
	[sold_party_no] [varchar](20) NULL,
	[ship_party_name] [varchar](80) NULL,
	[ship_party_no] [varchar](20) NULL,
	[material_name] [varchar](50) NULL,
	[packing] [varchar](50) NULL,
	[qty] [varchar](30) NULL,
	[selling_price] [varchar](50) NULL,
	[tot_amount] [varchar](50) NULL,
	[bl_dt] [datetime] NULL,
	[bl_no] [varchar](30) NULL,
	[country_from] [varchar](80) NULL,
	[country_to] [varchar](80) NULL,
	[vessel] [varchar](50) NULL,
	[etd_sin] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[export_company] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[header_ind] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACK_DET_SECONDARY](
	[PROD_ID] [varchar](50) NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_QTY] [numeric](11, 3) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[PROD_DEL_ID] [varchar](40) NULL,
	[PROD_PRICE_BEF] [numeric](11, 3) NULL,
	[PROD_PRICE_AFT] [numeric](11, 3) NULL,
	[PROD_EXPORT_N] [numeric](10, 0) NULL,
	[PROD_AMOUNT_BEF] [numeric](18, 0) NULL,
	[PROD_AMOUNT_AFT] [numeric](18, 0) NULL,
	[Status] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACK_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[doc_title] [varchar](200) NULL,
	[doc_creation_dt] [datetime] NULL,
	[po_no] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[eta] [datetime] NULL,
	[precarriage] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[pol] [varchar](50) NULL,
	[pod] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[elite_ref_no] [varchar](80) NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[shipper_ref_ind] [varchar](2) NULL,
	[shipper_adl_ref1] [varchar](50) NULL,
	[shipper_adl_ref2] [varchar](50) NULL,
	[shipper_adl_ref3] [varchar](50) NULL,
	[other_ref_no] [varchar](50) NULL,
	[addres_to_print_ind] [varchar](2) NULL,
	[print_ship_to_ind] [varchar](2) NULL,
	[print_bill_to_ind] [varchar](2) NULL,
	[print_consignee_ind] [varchar](2) NULL,
	[print_notify_ind] [varchar](2) NULL,
	[print_mkgs_ind] [varchar](2) NULL,
	[print_num_of_pkgs_ind] [varchar](2) NULL,
	[print_goods_des_ind] [varchar](2) NULL,
	[print_line_gross_wt_ind] [varchar](2) NULL,
	[print_line_net_wt_ind] [varchar](2) NULL,
	[print_line_measurement_ind] [varchar](2) NULL,
	[print_container_ind] [varchar](2) NULL,
	[print_seal_ind] [varchar](2) NULL,
	[print_tot_cont_pkgs_no_ind] [varchar](2) NULL,
	[print_tot_cont_gross_wt_ind] [varchar](2) NULL,
	[print_tot_cont_net_wt_ind] [varchar](2) NULL,
	[print_tot_cont_measurement_ind] [varchar](2) NULL,
	[print_clauses_ind] [varchar](2) NULL,
	[print_exporter_ind] [varchar](2) NULL,
	[print_signature_ind] [varchar](2) NULL,
	[print_comp_stamp_ind] [varchar](2) NULL,
	[print_invoice_ind] [varchar](2) NULL,
	[cust_ref_no] [varchar](15) NULL,
	[invoice_dt] [datetime] NULL,
	[price_terms] [varchar](250) NULL,
	[price_terms_port] [varchar](25) NULL,
	[product_co] [varchar](50) NULL,
	[remit_to_bank] [varchar](3000) NULL,
	[bank_code] [varchar](50) NULL,
	[port_rec_name] [varchar](50) NULL,
	[port_del_name] [varchar](50) NULL,
	[bl_date] [datetime] NULL,
	[print_precarriage] [varchar](2) NULL,
	[comp_name] [varchar](200) NULL,
	[comp_name_as] [varchar](50) NULL,
	[template_type] [varchar](5) NULL,
	[date_shipped] [datetime] NULL,
	[dest_control_stmt] [varchar](250) NULL,
	[certify_clause] [varchar](200) NULL,
	[carrier_alpha_code] [varchar](50) NULL,
	[nvo_carrier] [varchar](80) NULL,
	[collect_charges] [varchar](200) NULL,
	[dest_control_stmt_ind] [varchar](2) NULL,
	[tot_gross_wt_ind] [varchar](2) NULL,
	[tot_net_wt_ind] [varchar](2) NULL,
	[header_ind] [varchar](20) NULL,
	[user_id] [varchar](50) NULL,
	[print_gst_reg_no] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[pay_due_dt] [datetime] NULL,
	[start_loading] [varchar](100) NULL,
	[end_loading] [varchar](100) NULL,
	[mlo_no] [varchar](50) NULL,
	[contract_no] [varchar](50) NULL,
	[lc_opt] [varchar](50) NULL,
	[cust_code] [varchar](50) NULL,
	[bill_to_party] [varchar](1000) NULL,
	[signagent] [varchar](1) NULL,
	[fob_price] [decimal](18, 2) NULL,
	[docs_description] [varchar](600) NULL,
	[print_to_whom_concern] [varchar](1) NULL,
	[insurance_agent] [varchar](1000) NULL,
	[remarks] [varchar](1000) NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
 CONSTRAINT [PK_DOC_PACK_GENERAL_ENTRY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACK_GENERAL_ENTRY_SECONDARY](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](200) NULL,
	[deal_dt] [datetime] NULL,
	[inco_terms] [varchar](50) NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[consignee_attention] [varchar](50) NULL,
	[shipper_attention] [varchar](50) NULL,
	[order_ref] [varchar](50) NULL,
	[loading_range] [varchar](50) NULL,
	[packing] [varchar](50) NULL,
	[delivery_basis] [varchar](50) NULL,
	[land_port] [varchar](50) NULL,
	[discharge_port] [varchar](50) NULL,
	[payment_terms] [varchar](50) NULL,
	[title_transfer] [varchar](50) NULL,
	[quantity] [varchar](60) NULL,
	[loading_volume] [varchar](100) NULL,
	[terms] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[attention] [varchar](60) NULL,
	[fax_no] [varchar](30) NULL,
	[country_of_origin] [varchar](100) NULL,
	[avg_freight] [varchar](50) NULL,
	[seller] [varchar](90) NULL,
	[buyer] [varchar](90) NULL,
	[consignee_att] [varchar](100) NULL,
	[shipper_att] [varchar](120) NULL,
	[r_vessel] [varchar](50) NULL,
	[load_date_range] [varchar](50) NULL,
	[con_msg] [varchar](5) NULL,
	[prod_spec] [varchar](50) NULL,
	[price_change_dt] [datetime] NULL,
	[price_bef_date] [datetime] NULL,
	[amt_bef_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_DECLARATION](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[header_ind] [varchar](15) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[ind1] [varchar](5) NULL,
	[ind2] [varchar](5) NULL,
	[ind3] [varchar](5) NULL,
	[ind4] [varchar](5) NULL,
	[declaration] [varchar](400) NULL,
	[print_sign] [varchar](2) NULL,
	[create_dt] [datetime] NULL,
	[company_name] [varchar](200) NULL,
	[req_clause] [varchar](500) NULL,
	[note] [varchar](3000) NULL,
	[order_n] [varchar](50) NULL,
	[print_footer_right] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[bl_n] [varchar](50) NULL,
	[user_id] [varchar](20) NULL,
	[wood_treated] [varchar](500) NULL,
	[identification] [varchar](50) NULL,
	[manufacturer] [varchar](50) NULL,
	[supplier] [varchar](50) NULL,
	[booking_n] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[signagent] [varchar](1) NULL,
	[user_title] [varchar](100) NULL,
	[user_tel] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[show2b] [varchar](5) NULL,
	[showNote] [varchar](5) NULL,
	[barkTitle] [varchar](100) NULL,
	[showCont] [varchar](5) NULL,
	[ispm_or_iccp] [varchar](2) NULL,
	[country_origin] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_PACKING_DECLARATION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_DECLARATION_CONT_SHELL](
	[doc_head_no] [varchar](50) NULL,
	[title] [varchar](200) NULL,
	[header_option] [varchar](50) NULL,
	[straw_packing] [varchar](5) NULL,
	[cont_num] [varchar](50) NULL,
	[timber_packing] [varchar](5) NULL,
	[treatment] [varchar](5) NULL,
	[show_note] [varchar](5) NULL,
	[note] [varchar](1000) NULL,
	[cleanliness_declaration] [varchar](1000) NULL,
	[created_date] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[print_comp_logo] [varchar](5) NULL,
	[print_address_logo] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_DECLARATIONAU](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[header_ind] [varchar](15) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[ind1] [varchar](5) NULL,
	[ind2] [varchar](5) NULL,
	[ind3] [varchar](5) NULL,
	[ind4] [varchar](5) NULL,
	[ind5] [varchar](5) NULL,
	[declaration] [varchar](400) NULL,
	[print_sign] [varchar](2) NULL,
	[create_dt] [datetime] NULL,
	[company_name] [varchar](200) NULL,
	[req_clause] [varchar](500) NULL,
	[note] [varchar](3000) NULL,
	[order_n] [varchar](50) NULL,
	[print_footer_right] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[bl_n] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
	[wood_treated] [varchar](500) NULL,
	[identification] [varchar](50) NULL,
	[manufacturer] [varchar](50) NULL,
	[supplier] [varchar](50) NULL,
	[booking_n] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[user_title] [varchar](100) NULL,
	[user_tel] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[show2b] [varchar](5) NULL,
	[showNote] [varchar](5) NULL,
	[barkTitle] [varchar](100) NULL,
	[showCont] [varchar](5) NULL,
	[ispm_or_iccp] [varchar](2) NULL,
	[signagent] [varchar](1) NULL,
	[ind6] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_LIST_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [varchar](10) NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[cont_seq_no] [varchar](10) NULL,
	[cont_no] [varchar](30) NULL,
	[seal_no] [varchar](30) NULL,
	[alt_cont_no] [varchar](20) NULL,
	[alt_seal_no] [varchar](20) NULL,
	[tot_packages] [varchar](40) NULL,
	[pack_type] [varchar](50) NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[tot_m3] [numeric](12, 4) NULL,
	[gross_wt_uom] [varchar](80) NULL,
	[net_wt_uom] [varchar](80) NULL,
	[tot_m3_uom] [varchar](80) NULL,
	[unit_price] [numeric](18, 3) NULL,
	[currency] [varchar](20) NULL,
	[product_desc1] [varchar](50) NULL,
	[mkgs1] [varchar](2) NULL,
	[mkgs2] [varchar](2) NULL,
	[mkgs3] [varchar](2) NULL,
	[mkgs4] [varchar](2) NULL,
	[mkgs5] [varchar](2) NULL,
	[mkgs6] [varchar](2) NULL,
	[mkgs7] [varchar](2) NULL,
	[mkgs8] [varchar](2) NULL,
	[mkgs9] [varchar](2) NULL,
	[mkgs10] [varchar](2) NULL,
	[mkgs11] [varchar](2) NULL,
	[mkgs12] [varchar](2) NULL,
	[mkgs13] [varchar](2) NULL,
	[mkgs14] [varchar](2) NULL,
	[mkgs15] [varchar](2) NULL,
	[prod_desc] [varchar](6000) NULL,
	[line_unit_qty] [numeric](18, 3) NULL,
	[scc_hbl_n] [varchar](50) NULL,
	[chk_ind] [varchar](2) NULL,
	[origin_criterion] [varchar](80) NULL,
	[inv_no] [varchar](30) NULL,
	[inv_dt] [datetime] NULL,
	[product_id] [varchar](20) NULL,
	[mkgs_all] [varchar](800) NULL,
	[unit_price_uom] [varchar](20) NULL,
	[line_tot] [numeric](18, 2) NULL,
	[kg_qty] [numeric](18, 3) NULL,
	[kg_unit_price] [numeric](18, 4) NULL,
	[kg_uom] [varchar](20) NULL,
	[lb_qty] [numeric](18, 3) NULL,
	[lb_unit_price] [numeric](18, 4) NULL,
	[lb_uom] [varchar](20) NULL,
	[check_pack] [varchar](1) NULL,
	[check_gross] [varchar](1) NULL,
	[lt_gross_wt_uom] [varchar](50) NULL,
	[lt_gross_wt] [numeric](9, 1) NULL,
	[lt_net_wt_uom] [varchar](50) NULL,
	[lt_net_wt] [numeric](9, 1) NULL,
	[dr_gross_wt_uom] [varchar](50) NULL,
	[dr_gross_wt] [numeric](9, 1) NULL,
	[dr_net_wt_uom] [varchar](50) NULL,
	[dr_net_wt] [numeric](9, 1) NULL,
	[country_origin] [varchar](100) NULL,
	[code] [varchar](100) NULL,
 CONSTRAINT [PK_DOC_PACKING_LIST_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PACKING_LIST_DET_ALBEMARLE](
	[doc_head_no] [varchar](30) NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[scc_hbl_n] [varchar](50) NULL,
	[LC_NO] [varchar](70) NULL,
	[gross_wt] [varchar](11) NULL,
	[gross_wt_uom] [varchar](80) NULL,
	[prod_desc] [varchar](6000) NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[PORT_DESC_ID] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[country_origin] [varchar](100) NULL,
	[LOT_N] [varchar](200) NULL,
	[Created_by] [varchar](30) NULL,
	[create_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PCOO_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_add1] [varchar](70) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[dep_dt] [datetime] NULL,
	[vessel] [varchar](30) NULL,
	[voyer] [varchar](30) NULL,
	[pod] [varchar](50) NULL,
	[goods_produced] [varchar](50) NULL,
	[goods_exported] [varchar](50) NULL,
	[hs_code] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PM4_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_add1] [varchar](70) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[vessel] [varchar](30) NULL,
	[voyer] [varchar](30) NULL,
	[pol] [varchar](50) NULL,
	[pod] [varchar](50) NULL,
	[portdelivery] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[cont_operator] [varchar](80) NULL,
	[loc_board_ship] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[container_nos] [varchar](80) NULL,
	[marks_no] [varchar](120) NULL,
	[kind_of_packages] [varchar](50) NULL,
	[gross_wt] [varchar](20) NULL,
	[net_wt] [varchar](20) NULL,
	[goods_delivered_as] [varchar](80) NULL,
	[cont_type] [varchar](10) NULL,
	[cont_status] [varchar](10) NULL,
 CONSTRAINT [PK_DOC_PM4_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PRODUCT_DESC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [varchar](10) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[prod_name] [varchar](50) NULL,
	[prod_desc] [varchar](300) NULL,
 CONSTRAINT [PK_DOC_PRODUCT_DESC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PRODUCT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [varchar](10) NOT NULL,
	[product_desc] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_PRODUCT_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_RIDER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[vessel] [varchar](50) NULL,
	[voyer] [varchar](50) NULL,
	[pol] [varchar](80) NULL,
	[pod] [varchar](80) NULL,
	[member_of] [varchar](50) NULL,
	[since] [varchar](50) NULL,
	[reg_no] [varchar](30) NULL,
	[tdb_cr_no] [varchar](30) NULL,
	[company_name] [varchar](100) NULL,
	[user_name] [varchar](80) NULL,
	[user_design] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_RIDER_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_SEND_PDF](
	[doc_head_no] [varchar](30) NULL,
	[doc_id] [varchar](30) NULL,
	[last_modify] [datetime] NULL,
	[chk_ind] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_SEND_US_QUEUE](
	[doc_queue_no] [numeric](18, 0) NOT NULL,
	[doc_head_no] [varchar](30) NULL,
	[doc_short_name] [varchar](5) NULL,
	[doc_file_name] [varchar](200) NULL,
	[create_ind] [varchar](2) NULL,
	[create_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[cust_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_DOC_SEND_US_QUEUE] PRIMARY KEY CLUSTERED 
(
	[doc_queue_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_SICC_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) NOT NULL,
	[departure_dt] [datetime] NULL,
	[vessel] [varchar](60) NULL,
	[pod] [varchar](50) NULL,
	[finel_dest] [varchar](50) NULL,
	[country_origin] [varchar](70) NULL,
	[strike_field] [varchar](50) NULL,
	[exp_sign] [varchar](2) NULL,
	[exp_company_stamp] [varchar](2) NULL,
	[exp_name] [varchar](50) NULL,
	[exp_desig] [varchar](80) NULL,
	[exp_date] [datetime] NULL,
	[print_markings] [varchar](2) NULL,
	[print_tot_net_wt] [varchar](2) NULL,
	[print_tot_gross_wt] [varchar](2) NULL,
	[remarks1] [varchar](100) NULL,
	[remarks2] [varchar](100) NULL,
	[remarks3] [varchar](100) NULL,
	[remarks4] [varchar](100) NULL,
	[remarks5] [varchar](100) NULL,
	[remarks6] [varchar](100) NULL,
	[remarks7] [varchar](100) NULL,
	[remarks8] [varchar](100) NULL,
	[remarks9] [varchar](100) NULL,
	[remarks10] [varchar](100) NULL,
	[body_remarks] [varchar](1000) NULL,
	[shipper_ref] [varchar](50) NULL,
	[po_no] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_SICC_GENERAL_ENTRY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TAWUNIYA_INSURANCE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[dated_on] [datetime] NULL,
	[amount] [numeric](11, 3) NULL,
	[amount_words] [varchar](600) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[voyage_from] [varchar](200) NULL,
	[voyage_to] [varchar](200) NULL,
	[cover_text] [varchar](550) NULL,
	[claim_set_agent] [varchar](300) NULL,
	[policy_n] [varchar](50) NULL,
	[lc_no] [varchar](70) NULL,
	[num_of_packages] [varchar](50) NULL,
	[currency_id] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[signagent] [varchar](1) NULL,
	[prod_desc] [varchar](300) NULL,
	[cont_det] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TAXINVOICE_PACK_DET](
	[PROD_CODE] [varchar](50) NULL,
	[PROD_NAME] [varchar](50) NULL,
	[ORDER_NO] [varchar](50) NULL,
	[PROD_QTY] [numeric](11, 3) NULL,
	[PROD_UNIT] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](11, 3) NULL,
	[CUR_ID] [varchar](10) NULL,
	[JOB_NO] [numeric](11, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TAXINVOICE2_PACK_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](200) NULL,
	[bill_lading_dt] [datetime] NULL,
	[vessel] [varchar](50) NULL,
	[invoice_no] [varchar](100) NULL,
	[ref_doc_no] [varchar](50) NULL,
	[cust_account_no] [varchar](50) NULL,
	[inco_terms] [varchar](50) NULL,
	[mode_of_transport] [varchar](50) NULL,
	[invoice_dt] [datetime] NULL,
	[remit_to_bank] [varchar](600) NULL,
	[pay_due_dt] [datetime] NULL,
	[prod_del_no] [varchar](30) NULL,
	[pl_prod_taken] [varchar](100) NULL,
	[prod_freight] [numeric](11, 3) NULL,
	[bl_to_acc] [varchar](30) NULL,
	[sl_to_acc] [varchar](30) NULL,
	[cfr_fob] [varchar](30) NULL,
	[print_freight] [varchar](10) NULL,
	[discount_clause] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_trans_despatch](
	[doc_head_no] [varchar](100) NOT NULL,
	[remarks] [varchar](500) NULL,
	[trans_head_no] [varchar](50) NULL,
	[despatch] [varchar](4) NULL,
	[line_no] [int] NULL,
	[remarks2] [varchar](100) NULL,
	[shipper_name] [varchar](100) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[BL_NUMBER] [varchar](20) NULL,
	[ORD_NUMBER] [varchar](20) NULL,
	[special_instruction] [varchar](50) NULL,
 CONSTRAINT [PK_doc_trans_despatch] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_trans_despatch_log](
	[doc_head_no] [varchar](100) NOT NULL,
	[trans_letterfile_name] [varchar](100) NULL,
	[trans_dispatchfile_name] [varchar](100) NULL,
	[status] [varchar](2) NULL,
	[merge_transletterfile_name] [varchar](100) NULL,
 CONSTRAINT [PK_doc_trans_despatch_log] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_DOCUMENTS_LIST](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_id] [char](15) NULL,
	[doc_name] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_TRANS_DOCUMENTS_LIST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_LETTER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[header_option] [varchar](2) NULL,
	[title] [varchar](200) NULL,
	[creation_dt] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[prepared_by] [varchar](50) NULL,
	[elite_ref] [varchar](80) NULL,
	[bl_no] [varchar](50) NULL,
	[eta] [datetime] NULL,
	[remarks1] [varchar](200) NULL,
	[remarks2] [varchar](200) NULL,
	[po_no] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[cust_ref_no] [varchar](50) NULL,
	[payment_inst] [varchar](500) NULL,
	[special_inst] [varchar](500) NULL,
	[comp_name] [varchar](200) NULL,
	[user_id] [varchar](50) NULL,
	[user_name] [varchar](80) NULL,
	[user_tel] [varchar](50) NULL,
	[shipper_ref1] [varchar](50) NULL,
	[comp_desc] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_PARTY_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[cust_name] [varchar](500) NULL,
	[add1] [varchar](50) NULL,
	[add2] [varchar](50) NULL,
	[add3] [varchar](50) NULL,
	[add4] [varchar](50) NULL,
	[add5] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[remarks1] [varchar](500) NULL,
	[courier_code] [varchar](20) NULL,
	[destination] [varchar](50) NULL,
	[awb_date] [datetime] NULL,
	[party_email] [varchar](500) NULL,
	[dhl_receivers_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_DOC_TRANS_PARTY_DET] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANSACTION](
	[doc_head_no] [varchar](30) NOT NULL,
	[load_d] [datetime] NULL,
	[cut_of_d] [datetime] NULL,
	[confirm_sail_d] [datetime] NULL,
	[doc_receive_d] [datetime] NULL,
	[bl_to_d] [datetime] NULL,
	[doc_to_bank_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[consul_to_d] [datetime] NULL,
	[inspector_to_d] [datetime] NULL,
	[us_bank_d] [datetime] NULL,
	[foreign_d] [datetime] NULL,
	[release_d] [datetime] NULL,
	[confirm_load] [varchar](2) NULL,
	[sail_d] [datetime] NULL,
	[confirm_sailing] [varchar](2) NULL,
	[cust_display_d] [datetime] NULL,
	[bl_from_d] [datetime] NULL,
	[oseas_bank_d] [datetime] NULL,
	[consul_from_d] [datetime] NULL,
	[inspector_from_d] [datetime] NULL,
	[docs_bank_d] [datetime] NULL,
	[estimated_freight] [numeric](11, 3) NULL,
	[insurance_val] [varchar](20) NULL,
	[goods_pick_d] [datetime] NULL,
 CONSTRAINT [PK_DOC_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANSDOC_COUNT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) NOT NULL,
	[doc_name] [varchar](200) NULL,
	[no_of_copies] [varchar](5) NULL,
	[duplicate_copies] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_TRANSDOC_COUNT_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANSLETTER_COUNT](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_id] [varchar](20) NOT NULL,
	[doc_name] [varchar](200) NULL,
	[copy1] [varchar](10) NULL,
	[duplicate1] [varchar](10) NULL,
	[copy2] [varchar](10) NULL,
	[duplicate2] [varchar](10) NULL,
	[copy3] [varchar](10) NULL,
	[duplicate3] [varchar](10) NULL,
	[copy4] [varchar](10) NULL,
	[duplicate4] [varchar](10) NULL,
	[copy5] [varchar](10) NULL,
	[duplicate5] [varchar](10) NULL,
	[copy6] [varchar](10) NULL,
	[duplicate6] [varchar](10) NULL,
	[copy7] [varchar](10) NULL,
	[duplicate7] [varchar](10) NULL,
	[copy8] [varchar](10) NULL,
	[duplicate8] [varchar](10) NULL,
	[seqno] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_travelers_ins](
	[doc_head_no] [varchar](30) NOT NULL,
	[policy_n] [varchar](20) NULL,
	[policy_date] [datetime] NULL,
	[shipper_ref_n] [varchar](40) NULL,
	[currency_id] [varchar](5) NULL,
	[port_del_name] [varchar](40) NULL,
	[port_of_load] [varchar](40) NULL,
	[port_of_discharge] [varchar](40) NULL,
	[pier_or_airport] [varchar](40) NULL,
	[sum_insured] [numeric](11, 3) NULL,
	[sum_insured_word] [varchar](500) NULL,
	[vessel_voyage] [varchar](60) NULL,
	[user_id] [varchar](50) NULL,
	[country_origin] [varchar](50) NULL,
	[export_ins] [varchar](70) NULL,
	[fwd_agent_ref] [varchar](100) NULL,
	[transshippent] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[cust_ord_no] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[do_n] [varchar](50) NULL,
	[i_track_n] [varchar](50) NULL,
	[cust_id] [varchar](10) NOT NULL,
	[add_ref_2] [varchar](40) NULL,
	[add_ref_3] [varchar](40) NULL,
	[add_ref_4] [varchar](40) NULL,
	[add_ref_5] [varchar](40) NULL,
	[add_ref_6] [varchar](40) NULL,
	[booking_n] [varchar](50) NULL,
	[trucker_id] [varchar](10) NULL,
	[vessel] [nvarchar](50) NULL,
	[voyage] [varchar](20) NULL,
	[truck_type] [varchar](50) NULL,
	[chasis_n] [varchar](50) NULL,
	[truck_tare_wt] [varchar](50) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_load_name] [varchar](40) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](40) NULL,
	[place_rec_id] [varchar](10) NULL,
	[place_rec_name] [varchar](40) NULL,
	[place_del_id] [varchar](10) NULL,
	[place_del_name] [varchar](50) NULL,
	[eta] [datetime] NULL,
	[ata] [datetime] NULL,
	[etd] [datetime] NULL,
	[atd] [datetime] NULL,
	[cut_off_date] [datetime] NULL,
	[move_type] [varchar](10) NULL,
	[mot] [varchar](10) NULL,
	[job_type] [varchar](2) NULL,
	[s_shipper1] [nvarchar](70) NULL,
	[s_shipper2] [nvarchar](70) NULL,
	[s_shipper3] [nvarchar](70) NULL,
	[s_shipper4] [nvarchar](70) NULL,
	[s_shipper5] [nvarchar](70) NULL,
	[s_shipper6] [nvarchar](70) NULL,
	[s_shipper_contact_name] [nvarchar](50) NULL,
	[s_shipper_contact_number] [varchar](50) NULL,
	[s_shipper_instruction] [nvarchar](2500) NULL,
	[s_con1] [nvarchar](70) NULL,
	[s_con2] [nvarchar](70) NULL,
	[s_con3] [nvarchar](70) NULL,
	[s_con4] [nvarchar](70) NULL,
	[s_con5] [nvarchar](70) NULL,
	[s_con6] [nvarchar](70) NULL,
	[s_con_contact_name] [nvarchar](50) NULL,
	[s_con_contact_number] [varchar](50) NULL,
	[s_con_instruction] [nvarchar](2500) NULL,
	[s_np1] [varchar](70) NULL,
	[s_np2] [varchar](70) NULL,
	[s_np3] [varchar](70) NULL,
	[s_np4] [varchar](70) NULL,
	[s_np5] [varchar](70) NULL,
	[s_np6] [varchar](70) NULL,
	[s_np_contact_name] [nvarchar](50) NULL,
	[s_np_contact_number] [varchar](50) NULL,
	[consignee_n] [varchar](40) NULL,
	[est_door_del_dt] [datetime] NULL,
	[plant_load_dt] [datetime] NULL,
	[payment_terms] [varchar](250) NULL,
	[inco_terms] [varchar](40) NULL,
	[free_det_time_period] [varchar](100) NULL,
	[origin_id] [varchar](10) NULL,
	[origin_desc] [varchar](40) NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[net_wt_uom] [varchar](10) NULL,
	[gross_wt_uom] [varchar](10) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) NULL,
	[tot_m3] [decimal](12, 4) NULL,
	[remarks] [nvarchar](500) NULL,
	[gd_des1] [nvarchar](1000) NULL,
	[gd_des2] [nvarchar](1000) NULL,
	[country_of_ult_dest] [varchar](50) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[consignee_id] [varchar](10) NULL,
	[notify_id] [varchar](10) NULL,
	[sc_job_n] [decimal](18, 0) NULL,
	[freight_term_id] [varchar](10) NULL,
	[ocean_fr_cost] [varchar](50) NULL,
	[shipper_id] [varchar](10) NULL,
	[s_con_other_name] [nvarchar](70) NULL,
	[order_receive_dt] [datetime] NULL,
	[cancel_ind] [varchar](2) NULL,
	[s_shipper_province] [varchar](50) NULL,
	[s_con_province] [varchar](50) NULL,
	[s_shipper_postal_c] [varchar](50) NULL,
	[s_con_postal_c] [varchar](50) NULL,
	[freight_cost] [numeric](11, 3) NULL,
	[freight_currency] [varchar](10) NULL,
	[ship_to_code] [varchar](10) NULL,
	[sch_id] [numeric](10, 0) NULL,
	[bulk_flag] [varchar](1) NULL,
	[package_flag] [varchar](1) NULL,
	[mix_flag] [varchar](1) NULL,
	[hourly_flag] [varchar](1) NULL,
	[bulk_ret_flag] [varchar](1) NULL,
	[WEB_IND] [char](1) NULL,
	[actual_truckker_id] [varchar](10) NULL,
	[distance] [varchar](20) NULL,
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOMESTIC] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_ACTIVITY_MAST](
	[seq_n] [decimal](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) NOT NULL,
	[act_type] [varchar](20) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[ETA_FLAG] [varchar](1) NULL,
	[ETD_FLAG] [varchar](1) NULL,
	[start_date_ot] [varchar](1) NULL,
	[end_date_ot] [varchar](1) NULL,
	[etd_atd_flag] [varchar](1) NULL,
	[start_date_hr_rate] [varchar](1) NULL,
	[end_date_hr_rate] [varchar](1) NULL,
	[etd_atd_hr_rate] [varchar](1) NULL,
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_MAST] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_ACTIVITY_TRANS](
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) NOT NULL,
	[act_type] [varchar](20) NOT NULL,
	[est_dt] [datetime] NULL,
	[actual_dt] [datetime] NULL,
	[act_text] [varchar](200) NULL,
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[cust_id] [varchar](10) NOT NULL,
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_TRANS] PRIMARY KEY CLUSTERED 
(
	[group_seq] ASC,
	[act_seq] ASC,
	[domestic_job_n] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) NOT NULL,
	[seal_n] [varchar](20) NOT NULL,
	[cont_type_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) NULL,
	[lot_n] [varchar](20) NULL,
 CONSTRAINT [PK_DOMESTIC_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_cont_url_mast](
	[vendor_id] [varchar](10) NOT NULL,
	[URL] [varchar](500) NOT NULL,
	[createdby] [varchar](10) NOT NULL,
	[createddate] [datetime] NOT NULL,
	[remarks] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_cont_url_mast] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_GRACE_CUSTOMER_CODE](
	[seq_n] [numeric](18, 0) NOT NULL,
	[ship_to_code] [nvarchar](50) NOT NULL,
	[cust_name] [nvarchar](70) NULL,
	[add1] [nvarchar](200) NULL,
	[add2] [nvarchar](70) NULL,
	[add3] [nvarchar](70) NULL,
	[add4] [nvarchar](70) NULL,
	[add5] [nvarchar](70) NULL,
	[end_user] [nvarchar](70) NULL,
 CONSTRAINT [PK_DOMESTIC_GRACE_CUSTOMER_CODE] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_label](
	[en_label] [varchar](200) NOT NULL,
	[cn_label] [nvarchar](200) NULL,
	[seq] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_domestic_label] PRIMARY KEY CLUSTERED 
(
	[seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_com_type](
	[commodity_type] [varchar](20) NOT NULL,
	[Chgcode_id] [varchar](10) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_com_type] PRIMARY KEY CLUSTERED 
(
	[commodity_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_consignee](
	[cust_id] [varchar](50) NOT NULL,
	[name] [varchar](70) NOT NULL,
	[add1] [varchar](70) NULL,
	[add2] [varchar](70) NULL,
	[add3] [varchar](70) NULL,
	[add4] [varchar](70) NULL,
	[add5] [varchar](70) NULL,
	[ship_code] [varchar](10) NULL,
	[postal_code] [varchar](10) NULL,
	[contact_person] [varchar](70) NULL,
	[contact_no] [varchar](50) NULL,
	[loc_code] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_consignee] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_del_location](
	[loc_code] [varchar](20) NOT NULL,
	[loc_desc] [varchar](200) NULL,
	[country_id] [varchar](10) NULL,
	[province] [varchar](100) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[longitude] [numeric](10, 5) NULL,
	[latitude] [numeric](10, 5) NULL,
 CONSTRAINT [PK_domestic_master_del_location] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_fuel_levy_dt](
	[fuel_month] [numeric](18, 0) NOT NULL,
	[fuel_year] [numeric](18, 0) NOT NULL,
	[from_date] [datetime] NOT NULL,
	[to_date] [datetime] NOT NULL,
	[price] [decimal](9, 2) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_fuel_levy_dt] PRIMARY KEY CLUSTERED 
(
	[fuel_month] ASC,
	[fuel_year] ASC,
	[from_date] ASC,
	[to_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_fuel_levy_hd](
	[fuel_month] [numeric](18, 0) NOT NULL,
	[fuel_year] [numeric](18, 0) NOT NULL,
	[ave_cost_price] [decimal](9, 2) NULL,
	[var_base_price] [decimal](9, 2) NULL,
	[per_price_change] [decimal](9, 2) NULL,
	[per_fuel_component] [decimal](9, 2) NULL,
	[fuel_levy_prev_mo] [decimal](9, 2) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_fuel_levy_hd] PRIMARY KEY CLUSTERED 
(
	[fuel_month] ASC,
	[fuel_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_route](
	[origin_loc] [varchar](20) NOT NULL,
	[destination_loc] [varchar](20) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[zone_desc] [varchar](200) NULL,
	[cust_id] [varchar](10) NOT NULL,
	[distance] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_route] PRIMARY KEY CLUSTERED 
(
	[origin_loc] ASC,
	[destination_loc] ASC,
	[zone_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_truck_zone](
	[cust_id] [varchar](10) NOT NULL,
	[truck_id] [varchar](50) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[truck_charge] [decimal](9, 4) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_truck_zone] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[truck_id] ASC,
	[zone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_zone](
	[cust_id] [varchar](10) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[zone_desc] [varchar](200) NOT NULL,
	[zone_charge] [decimal](9, 4) NULL,
	[zone_rate] [decimal](9, 4) NULL,
	[distance] [varchar](20) NULL,
	[commodity_type] [varchar](20) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) NULL,
	[modified_d] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_zone] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[zone_id] ASC,
	[commodity_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Domestic_nc_trans](
	[NC_TRAN_NO] [decimal](18, 0) NOT NULL,
	[NC_LINE_NO] [decimal](18, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_JOB_N] [decimal](18, 0) NOT NULL,
	[NC_REMARKS] [varchar](1000) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATE_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
 CONSTRAINT [PK_Domestic_nc_trans] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC,
	[NC_LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Domestic_nc_type_mast](
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_DESC] [varchar](100) NULL,
	[NC_TYPE_DESC] [varchar](100) NOT NULL,
	[NC_CATE_CODE] [varchar](10) NULL,
	[USER_ID] [varchar](20) NULL,
	[CREATE_D] [datetime] NULL,
 CONSTRAINT [PK_Domestic_nc_type_mast] PRIMARY KEY CLUSTERED 
(
	[NC_TYPE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_PROD_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[prod_line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[cont_line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) NOT NULL,
	[seal_n] [varchar](20) NOT NULL,
	[cont_type_id] [varchar](20) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[select_ind] [varchar](1) NOT NULL,
 CONSTRAINT [PK_DOMESTIC_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[prod_line_no] ASC,
	[prod_id] ASC,
	[cont_line_no] ASC,
	[cont_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_PRODUCT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[prod_name] [varchar](50) NULL,
	[prod_desc] [varchar](300) NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[cust_rcvd_wt] [decimal](10, 2) NULL,
	[net_wt_uom] [varchar](10) NULL,
	[gross_wt_uom] [varchar](10) NULL,
	[cust_rcvd_wt_uom] [varchar](50) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](10) NULL,
	[hazardous_flag] [varchar](2) NULL,
	[imo_class_code] [varchar](7) NULL,
	[undg_n] [varchar](10) NULL,
	[e_receiver_name] [nvarchar](150) NULL,
	[e_contact_name] [nvarchar](150) NULL,
	[e_contact_number] [varchar](50) NULL,
	[goods_condition] [varchar](50) NULL,
	[damage_flag] [varchar](2) NULL,
	[shortage_wt] [decimal](12, 4) NULL,
	[shortage_qty] [decimal](10, 2) NULL,
	[shortage_remarks] [varchar](200) NULL,
	[marks] [varchar](1000) NULL,
	[des] [varchar](2000) NULL,
	[m3] [decimal](10, 4) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
	[prodgrp_id] [varchar](20) NULL,
 CONSTRAINT [PK_DOMESTIC_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Domestic_Province_Transit_Time](
	[province] [varchar](100) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[time_scale] [varchar](50) NOT NULL,
	[transit_time] [decimal](18, 0) NULL,
	[remarks] [varchar](200) NULL,
	[created_by] [char](20) NULL,
	[created_d] [datetime] NULL,
	[modified_by] [char](20) NULL,
	[modified_d] [datetime] NULL,
	[port_code] [varchar](10) NOT NULL,
	[port_desc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_SCAN_DOCS_LOG](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[doc_type] [varchar](50) NOT NULL,
	[pdf_name] [varchar](250) NOT NULL,
	[active_ind] [varchar](2) NOT NULL,
 CONSTRAINT [PK_DOMESTIC_SCAN_DOCS_LOG] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[doc_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_SCHEDULE](
	[SCH_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[SCH_DATE] [datetime] NOT NULL,
	[TRUCK_ID] [numeric](10, 0) NOT NULL,
	[LOAD_QTY] [numeric](10, 3) NULL,
	[LOAD_FACTOR] [numeric](10, 3) NULL,
	[PRESENT_STATUS] [char](1) NULL,
	[ANY_INCIDENT] [char](1) NULL,
	[REMARK] [varchar](100) NULL,
	[DRIVER_ID1] [numeric](10, 3) NULL,
	[DRIVER_ID2] [numeric](10, 3) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](20) NULL,
	[MODIFIED_D] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DR_NOTE](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INVOICE_TYPE] [varchar](1) NULL,
	[CUST_ID] [varchar](10) NULL,
	[INV_YM] [varchar](6) NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NULL,
	[INV_TRA_TYPE] [varchar](1) NOT NULL,
	[INV_D] [datetime] NULL,
	[PRN_D] [datetime] NULL,
	[INV_PRN_D] [datetime] NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NULL,
	[INV_CANCEL_IND] [varchar](1) NULL,
	[INV_CANCEL_D] [datetime] NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[HBL_N] [varchar](30) NULL,
	[OCEAN_BL] [varchar](30) NULL,
	[GD_DES1] [varchar](40) NULL,
	[GD_DES2] [varchar](40) NULL,
	[GD_DES3] [varchar](40) NULL,
	[GD_DES4] [varchar](40) NULL,
	[GD_DES5] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[CREATE_D] [datetime] NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[INV_GST_A] [numeric](11, 2) NULL,
	[INV_TOT_STD_RATE] [numeric](11, 2) NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NULL,
	[INV_TOT_A] [numeric](11, 2) NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NULL,
	[PRINT_N] [numeric](10, 0) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[VOID_IND] [varchar](1) NULL,
	[CORRES_INVOICE_N] [numeric](10, 0) NULL,
	[TT_IND] [varchar](1) NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) NULL,
	[TT_CURR] [varchar](3) NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL,
	[INV_EX_RATE_USER_ID] [varchar](10) NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[GD_DES6] [varchar](40) NULL,
	[GD_DES7] [varchar](40) NULL,
	[GD_DES8] [varchar](40) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[ar_doc_no] [varchar](20) NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [SYS_C0051990] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DR_NOTE_DET](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NULL,
	[CHG_DES2] [varchar](40) NULL,
	[CHG_DES3] [varchar](40) NULL,
	[CHG_DES4] [varchar](40) NULL,
	[LINE_GST_TYPE] [varchar](1) NULL,
	[LINE_WT_M3_IND] [varchar](1) NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 3) NULL,
	[LINE_CHG_UNIT] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](11, 5) NULL,
	[LINE_GST_P] [numeric](11, 3) NULL,
	[LINE_GST_A] [numeric](11, 2) NULL,
	[LINE_TOT_A] [numeric](11, 2) NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
 CONSTRAINT [PK_DR_NOTE_DET] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC,
	[INV_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_DETAIL](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[driver_seq] [decimal](18, 0) NOT NULL,
	[driver_id] [decimal](18, 0) NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL,
 CONSTRAINT [PK_DRIVER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[driver_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_DETAIL_test](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[driver_seq] [decimal](18, 0) NOT NULL,
	[driver_id] [decimal](18, 0) NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_MAST](
	[vendor_id] [varchar](10) NOT NULL,
	[driver_id] [decimal](18, 0) NOT NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL,
	[active_ind] [varchar](2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
 CONSTRAINT [PK_DRIVER_MAST] PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC,
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [driver_mast_test](
	[vendor_id] [varchar](10) NOT NULL,
	[driver_id] [decimal](18, 0) NOT NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL,
	[active_ind] [varchar](2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_TRAINING_MAST](
	[TRAINING_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DRIVER_ID] [decimal](18, 0) NOT NULL,
	[JOINING_DT] [datetime] NOT NULL,
	[TRAINED_BY] [varchar](20) NOT NULL,
	[TRAINING_START_DT] [datetime] NULL,
	[TRAINING_END_DT] [datetime] NULL,
	[REMARKS] [varchar](100) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](10) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TRAINING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DROP_DOWN_DESC_REF](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomterId] [varchar](20) NOT NULL,
	[ColumnName] [char](100) NOT NULL,
	[Description] [varchar](1000) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_AA](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REF_ID] [varchar](1) NOT NULL,
	[VSL_NAME] [varchar](25) NOT NULL,
	[VOY] [varchar](12) NOT NULL,
	[LINE_N] [varchar](40) NOT NULL,
	[SERVICE] [varchar](2) NULL,
	[AGNT] [varchar](6) NOT NULL,
	[POL_NAME] [varchar](25) NOT NULL,
	[POD] [varchar](3) NOT NULL,
	[OB_D] [varchar](8) NOT NULL,
	[ETD_D] [varchar](8) NOT NULL,
	[ETA_D] [varchar](8) NOT NULL,
	[EDI_D] [datetime] NOT NULL,
	[CSERVICE] [varchar](2) NULL,
	[TRANSFER_IND] [varchar](1) NULL,
	[CR_ID] [varchar](10) NULL,
	[POL_ID] [varchar](10) NULL,
	[POD_ID] [varchar](10) NULL,
 CONSTRAINT [PK_EDIAA] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_BB](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[MBL] [varchar](20) NOT NULL,
	[CNTR] [varchar](12) NOT NULL,
	[CSIZE] [varchar](2) NOT NULL,
	[CTYPE] [varchar](2) NOT NULL,
	[SEAL_NO] [varchar](12) NOT NULL,
	[IMPORT_REF_N] [numeric](10, 0) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
 CONSTRAINT [PK_EDIBB] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_CC](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[CNTR] [varchar](12) NOT NULL,
	[HBL] [varchar](16) NOT NULL,
	[PKGS] [varchar](13) NOT NULL,
	[CBM] [numeric](10, 3) NOT NULL,
	[KGS] [numeric](10, 3) NOT NULL,
 CONSTRAINT [PK_EDICC] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_DD](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[HBL] [varchar](16) NOT NULL,
	[MBL] [varchar](20) NOT NULL,
	[SHPR] [varchar](10) NOT NULL,
	[SHPR_NAME] [varchar](50) NOT NULL,
	[SHPR_ADD1] [varchar](50) NOT NULL,
	[SHPR_ADD2] [varchar](50) NOT NULL,
	[SHPR_ADD3] [varchar](50) NOT NULL,
	[CNEE] [varchar](10) NOT NULL,
	[CNEE_NAME] [varchar](50) NOT NULL,
	[CNEE_ADD1] [varchar](50) NOT NULL,
	[CNEE_ADD2] [varchar](50) NOT NULL,
	[CNEE_ADD3] [varchar](50) NOT NULL,
	[NTFY] [varchar](10) NOT NULL,
	[NTFY_NAME] [varchar](50) NOT NULL,
	[NTFY_ADD1] [varchar](50) NOT NULL,
	[NTFY_ADD2] [varchar](50) NOT NULL,
	[NTFY_ADD3] [varchar](50) NOT NULL,
	[AGNT] [varchar](6) NOT NULL,
	[POL_NAME] [varchar](32) NOT NULL,
	[POL] [varchar](3) NOT NULL,
	[POD_NAME] [varchar](32) NOT NULL,
	[POD] [varchar](3) NOT NULL,
	[PLD_NAME] [varchar](32) NOT NULL,
	[PLD] [varchar](3) NOT NULL,
	[FD_NAME] [varchar](32) NOT NULL,
	[FD] [varchar](3) NOT NULL,
	[CY20] [numeric](2, 0) NOT NULL,
	[CY40] [numeric](2, 0) NOT NULL,
	[CYHQ] [numeric](2, 0) NOT NULL,
	[CY] [numeric](2, 0) NOT NULL,
	[CY_SIZE] [varchar](2) NOT NULL,
	[CY_TYPE] [varchar](2) NOT NULL,
	[CY_UNIT] [varchar](13) NOT NULL,
	[G1] [numeric](10, 1) NOT NULL,
	[M1] [numeric](10, 3) NOT NULL,
	[CFS_UNIT] [varchar](13) NOT NULL,
	[G2] [numeric](10, 1) NOT NULL,
	[M2] [numeric](10, 3) NOT NULL,
	[INWORDS] [varchar](78) NOT NULL,
	[SVC_TYPE] [varchar](1) NOT NULL,
	[SVC_NAME] [varchar](14) NOT NULL,
	[BLCOPY] [numeric](1, 0) NOT NULL,
	[F1] [varchar](16) NOT NULL,
	[F2] [varchar](16) NOT NULL,
	[F3] [varchar](16) NOT NULL,
	[F4] [varchar](16) NOT NULL,
	[F5] [varchar](16) NOT NULL,
	[F6] [varchar](16) NOT NULL,
	[F7] [varchar](16) NOT NULL,
	[F8] [varchar](16) NOT NULL,
	[R1] [numeric](8, 2) NOT NULL,
	[R2] [numeric](8, 2) NOT NULL,
	[R3] [numeric](8, 2) NOT NULL,
	[R4] [numeric](8, 2) NOT NULL,
	[R5] [numeric](8, 2) NOT NULL,
	[R6] [numeric](8, 2) NOT NULL,
	[R7] [numeric](8, 2) NOT NULL,
	[R8] [numeric](8, 2) NOT NULL,
	[OF_PPCC] [varchar](1) NOT NULL,
	[COLOADER] [varchar](40) NOT NULL,
	[IMPORT_N] [numeric](10, 0) NULL,
 CONSTRAINT [PK_EDIDD] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_EE](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[HBL] [varchar](16) NOT NULL,
	[TEXT] [varchar](50) NULL,
	[CTEXT] [varchar](50) NULL,
 CONSTRAINT [PK_EDIEE] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_OUTPUT](
	[EDI_DOC_TYPE] [varchar](50) NOT NULL,
	[EDI_SENDER] [varchar](50) NOT NULL,
	[EDI_RECEIVER] [varchar](50) NOT NULL,
	[EDI_OUT_DIR] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_SHIPPER](
	[EDI_SENDER_ID] [varchar](50) NOT NULL,
	[EDI_RECEIVER_ID] [varchar](50) NOT NULL,
	[EDI_SENDER_NAME] [varchar](50) NOT NULL,
	[SHIPPER_NAME] [varchar](50) NOT NULL,
	[FMS_SHIPPER_ID] [varchar](50) NOT NULL,
	[START_D] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [edocs_insurance_unused_numbers](
	[cust_id] [nvarchar](10) NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[insurance_n] [nvarchar](40) NOT NULL,
	[entry_by] [nvarchar](50) NULL,
	[entry_dt] [datetime] NULL,
 CONSTRAINT [PK_edocs_insurance_unused_numbers] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[insurance_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [edocs_master_data](
	[scc_job_no] [decimal](18, 0) NOT NULL,
	[scc_ref_no] [decimal](18, 0) NOT NULL,
	[scc_ref_type] [varchar](20) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[bkg_ref_n] [varchar](40) NULL,
	[order_value_currency] [varchar](10) NULL,
	[order_value] [decimal](18, 2) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[applicant1] [varchar](500) NULL,
	[applicant2] [varchar](70) NULL,
	[applicant3] [varchar](70) NULL,
	[applicant4] [varchar](70) NULL,
	[applicant5] [varchar](70) NULL,
	[applicant6] [varchar](70) NULL,
	[issuing_bank] [varchar](500) NULL,
	[draft_at] [varchar](150) NULL,
	[o_b_dt] [datetime] NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[pol] [varchar](40) NULL,
	[pod] [varchar](40) NULL,
	[marking] [varchar](800) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) NULL,
	[tot_gross_wt] [decimal](18, 3) NULL,
	[gross_wt_uom] [varchar](10) NULL,
	[tot_m3] [decimal](18, 4) NULL,
	[cr_agent_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[updated_by] [varchar](30) NULL,
	[updated_dt] [datetime] NULL,
	[pol_id] [varchar](10) NULL,
	[pod_id] [varchar](10) NULL,
	[tot_pallet] [decimal](18, 0) NULL,
	[fin_dest] [varchar](40) NULL,
	[tot_net_wt] [numeric](18, 3) NULL,
	[fin_dest_id] [varchar](10) NULL,
	[so_prefix] [varchar](10) NULL,
	[so_suffix] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EGS_CONTAINER_315_STATUS](
	[export_n] [numeric](9, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NOT NULL,
	[cont_n] [varchar](40) NOT NULL,
	[event_code] [varchar](20) NOT NULL,
	[empty_pick_up] [datetime] NULL,
	[gated_in] [datetime] NULL,
	[vessel_load] [datetime] NULL,
	[vessel_departure] [datetime] NULL,
	[transshipment] [datetime] NULL,
	[vessel_arrived] [datetime] NULL,
	[unloaded_from_vessel] [datetime] NULL,
	[gated_out] [datetime] NULL,
	[rail_truck] [datetime] NULL,
	[returned] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EGS_DEFAULT_VALUES](
	[tab_location] [varchar](100) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[column_name] [varchar](100) NOT NULL,
	[default_value] [varchar](250) NULL,
	[different_logic] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EGS_SWITCHES](
	[process_name] [varchar](500) NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[switch_status] [int] NOT NULL,
	[vend_cust_id] [char](10) NULL,
	[process_type] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [email_log_details](
	[party_type] [varchar](10) NOT NULL,
	[ref_no] [numeric](9, 0) NOT NULL,
	[email_to] [varchar](255) NULL,
	[email_cc] [varchar](255) NULL,
	[user_id] [varchar](50) NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_email_log_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [email_notifier_master](
	[TYPE] [varchar](8) NOT NULL,
	[VALUE] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [emailNotifier](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[is_past_data] [varchar](1) NULL,
	[email_sent] [datetime] NOT NULL,
	[type] [varchar](8) NULL,
	[seq_n] [int] NOT NULL,
	[actiondate] [datetime] NULL,
 CONSTRAINT [PK_EmailNotifier_Id] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entity_info](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[entity_db] [varchar](20) NOT NULL,
	[entity_name] [varchar](50) NOT NULL,
	[ismain] [char](1) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[chk_payable_linked_to_invoice] [char](1) NOT NULL,
 CONSTRAINT [PK_entity_info] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [entity_types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [excel_kpi](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[a] [varchar](max) NULL,
	[b] [varchar](100) NULL,
	[c] [varchar](100) NULL,
	[d] [varchar](100) NULL,
	[e] [varchar](255) NULL,
	[f] [varchar](255) NULL,
	[g] [varchar](max) NULL,
	[h] [varchar](255) NULL,
	[i] [varchar](100) NULL,
	[j] [varchar](100) NULL,
	[k] [varchar](100) NULL,
	[l] [varchar](100) NULL,
	[m] [varchar](max) NULL,
	[n] [varchar](max) NULL,
	[o] [varchar](max) NULL,
	[p] [varchar](15) NULL,
	[q] [varchar](15) NULL,
	[r] [varchar](15) NULL,
	[s] [varchar](15) NULL,
	[t] [varchar](15) NULL,
	[u] [varchar](15) NULL,
	[v] [varchar](15) NULL,
	[w] [varchar](15) NULL,
	[x] [varchar](15) NULL,
	[y] [varchar](15) NULL,
	[z] [varchar](15) NULL,
 CONSTRAINT [PK_excel_kpi] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [excel_kpi_v3](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[a] [varchar](10) NULL,
	[b] [varchar](100) NULL,
	[c] [varchar](15) NULL,
	[d] [varchar](255) NULL,
	[e] [varchar](15) NULL,
	[f] [varchar](15) NULL,
	[g] [varchar](15) NULL,
	[h] [varchar](15) NULL,
	[i] [varchar](15) NULL,
	[j] [varchar](15) NULL,
	[k] [varchar](15) NULL,
	[l] [varchar](15) NULL,
	[m] [varchar](15) NULL,
	[n] [varchar](15) NULL,
	[o] [varchar](15) NULL,
	[p] [varchar](15) NULL,
	[q] [varchar](15) NULL,
	[r] [varchar](15) NULL,
	[s] [varchar](15) NULL,
	[t] [varchar](15) NULL,
	[u] [varchar](15) NULL,
	[v] [varchar](15) NULL,
	[w] [varchar](15) NULL,
	[x] [varchar](15) NULL,
	[y] [varchar](15) NULL,
	[z] [varchar](15) NULL,
	[remarks] [varchar](256) NULL,
 CONSTRAINT [PK_excel_kpi_v3] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[mod_id] [varchar](10) NULL,
	[mod_dt] [datetime] NULL,
	[crt_id] [varchar](10) NULL,
	[crt_dt] [datetime] NOT NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) NULL,
	[cust_ord_no] [varchar](100) NULL,
	[po_no] [varchar](100) NULL,
	[etd] [varchar](30) NULL,
	[pod] [varchar](500) NULL,
	[remarks] [varchar](max) NULL,
 CONSTRAINT [PK_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[HBL_N] [varchar](20) NOT NULL,
	[TOT_M3] [numeric](12, 4) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[GD_DES1] [varchar](100) NOT NULL,
	[GD_DES2] [varchar](100) NOT NULL,
	[GD_DES3] [varchar](50) NOT NULL,
	[GD_DES4] [varchar](50) NOT NULL,
	[GD_DES5] [varchar](50) NOT NULL,
	[PORT_LOAD_NAME] [varchar](40) NOT NULL,
	[PORT_DISC_NAME] [varchar](40) NOT NULL,
	[PORT_DEL_ID] [varchar](10) NOT NULL,
	[PORT_DEL_NAME] [varchar](40) NOT NULL,
	[PORT_DEL_TERMS] [varchar](10) NOT NULL,
	[PORT_REC_ID] [varchar](10) NOT NULL,
	[PORT_REC_NAME] [varchar](40) NOT NULL,
	[PORT_REC_TERMS] [varchar](40) NOT NULL,
	[FREIGHT_TERM_ID] [varchar](10) NOT NULL,
	[SHIP_ON_BRD_IND] [varchar](1) NOT NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[EXPRESS_IND] [varchar](1) NOT NULL,
	[SHIP_COUNT_IND] [varchar](1) NOT NULL,
	[T_SHIP_IND] [varchar](1) NOT NULL,
	[BL_Q] [numeric](2, 0) NOT NULL,
	[S_SHIPPER1] [varchar](70) NOT NULL,
	[S_SHIPPER2] [varchar](70) NOT NULL,
	[S_SHIPPER3] [varchar](70) NOT NULL,
	[S_SHIPPER4] [varchar](70) NOT NULL,
	[S_SHIPPER5] [varchar](70) NOT NULL,
	[S_SHIPPER6] [varchar](70) NOT NULL,
	[S_CON1] [varchar](70) NOT NULL,
	[S_CON2] [varchar](70) NOT NULL,
	[S_CON3] [varchar](70) NOT NULL,
	[S_CON4] [varchar](70) NOT NULL,
	[S_CON5] [varchar](70) NOT NULL,
	[S_CON6] [varchar](70) NOT NULL,
	[S_NP1] [varchar](70) NOT NULL,
	[S_NP2] [varchar](70) NOT NULL,
	[S_NP3] [varchar](70) NOT NULL,
	[S_NP4] [varchar](70) NOT NULL,
	[S_NP5] [varchar](70) NOT NULL,
	[S_NP6] [varchar](70) NOT NULL,
	[S_AG1] [varchar](70) NOT NULL,
	[S_AG2] [varchar](70) NOT NULL,
	[S_AG3] [varchar](70) NOT NULL,
	[S_AG4] [varchar](70) NOT NULL,
	[S_AG5] [varchar](70) NOT NULL,
	[S_AG6] [varchar](70) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CARGO_WORDS] [varchar](70) NULL,
	[PRE_CARRIAGE] [varchar](40) NULL,
	[FR_COLLECT_IND] [varchar](1) NULL,
	[COLLECT_A] [numeric](11, 3) NULL,
	[COLLECT_CURRENCY] [varchar](10) NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[PO_N] [varchar](40) NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) NULL,
	[I_RATE] [numeric](11, 2) NULL,
	[PSC_IND] [varchar](2) NULL,
	[FR_COLLECT_IND2] [varchar](1) NULL,
	[AS_AGENT] [varchar](40) NULL,
	[WEB_WAREHOUSE] [varchar](100) NULL,
	[WEB_CFS] [varchar](100) NULL,
	[WEB_BL] [varchar](100) NULL,
	[WEB_POD] [varchar](100) NULL,
	[WEB_DO_READY] [varchar](100) NULL,
	[WEB_DO_COLLECT] [varchar](100) NULL,
	[WEB_CONSIGNEE] [varchar](100) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[S_AGENT] [varchar](40) NULL,
	[UP_USER_ID] [varchar](20) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[BKG_REF_N] [varchar](30) NULL,
	[SWITCH_BL_IND] [varchar](1) NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[WEB_IND] [char](1) NULL,
	[PORT_FIN_ID] [varchar](10) NULL,
	[PORT_FIN_NAME] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[COLLECT_DATE] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[TIE_REF_N] [varchar](50) NULL,
	[LC_NO] [varchar](40) NULL,
	[LC_DESC] [varchar](2000) NULL,
	[BOARD_TERM_ID] [varchar](10) NULL,
	[UP_TIE_IND] [varchar](1) NULL,
	[UP_TIE_D] [datetime] NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_RESP_USER] [varchar](10) NULL,
	[SIGNATURE_NAME] [varchar](20) NULL,
	[ISO] [numeric](18, 0) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DESC_ID] [varchar](10) NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[PORT_ISSUE_NAME] [varchar](40) NULL,
	[SHIPPER_REF1] [varchar](40) NULL,
	[SHIPPER_REF2] [varchar](40) NULL,
	[SHIPPER_REF3] [varchar](40) NULL,
	[SHIPPER_REF4] [varchar](40) NULL,
	[SHIPPER_REF5] [varchar](40) NULL,
	[INVOICE_N] [varchar](20) NULL,
	[PAYMENT_TERMS] [varchar](250) NULL,
	[BILL_TO1] [varchar](70) NULL,
	[BILL_TO2] [varchar](70) NULL,
	[BILL_TO3] [varchar](70) NULL,
	[BILL_TO4] [varchar](70) NULL,
	[BILL_TO5] [varchar](70) NULL,
	[BILL_TO6] [varchar](70) NULL,
	[OCEAN_FR_COST] [numeric](11, 3) NULL,
	[ACTUAL_ARR_D] [datetime] NULL,
	[BL_TO_SSLINE_D] [datetime] NULL,
	[BL_FROM_SSLINE_D] [datetime] NULL,
	[DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[WT_UOM] [varchar](10) NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) NULL,
	[SELECT_CONT_IND] [varchar](1) NULL,
	[LC_DESC2] [varchar](2000) NULL,
	[S_NP2_1] [varchar](70) NULL,
	[S_NP2_2] [varchar](70) NULL,
	[S_NP2_3] [varchar](70) NULL,
	[S_NP2_4] [varchar](70) NULL,
	[S_NP2_5] [varchar](70) NULL,
	[S_NP2_6] [varchar](70) NULL,
	[DTL_WTM3_IND] [varchar](1) NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) NULL,
	[SEND_TYPE_ID] [varchar](1) NULL,
	[PRT_SIG_IND] [varchar](1) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [text] NULL,
	[EDI_REMARKS2] [text] NULL,
	[FCR_N] [varchar](20) NULL,
	[HAZARD_DECL] [varchar](250) NULL,
	[PACK_CERT] [varchar](250) NULL,
	[EMER_CONT] [varchar](250) NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) NULL,
	[SED_CLAUSE] [varchar](250) NULL,
	[ITN] [varchar](250) NULL,
	[SIGN_DECL] [varchar](250) NULL,
	[ADD_REMARKS] [varchar](250) NULL,
	[DG_IND] [varchar](1) NULL,
	[HAZARD_IND] [varchar](1) NULL,
	[PACK_IND] [varchar](1) NULL,
	[EMER_IND] [varchar](1) NULL,
	[US_BOYCOTT_IND] [varchar](1) NULL,
	[SED_IND] [varchar](1) NULL,
	[ITN_IND] [varchar](1) NULL,
	[SIGN_IND] [varchar](1) NULL,
	[ADD_REM_IND] [varchar](1) NULL,
	[SELECT_CONT] [varchar](1) NULL,
	[HAZARD_DECL2] [varchar](250) NULL,
	[POINT_ID] [varchar](10) NULL,
	[POINT_DESC] [varchar](40) NULL,
	[ORIGIN_ID] [varchar](10) NULL,
	[ORIGIN_DESC] [varchar](40) NULL,
	[PRICE_TERM_PORT] [varchar](50) NULL,
	[F_AG1] [varchar](70) NULL,
	[F_AG2] [varchar](70) NULL,
	[F_AG3] [varchar](70) NULL,
	[F_AG4] [varchar](70) NULL,
	[F_AG5] [varchar](70) NULL,
	[F_AG6] [varchar](70) NULL,
	[INSURER] [varchar](50) NULL,
	[INSUR_VAL] [numeric](15, 3) NULL,
	[PRODUCT_ORIG] [varchar](50) NULL,
	[DOCS_DISP_BANK_D] [datetime] NULL,
	[DOCS_REC_CUST_D] [datetime] NULL,
	[GI_CHEMICAL_D] [datetime] NULL,
	[HI_LUB_D] [datetime] NULL,
	[SURVEYOR_D] [datetime] NULL,
	[FLAG_IMPORT_N] [numeric](10, 0) NULL,
	[FLAG_EXPORT_N] [numeric](9, 0) NULL,
	[CNB_LICENSENO] [varchar](30) NULL,
	[final_del_remarks] [varchar](50) NULL,
	[palletize] [char](1) NOT NULL,
	[status] [char](1) NOT NULL,
	[laycan_dt] [datetime] NULL,
	[FFI] [varchar](255) NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[location_id] [varchar](5) NULL,
	[pack_type] [varchar](10) NULL,
	[ISSAMPLEORDER] [char](1) NOT NULL,
	[invoice_amt] [numeric](15, 2) NULL,
	[SPLIT_CNT] [numeric](10, 0) NULL,
	[hi_counter] [int] NULL,
	[lc_received_d] [datetime] NULL,
	[lc_received_amendment_d] [datetime] NULL,
	[invoice_date] [datetime] NULL,
	[premium_rate] [numeric](11, 3) NULL,
	[premium_amt] [numeric](11, 3) NULL,
	[custprodno] [varchar](100) NULL,
	[entity_rowid] [numeric](10, 0) NULL,
	[lc_discrepancy_d] [datetime] NULL,
	[is_reefer] [varchar](1) NULL,
	[SShipperCode] [varchar](30) NULL,
	[SConCode] [varchar](30) NULL,
	[SNp1Code] [varchar](30) NULL,
	[SLcConCode] [varchar](30) NULL,
	[SNp2Code] [varchar](30) NULL,
	[SAgCode] [varchar](30) NULL,
	[BillToCode] [varchar](30) NULL,
	[FAgCode] [varchar](30) NULL,
	[is_nor] [varchar](1) NULL,
	[DhlRcvCode] [varchar](30) NULL,
	[blanket_no] [numeric](19, 2) NULL,
	[EmailApproved_dt] [datetime] NULL,
	[EmailSent_by] [varchar](255) NULL,
	[EmailSent_dt] [datetime] NULL,
	[export_remarks] [varchar](255) NULL,
	[fd_no] [varchar](255) NULL,
	[import_n] [numeric](19, 2) NULL,
	[IsEmailApproved] [varchar](255) NULL,
	[IsEmailSent] [varchar](255) NULL,
	[sentint] [varchar](255) NULL,
	[SOW] [varchar](255) NULL,
	[sow_master_no] [varchar](255) NULL,
	[export_n_hd] [numeric](9, 0) NULL,
	[draft_bl_rcv_fr_carrier] [datetime] NULL,
	[lc_date] [datetime] NULL,
	[lc_shipment_date] [datetime] NULL,
	[imp_to_db] [varchar](20) NULL,
	[exp_to_db] [varchar](20) NULL,
	[hub_order] [varchar](1) NULL,
	[elitetrax_uploaded] [datetime] NULL,
	[nn_copy] [int] NULL,
	[sap_create_date] [datetime] NULL,
	[fd_create_date] [datetime] NULL,
	[bl_split] [varchar](100) NULL,
	[doc_received_date] [datetime] NULL,
 CONSTRAINT [PK_EXPORT] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_BKG_DET](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[BKG_LINE_N] [numeric](10, 0) NOT NULL,
	[BKG_REF_N] [varchar](30) NOT NULL,
	[SHIPPER_NAME] [varchar](70) NOT NULL,
	[CONTACT] [varchar](50) NOT NULL,
	[TEL_N] [varchar](20) NOT NULL,
	[FAX_N] [varchar](20) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACK] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[CARGO_DES] [varchar](50) NOT NULL,
	[REMARKS1] [varchar](50) NOT NULL,
	[REMARKS2] [varchar](50) NOT NULL,
	[REMARKS3] [varchar](90) NOT NULL,
	[USER_ID] [varchar](50) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CANCEL_IND] [varchar](1) NOT NULL,
	[CANCEL_REM] [varchar](50) NOT NULL,
	[FINAL_DEST] [varchar](30) NULL,
	[MKGS1] [varchar](500) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[SHIPPER_IND] [varchar](1) NULL,
	[COLLECT_1] [varchar](40) NULL,
	[COLLECT_2] [varchar](40) NULL,
	[COLLECT_3] [varchar](40) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA_POD] [datetime] NULL,
	[ETA_FINAL] [datetime] NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_CARGO_TYPE] [varchar](10) NULL,
	[T_IMPORT_NO] [numeric](10, 0) NULL,
	[COLLECT_D] [datetime] NULL,
	[WEB_IND] [varchar](1) NULL,
	[D_USER_ID] [varchar](15) NULL,
	[HAULIER_NAME] [varchar](100) NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[EXPORT_IND] [varchar](1) NULL,
	[CUST_ID] [varchar](10) NULL,
	[COLLECT_4] [varchar](40) NULL,
	[COLLECT_5] [varchar](40) NULL,
	[PO_N] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[CUSTOMER_NAME] [varchar](70) NULL,
	[CONFIRM_IND] [varchar](1) NULL,
	[CONTRACT_N] [varchar](20) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
 CONSTRAINT [PK_EXPORT_BKG_DET] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_BKG_N] ASC,
	[BKG_LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_BKG_DIRECT](
	[EXPORT_BKG_DIRECT_N] [numeric](10, 0) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[USER_ID] [varchar](40) NOT NULL,
	[SHIPPER_NAME] [varchar](70) NOT NULL,
	[SHIPPER_CTC] [varchar](50) NOT NULL,
	[SHIPPER_TEL] [varchar](20) NOT NULL,
	[SHIPPER_FAX] [varchar](20) NOT NULL,
	[SHIPPER_EMAIL] [varchar](50) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[DOCUMENTATION_IND] [varchar](1) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NOT NULL,
	[CARGO_DESC1] [varchar](100) NOT NULL,
	[CARGO_DESC2] [varchar](100) NOT NULL,
	[REMARKS1] [varchar](50) NOT NULL,
	[REMARKS2] [varchar](50) NOT NULL,
	[REMARKS3] [varchar](50) NOT NULL,
	[REMARKS4] [varchar](50) NOT NULL,
	[REMARKS5] [varchar](50) NOT NULL,
	[BILLING1] [varchar](50) NOT NULL,
	[BILLING2] [varchar](50) NOT NULL,
	[BILLING3] [varchar](50) NOT NULL,
	[FCL_OR_LCL] [varchar](3) NOT NULL,
	[TRANSFER_FLAG] [varchar](1) NOT NULL,
	[NO_OF_PKGS] [numeric](10, 0) NOT NULL,
	[WEIGHT] [numeric](11, 3) NOT NULL,
	[M3] [numeric](11, 3) NOT NULL,
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[PKGS_TYPE] [varchar](20) NOT NULL,
	[CANCEL_REM] [varchar](50) NOT NULL,
	[CANCEL_IND] [varchar](1) NOT NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NOT NULL,
	[ETA_SIN] [datetime] NOT NULL,
	[ETA_POD] [datetime] NOT NULL,
	[PORT_OF_DISC] [varchar](10) NOT NULL,
	[BKG_DIRECT_LINE_N] [numeric](10, 0) NOT NULL,
	[BKG_DIRECT_REF_N] [varchar](30) NOT NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[EXPRESS_BL_IND] [varchar](1) NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[CR_BKG_REF_N] [varchar](30) NULL,
	[ETD] [datetime] NULL,
	[CR_REF_BKG_N] [varchar](30) NULL,
	[PO_N] [varchar](40) NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[MARKING] [varchar](2000) NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[CUST_ID] [varchar](10) NULL,
	[LOT_NO] [varchar](200) NULL,
	[BATCH_NO] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[INV_VALUE_TTL] [varchar](40) NULL,
	[CARGO_DESC3] [varchar](50) NULL,
	[CTY_ORIG] [varchar](40) NULL,
	[REQ_SHIP_DATE] [varchar](40) NULL,
	[CONT_NO] [varchar](40) NULL,
	[EDI_SHIPPER1] [varchar](50) NULL,
	[EDI_SHIPPER2] [varchar](50) NULL,
	[EDI_SHIPPER3] [varchar](50) NULL,
	[EDI_SHIPPER4] [varchar](50) NULL,
	[EDI_SHIPPER5] [varchar](50) NULL,
	[EDI_SHIPPER6] [varchar](50) NULL,
	[EDI_CONS1] [varchar](50) NULL,
	[EDI_CONS2] [varchar](50) NULL,
	[EDI_CONS3] [varchar](50) NULL,
	[EDI_CONS4] [varchar](50) NULL,
	[EDI_NOTIFY1] [varchar](50) NULL,
	[EDI_NOTIFY2] [varchar](50) NULL,
	[EDI_NOTIFY3] [varchar](50) NULL,
	[EDI_NOTIFY4] [varchar](50) NULL,
	[OCEAN_FRT_CODE] [varchar](40) NULL,
	[BL_DRAFT_PREP] [varchar](40) NULL,
	[BL_INSTRUC] [varchar](100) NULL,
	[EDI_REMARKS] [varchar](250) NULL,
	[LC_NO] [varchar](40) NULL,
	[EDI_TP] [varchar](1) NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_REC_D] [datetime] NULL,
	[CONFIRM_IND] [varchar](1) NULL,
	[EDI_SENDER] [varchar](40) NULL,
	[EDI_RECEIVER] [varchar](40) NULL,
	[EDI_REVISION] [varchar](10) NULL,
	[EDI_REC_TYPE] [varchar](10) NULL,
	[EDI_CONS5] [varchar](50) NULL,
	[EDI_CONS6] [varchar](50) NULL,
	[EDI_NOTIFY5] [varchar](50) NULL,
	[EDI_NOTIFY6] [varchar](50) NULL,
	[DUP_ORD_IND] [varchar](1) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[CUSTOMER_NAME] [varchar](70) NULL,
	[NET_WEIGHT] [numeric](11, 3) NULL,
	[BKG_MKGS_N] [numeric](10, 0) NULL,
	[TRADE_TERM] [varchar](20) NULL,
	[CONTRACT_N] [varchar](20) NULL,
	[COUNTRY_DEL] [varchar](50) NULL,
	[CONT_ISO] [numeric](10, 0) NULL,
	[PRT_SIG_IND] [varchar](1) NULL,
	[WT_UOM] [varchar](10) NULL,
	[LC_DESC] [varchar](2000) NULL,
	[EDI_SALES_AGENT_ID] [varchar](20) NULL,
	[EDI_SALES_AGENT_NAME] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD1] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD2] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD3] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD4] [varchar](35) NULL,
	[EDI_SALES_AGENT_ADD5] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ID] [varchar](20) NULL,
	[EDI_BSNS_UNIT_NAME] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD1] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD2] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD3] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD4] [varchar](35) NULL,
	[EDI_BSNS_UNIT_ADD5] [varchar](35) NULL,
	[PAYMENT_TERMS] [varchar](250) NULL,
	[TOT_FOB] [numeric](11, 2) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
	[CONFIRM_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[MODIFIED_USER] [varchar](40) NULL,
	[MODIFIED_D] [datetime] NULL,
	[ORDER_RCV_D] [datetime] NULL,
 CONSTRAINT [PK_EXP_BKG_DIRECT] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_BKG_DIRECT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_DET](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[SHIP_ON_BOARD_IND] [varchar](1) NULL,
	[SHIP_ON_BOARD_D] [datetime] NULL,
	[DESC1] [varchar](50) NULL,
	[DESC2] [varchar](50) NULL,
	[EXPRESS_BL_IND] [varchar](1) NULL,
	[SHIP_LOAD_COUNT_IND] [varchar](1) NULL,
	[PERMIT_NO] [varchar](20) NOT NULL,
	[FR_COLLECT_DESC1] [varchar](50) NOT NULL,
	[FR_COLLECT_DESC2] [varchar](50) NOT NULL,
	[FR_COLLECT_DESC3] [varchar](50) NOT NULL,
	[FR_COLLECT_DESC4] [varchar](50) NOT NULL,
	[FR_COLLECT_DESC5] [varchar](50) NOT NULL,
	[FR_COLLECT_A1] [numeric](11, 3) NULL,
	[FR_COLLECT_A2] [numeric](11, 3) NULL,
	[FR_COLLECT_A3] [numeric](11, 3) NULL,
	[FR_COLLECT_A4] [numeric](11, 3) NULL,
	[FR_COLLECT_A5] [numeric](11, 3) NULL,
	[FR_COLLECT_TOT] [numeric](11, 3) NOT NULL,
	[FR_COLLECT_CURRENCY] [varchar](8) NOT NULL,
	[PRINT_IND] [varchar](1) NULL,
	[FR2_PR_IND] [varchar](1) NULL,
	[FR3_PR_IND] [varchar](1) NULL,
	[FR4_PR_IND] [varchar](1) NULL,
	[FR5_PR_IND] [varchar](1) NULL,
	[FR_COLLECT_CODE1] [varchar](10) NOT NULL,
	[FR_COLLECT_CODE2] [varchar](10) NOT NULL,
	[FR_COLLECT_CODE3] [varchar](10) NOT NULL,
	[FR_COLLECT_CODE4] [varchar](10) NOT NULL,
	[FR_COLLECT_CODE5] [varchar](10) NOT NULL,
	[WT_ENTRY_IND1] [char](2) NULL,
	[WT_ENTRY_IND2] [char](2) NULL,
	[WT_ENTRY_IND3] [char](2) NULL,
	[WT_ENTRY_IND4] [char](2) NULL,
	[WT_ENTRY_IND5] [char](2) NULL,
	[FC_UNIT_A1] [numeric](11, 3) NULL,
	[FC_UNIT_A2] [numeric](11, 3) NULL,
	[FC_UNIT_A3] [numeric](11, 3) NULL,
	[FC_UNIT_A4] [numeric](11, 3) NULL,
	[FC_UNIT_A5] [numeric](11, 3) NULL,
	[FC_UNIT_QTY1] [numeric](11, 3) NULL,
	[FC_UNIT_QTY2] [numeric](11, 3) NULL,
	[FC_UNIT_QTY3] [numeric](11, 3) NULL,
	[FC_UNIT_QTY4] [numeric](11, 3) NULL,
	[FC_UNIT_QTY5] [numeric](11, 3) NULL,
	[FR_COLLECT_DESC6] [varchar](50) NULL,
	[FR_COLLECT_DESC7] [varchar](50) NULL,
	[FR_COLLECT_DESC8] [varchar](50) NULL,
	[FR_COLLECT_DESC9] [varchar](50) NULL,
	[FR_COLLECT_DESC10] [varchar](50) NULL,
	[FR_COLLECT_A6] [numeric](11, 3) NULL,
	[FR_COLLECT_A7] [numeric](11, 3) NULL,
	[FR_COLLECT_A8] [numeric](11, 3) NULL,
	[FR_COLLECT_A9] [numeric](11, 3) NULL,
	[FR_COLLECT_A10] [numeric](11, 3) NULL,
	[FR6_PR_IND] [varchar](1) NULL,
	[FR7_PR_IND] [varchar](1) NULL,
	[FR8_PR_IND] [varchar](1) NULL,
	[FR9_PR_IND] [varchar](1) NULL,
	[FR10_PR_IND] [varchar](1) NULL,
	[FR_COLLECT_CODE6] [varchar](10) NULL,
	[FR_COLLECT_CODE7] [varchar](10) NULL,
	[FR_COLLECT_CODE8] [varchar](10) NULL,
	[FR_COLLECT_CODE9] [varchar](10) NULL,
	[FR_COLLECT_CODE10] [varchar](10) NULL,
	[WT_ENTRY_IND6] [char](2) NULL,
	[WT_ENTRY_IND7] [char](2) NULL,
	[WT_ENTRY_IND8] [char](2) NULL,
	[WT_ENTRY_IND9] [char](2) NULL,
	[WT_ENTRY_IND10] [char](2) NULL,
	[FC_UNIT_A6] [numeric](11, 3) NULL,
	[FC_UNIT_A7] [numeric](11, 3) NULL,
	[FC_UNIT_A8] [numeric](11, 3) NULL,
	[FC_UNIT_A9] [numeric](11, 3) NULL,
	[FC_UNIT_A10] [numeric](11, 3) NULL,
	[FC_UNIT_QTY6] [numeric](11, 3) NULL,
	[FC_UNIT_QTY7] [numeric](11, 3) NULL,
	[FC_UNIT_QTY8] [numeric](11, 3) NULL,
	[FC_UNIT_QTY9] [numeric](11, 3) NULL,
	[FC_UNIT_QTY10] [numeric](11, 3) NULL,
 CONSTRAINT [PK_EXPORT_DE] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[TRA_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [export_jobs_alerts](
	[alert_type] [char](50) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](50) NOT NULL,
	[process_date] [datetime] NOT NULL,
	[assigned_to_user] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_LOT](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[LOT_N] [varchar](20) NOT NULL,
	[BATCH_N] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EXPORT_LOT] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC,
	[LOT_N] ASC,
	[BATCH_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_MKGS](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](12, 4) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[ATT_CONT_N] [varchar](20) NOT NULL,
	[ATT_SEAL_N] [varchar](20) NOT NULL,
	[MKGS1] [varchar](100) NULL,
	[MKGS2] [varchar](100) NULL,
	[MKGS3] [varchar](100) NULL,
	[MKGS4] [varchar](100) NULL,
	[MKGS5] [varchar](100) NULL,
	[MKGS6] [varchar](100) NULL,
	[MKGS7] [varchar](100) NULL,
	[MKGS8] [varchar](100) NULL,
	[MKGS9] [varchar](100) NULL,
	[MKGS10] [varchar](100) NULL,
	[MKGS11] [varchar](100) NULL,
	[MKGS12] [varchar](100) NULL,
	[MKGS13] [varchar](100) NULL,
	[MKGS14] [varchar](100) NULL,
	[MKGS15] [varchar](100) NULL,
	[DES1] [varchar](100) NULL,
	[DES2] [varchar](100) NULL,
	[DES3] [varchar](100) NULL,
	[DES4] [varchar](100) NULL,
	[DES5] [varchar](100) NULL,
	[DES6] [varchar](100) NULL,
	[DES7] [varchar](100) NULL,
	[DES8] [varchar](100) NULL,
	[DES9] [varchar](100) NULL,
	[DES10] [varchar](100) NULL,
	[DES11] [varchar](100) NULL,
	[DES12] [varchar](100) NULL,
	[DES13] [varchar](100) NULL,
	[DES14] [varchar](100) NULL,
	[DES15] [varchar](100) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[LINE_CHG_IND] [char](1) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[LOT_N] [varchar](200) NULL,
	[BATCH_N] [varchar](20) NULL,
	[PRODUCT_DES] [varchar](50) NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) NULL,
	[MKGS_ALL] [varchar](700) NULL,
	[DES_ALL] [varchar](1600) NULL,
	[LUBS_HI] [char](1) NULL,
	[tare_wt] [decimal](9, 2) NULL,
	[SUM_ALL_PROD] [char](1) NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[quantity_percentage] [varchar](10) NULL,
	[insurance_percentage] [decimal](9, 2) NULL,
	[insurance_calc_value] [decimal](9, 2) NULL,
	[HD_FLAG] [varchar](1) NOT NULL,
 CONSTRAINT [PK_EXPORT_MKGS] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_MOVE_TYPE](
	[MoveTypeCode] [varchar](10) NOT NULL,
	[MoveTypeDesc] [varchar](100) NOT NULL,
	[ShipCostRelvMain] [varchar](10) NOT NULL,
	[ShipCostRelvPrelim] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_OTHDTL_SA](
	[export_n] [numeric](10, 0) NOT NULL,
	[order_stat] [varchar](50) NULL,
	[cont_stat] [varchar](50) NULL,
	[sap_no] [varchar](50) NULL,
	[roll_over] [varchar](50) NULL,
	[no_roll_over] [varchar](10) NULL,
	[special_rem] [varchar](1000) NULL,
	[rem_plants] [varchar](1000) NULL,
	[inspection_ref] [varchar](50) NULL,
	[pallets] [varchar](10) NULL,
	[sap_mat_code] [varchar](50) NULL,
	[fan_mat_code] [varchar](50) NULL,
	[Beni_letter_To] [varchar](1000) NULL,
	[ref_dc_no] [varchar](100) NULL,
	[cert_applicant] [varchar](1000) NULL,
	[name_company] [varchar](1000) NULL,
	[BL_dtl_To] [varchar](1000) NULL,
	[BL_Attn] [varchar](1000) NULL,
	[Pallet_desc] [varchar](1000) NULL,
	[Frt_payable] [varchar](1000) NULL,
	[BL_ins] [varchar](1500) NULL,
	[proforma_inv_no] [varchar](50) NULL,
	[inv_manu_dtl] [varchar](1000) NULL,
	[inv_to_dtl] [varchar](1000) NULL,
	[per_pallet_net_wgt] [varchar](50) NULL,
	[per_pallet_gross_wgt] [varchar](50) NULL,
	[coo_issue_for] [varchar](200) NULL,
	[coo_to_sent_to] [varchar](200) NULL,
	[order_remarks] [varchar](1000) NULL,
	[footer_text] [varchar](1000) NULL,
	[pre_lodge_date] [datetime] NULL,
	[lodge_date] [datetime] NULL,
	[packed_date] [datetime] NULL,
	[shipped_date] [datetime] NULL,
	[FormAB_dt] [datetime] NULL,
	[inspection_no] [varchar](30) NULL,
	[cont_rel_date] [datetime] NULL,
	[order_stat_reason] [varchar](1000) NULL,
	[mli_revised] [varchar](50) NULL,
	[to_plant] [varchar](1) NULL,
	[to_plant_date] [datetime] NULL,
	[bl_dtls_info] [varchar](2000) NULL,
	[bl_rel_to] [varchar](200) NULL,
	[sap_ship_no] [varchar](35) NULL,
	[sap_out_del_no] [varchar](35) NULL,
	[PaymentTermDesc] [char](100) NULL,
	[lc_details] [varchar](1000) NULL,
	[manifest_to_trucker_date] [datetime] NULL,
	[rvsd_manifest_to_trucker_date] [datetime] NULL,
	[manifest_rcvd_by_trucker_date] [datetime] NULL,
	[rvsd_manif_rcvd_by_trucker_d] [datetime] NULL,
	[cro_sent_date] [datetime] NULL,
	[rvsd_cro_sent_date] [datetime] NULL,
	[cro_rcvd_date] [datetime] NULL,
	[rvsd_cro_rcvd_date] [datetime] NULL,
	[revised_packed_date] [datetime] NULL,
	[sent_to_plant_user_id] [varchar](30) NULL,
	[swb_sentdate] [datetime] NULL,
	[swb_sentby] [varchar](20) NULL,
 CONSTRAINT [PK_EXPORT_OTHDTL_SA] PRIMARY KEY NONCLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_PROD_CONT](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[CONT_TYPE_ID] [varchar](20) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[SELECT_IND] [char](1) NOT NULL,
 CONSTRAINT [PK_EXP_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_PRODUCT](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_DESC] [varchar](2500) NULL,
	[HARMONIZE_CODE] [varchar](250) NULL,
	[PACK_TYPE] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](13, 5) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[COUNTRY_ORIGIN] [varchar](50) NULL,
	[MANU_ADDR_CODE] [varchar](30) NULL,
	[no_of_pallets] [numeric](10, 0) NULL,
	[net_wt_pallet] [decimal](12, 3) NULL,
	[gross_wt_pallet] [decimal](12, 3) NULL,
	[create_prod_dt] [datetime] NULL,
	[plant_code] [varchar](20) NULL,
	[grade] [varchar](30) NULL,
	[suffix] [varchar](10) NULL,
	[CustPackCode] [varchar](10) NULL,
	[HD_FLAG] [varchar](1) NOT NULL,
	[INVOICE_N] [varchar](20) NULL,
	[invoice_dt] [datetime] NULL,
	[customs_fob_value] [numeric](21, 3) NULL,
	[source_po] [varchar](40) NULL,
	[source_so] [varchar](50) NULL,
	[Total_Net_Price] [decimal](12, 2) NULL,
 CONSTRAINT [PK_EXPORT_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_PRODUCT_EXT](
	[PROD_EXPORT_N] [numeric](18, 0) NOT NULL,
	[PROD_LINE_N] [numeric](18, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[ISOCCODE] [varchar](50) NULL,
	[NUMBER_OF_CONT] [numeric](18, 0) NULL,
 CONSTRAINT [PK_EXPORT_PRODUCT_EXT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_REF](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NOT NULL,
	[REF_YM] [varchar](6) NOT NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) NOT NULL,
	[OCEAN_BL] [varchar](30) NOT NULL,
	[OBL_TERM_ID] [varchar](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[PORT_DISC_ID] [varchar](10) NOT NULL,
	[CR_BKG_REF_N] [varchar](50) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NOT NULL,
	[ETA_DEST] [datetime] NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[REF_CLOSE_IND] [varchar](1) NOT NULL,
	[REF_CLOSE_D] [datetime] NULL,
	[S_SHIPPER1] [varchar](70) NULL,
	[S_SHIPPER2] [varchar](70) NULL,
	[S_SHIPPER3] [varchar](70) NULL,
	[S_SHIPPER4] [varchar](70) NULL,
	[S_SHIPPER5] [varchar](70) NULL,
	[S_SHIPPER6] [varchar](70) NULL,
	[S_CON1] [varchar](70) NULL,
	[S_CON2] [varchar](70) NULL,
	[S_CON3] [varchar](70) NULL,
	[S_CON4] [varchar](70) NULL,
	[S_CON5] [varchar](70) NULL,
	[S_CON6] [varchar](70) NULL,
	[S_NP1] [varchar](70) NULL,
	[S_NP2] [varchar](70) NULL,
	[S_NP3] [varchar](70) NULL,
	[S_NP4] [varchar](70) NULL,
	[S_NP5] [varchar](70) NULL,
	[S_NP6] [varchar](70) NULL,
	[S_AG1] [varchar](70) NULL,
	[S_AG2] [varchar](70) NULL,
	[S_AG3] [varchar](70) NULL,
	[S_AG4] [varchar](70) NULL,
	[S_AG5] [varchar](70) NULL,
	[S_AG6] [varchar](70) NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[D_CUST_ID] [varchar](10) NULL,
	[D_CONTACT] [varchar](50) NULL,
	[D_HAU_ID] [varchar](10) NULL,
	[D_RE] [varchar](70) NULL,
	[D_PACK_WORDS] [varchar](70) NULL,
	[D_YARD] [varchar](50) NULL,
	[D_REMARKS1] [varchar](70) NULL,
	[D_REMARKS2] [varchar](70) NULL,
	[D_REMARKS3] [varchar](70) NULL,
	[D_REMARKS4] [varchar](70) NULL,
	[D_REMARKS5] [varchar](70) NULL,
	[D_TRK_DATE] [varchar](70) NULL,
	[D_TRK_ADD] [varchar](70) NULL,
	[D_TRK_ADD2] [varchar](70) NULL,
	[D_STUFF_DATE] [varchar](70) NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) NULL,
	[PROFIT_LOSS_A] [numeric](11, 3) NULL,
	[SHARE_50_A] [numeric](11, 3) NULL,
	[CREDIT_A] [numeric](11, 3) NULL,
	[DEBIT_A] [numeric](11, 3) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[EXPRESS_BL] [varchar](1) NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) NULL,
	[NO_HBL] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) NULL,
	[CONT_40] [numeric](3, 0) NULL,
	[CONT_20] [numeric](3, 0) NULL,
	[CONT_45] [numeric](3, 0) NULL,
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
	[PORT_DISC_ID2] [varchar](10) NULL,
	[NEUTRAL_IND] [varchar](1) NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[ACTUAL_CR_ID] [varchar](10) NULL,
	[OBL_TYPE] [varchar](20) NULL,
	[OBL_TOTAL] [numeric](10, 0) NULL,
	[OBL_COPY] [numeric](10, 0) NULL,
	[TRANS_MODE] [varchar](10) NULL,
	[ATA_DEST] [datetime] NULL,
	[ATA] [datetime] NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[OBL_COLLECT_DATE] [datetime] NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[EXPORT_BKG_N] [numeric](9, 0) NOT NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[TRANSIT_DAYS] [numeric](5, 0) NULL,
	[TYPE_IND] [varchar](2) NULL,
	[CARRIER_PRINT_IND] [varchar](1) NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) NULL,
	[POD_AGENT_ID] [varchar](10) NULL,
	[CONT_WORDS] [varchar](50) NULL,
	[SCH_FAX_IND] [varchar](1) NULL,
	[REMARKS] [varchar](100) NULL,
	[booked_etd] [datetime] NULL,
	[booked_etadest] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[closed_by] [varchar](20) NULL,
	[opened_by] [varchar](20) NULL,
	[opened_d] [datetime] NULL,
	[permit_by_nvocc] [varchar](1) NULL,
	[cust_id_ref] [varchar](10) NOT NULL,
	[previous_etd] [datetime] NULL,
	[vessel_loc_code_out] [varchar](7) NULL,
	[book_approver_status] [numeric](1, 0) NULL,
	[book_approver] [varchar](20) NULL,
	[book_approver_date] [datetime] NULL,
	[book_approver_remarks] [varchar](255) NULL,
	[book_rem_status_1] [numeric](1, 0) NULL,
	[book_rem_status_2] [numeric](1, 0) NULL,
	[book_rem_status_3] [numeric](1, 0) NULL,
	[DG_REMARKS] [varchar](255) NULL,
	[conf_bl_to_ssline_d] [datetime] NULL,
	[plant_code] [varchar](20) NULL,
	[booked_eta] [datetime] NULL,
	[truck_waybill_no] [varchar](30) NULL,
	[orig_booked_vessel_eta] [datetime] NULL,
	[order_type] [varchar](10) NULL,
	[vessel_ref] [decimal](10, 0) NULL,
	[reefer_temp] [decimal](10, 3) NULL,
	[route_id] [varchar](10) NULL,
	[no_permit_amendreq] [varchar](1) NULL,
	[eta_del] [datetime] NULL,
	[eta_portnet] [datetime] NULL,
	[InclContFlag] [char](2) NULL,
	[freight_forwarder] [varchar](100) NULL,
	[buffer_order] [int] NULL,
	[ServiceContractNo] [varchar](100) NULL,
 CONSTRAINT [PK_EXPORT_REF] PRIMARY KEY CLUSTERED 
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_REF_CONT](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](50) NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[EXPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](11, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[LOT_N] [varchar](200) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[M3] [numeric](9, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[CAPACITY] [varchar](50) NULL,
	[EMPTY_TANK_RELEASE_DT] [datetime] NULL,
	[DEPOT_ROWID] [numeric](18, 0) NULL,
	[batch_no] [varchar](100) NULL,
	[prod_line_n] [varchar](50) NULL,
	[tot_pallet] [decimal](10, 0) NULL,
	[cont_rcv_dt] [datetime] NULL,
	[load_standard] [int] NULL,
	[product_id] [varchar](255) NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) NULL,
	[verified_d] [datetime] NULL,
	[verification_method] [varchar](3) NULL,
	[packmat_gw] [numeric](11, 3) NULL,
	[warehouse_id] [varchar](10) NULL,
	[delivery_no] [varchar](20) NULL,
	[CONTAINER_SERVICE] [varchar](50) NULL,
	[SERVICE_DATE_MANIFESTED] [datetime] NULL,
	[SERVICE_DATE_TRUCK2YARD] [datetime] NULL,
	[SERVICE_DATE_PREXRAY] [datetime] NULL,
	[SERVICE_DATE_BOOKED_STRIPPPING] [datetime] NULL,
	[SERVICE_DATE_BOOKED_DOOROPEN] [datetime] NULL,
	[SERVICE_DATE_STRIP] [datetime] NULL,
	[SERVICE_DATE_STUFF] [datetime] NULL,
	[SERVICE_DATE_LOAD] [datetime] NULL,
	[CONTAINER_IN_TIME] [datetime] NULL,
	[CONTAINER_OUT_TIME] [datetime] NULL,
	[DCT_REFERENCE_NO] [varchar](50) NULL,
	[PORT_ROTATION_NO] [varchar](50) NULL,
	[empty_pickup] [datetime] NULL,
	[gate_in] [datetime] NULL,
	[vessel_load] [datetime] NULL,
	[vessel_departure] [datetime] NULL,
	[vessel_arrival] [datetime] NULL,
	[unloaded_from_vessel] [datetime] NULL,
	[gated_out] [datetime] NULL,
	[returned] [datetime] NULL,
	[SEAL_N1] [varchar](255) NULL,
	[email_to_transporter] [char](10) NOT NULL,
	[wh_gateindate] [datetime] NULL,
	[yard_gateindate] [datetime] NULL,
 CONSTRAINT [exp_ref_cont_pk] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_REF_N] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC,
	[CONT_TYPE_ID] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_REF_ROLL](
	[SEQ_N] [numeric](18, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](18, 0) NOT NULL,
	[USER_CREATED] [varchar](50) NULL,
	[DT_TIME_CREATED] [datetime] NULL,
	[NC_FLAG] [varchar](10) NULL,
	[ORIG_SAIL_DT] [datetime] NULL,
	[ORIG_ETA_DEST_DT] [datetime] NULL,
	[ORIG_CUTOFF_DT] [datetime] NULL,
	[ORIG_VOY_NO] [varchar](20) NULL,
	[ORIG_VESSEL] [varchar](30) NULL,
	[ORIG_SCAC] [varchar](50) NULL,
	[ORIG_NVOC] [varchar](50) NULL,
	[ORIG_CARRIER_NAME] [varchar](70) NULL,
	[NEW_SAIL_DT] [datetime] NULL,
	[NEW_ETA_DEST_DT] [datetime] NULL,
	[NEW_CUTOFF_DT] [datetime] NULL,
	[NEW_VOY_NO] [varchar](20) NULL,
	[NEW_VESSEL] [varchar](30) NULL,
	[NEW_SCAC] [varchar](50) NULL,
	[NEW_NVOC] [varchar](50) NULL,
	[NEW_CARRIER_NAME] [varchar](70) NULL,
	[ORIG_ETA_DT] [datetime] NULL,
	[NEW_ETA_DT] [datetime] NULL,
	[REMARKS] [text] NULL,
	[PRINT_IN_RPTS_IND] [varchar](2) NULL,
	[ORIG_BL_FROM_SSLINE_D] [datetime] NULL,
	[NEW_BL_FROM_SSLINE_D] [datetime] NULL,
	[ORIG_ACTUAL_SAIL_D] [datetime] NULL,
	[NEW_ACTUAL_SAIL_D] [datetime] NULL,
	[LAST_USER_CREATED] [varchar](50) NULL,
	[NC_COMPLAINT_DESC] [varchar](200) NULL,
	[ORIG_CR_BKG_REF_N] [varchar](50) NULL,
	[NEW_CR_BKG_REF_N] [varchar](50) NULL,
	[ORIG_PLANT_LOAD_D] [datetime] NULL,
	[NEW_PLANT_LOAD_D] [datetime] NULL,
	[ORIG_BL_N] [varchar](30) NULL,
	[NEW_BL_N] [varchar](30) NULL,
	[ORIG_PAYMENT_TERMS] [varchar](250) NULL,
	[NEW_PAYMENT_TERMS] [varchar](250) NULL,
	[ORIG_DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[NEW_DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[ORIG_DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[NEW_DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[ORIG_BL_TO_SSLINE_D] [datetime] NULL,
	[NEW_BL_TO_SSLINE_D] [datetime] NULL,
	[ORIG_DOCS_DISP_BY_BANK_D] [datetime] NULL,
	[NEW_DOCS_DISP_BY_BANK_D] [datetime] NULL,
	[ORIG_DOCS_FROM_CUST_D] [datetime] NULL,
	[NEW_DOCS_FROM_CUST_D] [datetime] NULL,
	[ORIG_SHIP_ON_BOARD] [datetime] NULL,
	[NEW_SHIP_ON_BOARD] [datetime] NULL,
	[ORIG_BL_ISSUE] [varchar](40) NULL,
	[NEW_BL_ISSUE] [varchar](40) NULL,
	[ORIG_ACTUAL_ARR_D] [datetime] NULL,
	[NEW_ACTUAL_ARR_D] [datetime] NULL,
	[ORIG_WEB_WAREHOUSE] [varchar](100) NULL,
	[NEW_WEB_WAREHOUSE] [varchar](100) NULL,
	[internal_remarks] [text] NULL,
	[orig_gi_chemical_d] [datetime] NULL,
	[new_gi_chemical_d] [datetime] NULL,
	[NEW_1ST_LINE_NET_WT] [numeric](11, 3) NULL,
	[orig_1st_line_net_wt] [numeric](11, 3) NULL,
	[NEW_1ST_LINE_WT] [numeric](11, 3) NULL,
	[orig_1st_line_wt] [numeric](11, 3) NULL,
	[new_1st_line_m3] [numeric](12, 4) NULL,
	[orig_1st_line_m3] [numeric](12, 4) NULL,
	[orig_uom] [varchar](10) NULL,
	[new_uom] [varchar](10) NULL,
	[conf_bl_to_ssline_d] [datetime] NULL,
	[isf102_ref] [varchar](50) NULL,
	[express_ind] [varchar](1) NULL,
	[obl_type] [varchar](20) NULL,
	[ORIG_doc_cutoff_date] [datetime] NULL,
	[NEW_doc_cutoff_date] [datetime] NULL,
 CONSTRAINT [PK_EXPORT_REF_ROLL] PRIMARY KEY CLUSTERED 
(
	[SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_SCH](
	[EXPORT_BKG_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[ETA_DEST] [datetime] NULL,
	[TRANSIT_DAYS] [numeric](3, 0) NULL,
	[CR_AGENT_ID] [varchar](10) NULL,
	[CR_BKG_REF_N] [varchar](30) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[FT_20_Q] [numeric](10, 0) NULL,
	[FT_40_Q] [numeric](10, 0) NULL,
	[FT_45_Q] [numeric](10, 0) NULL,
	[LAST_BKG_N] [numeric](10, 0) NULL,
	[SCH_FAX_IND] [varchar](1) NULL,
	[USER_ID] [varchar](10) NULL,
	[ENTRY_D] [datetime] NULL,
	[FILE_CLOSE_IND] [varchar](1) NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[REMARKS] [varchar](100) NULL,
	[CONT_WORDS] [varchar](50) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[TYPE_IND] [varchar](2) NULL,
	[TOTAL_M3] [numeric](10, 3) NULL,
	[TOTAL_WT] [numeric](10, 3) NULL,
	[POD_AGENT_ID] [varchar](10) NULL,
	[TOT_W3] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[VESSEL2] [varchar](30) NULL,
	[VOYAGE2] [varchar](20) NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[PORT_DISC_ID2] [varchar](10) NULL,
	[CLOSE_DATE] [datetime] NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[ACTUAL_CR_ID] [varchar](10) NULL,
	[CARRIER_PRINT_IND] [varchar](1) NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[PLACE_REC_NAME] [varchar](40) NULL,
	[ACTUAL_CR_NAME] [varchar](40) NULL,
 CONSTRAINT [PK_EXPORT_SCH] PRIMARY KEY CLUSTERED 
(
	[EXPORT_BKG_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [export_si_det](
	[export_n] [decimal](18, 0) NOT NULL,
	[move_type] [varchar](10) NULL,
	[send_det_wt] [varchar](10) NULL,
	[shipping_instruction] [varchar](1500) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[doc_header_seq_n_atd] [numeric](18, 0) NULL,
	[doc_header_seq_n_ata] [numeric](18, 0) NULL,
	[po_n_ind] [varchar](2) NULL,
	[freight_payment_loc] [varchar](50) NULL,
	[senddelete_flag] [varchar](2) NULL,
	[remarks] [varchar](1500) NULL,
	[push_email_1] [varchar](50) NULL,
	[push_email_2] [varchar](50) NULL,
	[TotalPalletSendFlag] [varchar](10) NULL,
	[POD_315] [varchar](10) NULL,
	[tech_name_ind] [char](2) NULL,
	[customs_clearance_POL_d] [datetime] NULL,
	[container_clearance_POD_d] [datetime] NULL,
	[freight_payment_loc_code] [char](10) NULL,
 CONSTRAINT [PK_export_si_det] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXXON_PGK_GUIDE_ALI](
	[PROD_GRADE] [varchar](30) NULL,
	[cont_size] [numeric](3, 0) NULL,
	[pkg_type] [varchar](30) NULL,
	[net_wt] [numeric](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FINANCE_REPORT](
	[ENV] [varchar](20) NULL,
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[REPORT_TYPE] [varchar](50) NULL,
	[Generated_Date] [datetime] NULL,
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[voucher_no] [numeric](10, 0) NULL,
 CONSTRAINT [PK_ID] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FMS_LOAD_STANDARD_MAST](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[cust_id] [nchar](10) NOT NULL,
	[weight_desc] [varchar](100) NOT NULL,
	[cont_type_id] [varchar](100) NULL,
	[pallet_count] [int] NULL,
	[package_count] [numeric](9, 0) NULL,
	[package_type] [varchar](100) NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[m3] [numeric](18, 3) NULL,
 CONSTRAINT [PK_FMS_LOAD_STANDARD_MAST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [form_ab](
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Format_Entry_Mapping](
	[doc_head_no] [varchar](100) NOT NULL,
	[format_key] [varchar](30) NOT NULL,
	[entry_name] [varchar](30) NOT NULL,
	[entry_value] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FREIGHT_RATES_PER_CONT](
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[PARENTACCTID] [int] NOT NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[CONT20_RATE] [numeric](18, 2) NULL,
	[CONT40_RATE] [numeric](18, 2) NULL,
 CONSTRAINT [PK_FREIGHT_RATES_PER_CONT] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC,
	[PORT_ID] ASC,
	[PARENTACCTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FullDocsPrinter_mast](
	[printer_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fumigation_ex](
	[export_n] [numeric](10, 0) NOT NULL,
	[group_no] [varchar](30) NULL,
	[location_id] [numeric](10, 0) NULL,
	[location_addr1] [varchar](150) NULL,
	[location_addr2] [varchar](150) NULL,
	[contact_person] [varchar](150) NULL,
	[contact_no] [varchar](50) NULL,
	[cc] [varchar](100) NULL,
	[pallet_cnt] [numeric](10, 2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_fumigation_ex] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fumigation_location](
	[location_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[location_name1] [varchar](150) NULL,
	[location_name2] [varchar](150) NULL,
	[location_addr1] [varchar](150) NULL,
	[location_addr2] [varchar](150) NULL,
	[contact_person] [varchar](100) NULL,
	[contact_no] [varchar](50) NULL,
	[cc] [varchar](100) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_fumigation_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GENCODE_MAST](
	[GENCODE_ID] [varchar](10) NOT NULL,
	[GENCODE_DES] [varchar](40) NULL,
	[ADD_DESC] [varchar](25) NULL,
 CONSTRAINT [PK_GENCODE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[GENCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_CHART](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL,
	[YY_AC_CODE] [varchar](15) NULL,
	[yy_cost_centre_c] [varchar](12) NULL,
 CONSTRAINT [PK_GL_AC] PRIMARY KEY NONCLUSTERED 
(
	[AC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gl_acc_chart_2009](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gl_acc_chart_20100223](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_CHART_2015](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL,
	[YY_AC_CODE] [varchar](15) NULL,
	[yy_cost_centre_c] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_CHART_temp](
	[SC_COA] [float] NULL,
	[AC_DESC] [nvarchar](255) NULL,
	[AC_TYPE] [nvarchar](255) NULL,
	[AC_DORC] [nvarchar](255) NULL,
	[AC_BANK] [nvarchar](255) NULL,
	[AC_CURR] [nvarchar](255) NULL,
	[AC_SUBTYPE] [nvarchar](255) NULL,
	[AC_SUB_PL] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_GST](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[GST_TYPE] [varchar](1) NOT NULL,
	[GST_SRC] [varchar](2) NOT NULL,
	[GST_PER] [numeric](3, 2) NULL,
 CONSTRAINT [SYS_C0052345] PRIMARY KEY NONCLUSTERED 
(
	[AC_CODE] ASC,
	[GST_TYPE] ASC,
	[GST_SRC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_PERIOD](
	[AC_YEAR] [numeric](4, 0) NOT NULL,
	[AC_PERIOD] [numeric](2, 0) NOT NULL,
	[START_DT] [datetime] NULL,
	[END_DT] [datetime] NULL,
	[CURR_YEAR] [numeric](4, 0) NULL,
	[CURR_PERIOD] [numeric](2, 0) NULL,
	[CLOSE_IND] [varchar](1) NULL,
 CONSTRAINT [PK_GL_ACC_PERIOD] PRIMARY KEY NONCLUSTERED 
(
	[AC_YEAR] ASC,
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gl_chart_acct_temp](
	[SC_COA] [float] NULL,
	[AC_DESC] [nvarchar](255) NULL,
	[AC_TYPE] [nvarchar](255) NULL,
	[AC_DORC] [nvarchar](255) NULL,
	[AC_BANK] [nvarchar](255) NULL,
	[AC_CURR] [nvarchar](255) NULL,
	[AC_SUBTYPE] [nvarchar](255) NULL,
	[AC_SUB_PL] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ENTRY](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[POST_TRANS_NO] [numeric](10, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[POST_DT] [datetime] NULL,
	[DOC_DT] [datetime] NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[BANK_IND] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[CHQ_DT] [datetime] NULL,
	[REMARKS] [nvarchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[TERM_ID] [varchar](10) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REV_TRANS_NO] [numeric](10, 0) NULL,
	[AC_ACTIVE] [char](1) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[IsExportedToYY] [char](1) NOT NULL,
	[GLFileName] [varchar](255) NULL,
	[cost_centre_c] [varchar](10) NULL,
 CONSTRAINT [PK_GL_ENTRY] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gl_entry_all_20120427](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[POST_TRANS_NO] [numeric](10, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[POST_DT] [datetime] NULL,
	[DOC_DT] [datetime] NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[BANK_IND] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[CHQ_DT] [datetime] NULL,
	[REMARKS] [nvarchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[TERM_ID] [varchar](10) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REV_TRANS_NO] [numeric](10, 0) NULL,
	[AC_ACTIVE] [char](1) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[IsExportedToYY] [char](1) NOT NULL,
	[GLFileName] [varchar](255) NULL,
	[cost_centre_c] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ENTRY_DET](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[GL_LINE_NO] [numeric](3, 0) NOT NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_DT] [datetime] NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[REMARKS] [nvarchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[PAID_DOC] [varchar](30) NULL,
	[PAID_TYPE] [varchar](2) NULL,
	[INV_DT] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
	[PERSON_ID] [varchar](20) NULL,
 CONSTRAINT [PK_GL_ENTRY_DET] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC,
	[GL_LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gl_entry_det_all_20120427](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[GL_LINE_NO] [numeric](3, 0) NOT NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_DT] [datetime] NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[REMARKS] [nvarchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[PAID_DOC] [varchar](30) NULL,
	[PAID_TYPE] [varchar](2) NULL,
	[INV_DT] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
	[PERSON_ID] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_GST_TYPE](
	[GST_TYPE] [varchar](1) NOT NULL,
	[GST_SRC] [varchar](1) NULL,
	[GST_DESC] [varchar](40) NULL,
	[GST_PER] [numeric](3, 2) NULL,
 CONSTRAINT [SYS_C0052355] PRIMARY KEY NONCLUSTERED 
(
	[GST_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_TEMPLATEDT](
	[gltmpdid] [numeric](18, 0) NOT NULL,
	[gltmpdlineid] [int] NOT NULL,
	[gltmpd_accode] [numeric](20, 4) NULL,
	[gltmpd_desc] [varchar](50) NULL,
	[gltmpd_acdorc] [varchar](2) NULL,
 CONSTRAINT [PK_GL_TEMPLATEDT] PRIMARY KEY CLUSTERED 
(
	[gltmpdid] ASC,
	[gltmpdlineid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_TEMPLATEHD](
	[gltmphid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[gltmphname] [varchar](255) NULL,
	[gltmph_valid] [char](1) NULL,
	[gltmph_crtby] [varchar](10) NULL,
	[gltmph_crtdt] [datetime] NULL,
	[gltmph_modby] [varchar](10) NULL,
	[gltmph_moddt] [datetime] NULL,
 CONSTRAINT [PK_GL_TEMPLATEHD] PRIMARY KEY CLUSTERED 
(
	[gltmphid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GLOBAL_CUST_MAST](
	[GLB_CUST_ID] [varchar](30) NOT NULL,
	[GLB_CUST_NAME] [varchar](70) NOT NULL,
 CONSTRAINT [PK_GLB_CUST_ID] PRIMARY KEY NONCLUSTERED 
(
	[GLB_CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HAULIER_INS_SHEET](
	[REF_NO] [numeric](10, 0) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[HAULIER] [varchar](70) NULL,
	[CR_NO] [varchar](20) NOT NULL,
	[ATTENTION] [varchar](40) NOT NULL,
	[COLLECT_FROM_1] [varchar](40) NULL,
	[COLLECT_FROM_2] [varchar](40) NULL,
	[TRUCK_TO_1] [varchar](40) NOT NULL,
	[TRUCK_TO_2] [varchar](40) NOT NULL,
	[PKGS] [numeric](13, 4) NOT NULL,
	[M3] [decimal](11, 3) NOT NULL,
	[WEIGHT] [decimal](11, 3) NOT NULL,
	[CONT_NO] [varchar](15) NOT NULL,
	[COLLECT_D] [datetime] NOT NULL,
	[REMARKS1] [varchar](40) NULL,
	[REMARKS2] [varchar](40) NULL,
	[REMARKS3] [varchar](40) NULL,
	[REMARKS4] [varchar](40) NULL,
	[REMARKS5] [varchar](40) NULL,
	[REMARKS6] [varchar](40) NULL,
	[USER_ID] [varchar](10) NULL,
	[PKGS_TYPE] [varchar](20) NULL,
	[COLLECT_FROM_3] [varchar](40) NULL,
	[TRUCK_TO_3] [varchar](40) NULL,
	[HAULIER_TEL_N] [varchar](20) NULL,
	[HAULIER_FAX_N] [varchar](20) NULL,
	[TRUCK_INS] [varchar](50) NULL,
	[TRUCK_DATE] [datetime] NULL,
	[TRUCK_TIME] [varchar](20) NULL,
	[palletization] [varchar](50) NULL,
	[remarks] [text] NULL,
	[group_n] [varchar](50) NULL,
	[ac_by] [varchar](20) NULL,
	[cc1] [varchar](50) NULL,
	[cc2] [varchar](50) NULL,
	[LUBS_REMARKS] [varchar](200) NULL,
	[n2_blanketing] [varchar](1) NULL,
	[ROW_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LOADING_DATE] [datetime] NULL,
	[LOOSE_STUFFING] [varchar](50) NULL,
	[HEAT_TREATMENT_PLYWOOD] [varchar](50) NULL,
	[FUMIGATION_IND] [varchar](50) NULL,
	[INSPECTION_IND] [varchar](50) NULL,
	[PREHEATED_PALLET] [varchar](50) NULL,
	[INSPECTION_DATE] [datetime] NULL,
	[PLANT_CODE] [varchar](10) NULL,
	[EMAIL] [varchar](255) NULL,
	[DEPOT] [varchar](255) NULL,
	[DEPOT_CONTACT] [varchar](150) NULL,
	[DEPOT_TELEPHONE] [varchar](50) NULL,
	[DEPOT_ADDRESS] [varchar](255) NULL,
	[VENDOR] [varchar](255) NULL,
	[ADDRESS1] [varchar](100) NULL,
	[ADDRESS2] [varchar](100) NULL,
	[ADDRESS3] [varchar](100) NULL,
	[TELEPHONE] [varchar](50) NULL,
	[FAX] [varchar](50) NULL,
	[VENDOR_EMAIL] [varchar](255) NULL,
	[EMAIL_CC] [varchar](255) NULL,
	[EGS_PO_NO] [varchar](30) NULL,
	[EGS_DT] [datetime] NULL,
 CONSTRAINT [PK_HAULIER] PRIMARY KEY CLUSTERED 
(
	[REF_NO] ASC,
	[TRA_TYPE] ASC,
	[ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HBL_TEMP](
	[EXPORT_N] [decimal](18, 0) NULL,
	[LINE_NO] [varchar](10) NULL,
	[MKGS] [varchar](1500) NULL,
	[LINEPKGS] [varchar](20) NULL,
	[LINEDESC] [varchar](6000) NULL,
	[LINE_WT] [numeric](18, 3) NULL,
	[LINE_M3] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[IMPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[HBL_N] [varchar](20) NOT NULL,
	[TOT_M3] [numeric](13, 3) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[GD_DES1] [varchar](100) NOT NULL,
	[GD_DES2] [varchar](100) NOT NULL,
	[GD_DES3] [varchar](50) NOT NULL,
	[GD_DES4] [varchar](50) NOT NULL,
	[GD_DES5] [varchar](50) NOT NULL,
	[EXPRESS_IND] [varchar](1) NOT NULL,
	[SHIPPER_1] [varchar](70) NOT NULL,
	[SHIPPER_2] [varchar](70) NOT NULL,
	[DO_READY_IND] [varchar](1) NOT NULL,
	[T_SHIP_IND] [varchar](1) NOT NULL,
	[T_VESSEL] [varchar](30) NOT NULL,
	[T_VOYAGE] [varchar](20) NOT NULL,
	[T_COLOADER] [varchar](100) NOT NULL,
	[T_ETD_SIN] [datetime] NOT NULL,
	[T_ETA_DEST] [datetime] NOT NULL,
	[T_RATES] [numeric](11, 2) NOT NULL,
	[T_PORT_DISC_ID] [varchar](10) NOT NULL,
	[T_FIN_DEST] [varchar](50) NOT NULL,
	[T_FINAGENT] [varchar](50) NOT NULL,
	[T_WAREHOUSE_ID] [varchar](10) NOT NULL,
	[T_REMARKS] [varchar](50) NOT NULL,
	[T_AGENT_ID] [varchar](10) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[DO_TO] [varchar](100) NULL,
	[PERMIT_NO] [varchar](100) NULL,
	[TRUCKING_IND] [varchar](1) NULL,
	[FR_COLLECT_IND] [varchar](1) NULL,
	[COLLECT_A] [numeric](11, 2) NULL,
	[EXPORT_BKG_DIRECT_N] [numeric](10, 0) NULL,
	[TRUCKER_ID] [varchar](10) NULL,
	[COLLECT_CURRENCY] [varchar](10) NULL,
	[TRANSFER_FLAG] [varchar](1) NULL,
	[TRANSFER_N] [numeric](10, 0) NULL,
	[DELIVERY_D] [datetime] NULL,
	[PO_N] [varchar](100) NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) NULL,
	[I_RATE] [numeric](12, 3) NULL,
	[F_M3_WT] [numeric](13, 3) NULL,
	[EXPORT_BKG_REF_NO] [varchar](30) NULL,
	[EXPORT_BKG_REF_NO_LINE] [numeric](10, 0) NULL,
	[COLLECT_EX_RATE] [numeric](11, 5) NULL,
	[T_PORT_FIN_DEST] [varchar](10) NULL,
	[CONT_N] [varchar](30) NULL,
	[REMARKS1] [varchar](30) NULL,
	[REMARKS2] [varchar](30) NULL,
	[REMARKS3] [varchar](150) NULL,
	[REMARKS4] [varchar](150) NULL,
	[REMARKS5] [varchar](150) NULL,
	[FR_COLLECT_IND2] [varchar](2) NULL,
	[T_REMARKS1] [varchar](30) NULL,
	[T_REMARKS2] [varchar](30) NULL,
	[T_REMARKS3] [varchar](30) NULL,
	[T_REMARK1] [varchar](30) NULL,
	[T_REMARK2] [varchar](30) NULL,
	[T_REMARK3] [varchar](30) NULL,
	[NOMINATE_IND] [varchar](2) NULL,
	[ETA_FINAL] [datetime] NULL,
	[WEB_WAREHOUSE] [varchar](100) NULL,
	[WEB_BL] [varchar](100) NULL,
	[WEB_POD] [varchar](100) NULL,
	[WEB_CFS] [varchar](100) NULL,
	[WEB_DO_READY] [varchar](100) NULL,
	[WEB_DO_COLLECT] [varchar](100) NULL,
	[WEB_CONSIGNEE] [varchar](100) NULL,
	[WEB_REMARKS] [varchar](50) NULL,
	[T_CHG_IND] [varchar](1) NULL,
	[T_CHG_D] [datetime] NULL,
	[UP_USER_ID] [varchar](20) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[LOT_NO] [varchar](40) NULL,
	[BATCH_NO] [varchar](40) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[other1] [varchar](70) NULL,
	[other2] [varchar](70) NULL,
	[other3] [varchar](70) NULL,
	[other4] [varchar](70) NULL,
	[other5] [varchar](70) NULL,
	[other6] [varchar](70) NULL,
	[cargo_loc1] [varchar](70) NULL,
	[cargo_loc2] [varchar](70) NULL,
	[cargo_loc3] [varchar](70) NULL,
	[cargo_loc4] [varchar](70) NULL,
	[cargo_loc5] [varchar](70) NULL,
	[cargo_loc6] [varchar](70) NULL,
	[remarks] [text] NULL,
	[shipper_02] [varchar](70) NULL,
	[shipper_03] [varchar](70) NULL,
	[shipper_04] [varchar](70) NULL,
	[shipper_05] [varchar](70) NULL,
	[consignee_2] [varchar](70) NULL,
	[consignee_3] [varchar](70) NULL,
	[consignee_4] [varchar](70) NULL,
	[consignee_5] [varchar](70) NULL,
	[shipper_06] [varchar](70) NULL,
	[consignee_6] [varchar](70) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[CONSIGNEE_NO] [varchar](40) NULL,
	[PO_N_NEW] [varchar](40) NULL,
	[ISO] [numeric](18, 0) NULL,
	[LC_CONSIGNEE_1] [varchar](70) NULL,
	[LC_CONSIGNEE_2] [varchar](70) NULL,
	[LC_CONSIGNEE_3] [varchar](70) NULL,
	[LC_CONSIGNEE_4] [varchar](70) NULL,
	[LC_CONSIGNEE_5] [varchar](70) NULL,
	[LC_CONSIGNEE_6] [varchar](70) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[PORT_REC_ID] [varchar](10) NULL,
	[PORT_REC_NAME] [varchar](40) NULL,
	[PORT_DEL_ID] [varchar](10) NULL,
	[PORT_DEL_NAME] [varchar](40) NULL,
	[SHIPPER_REF1] [varchar](40) NULL,
	[SHIPPER_REF2] [varchar](40) NULL,
	[SHIPPER_REF3] [varchar](40) NULL,
	[SHIPPER_REF4] [varchar](40) NULL,
	[SHIPPER_REF5] [varchar](40) NULL,
	[INVOICE_N] [varchar](20) NULL,
	[PAYMENT_TERMS] [varchar](250) NULL,
	[BILL_TO1] [varchar](70) NULL,
	[BILL_TO2] [varchar](70) NULL,
	[BILL_TO3] [varchar](70) NULL,
	[BILL_TO4] [varchar](70) NULL,
	[BILL_TO5] [varchar](70) NULL,
	[BILL_TO6] [varchar](70) NULL,
	[OCEAN_FR_COST] [numeric](11, 3) NULL,
	[ACTUAL_ARR_D] [datetime] NULL,
	[BL_TO_SSLINE_D] [datetime] NULL,
	[BL_FROM_SSLINE_D] [datetime] NULL,
	[DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[S_NP1] [varchar](70) NULL,
	[S_NP2] [varchar](70) NULL,
	[S_NP3] [varchar](70) NULL,
	[S_NP4] [varchar](70) NULL,
	[S_NP5] [varchar](70) NULL,
	[S_NP6] [varchar](70) NULL,
	[S_NP2_1] [varchar](70) NULL,
	[S_NP2_2] [varchar](70) NULL,
	[S_NP2_3] [varchar](70) NULL,
	[S_NP2_4] [varchar](70) NULL,
	[S_NP2_5] [varchar](70) NULL,
	[S_NP2_6] [varchar](70) NULL,
	[CUT_OFF_D] [datetime] NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) NULL,
	[WT_UOM] [varchar](10) NULL,
	[PRT_SIG_IND] [varchar](1) NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) NULL,
	[LC_NO] [varchar](70) NULL,
	[LC_DESC] [varchar](2000) NULL,
	[LC_DESC2] [varchar](250) NULL,
	[BOARD_TERM_ID] [varchar](10) NULL,
	[DTL_WTM3_IND] [varchar](1) NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) NULL,
	[PORT_DEL_TERMS] [varchar](10) NULL,
	[PORT_REC_TERMS] [varchar](10) NULL,
	[SHIP_ON_BRD_IND] [varchar](1) NULL,
	[SHIP_COUNT_IND] [varchar](1) NULL,
	[S_AG1] [varchar](70) NULL,
	[S_AG2] [varchar](70) NULL,
	[S_AG3] [varchar](70) NULL,
	[S_AG4] [varchar](70) NULL,
	[S_AG5] [varchar](70) NULL,
	[S_AG6] [varchar](70) NULL,
	[BKG_REF_N] [varchar](30) NULL,
	[PORT_ISSUE_NAME] [varchar](40) NULL,
	[SELECT_CONT_IND] [varchar](1) NULL,
	[SIGNATURE_NAME] [varchar](20) NULL,
	[SEND_TYPE_ID] [varchar](1) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [varchar](500) NULL,
	[EDI_REMARKS2] [varchar](500) NULL,
	[POINT_ID] [varchar](10) NULL,
	[POINT_DESC] [varchar](40) NULL,
	[ORIGIN_ID] [varchar](10) NULL,
	[ORIGIN_DESC] [varchar](40) NULL,
	[DG_IND] [varchar](1) NULL,
	[HAZARD_DECL] [varchar](250) NULL,
	[HAZARD_DECL2] [varchar](250) NULL,
	[PACK_CERT] [varchar](250) NULL,
	[EMER_CONT] [varchar](250) NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) NULL,
	[SED_CLAUSE] [varchar](250) NULL,
	[ITN] [varchar](250) NULL,
	[SIGN_DECL] [varchar](250) NULL,
	[ADD_REMARKS] [varchar](250) NULL,
	[HAZARD_IND] [varchar](1) NULL,
	[PACK_IND] [varchar](1) NULL,
	[EMER_IND] [varchar](1) NULL,
	[US_BOYCOTT_IND] [varchar](1) NULL,
	[SED_IND] [varchar](1) NULL,
	[ITN_IND] [varchar](1) NULL,
	[SIGN_IND] [varchar](1) NULL,
	[ADD_REM_IND] [varchar](1) NULL,
	[SELECT_CONT] [varchar](1) NULL,
	[F_AG1] [varchar](70) NULL,
	[F_AG2] [varchar](70) NULL,
	[F_AG3] [varchar](70) NULL,
	[F_AG4] [varchar](70) NULL,
	[F_AG5] [varchar](70) NULL,
	[F_AG6] [varchar](70) NULL,
	[INSURER] [varchar](50) NULL,
	[INSUR_VAL] [numeric](11, 3) NULL,
	[PRODUCT_ORIG] [varchar](50) NULL,
	[DOCS_DISP_BANK_D] [datetime] NULL,
	[DOCS_REC_CUST_D] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[invoice_amt] [numeric](15, 2) NULL,
	[entity_rowid] [numeric](10, 0) NULL,
	[gr_d] [datetime] NULL,
	[container_clearance_d] [datetime] NULL,
 CONSTRAINT [PK_IMPORT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_CONV](
	[ORG_ID] [varchar](10) NOT NULL,
	[CNV_IMPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](18, 0) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[HBL_N] [varchar](20) NULL,
	[CUST_ID] [varchar](10) NULL,
 CONSTRAINT [SYS_C0052413] PRIMARY KEY NONCLUSTERED 
(
	[ORG_ID] ASC,
	[CNV_IMPORT_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_LOT](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[LOT_N] [varchar](20) NOT NULL,
	[BATCH_N] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IMPORT_LOT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[LINE_N] ASC,
	[LOT_N] ASC,
	[BATCH_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_MKGS](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[DO_N] [numeric](10, 0) NOT NULL,
	[CONT_N] [varchar](30) NOT NULL,
	[SEAL_N] [varchar](30) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[MKGS1] [varchar](40) NOT NULL,
	[MKGS2] [varchar](40) NOT NULL,
	[MKGS3] [varchar](40) NOT NULL,
	[MKGS4] [varchar](40) NOT NULL,
	[MKGS5] [varchar](40) NOT NULL,
	[MKGS6] [varchar](40) NOT NULL,
	[MKGS7] [varchar](40) NOT NULL,
	[MKGS8] [varchar](40) NOT NULL,
	[MKGS9] [varchar](40) NOT NULL,
	[MKGS10] [varchar](40) NOT NULL,
	[MKGS11] [varchar](40) NOT NULL,
	[MKGS12] [varchar](40) NOT NULL,
	[MKGS13] [varchar](40) NOT NULL,
	[MKGS14] [varchar](40) NOT NULL,
	[MKGS15] [varchar](40) NOT NULL,
	[DES1] [varchar](40) NOT NULL,
	[DES2] [varchar](40) NOT NULL,
	[DES3] [varchar](40) NOT NULL,
	[DES4] [varchar](40) NOT NULL,
	[DES5] [varchar](40) NOT NULL,
	[DES6] [varchar](40) NOT NULL,
	[DES7] [varchar](40) NOT NULL,
	[DES8] [varchar](40) NOT NULL,
	[DES9] [varchar](40) NOT NULL,
	[DES10] [varchar](40) NOT NULL,
	[DES11] [varchar](40) NOT NULL,
	[DES12] [varchar](40) NOT NULL,
	[DES13] [varchar](40) NOT NULL,
	[DES14] [varchar](40) NOT NULL,
	[DES15] [varchar](40) NOT NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_PAR_PKGS] [numeric](10, 0) NULL,
	[AIR_PAR_WT] [numeric](11, 3) NULL,
	[AIR_PAR_M3] [numeric](11, 3) NULL,
	[PAR_IND] [varchar](1) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[AIR_PAR_CHG_WT] [numeric](11, 3) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[PRODUCT_DES] [varchar](50) NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) NULL,
	[MKGS_ALL] [varchar](700) NULL,
	[DES_ALL] [varchar](1600) NULL,
 CONSTRAINT [PK_IMPORT_MKGS] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[DO_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_PERMIT](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](1) NOT NULL,
	[PERMIT_N] [varchar](30) NULL,
	[HBL_N] [varchar](20) NULL,
	[QTY] [decimal](9, 3) NULL,
	[WT_UOM] [varchar](10) NULL,
	[export_n] [numeric](10, 0) NULL,
 CONSTRAINT [PK_IMP_PMT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_PROD_CONT](
	[PROD_IMPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[CONT_TYPE_ID] [varchar](20) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[SELECT_IND] [char](1) NOT NULL,
 CONSTRAINT [PK_IMP_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[PROD_IMPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_PRODUCT](
	[PROD_IMPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_DESC] [varchar](300) NULL,
	[HARMONIZE_CODE] [varchar](250) NULL,
	[PACK_TYPE] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](11, 3) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[INVOICE_N] [varchar](20) NULL,
	[INVOICE_DT] [datetime] NULL,
	[FREIGHT_AMT] [numeric](15, 4) NULL,
 CONSTRAINT [PK_IMPORT_PRODUCT] PRIMARY KEY NONCLUSTERED 
(
	[PROD_IMPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_REF](
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
	[CR_PERMIT_N] [varchar](30) NOT NULL,
	[ETA] [datetime] NOT NULL,
	[ETD] [datetime] NOT NULL,
	[WAREHOUSE_ID] [varchar](10) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CLOSE_IND] [varchar](1) NOT NULL,
	[REF_CLOSE_D] [datetime] NOT NULL,
	[CLOSE_USER_ID] [varchar](20) NULL,
	[REMARKS1] [varchar](50) NOT NULL,
	[REMARKS2] [varchar](50) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_REF_CONT](
	[IMPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](50) NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[IMPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[LOT_N] [varchar](20) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_IMPORT_REF_CONT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_REF_N] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC,
	[CONT_TYPE_ID] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [inspection_ex](
	[export_n] [numeric](10, 0) NOT NULL,
	[group_no] [varchar](30) NULL,
	[location_id] [numeric](10, 0) NULL,
	[location_addr1] [varchar](150) NULL,
	[location_addr2] [varchar](150) NULL,
	[contact_person] [varchar](150) NULL,
	[contact_no] [varchar](50) NULL,
	[cc] [varchar](100) NULL,
	[country_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_inspection_ex] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTER_COSTING](
	[REF_N] [numeric](10, 0) NOT NULL,
	[REF_TYPE] [char](2) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[EX_RATE] [numeric](11, 4) NOT NULL,
	[CHG_A] [numeric](20, 2) NOT NULL,
	[CHG_Q] [numeric](11, 3) NOT NULL,
	[TOT_A] [numeric](20, 2) NOT NULL,
	[TOT_C] [numeric](20, 2) NULL,
	[LOAD_IND] [varchar](10) NULL,
	[DISC_IND] [varchar](10) NULL,
 CONSTRAINT [PK_INTER_COSTING] PRIMARY KEY NONCLUSTERED 
(
	[REF_N] ASC,
	[REF_TYPE] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_BL_LINK](
	[OfficeCode ] [varchar](10) NOT NULL,
	[Export_n] [numeric](10, 0) NOT NULL,
	[Cust_ID] [varchar](10) NULL,
	[ProcessingDate] [datetime] NULL,
	[XML_File_name] [varchar](100) NULL,
	[status] [varchar](20) NULL,
	[MessageType] [varchar](35) NULL,
	[DocumentDate] [datetime] NULL,
	[AssignedBySender] [varchar](35) NULL,
	[AssignedByRecipient] [varchar](35) NULL,
	[BillOfLading] [varchar](35) NULL,
	[ShippedOnBoard] [datetime] NULL,
	[ReceivedForShipment] [datetime] NULL,
	[BillOfLadingReleaseCode] [varchar](35) NULL,
	[BillOfLadingReleaseName] [varchar](35) NULL,
	[BlReleaseDate] [datetime] NULL,
	[PurchaseOrderNumber] [varchar](35) NULL,
	[ShipperIdentifyingNumber] [varchar](35) NULL,
	[BookingNumber] [varchar](35) NULL,
	[BillOfLadingNumber] [varchar](35) NULL,
	[ContractNumber] [varchar](35) NULL,
	[CustomerShipmentIdentifier] [varchar](35) NULL,
	[General] [varchar](255) NULL,
	[BlClause] [text] NULL,
	[NumberOfEquipment] [decimal](10, 3) NULL,
	[NumberOfPackages] [decimal](10, 3) NULL,
	[PackageTypeDescription] [varchar](10) NULL,
	[GrossWeight] [decimal](10, 3) NULL,
	[GrossWeightUOM] [varchar](35) NULL,
	[GrossVolume] [decimal](10, 3) NULL,
	[GrossVolumeUOM] [varchar](35) NULL,
	[MovementType] [varchar](35) NULL,
	[ServiceType] [varchar](35) NULL,
	[TransportStage] [varchar](35) NULL,
	[TransportMode] [varchar](35) NULL,
	[ConveyanceName] [varchar](35) NULL,
	[VoyageTripNumber] [varchar](17) NULL,
	[CarrierSCAC] [varchar](17) NULL,
	[TransportIdentificationType] [varchar](9) NULL,
	[TransportMeansType] [varchar](17) NULL,
	[TransportNationality] [varchar](2) NULL,
	[PlaceOfDeliveryCode] [varchar](25) NULL,
	[PlaceOfDeliveryname] [varchar](100) NULL,
	[PlaceOfReceiptCode] [varchar](25) NULL,
	[PlaceOfReceiptName] [varchar](100) NULL,
	[PortOfDischargeCode] [varchar](25) NULL,
	[PortOfDischargeName] [varchar](100) NULL,
	[PortOfLoadingCode] [varchar](25) NULL,
	[PortOfLoadingName] [varchar](100) NULL,
	[Carrier] [varchar](50) NULL,
	[ShipperName] [varchar](100) NULL,
	[ShipperAdd1] [varchar](100) NULL,
	[ShipperAdd2] [varchar](100) NULL,
	[ShipperAdd3] [varchar](100) NULL,
	[ShipperAdd4] [varchar](100) NULL,
	[ConsigneeName] [varchar](100) NULL,
	[ConsigneeAdd1] [varchar](100) NULL,
	[ConsigneeAdd2] [varchar](100) NULL,
	[ConsigneeAdd3] [varchar](100) NULL,
	[ConsigneeAdd4] [varchar](100) NULL,
	[NotifyPartyName] [varchar](100) NULL,
	[NotifyPartyAdd1] [varchar](100) NULL,
	[NotifyPartyAdd2] [varchar](100) NULL,
	[NotifyPartyAdd3] [varchar](100) NULL,
	[NotifyPartyAdd4] [varchar](100) NULL,
	[BLRecipient] [varchar](35) NULL,
	[BLRecipientName] [varchar](35) NULL,
	[ContactName] [varchar](35) NULL,
	[Telephone] [varchar](35) NULL,
	[Fax] [varchar](35) NULL,
	[Email] [varchar](35) NULL,
	[Add1] [varchar](35) NULL,
	[Add2] [varchar](35) NULL,
	[Add3] [varchar](35) NULL,
	[Add4] [varchar](35) NULL,
	[ContractPartyName] [varchar](35) NULL,
	[ContractPartyAdd1] [varchar](35) NULL,
	[ContractPartyAdd2] [varchar](35) NULL,
	[GoodsDescription] [text] NULL,
	[PackageMarks] [varchar](255) NULL,
	[party] [varchar](10) NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NotifyParty2Name] [varchar](35) NULL,
	[NotifyParty2Add1] [varchar](35) NULL,
	[NotifyParty2Add2] [varchar](35) NULL,
	[NotifyParty2Add3] [varchar](35) NULL,
	[NotifyParty2Add4] [varchar](35) NULL,
	[PackageTypeCode] [varchar](10) NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK] PRIMARY KEY CLUSTERED 
(
	[OfficeCode ] ASC,
	[Export_n] ASC,
	[party] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_BL_LINK_CONT](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [numeric](3, 0) NOT NULL,
	[EquipmentIdentifier] [varchar](17) NULL,
	[EquipmentTypeCode] [varchar](10) NULL,
	[EquipmentDescription] [varchar](35) NULL,
	[EquipmentGrossWeight] [decimal](10, 3) NULL,
	[EquipmentGrossWeightUOM] [varchar](35) NULL,
	[EquipmentGrossVolume] [decimal](10, 3) NULL,
	[EquipmentGrossVolumeUOM] [varchar](35) NULL,
	[SealingParty] [varchar](35) NULL,
	[EquipmentSeal] [varchar](15) NULL,
	[party] [varchar](10) NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_PROD_DET] PRIMARY KEY CLUSTERED 
(
	[Export_n] ASC,
	[LineNumber] ASC,
	[party] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_BL_LINK_MARKINGS](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [varchar](3) NOT NULL,
	[EquipmentIdentifier] [varchar](17) NULL,
	[NumberOfPackages] [varchar](8) NULL,
	[SplitGrossWeight] [decimal](10, 3) NULL,
	[SplitGrossWeightUOM] [varchar](35) NULL,
	[SplitGoodsGrossVolume] [decimal](10, 3) NULL,
	[SplitGrossVolumeUOM] [varchar](35) NULL,
	[party] [varchar](10) NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_MARKINGS_1] PRIMARY KEY CLUSTERED 
(
	[Export_n] ASC,
	[LineNumber] ASC,
	[party] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_CONT](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[line_n] [decimal](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal_n] [varchar](50) NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL,
	[cont_count] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_HEADER](
	[msg_seq_n] [decimal](18, 0) NOT NULL,
	[msg_ver] [varchar](50) NOT NULL,
	[msg_type] [varchar](50) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[doc_id] [varchar](50) NOT NULL,
	[xml_create_dt] [datetime] NOT NULL,
	[sender] [varchar](50) NOT NULL,
	[recipient] [varchar](50) NOT NULL,
	[shipment_id] [varchar](50) NOT NULL,
	[msg_status] [varchar](50) NOT NULL,
	[bkg_create_dt] [datetime] NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[ref_1] [varchar](50) NOT NULL,
	[shipping_comment] [varchar](2000) NULL,
	[move_type] [varchar](50) NULL,
	[service_type] [varchar](50) NULL,
	[transport_stage] [varchar](50) NULL,
	[transport_mode] [varchar](50) NULL,
	[vessel] [varchar](50) NOT NULL,
	[voyage] [varchar](50) NOT NULL,
	[scac] [varchar](50) NULL,
	[place_rec_id] [varchar](50) NULL,
	[place_rec_name] [varchar](50) NULL,
	[port_load_id] [varchar](50) NULL,
	[port_load_name] [varchar](50) NULL,
	[place_del_id] [varchar](50) NULL,
	[place_del_name] [varchar](50) NULL,
	[port_disc_id] [varchar](50) NULL,
	[port_disc_name] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[booking_n] [varchar](50) NULL,
	[inttra_booking_n] [varchar](50) NULL,
	[bl_n] [varchar](50) NULL,
	[consignee_n] [varchar](50) NULL,
	[contract_n] [varchar](50) NULL,
	[freight_n] [varchar](50) NULL,
	[export_bkg_direct_n] [numeric](18, 0) NULL,
	[cut_off] [datetime] NULL,
	[export_n] [numeric](18, 0) NULL,
	[msg_function] [varchar](50) NULL,
	[doc_msg_name] [varchar](50) NULL,
	[doc_msg_no] [varchar](50) NULL,
	[ref_to_prev_msg] [varchar](50) NULL,
	[equipment_no] [varchar](50) NULL,
	[carrier_ref_no] [varchar](50) NULL,
	[portnet_job_n] [varchar](50) NULL,
	[goods_dest] [varchar](50) NULL,
	[bl_release_off] [varchar](50) NULL,
	[carrier_name] [varchar](50) NULL,
	[event_code] [varchar](50) NULL,
	[event_loc_type] [varchar](50) NULL,
	[event_loc_code] [varchar](50) NULL,
	[event_loc_name] [varchar](50) NULL,
	[event_loc_country] [varchar](50) NULL,
	[event_dt] [datetime] NULL,
	[transport_id] [varchar](50) NULL,
	[transport_id_type] [varchar](50) NULL,
	[event_port] [varchar](2) NULL,
	[dt_qualifier] [varchar](2) NULL,
 CONSTRAINT [PK_INTTRA_DOC_HEADER] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_PARTY](
	[MSG_SEQ_N] [decimal](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) NOT NULL,
	[PARTY_NAME] [varchar](50) NULL,
	[TEL] [varchar](50) NULL,
	[EMAIL_ADD] [varchar](50) NULL,
	[ADD1] [varchar](50) NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](50) NULL,
	[CITY] [varchar](128) NULL,
	[STATE] [varchar](128) NULL,
	[POSTAL_CODE] [varchar](64) NULL,
	[COUNTRY_CODE] [varchar](128) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_PRODUCTS](
	[MSG_SEQ_N] [decimal](10, 0) NOT NULL,
	[LINE_N] [decimal](10, 0) NOT NULL,
	[PRODUCT_ID] [varchar](20) NULL,
	[PRODUCT_NAME] [varchar](50) NULL,
	[NET_WT] [decimal](11, 2) NULL,
	[NET_WT_UOM] [varchar](10) NULL,
	[GROSS_WT] [decimal](11, 2) NULL,
	[GROSS_WT_UOM] [varchar](10) NULL,
	[TOT_PACKAGE] [decimal](11, 2) NULL,
	[PACKAGE_TYPE] [varchar](10) NULL,
	[product_desc] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_REMARKS](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](8000) NULL,
	[severity] [varchar](1) NULL,
 CONSTRAINT [PK_INTTRA_DOC_REMARKS] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_STATUS_CODES_315](
	[event_code] [varchar](10) NOT NULL,
	[event_desc] [varchar](500) NULL,
 CONSTRAINT [PK_status_code_315] PRIMARY KEY CLUSTERED 
(
	[event_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INVOICE](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_D] [datetime] NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[INV_YM] [varchar](6) NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NOT NULL,
	[INV_TRA_TYPE] [varchar](1) NOT NULL,
	[INV_PRN_D] [datetime] NOT NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NOT NULL,
	[INV_CANCEL_IND] [varchar](1) NOT NULL,
	[INV_CANCEL_D] [datetime] NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) NULL,
	[COST_CENTRE_C] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[HBL_N] [varchar](30) NOT NULL,
	[OCEAN_BL] [varchar](30) NULL,
	[GD_DES1] [nvarchar](100) NULL,
	[GD_DES2] [nvarchar](100) NULL,
	[GD_DES3] [nvarchar](40) NULL,
	[GD_DES4] [nvarchar](40) NULL,
	[GD_DES5] [varchar](40) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_M3] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[INV_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_STD_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TYPE] [varchar](2) NULL,
	[PRINT_N] [numeric](5, 0) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[VOID_IND] [varchar](1) NULL,
	[TT_IND] [varchar](1) NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) NULL,
	[TT_CURR] [varchar](3) NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL,
	[INV_EX_RATE_USER_ID] [varchar](20) NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[CONT_FLAG] [char](1) NULL,
	[GD_DESC5] [nvarchar](40) NULL,
	[GD_DESC6] [nvarchar](40) NULL,
	[GD_DESC7] [nvarchar](40) NULL,
	[INV_STAMP_IND] [varchar](1) NULL,
	[INV_OTH_REF] [varchar](40) NULL,
	[REFBL_ID] [varchar](1) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[WITHHOLD_TAX] [numeric](3, 0) NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[REV_CRINV_N] [numeric](10, 0) NULL,
	[cost_centre_acctg] [varchar](10) NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[ar_doc_no] [varchar](20) NULL,
	[hub_rowid] [numeric](10, 0) NOT NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[ar_doc_dt] [datetime] NULL,
	[type] [varchar](10) NOT NULL,
	[isautocreated] [char](1) NULL,
	[upd_app] [varchar](3) NULL,
	[lsr_no] [varchar](50) NULL,
	[TO_ENVI] [varchar](10) NULL,
	[TO_ENVI_JOB] [varchar](10) NULL,
	[BILL_TO_PARTY] [varchar](10) NULL,
	[IS_GROUP] [varchar](1) NULL,
	[GROUP_NO] [varchar](50) NULL,
	[APPROVED_BY] [varchar](10) NULL,
	[APPROVED_DATE] [datetime] NULL,
	[PROCESS_FLAG] [varchar](10) NULL,
	[PROCESS_DATE] [datetime] NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [PK_INVOICE] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INVOICE_DET](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [nvarchar](40) NULL,
	[CHG_DES2] [nvarchar](40) NULL,
	[CHG_DES3] [nvarchar](40) NULL,
	[CHG_DES4] [nvarchar](40) NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 4) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 4) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](20) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[LINE_COST_CENTRE] [char](1) NULL,
	[linechgunit_desc] [varchar](10) NULL,
	[trn_voucher_n] [numeric](10, 0) NULL,
	[trn_environment] [varchar](10) NULL,
 CONSTRAINT [PK_INVOICE_DET] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC,
	[INV_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [invoice_hub](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hub_name] [varchar](35) NOT NULL,
	[contact_person] [varchar](50) NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
 CONSTRAINT [PK_invoice_hub] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [invoice_to_consolidate](
	[batch_id] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](20) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
 CONSTRAINT [PK_invoice_to_consolidate] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC,
	[user_id] ASC,
	[invoice_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Job_Add_dates](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Date_Label] [nvarchar](50) NULL,
	[date_value] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Job_add_text](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Text_Label] [nvarchar](200) NULL,
	[Text_Value] [nvarchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [job_template_mast](
	[ROW_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[PAYMENT_TERM_ID] [numeric](10, 0) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[S_SHIPPER1] [varchar](70) NULL,
	[S_SHIPPER2] [varchar](70) NULL,
	[S_SHIPPER3] [varchar](70) NULL,
	[S_SHIPPER4] [varchar](70) NULL,
	[S_SHIPPER5] [varchar](70) NULL,
	[S_SHIPPER6] [varchar](70) NULL,
	[S_CON1] [varchar](70) NULL,
	[S_CON2] [varchar](70) NULL,
	[S_CON3] [varchar](70) NULL,
	[S_CON4] [varchar](70) NULL,
	[S_CON5] [varchar](70) NULL,
	[S_CON6] [varchar](70) NULL,
	[S_NP1] [varchar](70) NULL,
	[S_NP2] [varchar](70) NULL,
	[S_NP3] [varchar](70) NULL,
	[S_NP4] [varchar](70) NULL,
	[S_NP5] [varchar](70) NULL,
	[S_NP6] [varchar](70) NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[S_NP2_1] [varchar](70) NULL,
	[S_NP2_2] [varchar](70) NULL,
	[S_NP2_3] [varchar](70) NULL,
	[S_NP2_4] [varchar](70) NULL,
	[S_NP2_5] [varchar](70) NULL,
	[S_NP2_6] [varchar](70) NULL,
	[BILL_TO1] [varchar](70) NULL,
	[BILL_TO2] [varchar](70) NULL,
	[BILL_TO3] [varchar](70) NULL,
	[BILL_TO4] [varchar](70) NULL,
	[BILL_TO5] [varchar](70) NULL,
	[BILL_TO6] [varchar](70) NULL,
	[F_AG1] [varchar](70) NULL,
	[F_AG2] [varchar](70) NULL,
	[F_AG3] [varchar](70) NULL,
	[F_AG4] [varchar](70) NULL,
	[F_AG5] [varchar](70) NULL,
	[F_AG6] [varchar](70) NULL,
	[S_AG1] [varchar](70) NULL,
	[S_AG2] [varchar](70) NULL,
	[S_AG3] [varchar](70) NULL,
	[S_AG4] [varchar](70) NULL,
	[S_AG5] [varchar](70) NULL,
	[S_AG6] [varchar](70) NULL,
	[CREATE_BY] [varchar](50) NULL,
	[CREATE_D] [datetime] NULL,
	[MODIFY_BY] [varchar](50) NULL,
	[MODIFY_D] [datetime] NULL,
 CONSTRAINT [pk_job_template_mast] PRIMARY KEY NONCLUSTERED 
(
	[ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JOB_TYPE](
	[job_id] [char](10) NOT NULL,
	[job_description] [char](50) NOT NULL,
 CONSTRAINT [PK_JOB_TYPE] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JOBS_OC_PDF_GENERATE](
	[ROW_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SHIPPER_REF] [varchar](40) NULL,
	[DOC_TYPE] [varchar](25) NULL,
	[UPD_DT] [datetime] NULL,
	[CREATED_FLAG] [char](1) NULL,
	[SEQ_NO] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JOBS_UPDATE_HISTORY](
	[JOB_N] [numeric](10, 0) NULL,
	[JOB_TYPE] [char](1) NULL,
	[UPD_DT] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [JOBS_UPDATE_SOW](
	[ID] [numeric](19, 2) NOT NULL,
	[JOB_N] [numeric](19, 2) NULL,
	[JOB_TYPE] [varchar](255) NULL,
	[UPD_DT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_criteria_dt](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hd_row_id] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[etd_from] [datetime] NOT NULL,
	[etd_to] [datetime] NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_kpi_criteria_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_criteria_hd](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[invoice_no] [varchar](15) NULL,
	[create_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_kpi_criteria_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_job](
	[export_n] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](3, 0) NOT NULL,
	[stddate1] [datetime] NULL,
	[stddate2] [datetime] NULL,
	[actualdate1] [datetime] NULL,
	[actualdate2] [datetime] NULL,
	[extstddate1] [datetime] NULL,
	[extstddate2] [datetime] NULL,
	[extactualdate1] [datetime] NULL,
	[extactualdate2] [datetime] NULL,
	[process_date] [datetime] NULL,
 CONSTRAINT [pk_kpi_job] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_job_toprocess](
	[export_n] [numeric](10, 0) NOT NULL,
	[upd_dt] [datetime] NULL,
 CONSTRAINT [pk_kpi_job_toprocess] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [kpi_master](
	[parentacctid] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](2, 0) NOT NULL,
	[kpi_desc] [varchar](255) NOT NULL,
	[date1_desc] [varchar](50) NOT NULL,
	[date2_desc] [varchar](50) NOT NULL,
	[elite_kpi] [varchar](100) NULL,
	[external_kpi] [varchar](100) NULL,
	[external_party] [varchar](20) NULL,
	[remarks] [varchar](255) NULL,
 CONSTRAINT [pk_kpi_master] PRIMARY KEY CLUSTERED 
(
	[parentacctid] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ksingh](
	[monthly] [nvarchar](34) NULL,
	[total] [int] NULL,
	[On_Time_Del] [int] NULL,
	[not_on_time_del] [int] NULL,
	[Unknown_Del] [int] NULL,
	[Not_On_Time_Do] [int] NULL,
	[On_Time_Do] [int] NULL,
	[Unknown_Do] [int] NULL,
	[Total_Quantity] [decimal](38, 4) NULL,
	[Sign_Quantity] [numeric](38, 4) NULL,
	[Quantity_In_Tote] [numeric](38, 4) NULL,
	[MT_Return_Tote] [numeric](38, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [laycan](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[ex] [varchar](10) NOT NULL,
	[per] [varchar](15) NULL,
	[surveyor] [varchar](10) NOT NULL,
	[type] [char](1) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_laycan] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_BANK_MAST](
	[IssuingBankID] [decimal](10, 0) NOT NULL,
	[IssuingBankName] [varchar](50) NULL,
	[IssuingBankAddress1] [varchar](255) NULL,
	[IssuingBankPhoneNbr] [varchar](50) NULL,
	[IssuingBankAddress2] [varchar](50) NULL,
	[IssuingBankFaxNbr] [varchar](50) NULL,
 CONSTRAINT [PK_LC_D_BANK_MAST] PRIMARY KEY CLUSTERED 
(
	[IssuingBankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_DEPT](
	[DEPT_ID] [varchar](10) NOT NULL,
	[DEPT_DESC] [varchar](50) NULL,
 CONSTRAINT [PK_LC_D_DEPT] PRIMARY KEY CLUSTERED 
(
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_ERRORTYPE](
	[LC_D_TYPEID] [decimal](10, 0) NOT NULL,
	[LC_D_TYPENAME] [varchar](200) NULL,
	[NC_CATE_CODE] [varchar](10) NULL,
	[NC_TYPE_CODE] [varchar](10) NULL,
 CONSTRAINT [PK_LC_D_ERRORTYPE] PRIMARY KEY CLUSTERED 
(
	[LC_D_TYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_NCPARTY](
	[LC_NC_PARTYID] [decimal](10, 0) NOT NULL,
	[LC_NC_PARTYNAME] [varchar](50) NULL,
	[NC_CATE_CODE] [varchar](50) NULL,
	[NC_CODE] [varchar](10) NULL,
 CONSTRAINT [PK_LC_D_NCPARTY] PRIMARY KEY CLUSTERED 
(
	[LC_NC_PARTYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_TRANS](
	[LC_NC_TRAN_NO] [decimal](10, 0) NOT NULL,
	[LC_NO] [varchar](70) NULL,
	[LC_D_BANK_REF] [varchar](30) NULL,
	[ISSUING_BANK_NAME] [varchar](200) NULL,
	[LC_D_DRAFT_NO] [varchar](50) NULL,
	[LC_D_OFD] [varchar](2) NULL,
	[LC_D_CASE_CLOSED] [varchar](2) NULL,
	[LC_D_PREPARED_BY] [varchar](10) NULL,
	[LC_D_APPLICANT_NAME] [varchar](100) NULL,
	[NC_JOB_NO] [numeric](9, 0) NULL,
	[LC_CURRENCY_ID] [varchar](10) NULL,
	[LC_COST_INCURRD] [numeric](9, 3) NULL,
	[lc_tran_dt] [datetime] NULL,
 CONSTRAINT [PK_LC_D_TRANS] PRIMARY KEY CLUSTERED 
(
	[LC_NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_TRANS_DET](
	[LC_NC_TRAN_NO] [decimal](10, 0) NOT NULL,
	[LC_D_LINE_NO] [decimal](18, 0) NOT NULL,
	[LC_D_ADVICE_DESC] [varchar](1000) NULL,
	[LC_D_ELITE_FEEDBACK] [varchar](1000) NULL,
	[LC_D_ACTION_TAKEN] [varchar](50) NULL,
	[D_TYPE_DOC_NAME_ID] [decimal](18, 0) NULL,
	[JUSTIFY_IND] [varchar](2) NULL,
	[NC_PARTY1ID] [decimal](10, 0) NULL,
	[NC_PARTY2ID] [decimal](10, 0) NULL,
	[D_TYPE_ERROR_TYPE_ID] [decimal](10, 0) NULL,
	[NC_TYPE_CODE] [varchar](10) NULL,
	[NC_CATE_CODE] [varchar](10) NULL,
	[NC_JOB_NO] [numeric](9, 0) NULL,
	[lc_tran_dt] [datetime] NULL,
 CONSTRAINT [PK_LC_D_TRANS_DET] PRIMARY KEY CLUSTERED 
(
	[LC_NC_TRAN_NO] ASC,
	[LC_D_LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_TYPE_DOCNAME](
	[LC_D_TYPE_DOCID] [decimal](10, 0) NOT NULL,
	[LC_D_TYPE_DOCNAME] [varchar](255) NULL,
 CONSTRAINT [PK_LC_D_TYPE_DOCNAME] PRIMARY KEY CLUSTERED 
(
	[LC_D_TYPE_DOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [loading_summary](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[tare_wt] [numeric](18, 3) NULL,
	[dnno] [varchar](20) NULL,
	[unno] [varchar](15) NULL,
	[remarks] [varchar](50) NULL,
	[shipping_name] [varchar](50) NULL,
	[shipment_no] [varchar](20) NULL,
	[portload_dt] [datetime] NULL,
	[portload_id] [varchar](20) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
	[marine_pollutant] [char](1) NOT NULL,
 CONSTRAINT [PK_loading_summary] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LOGIN_ACTIVITY](
	[login_name] [varchar](100) NOT NULL,
	[login_id] [varchar](50) NOT NULL,
	[login_date] [datetime] NOT NULL,
	[locacion] [varchar](50) NOT NULL,
	[ramarks] [varchar](500) NULL,
 CONSTRAINT [PK_LOGIN_ACTIVITY] PRIMARY KEY CLUSTERED 
(
	[login_name] ASC,
	[login_id] ASC,
	[login_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [login_users](
	[userid] [varchar](10) NOT NULL,
	[msg] [text] NULL,
	[login_d] [datetime] NULL,
	[terminate] [varchar](1) NULL,
	[loop_yn] [char](1) NULL,
 CONSTRAINT [PK_login_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LSR_LOG](
	[lsr_no] [varchar](50) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[cust_id] [varchar](10) NULL,
	[invoice_n] [numeric](12, 0) NULL,
	[freight_rate] [numeric](10, 2) NULL,
	[reason] [varchar](50) NULL,
	[process_date] [datetime] NULL,
	[complete] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lubs_hi_dropdown](
	[indicator] [numeric](10, 0) NOT NULL,
	[descs] [varchar](200) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_lubs_hi_dropdown] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MARKING_DESCRIPTION_REF](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomerId] [char](10) NOT NULL,
	[Description] [varchar](2000) NOT NULL,
	[ShipperCode] [char](10) NULL,
	[BlConsigneeCode] [char](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MARKING_MULTIPLIER](
	[product_id] [varchar](20) NOT NULL,
	[net_weight] [decimal](15, 5) NULL,
	[gross_weight] [decimal](15, 5) NULL,
	[m3] [decimal](15, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MARKING_PKGS](
	[JOB_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](10) NOT NULL,
	[PKG_LINE_N] [numeric](11, 3) NOT NULL,
	[PKG_N] [numeric](10, 0) NULL,
	[PKG_TYPE] [varchar](20) NULL,
	[PKG_L] [numeric](11, 3) NULL,
	[PKG_W] [numeric](11, 3) NULL,
	[PKG_H] [numeric](11, 3) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[VOL_WT_CHG_IND] [char](1) NULL,
	[TOT_VOL_WT] [numeric](11, 3) NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
 CONSTRAINT [PK_MKG_PKG] PRIMARY KEY NONCLUSTERED 
(
	[JOB_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC,
	[PKG_LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAST_ROLE](
	[ROLEID] [numeric](18, 0) NULL,
	[ROLENAME] [varchar](50) NULL,
	[ROLENAME2] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [material_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[product_code] [varchar](20) NULL,
	[mat_fanar_code] [varchar](30) NULL,
	[packaging] [varchar](20) NULL,
	[code] [varchar](30) NULL,
	[product_plant_code] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MISC_CHG](
	[TRA_TYPE] [varchar](1) NOT NULL,
	[REF_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[DOC_N] [varchar](20) NOT NULL,
	[CHG_DES1] [varchar](50) NOT NULL,
	[CHG_DES2] [varchar](50) NOT NULL,
	[CHG_A] [numeric](11, 2) NOT NULL,
 CONSTRAINT [PK_MISC_CHG_DET] PRIMARY KEY NONCLUSTERED 
(
	[TRA_TYPE] ASC,
	[REF_N] ASC,
	[LINE_N] ASC,
	[DOC_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MOVE_TYPE](
	[type_code] [varchar](10) NOT NULL,
	[type_desc] [varchar](50) NULL,
 CONSTRAINT [PK_MOVE_TYPE_type_code] PRIMARY KEY NONCLUSTERED 
(
	[type_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_CATEGORY_MAST](
	[NC_CATE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_DESC] [varchar](100) NOT NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) NULL,
 CONSTRAINT [NC_CATEG_PK] PRIMARY KEY CLUSTERED 
(
	[NC_CATE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_PARTY_MAST](
	[NC_PARTY_CODE] [varchar](10) NOT NULL,
	[NC_PARTY_DESC] [varchar](100) NOT NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) NULL,
 CONSTRAINT [NC_PARTY_PK] PRIMARY KEY CLUSTERED 
(
	[NC_PARTY_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_TRANS_DET](
	[NC_TRAN_NO] [numeric](10, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_CODE] [varchar](10) NOT NULL,
 CONSTRAINT [NC_TRANS_DET_PK] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC,
	[NC_TYPE_CODE] ASC,
	[NC_CATE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_TYPE_MAST](
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_DESC] [varchar](100) NULL,
	[NC_TYPE_DESC] [varchar](255) NOT NULL,
	[NC_CATE_CODE] [varchar](10) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[CREATE_D] [datetime] NULL,
	[DEF_NC_COMPLAINT_DESC] [varchar](255) NULL,
	[PARENTACCTID] [int] NOT NULL,
 CONSTRAINT [NC_TYPE_PK] PRIMARY KEY CLUSTERED 
(
	[NC_CATE_CODE] ASC,
	[NC_TYPE_CODE] ASC,
	[PARENTACCTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OFFICE_ADDRESS](
	[E_DOCS_COUNTRY_ID] [varchar](2) NOT NULL,
	[COY_NAME] [varchar](50) NULL,
	[COY_ADD1] [varchar](70) NULL,
	[COY_ADD2] [varchar](70) NULL,
	[COY_ADD3] [varchar](70) NULL,
	[COY_ADD4] [varchar](70) NULL,
 CONSTRAINT [PK_OFFICE_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[E_DOCS_COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [office_master](
	[mapmid] [float] NULL,
	[officecode] [char](10) NULL,
	[hqofficecode] [char](10) NULL,
	[description] [char](100) NULL,
	[ipaddress] [char](40) NULL,
	[adminemail] [char](100) NULL,
	[valid] [float] NULL,
	[lastupdate] [datetime] NULL,
	[seaconnectdbEnv] [char](10) NULL,
	[portCode] [char](50) NULL,
	[seaconnectDBName] [char](50) NULL,
	[seaconnectDBIP] [char](50) NULL,
	[iojt_email_add] [char](100) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onhold_reason_mast](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[onhold_reason] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [oop_template](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[batch_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[cust_ord_no] [varchar](40) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[currency_id] [varchar](10) NOT NULL,
	[amount] [decimal](11, 2) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[doc_date] [varchar](20) NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[ispayablecreated] [char](1) NOT NULL,
	[filename] [varchar](100) NULL,
	[remarks] [varchar](255) NULL,
	[internal_remarks] [varchar](255) NULL,
	[withGST] [char](1) NULL,
 CONSTRAINT [PK_oop_template] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [oop_template_v3](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[batch_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[po_n] [varchar](40) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[currency_id] [varchar](10) NOT NULL,
	[amount] [decimal](11, 2) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[doc_date] [varchar](20) NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[ispayablecreated] [char](1) NOT NULL,
	[filename] [varchar](100) NULL,
	[remarks] [varchar](255) NULL,
	[internal_remarks] [varchar](255) NULL,
	[withGST] [char](1) NULL,
	[export] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
 CONSTRAINT [PK_oop_template_v3] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [opschart](
	[export_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[exim_ind] [char](1) NOT NULL,
	[status] [char](1) NULL,
	[laycan_dt] [datetime] NULL,
	[FFI] [varchar](30) NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[location_id] [varchar](5) NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[pack_type] [varchar](10) NULL,
	[create_dt] [datetime] NOT NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_opschart] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[line_n] ASC,
	[exim_ind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ord_mgmt_activity_mast](
	[parentAcctid] [numeric](10, 0) NOT NULL,
	[business_unit] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[activity_desc] [varchar](255) NOT NULL,
	[team] [varchar](20) NULL,
	[screen_related] [numeric](10, 0) NULL,
	[details] [varchar](2000) NULL,
	[attachment_link] [varchar](1000) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[manual_update] [char](1) NULL,
	[job_type] [varchar](10) NULL,
 CONSTRAINT [PK_ord_mgmt_activity_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ord_mgmt_job](
	[export_n] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[status] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
	[created_dt] [datetime] NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parentAcctid] [numeric](10, 0) NULL,
	[business_unit] [numeric](10, 0) NULL,
 CONSTRAINT [PK_ord_ord_mgmt_job] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [order_doc_track](
	[doc_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[job_n] [numeric](10, 0) NOT NULL,
	[order_type] [char](1) NOT NULL,
	[doc_title] [varchar](50) NULL,
	[doc_filename] [varchar](255) NULL,
	[sys_filename] [varchar](255) NULL,
	[doc_path] [varchar](200) NULL,
	[web_ind] [char](1) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[cust_id] [varchar](10) NULL,
	[upload_dt] [datetime] NULL,
	[upload_by] [varchar](10) NULL,
	[delete_dt] [datetime] NULL,
	[delete_by] [varchar](10) NULL,
	[valid] [char](1) NULL,
	[cust_email] [varchar](2000) NULL,
	[email_id] [char](1) NULL,
	[email_ind] [char](1) NULL,
	[final_email] [char](1) NULL,
 CONSTRAINT [pk_order_doc_track] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ORDER_H](
	[ORDER_ID] [numeric](10, 0) NOT NULL,
	[ORDER_TYPE] [numeric](2, 0) NULL,
	[EXP_IMP_N] [numeric](10, 0) NULL,
	[PROD_VAL] [numeric](11, 3) NULL,
	[PAYMENT_TERM_ID] [numeric](10, 0) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](20) NULL,
	[MODIFIED_D] [datetime] NULL,
	[psa_portnet] [varchar](50) NULL,
	[cont_pick_ref_n] [varchar](50) NULL,
	[ETA_SIN] [datetime] NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
	[ORDER_RCV_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[SHIPPER_CTC] [varchar](300) NULL,
	[SHIPPER_EMAIL] [varchar](255) NULL,
	[SHIPPER_TEL] [varchar](50) NULL,
	[SHIPPER_FAX] [varchar](50) NULL,
	[CONFIRM_D] [datetime] NULL,
	[REQ_SHIP_D] [datetime] NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[REMARKS3] [varchar](50) NULL,
	[BILLING1] [varchar](50) NULL,
	[BILLING2] [varchar](50) NULL,
	[CANCEL_REM] [varchar](50) NULL,
	[CONTRACT_N] [varchar](20) NULL,
	[FCL_OR_LCL] [char](3) NULL,
	[TOT_FOB] [numeric](8, 2) NULL,
	[BIG_MARKING] [text] NULL,
	[EDI_TP] [char](1) NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_SENDER] [varchar](40) NULL,
	[EDI_REC_D] [datetime] NULL,
	[EDI_RECEIVER] [varchar](40) NULL,
	[EDI_REVISION] [varchar](10) NULL,
	[EDI_REC_TYPE] [varchar](10) NULL,
	[EDI_BSNS_UNIT_ID] [varchar](20) NULL,
	[EDI_BSNS_UNIT_NAME] [varchar](40) NULL,
	[EDI_BSNS_UNIT_ADD1] [varchar](40) NULL,
	[EDI_BSNS_UNIT_ADD2] [varchar](40) NULL,
	[EDI_BSNS_UNIT_ADD3] [varchar](40) NULL,
	[EDI_BSNS_UNIT_ADD4] [varchar](40) NULL,
	[EDI_BSNS_UNIT_ADD5] [varchar](40) NULL,
	[INV_VALUE_TTL] [varchar](40) NULL,
	[BL_DRAFT_PREP] [varchar](40) NULL,
	[BL_INSTRUCT] [varchar](100) NULL,
	[CONT_NO] [varchar](40) NULL,
	[CONFIRM_IND] [char](1) NULL,
	[stripes_del_no] [varchar](200) NULL,
	[TRAX_ORDERID] [numeric](11, 0) NULL,
	[TRAX_UPDATE_D] [datetime] NULL,
	[TRAX_UPDATE_USER] [varchar](40) NULL,
	[dhl_no] [varchar](30) NULL,
	[LC_CONFIRMED] [varchar](1) NULL,
	[total_pallets] [numeric](10, 4) NULL,
	[proposed_delivery_date] [datetime] NULL,
	[HI_CUTOFF_DATE] [datetime] NULL,
	[ISPROFORMAINV_PRINTED] [char](1) NULL,
	[PROFORMAINV_PRINTED_BY] [varchar](10) NULL,
	[PROFORMAINV_PRINT_DATE] [datetime] NULL,
	[cnb_approval_dt] [datetime] NULL,
	[PSA_PORTNET_VOYAGE] [varchar](50) NULL,
	[shipper_email_addtl] [varchar](255) NULL,
	[payment_term_id_2] [int] NULL,
	[sailing_adv_d] [datetime] NULL,
	[cert_header] [varchar](2000) NULL,
	[cert_descs] [varchar](2000) NULL,
	[cert_cbx] [char](1) NULL,
	[cert_date] [datetime] NULL,
	[isf102_ref] [varchar](50) NULL,
	[Collecting_Bank] [varchar](100) NULL,
	[pud_approved] [char](1) NULL,
	[pud_approved_by] [varchar](500) NULL,
	[pud_approved_date] [datetime] NULL,
	[pud_remarks] [varchar](500) NULL,
	[bc_sent_plant_cust] [datetime] NULL,
	[VEHICLE_LOAD_N] [varchar](40) NULL,
	[customs_remarks] [varchar](255) NULL,
	[doc_type] [varchar](100) NULL,
	[berth] [varchar](4) NULL,
	[bkg_approved_by] [varchar](10) NULL,
	[bkg_approved_date] [datetime] NULL,
	[bkg_remarks] [varchar](255) NULL,
	[chamber_copies] [numeric](10, 0) NULL,
	[chamber_con_code] [varchar](30) NULL,
	[chamber_con1] [varchar](35) NULL,
	[chamber_con2] [varchar](35) NULL,
	[chamber_con3] [varchar](35) NULL,
	[chamber_con4] [varchar](35) NULL,
	[chamber_con5] [varchar](35) NULL,
	[chamber_con6] [varchar](35) NULL,
	[CHAMBER_INV_AMT] [numeric](20, 2) NULL,
	[CHAMBER_CURR_ID] [varchar](10) NULL,
	[shipment_no] [varchar](30) NULL,
	[delivery_no] [varchar](30) NULL,
	[booking_handledby] [varchar](40) NULL,
	[docs_handledby] [varchar](40) NULL,
	[draft_docs_to_cust_date] [datetime] NULL,
	[ord_sent_dt_mels] [datetime] NULL,
	[pending_dt_mels] [datetime] NULL,
	[pl_eo_sent_dt_mels] [datetime] NULL,
	[ship_sched_dt_mels] [datetime] NULL,
	[ranking_mels] [numeric](10, 3) NULL,
	[vanning_dt_mels] [datetime] NULL,
	[rcv_cfm_bl_dt_mels] [datetime] NULL,
	[latest_stat_mels] [varchar](255) NULL,
	[next_pic_mels] [varchar](50) NULL,
	[due_so_send_dt_mels] [varchar](20) NULL,
	[bl_cost] [decimal](20, 3) NULL,
	[bl_cost_sgd] [decimal](20, 3) NULL,
	[MitsuiArea] [varchar](50) NULL,
	[selected_cr_rank] [numeric](10, 0) NULL,
	[cr_rank_1] [numeric](10, 0) NULL,
	[rank_reason] [varchar](200) NULL,
	[MITSUI_RCV_BL_ELITE] [varchar](20) NULL,
	[MITSUI_DUE_DT_SO] [varchar](20) NULL,
	[MITSUI_RQST_DEL_D] [varchar](30) NULL,
	[EOPLSentToMELSandWarehouse] [char](1) NOT NULL,
	[HD_FLAG] [varchar](1) NOT NULL,
	[loading_ins] [varchar](255) NULL,
	[MITSUI_ADD_BL_DESC] [varchar](255) NULL,
	[csp_email_exxon] [varchar](500) NULL,
	[lubsposwitch] [numeric](1, 0) NULL,
	[GrDate] [datetime] NULL,
	[vdp_send_d] [datetime] NULL,
	[vdp_ref_rcvd] [char](1) NULL,
	[vdp_send_by] [varchar](10) NULL,
	[co_required] [varchar](1) NOT NULL,
	[shipcert_required] [varchar](1) NOT NULL,
	[certno_required] [varchar](1) NOT NULL,
	[shipcert_send_by] [varchar](20) NULL,
	[shipcert_send_d] [datetime] NULL,
	[user_seq20] [varchar](20) NULL,
	[chamber_required] [varchar](1) NOT NULL,
	[customs_flag] [varchar](255) NULL,
	[TrkArrDate] [datetime] NULL,
	[TrkDepDate] [datetime] NULL,
	[RailArrDate] [datetime] NULL,
	[RailDepDate] [datetime] NULL,
	[AES_date] [datetime] NULL,
	[doc_cutoff_date] [datetime] NULL,
	[rail_cutoff_date] [datetime] NULL,
	[denied_party_screening_date] [datetime] NULL,
	[del_inst_upd_date] [datetime] NULL,
	[shipstart_loadend_upd_date] [datetime] NULL,
	[manifest_to_carrier_date] [datetime] NULL,
	[manifest_from_carrier_date] [datetime] NULL,
	[contact_party] [varchar](70) NULL,
	[contact_addr1] [varchar](40) NULL,
	[contact_addr2] [varchar](40) NULL,
	[contact_addr3] [varchar](40) NULL,
	[contact_addr4] [varchar](40) NULL,
	[contact_city] [varchar](40) NULL,
	[contact_ctry_subdivision] [varchar](40) NULL,
	[contact_postal_code] [varchar](15) NULL,
	[contact_country] [varchar](10) NULL,
	[contact_id] [numeric](10, 0) NULL,
	[send_vgm_as] [varchar](1) NULL,
	[courier_number] [varchar](30) NULL,
	[rvsd_manifest_to_carrier_date] [datetime] NULL,
	[rvsd_manifest_from_carrier_date] [datetime] NULL,
	[draft_doc_cfm_by_cust_date] [datetime] NULL,
	[DBLI_RECEIVER_D] [datetime] NULL,
	[rev_bc_sent_plant_cust] [datetime] NULL,
	[shippers_memo] [varchar](255) NULL,
	[mat_avail_dt] [datetime] NULL,
	[endorse_coo_to_pol] [datetime] NULL,
	[docs_from_plant] [datetime] NULL,
	[revised_docs_to_bank] [datetime] NULL,
	[obl_rel_col_ind] [int] NULL,
	[obl_rel_col_date] [datetime] NULL,
	[endorse_coo] [char](1) NULL,
	[coo_requested] [datetime] NULL,
	[mci_coo] [char](1) NULL,
	[endorse_coo_remarks] [varchar](800) NULL,
	[bottom_seal] [varchar](255) NULL,
	[bl_handledby] [varchar](40) NULL,
	[bl_user] [varchar](100) NULL,
	[docs_user] [varchar](100) NULL,
	[booking_user] [varchar](100) NULL,
	[lto_received_date] [datetime] NULL,
	[Transpt_plan_dt] [datetime] NULL,
	[dhl_scan_date] [datetime] NULL,
	[bl_acknowledgedate] [datetime] NULL,
	[docs_acknowledgedate] [datetime] NULL,
	[dps_sent_date] [datetime] NULL,
	[aes_sent_date] [datetime] NULL,
	[elite_dhl_no] [varchar](30) NULL,
	[pallet_multply] [numeric](12, 2) NULL,
	[tenor_days] [numeric](9, 0) NULL,
	[copy_doc_received] [char](1) NULL,
	[docs_sent_via_dhl_dt] [datetime] NULL,
	[self_collection_d] [datetime] NULL,
	[final_docs_email_to_cust_date] [datetime] NULL,
	[orig_bl_release_at_dest] [char](1) NULL,
 CONSTRAINT [ORDER_ID_PKY] PRIMARY KEY NONCLUSTERED 
(
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [order_list_to_resend_xml](
	[seq_n] [numeric](18, 0) NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[job_type] [varchar](2) NULL,
	[ref_1] [varchar](40) NULL,
	[upload_user_id] [varchar](10) NULL,
	[upload_date] [datetime] NULL,
	[sent_ind] [varchar](2) NULL,
	[remarks] [varchar](100) NULL,
	[excel_file_name] [varchar](500) NULL,
	[xml_sent_date] [datetime] NULL,
	[xml_file_name] [varchar](100) NULL,
	[delete_ind] [varchar](2) NULL,
 CONSTRAINT [PK_order_list_to_resend_xml] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ORDER_RESPONSE](
	[export_n] [numeric](10, 0) NOT NULL,
	[response_type] [int] NOT NULL,
	[processed] [char](1) NULL,
	[datesent] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OTHER_CHG](
	[REF_N] [numeric](10, 0) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[VENDOR_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
 CONSTRAINT [PK_OTHER_CHG] PRIMARY KEY NONCLUSTERED 
(
	[REF_N] ASC,
	[TRA_TYPE] ASC,
	[LINE_N] ASC,
	[CHG_DES1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PACKING_LIST_DATA](
	[DELIVERY_NO] [varchar](20) NULL,
	[CREATED_ON] [datetime] NULL,
	[SALES_DOC_NO] [varchar](40) NULL,
	[PURCHASE_ORDER_NO] [varchar](40) NULL,
	[ORDER_TYPE] [varchar](10) NULL,
	[SHIPMENT_NO] [varchar](20) NULL,
	[BATCH_NO] [varchar](10) NULL,
	[CONTAINER_NO] [varchar](20) NULL,
	[SHIPPING_TYPE] [varchar](40) NULL,
	[PRODUCT_ID] [varchar](50) NULL,
	[PRODUCT_DESCRIPTION] [varchar](2500) NULL,
	[SEAL_NO] [varchar](100) NULL,
	[STORAGE_LOCATION] [varchar](30) NULL,
	[DESTINATION] [varchar](50) NULL,
	[PORT_OF_LOADING] [varchar](50) NULL,
	[QUANTITY] [numeric](9, 3) NULL,
	[GROSS_WEIGHT] [numeric](9, 3) NULL,
	[NET_WEIGHT] [numeric](9, 3) NULL,
	[TARE_WEIGHT] [decimal](9, 3) NULL,
	[VGM_WEIGHT] [numeric](9, 3) NULL,
	[SHIPMENT_MODE] [varchar](10) NULL,
	[SHIPPING_LINE] [varchar](50) NULL,
	[VESSEL_NAME] [varchar](30) NULL,
	[VOYAGE_NUMBER] [varchar](20) NULL,
	[BOOKING_NUMBER] [varchar](50) NULL,
	[BL_NUMBER] [varchar](50) NULL,
	[EST_TIME_DEPARTURE] [datetime] NULL,
	[LOADING_DATE] [datetime] NULL,
	[ASN_DATE] [datetime] NULL,
	[ACTUAL_TIME_DEPARTURE] [datetime] NULL,
	[PGI_DATE] [datetime] NULL,
	[DELIVERY_DATE] [datetime] NULL,
	[WM_ACTIVITY] [varchar](50) NULL,
	[STAGING_AREA] [varchar](50) NULL,
	[FF_AGENT_NAME] [varchar](100) NULL,
	[POSTAL_CODE] [varchar](20) NULL,
	[DISTRIBUTION] [numeric](5, 0) NULL,
	[LOCAL_AGENT_CODE] [varchar](20) NULL,
	[SHIPPED_TO_PARTY] [varchar](20) NULL,
	[SOLD_TO_PARTY] [varchar](20) NULL,
	[DBL_STATUS] [varchar](20) NULL,
	[STATUS] [varchar](20) NULL,
	[ENTRY_DATE] [datetime] NULL,
	[ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Parent_Acct](
	[parentacctid] [int] NOT NULL,
	[acctname] [varchar](81) NULL,
	[accttype] [int] NOT NULL,
	[address] [varchar](400) NULL,
	[postcode] [varchar](20) NULL,
	[countrycode] [varchar](10) NOT NULL,
	[phone] [varchar](20) NULL,
	[activatedate] [datetime] NULL,
	[expirydate] [datetime] NULL,
	[createdby] [int] NULL,
	[createddate] [datetime] NULL,
	[modifiedby] [int] NULL,
	[modifieddate] [datetime] NULL,
	[enabled] [int] NOT NULL,
	[deleted] [int] NOT NULL,
	[logintry] [int] NOT NULL,
	[timeout] [int] NULL,
	[fax] [varchar](20) NULL,
	[hitrate_freq] [int] NULL,
 CONSTRAINT [PK_Parent_Acct] PRIMARY KEY NONCLUSTERED 
(
	[parentacctid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [party](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[party_name] [varchar](255) NOT NULL,
	[party_display_name] [varchar](255) NOT NULL,
	[party_address] [varchar](255) NOT NULL,
	[country_id] [varchar](5) NOT NULL,
	[party_type_id] [int] NOT NULL,
 CONSTRAINT [PK_party_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PARTY_ADDITIONAL_DETAILS](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ExportN] [numeric](9, 0) NOT NULL,
	[PartyDetailId] [numeric](18, 0) NOT NULL,
	[AdditionalDesc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RowId2] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [party_type](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[logical_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PARTY_TYPE_REF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[logical_name] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [payable_recalctax_tbl](
	[voucher_n] [numeric](10, 0) NULL,
	[amt] [numeric](10, 4) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_payable_recalctax_tbl] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PAYBYINV](
	[USERNAME] [char](20) NULL,
	[INVNO] [char](30) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PAYMENT_TERM](
	[ID] [numeric](10, 0) NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[VALID] [char](2) NULL,
	[lcgroup] [varchar](50) NULL,
 CONSTRAINT [ID_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PAYMENT_TERMS](
	[PAYMENT_TERMS] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatcol](
	[pbc_tnam] [char](30) NULL,
	[pbc_tid] [int] NULL,
	[pbc_ownr] [char](30) NULL,
	[pbc_cnam] [char](30) NULL,
	[pbc_cid] [smallint] NULL,
	[pbc_labl] [varchar](254) NULL,
	[pbc_lpos] [smallint] NULL,
	[pbc_hdr] [varchar](254) NULL,
	[pbc_hpos] [smallint] NULL,
	[pbc_jtfy] [smallint] NULL,
	[pbc_mask] [varchar](31) NULL,
	[pbc_case] [smallint] NULL,
	[pbc_hght] [smallint] NULL,
	[pbc_wdth] [smallint] NULL,
	[pbc_ptrn] [varchar](31) NULL,
	[pbc_bmap] [char](1) NULL,
	[pbc_init] [varchar](254) NULL,
	[pbc_cmnt] [varchar](254) NULL,
	[pbc_edit] [varchar](31) NULL,
	[pbc_tag] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatedt](
	[pbe_name] [varchar](30) NOT NULL,
	[pbe_edit] [varchar](254) NULL,
	[pbe_type] [smallint] NOT NULL,
	[pbe_cntr] [int] NULL,
	[pbe_seqn] [smallint] NOT NULL,
	[pbe_flag] [int] NULL,
	[pbe_work] [char](32) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatfmt](
	[pbf_name] [varchar](30) NOT NULL,
	[pbf_frmt] [varchar](254) NOT NULL,
	[pbf_type] [smallint] NOT NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcattbl](
	[pbt_tnam] [char](30) NULL,
	[pbt_tid] [int] NULL,
	[pbt_ownr] [char](30) NULL,
	[pbd_fhgt] [smallint] NULL,
	[pbd_fwgt] [smallint] NULL,
	[pbd_fitl] [char](1) NULL,
	[pbd_funl] [char](1) NULL,
	[pbd_fchr] [smallint] NULL,
	[pbd_fptc] [smallint] NULL,
	[pbd_ffce] [char](32) NULL,
	[pbh_fhgt] [smallint] NULL,
	[pbh_fwgt] [smallint] NULL,
	[pbh_fitl] [char](1) NULL,
	[pbh_funl] [char](1) NULL,
	[pbh_fchr] [smallint] NULL,
	[pbh_fptc] [smallint] NULL,
	[pbh_ffce] [char](32) NULL,
	[pbl_fhgt] [smallint] NULL,
	[pbl_fwgt] [smallint] NULL,
	[pbl_fitl] [char](1) NULL,
	[pbl_funl] [char](1) NULL,
	[pbl_fchr] [smallint] NULL,
	[pbl_fptc] [smallint] NULL,
	[pbl_ffce] [char](32) NULL,
	[pbt_cmnt] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatvld](
	[pbv_name] [varchar](30) NOT NULL,
	[pbv_vald] [varchar](254) NOT NULL,
	[pbv_type] [smallint] NOT NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PDF_UPLOAD_LOG](
	[UPLOAD_ID] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[JOB_N] [varchar](10) NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[DOC_TYPE] [varchar](50) NULL,
	[ORG_PDF_FILE] [varchar](100) NULL,
	[NEW_PDF_FILE] [varchar](100) NULL,
	[FILE_OPEN_STATUS] [varchar](500) NULL,
	[FILE_UPLOAD_STATUS] [varchar](500) NULL,
	[LOG_USER] [varchar](50) NULL,
	[LOG_DATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_casc_dt](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[prod_code] [varchar](35) NOT NULL,
	[line_n] [numeric](4, 0) NOT NULL,
	[casc_code1] [varchar](35) NULL,
	[casc_code2] [varchar](35) NULL,
	[casc_code3] [varchar](35) NULL,
	[enduse_desc1] [varchar](35) NULL,
	[enduse_desc2] [varchar](35) NULL,
	[enduse_desc3] [varchar](35) NULL,
	[prod_uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_casc_dt] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[prod_code] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_casc_hd](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[prod_code] [varchar](35) NOT NULL,
	[line_n] [numeric](4, 0) NOT NULL,
	[prod_qty] [decimal](15, 4) NULL,
	[prod_uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_casc_hd] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[prod_code] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cert](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[app_prod_type] [varchar](2) NOT NULL,
	[app_prod_desc] [varchar](50) NULL,
	[cert_type1] [varchar](2) NULL,
	[cert_desc1] [varchar](50) NULL,
	[cert_type2] [varchar](2) NULL,
	[cert_desc2] [varchar](50) NULL,
	[cert_copy1] [decimal](2, 0) NULL,
	[cert_copy2] [decimal](2, 0) NULL,
	[currency_code] [varchar](3) NULL,
	[entry_year] [decimal](4, 0) NULL,
	[gsp_donor_cty] [varchar](2) NULL,
	[gsp_donor_desc] [varchar](50) NULL,
	[content_percent] [decimal](3, 0) NULL,
	[add_cert_dtl] [varchar](175) NULL,
	[tpt_dtl] [varchar](175) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cont](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[ctn_no] [varchar](13) NOT NULL,
	[ctn_type_size] [varchar](5) NOT NULL,
	[ctn_wt_value] [decimal](3, 0) NOT NULL,
	[ctn_seal_no] [varchar](10) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cont] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cost_statement_dt](
	[row_id] [numeric](18, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cost_statement_dt] [datetime] NOT NULL,
	[validity_period] [int] NOT NULL,
	[expiry_dt] [datetime] NOT NULL,
	[hs_code] [varchar](10) NOT NULL,
	[match_product_by] [varchar](20) NOT NULL,
	[criterio] [numeric](5, 2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[certdesc_hscode] [varchar](10) NULL,
 CONSTRAINT [PK_permit_cost_statement_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cost_statement_hd](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[cert_type] [varchar](2) NOT NULL,
	[country_id] [varchar](10) NOT NULL,
	[technical_name] [varchar](100) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_permit_cost_statement_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_counter](
	[counter_id] [varchar](8) NOT NULL,
	[counter_val] [numeric](4, 0) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_counter] PRIMARY KEY CLUSTERED 
(
	[counter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_errorlog](
	[job_n] [varchar](12) NOT NULL,
	[error_n] [varchar](256) NULL,
	[error_descs] [text] NULL,
	[status] [varchar](20) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_log_detail] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_freight_rate_dt](
	[row_id] [numeric](18, 0) NOT NULL,
	[pol_id] [varchar](10) NOT NULL,
	[pod_id] [varchar](10) NOT NULL,
	[amt_20] [numeric](10, 2) NULL,
	[amt_40] [numeric](10, 2) NULL,
	[freight] [numeric](5, 4) NULL,
	[insurance] [numeric](5, 4) NULL,
	[port_disc_id] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[pol_id] ASC,
	[pod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_freight_rate_hd](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_id] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[effective_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_header](
	[permit_id] [char](10) NOT NULL,
	[mailbox_id] [varchar](17) NOT NULL,
	[declarant_name] [varchar](50) NOT NULL,
	[cr_no] [varchar](20) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[export_n] [numeric](12, 0) NOT NULL,
	[export_ref_n] [numeric](12, 0) NOT NULL,
	[shipper_ref] [varchar](40) NULL,
	[msg_type] [varchar](6) NOT NULL,
	[dec_type] [varchar](3) NOT NULL,
	[dec_desc] [varchar](100) NULL,
	[prev_permit_no] [varchar](11) NULL,
	[bg_indicator] [varchar](1) NULL,
	[bg_desc] [varchar](50) NULL,
	[cargo_type] [varchar](2) NOT NULL,
	[cargo_desc] [varchar](100) NULL,
	[inward_mode] [varchar](1) NULL,
	[inward_desc] [varchar](20) NULL,
	[outward_mode] [varchar](1) NULL,
	[outward_desc] [varchar](20) NULL,
	[cert_origin] [varchar](1) NULL,
	[ref_docs] [varchar](1) NULL,
	[recipient1] [varchar](17) NULL,
	[recipient2] [varchar](17) NULL,
	[recipient3] [varchar](17) NULL,
	[release_loc] [varchar](7) NULL,
	[release_desc] [varchar](105) NULL,
	[receipt_loc] [varchar](7) NULL,
	[receipt_desc] [varchar](105) NULL,
	[storage_loc] [varchar](7) NULL,
	[storage_desc] [varchar](105) NULL,
	[arrival_date] [datetime] NULL,
	[load_port] [varchar](5) NULL,
	[load_desc] [varchar](50) NULL,
	[voyage_no_in] [varchar](10) NULL,
	[vessel_name_in] [varchar](35) NULL,
	[ocean_bl_in] [varchar](35) NULL,
	[vessel_loc_code_in] [varchar](7) NULL,
	[vessel_loc_desc_in] [varchar](105) NULL,
	[aircraft_id_in] [varchar](10) NULL,
	[airway_bill_in] [varchar](20) NULL,
	[depart_date] [datetime] NULL,
	[fin_dest_code] [varchar](2) NULL,
	[fin_dest_desc] [varchar](50) NULL,
	[dis_port_code] [varchar](5) NULL,
	[dis_port_desc] [varchar](50) NULL,
	[voyage_no_out] [varchar](10) NULL,
	[vessel_name_out] [varchar](35) NULL,
	[voyage_no_out2] [varchar](10) NULL,
	[vessel_name_out2] [varchar](35) NULL,
	[vessel_type_out2] [varchar](2) NULL,
	[vessel_type_name_out2] [varchar](50) NULL,
	[ocean_bl_out] [varchar](35) NULL,
	[nrt_out] [decimal](13, 2) NULL,
	[vessel_loc_code_out] [varchar](7) NULL,
	[vessel_loc_desc_out] [varchar](105) NULL,
	[aircraft_id_out] [varchar](10) NULL,
	[airway_bill_out] [varchar](20) NULL,
	[tot_item] [decimal](4, 0) NULL,
	[tot_value] [decimal](15, 2) NULL,
	[tot_pack] [decimal](15, 4) NULL,
	[tot_pack_uom] [varchar](3) NULL,
	[tot_gross_wt] [decimal](15, 4) NULL,
	[tot_gross_uom] [varchar](3) NULL,
	[Remarks] [text] NULL,
	[created_by] [varchar](20) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_dt] [datetime] NULL,
	[status] [varchar](50) NULL,
	[customs_permit_no] [varchar](20) NULL,
	[lic_no1] [varchar](17) NULL,
	[lic_no2] [varchar](17) NULL,
	[lic_no3] [varchar](17) NULL,
	[lic_no4] [varchar](17) NULL,
	[lic_no5] [varchar](17) NULL,
	[amend_reason] [text] NULL,
	[cancel_reason] [varchar](10) NULL,
	[pdf_filename] [varchar](50) NULL,
	[xml_filename] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[declarant_id] [varchar](17) NOT NULL,
	[cert_no] [varchar](17) NULL,
	[allow_manual] [varchar](1) NULL,
	[manual_approved_by] [varchar](10) NULL,
	[manual_approved_date] [datetime] NULL,
	[manual_remarks] [varchar](255) NULL,
	[amend_cnt] [numeric](5, 0) NULL,
	[amend_upd_ind] [varchar](5) NULL,
	[amend_permit_no] [varchar](35) NULL,
	[permit_valid_ext] [varchar](5) NULL,
 CONSTRAINT [PK_permit_header] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_item_cert](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[hs_code_hd] [varchar](10) NOT NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [varchar](255) NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) NULL,
	[text_desc] [varchar](255) NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) NULL,
	[invoice_n] [varchar](17) NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[hs_code] [varchar](10) NULL,
	[cont_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_item_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[hs_code_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_item_det](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[inhouse_item_code] [varchar](20) NULL,
	[hs_code] [varchar](10) NOT NULL,
	[hs_type] [varchar](50) NOT NULL,
	[hs_desc] [varchar](50) NULL,
	[duty_type] [varchar](10) NULL,
	[duty_desc] [varchar](50) NULL,
	[dg_ind] [varchar](1) NULL,
	[item_desc] [text] NULL,
	[cty_origin] [varchar](2) NULL,
	[cty_desc] [varchar](50) NULL,
	[brand] [varchar](35) NULL,
	[model] [varchar](35) NULL,
	[shipping_marks] [varchar](170) NULL,
	[hs_qty] [decimal](15, 4) NULL,
	[hs_uom] [varchar](3) NULL,
	[dut_qty] [decimal](15, 4) NULL,
	[dut_uom] [varchar](3) NULL,
	[tot_dut_qty] [decimal](15, 4) NULL,
	[tot_dut_uom] [varchar](3) NULL,
	[alcohol_value] [decimal](6, 3) NULL,
	[alcohol_uom] [varchar](3) NULL,
	[cif_fob_amt] [decimal](15, 2) NULL,
	[currency_code] [varchar](3) NULL,
	[out_qty] [decimal](8, 0) NULL,
	[out_uom] [varchar](3) NULL,
	[in_qty] [decimal](8, 0) NULL,
	[in_uom] [varchar](3) NULL,
	[inner_qty] [decimal](8, 0) NULL,
	[inner_uom] [varchar](3) NULL,
	[inmost_qty] [decimal](8, 0) NULL,
	[inmost_uom] [varchar](3) NULL,
	[curr_lot_no] [varchar](30) NULL,
	[prev_lot_no] [varchar](30) NULL,
	[marking] [varchar](2) NULL,
	[marking_desc] [varchar](50) NULL,
	[inhouse_doc] [varchar](17) NULL,
	[outhouse_doc] [varchar](17) NULL,
	[pref_code] [varchar](3) NULL,
	[qty_value] [decimal](15, 4) NULL,
	[qty_uom] [varchar](3) NULL,
	[item_value] [decimal](15, 2) NULL,
	[cert_desc] [varchar](255) NULL,
	[mf_cost_d] [datetime] NULL,
	[text_code] [varchar](5) NULL,
	[text_desc] [varchar](100) NULL,
	[text_qty] [decimal](15, 4) NULL,
	[text_uom] [varchar](3) NULL,
	[invoice_n] [varchar](17) NULL,
	[invoice_d] [datetime] NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[hs_code_dt] [varchar](10) NULL,
	[content_percent] [decimal](3, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_item_det] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_country](
	[country_code] [varchar](2) NOT NULL,
	[country_descs] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_country_master] PRIMARY KEY CLUSTERED 
(
	[country_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_currency](
	[curr_code] [varchar](3) NOT NULL,
	[curr_descs] [varchar](100) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_currency_master] PRIMARY KEY CLUSTERED 
(
	[curr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_dec_type](
	[dec_code] [varchar](3) NOT NULL,
	[dec_descs] [varchar](100) NULL,
	[dec_type] [varchar](3) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_dec_type_master] PRIMARY KEY CLUSTERED 
(
	[dec_code] ASC,
	[dec_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_exchange_rate](
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[curr_code] [varchar](3) NOT NULL,
	[curr_desc] [varchar](50) NULL,
	[ex_rate] [decimal](18, 6) NULL,
	[rate_unit] [decimal](18, 0) NULL,
	[country_id] [char](2) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_exchange_rate] PRIMARY KEY CLUSTERED 
(
	[start_date] ASC,
	[end_date] ASC,
	[curr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_hs_code](
	[hs_code] [varchar](50) NOT NULL,
	[hs_desc] [varchar](255) NULL,
	[hs_uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_hs_code] PRIMARY KEY CLUSTERED 
(
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_loc_code](
	[loc_code] [varchar](7) NOT NULL,
	[loc_descs] [varchar](105) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_loc_code_master] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PERMIT_MASTER_NRT](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[vessel] [varchar](30) NULL,
	[nrt] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_port](
	[port_code] [varchar](10) NOT NULL,
	[port_desc] [varchar](50) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_port] PRIMARY KEY CLUSTERED 
(
	[port_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_product_code](
	[prod_code] [varchar](35) NOT NULL,
	[hs_code] [varchar](10) NOT NULL,
	[prod_uom] [varchar](3) NULL,
	[prod_desc] [text] NULL,
	[RowID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_product_code] PRIMARY KEY CLUSTERED 
(
	[prod_code] ASC,
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_refcodes](
	[ref_name] [varchar](50) NOT NULL,
	[ref_code] [varchar](50) NOT NULL,
	[ref_descs] [varchar](200) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_refcodes] PRIMARY KEY CLUSTERED 
(
	[ref_name] ASC,
	[ref_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_textile_code](
	[category_code] [varchar](5) NOT NULL,
	[country_code] [varchar](2) NOT NULL,
	[quota_ind] [varchar](1) NULL,
	[text_desc] [varchar](100) NULL,
	[uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_textile_code] PRIMARY KEY CLUSTERED 
(
	[category_code] ASC,
	[country_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_uom](
	[uom_code] [varchar](3) NOT NULL,
	[uom_descs] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_uom_master] PRIMARY KEY CLUSTERED 
(
	[uom_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_party](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[decagent_code] [varchar](20) NULL,
	[decagent_name1] [varchar](35) NULL,
	[decagent_name2] [varchar](35) NULL,
	[decagent_name3] [varchar](35) NULL,
	[decagent_cr_uei] [varchar](20) NULL,
	[exporter_code] [varchar](20) NULL,
	[exporter_name1] [varchar](35) NULL,
	[exporter_name2] [varchar](35) NULL,
	[exporter_cr_uei] [varchar](20) NULL,
	[exporter_add1] [varchar](35) NULL,
	[exporter_add2] [varchar](35) NULL,
	[exporter_add3] [varchar](35) NULL,
	[outcragent_code] [varchar](20) NULL,
	[outcragent_name1] [varchar](35) NULL,
	[outcragent_name2] [varchar](35) NULL,
	[outcragent_name3] [varchar](35) NULL,
	[outcragent_cr_uei] [varchar](20) NULL,
	[incragent_code] [varchar](20) NULL,
	[incragent_name1] [varchar](35) NULL,
	[incragent_name2] [varchar](35) NULL,
	[incragent_name3] [varchar](35) NULL,
	[incragent_cr_uei] [varchar](20) NULL,
	[freight_code] [varchar](20) NULL,
	[freight_name1] [varchar](35) NULL,
	[freight_name2] [varchar](35) NULL,
	[freight_name3] [varchar](35) NULL,
	[freight_cr_uei] [varchar](20) NULL,
	[importer_code] [varchar](20) NULL,
	[importer_name1] [varchar](35) NULL,
	[importer_name2] [varchar](35) NULL,
	[importer_cr_uei] [varchar](20) NULL,
	[enduser_code] [varchar](20) NULL,
	[enduser_name1] [varchar](35) NULL,
	[enduser_name2] [varchar](35) NULL,
	[enduser_name3] [varchar](35) NULL,
	[enduser_add1] [varchar](35) NULL,
	[enduser_add2] [varchar](35) NULL,
	[enduser_add3] [varchar](35) NULL,
	[consignee_code] [varchar](20) NULL,
	[consignee_name1] [varchar](35) NULL,
	[consignee_name2] [varchar](35) NULL,
	[consignee_add1] [varchar](35) NULL,
	[consignee_add2] [varchar](35) NULL,
	[consignee_add3] [varchar](35) NULL,
	[manu_code] [varchar](20) NULL,
	[manu_name1] [varchar](35) NULL,
	[manu_name2] [varchar](35) NULL,
	[manu_cr_uei] [varchar](20) NULL,
	[manu_add1] [varchar](35) NULL,
	[manu_add2] [varchar](35) NULL,
	[manu_add3] [varchar](35) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_party] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_support_docs](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[doc_id] [varchar](10) NOT NULL,
	[file_name] [varchar](70) NULL,
	[file_path] [varchar](200) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_support_docs] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_txlog](
	[job_n] [varchar](12) NOT NULL,
	[customs_permit_n] [varchar](20) NULL,
	[export_n] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
	[shipper_ref] [varchar](40) NULL,
	[status_code] [varchar](70) NOT NULL,
	[status_desc] [varchar](255) NULL,
	[user_id] [varchar](50) NULL,
	[create_d] [datetime] NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_log_hd] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PLAN_TABLE](
	[STATEMENT_ID] [varchar](30) NULL,
	[TIMESTAMP] [datetime] NULL,
	[REMARKS] [varchar](80) NULL,
	[OPERATION] [varchar](30) NULL,
	[OPTIONS] [varchar](30) NULL,
	[OBJECT_NODE] [varchar](128) NULL,
	[OBJECT_OWNER] [varchar](30) NULL,
	[OBJECT_NAME] [varchar](30) NULL,
	[OBJECT_INSTANCE] [numeric](18, 0) NULL,
	[OBJECT_TYPE] [varchar](30) NULL,
	[OPTIMIZER] [varchar](255) NULL,
	[SEARCH_COLUMNS] [numeric](18, 0) NULL,
	[ID] [numeric](18, 0) NULL,
	[PARENT_ID] [numeric](18, 0) NULL,
	[POSITION] [numeric](18, 0) NULL,
	[COST] [numeric](18, 0) NULL,
	[CARDINALITY] [numeric](18, 0) NULL,
	[BYTES] [numeric](18, 0) NULL,
	[OTHER_TAG] [varchar](255) NULL,
	[OTHER] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plant_mast](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[plant_name] [varchar](255) NOT NULL,
	[contact_person1] [varchar](150) NULL,
	[contact_person2] [varchar](150) NULL,
	[telephone1] [varchar](20) NULL,
	[telephone2] [varchar](20) NULL,
	[fax1] [varchar](20) NULL,
	[fax2] [varchar](20) NULL,
	[email1] [varchar](150) NULL,
	[email2] [varchar](150) NULL,
	[address] [varchar](255) NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) NULL,
 CONSTRAINT [PK_plant_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [port_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[port_id] [varchar](10) NULL,
	[t_zone] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PORT_MAST](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
	[ELITE_OFF] [varchar](20) NULL,
	[PROVINCE] [varchar](100) NULL,
	[customs_port_code] [varchar](10) NULL,
	[cert_type] [varchar](50) NULL,
 CONSTRAINT [PK_PORT_MAST] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [port_mast_20100513](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
	[ELITE_OFF] [varchar](20) NULL,
	[PROVINCE] [varchar](100) NULL,
	[customs_port_code] [varchar](10) NULL,
	[cert_type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PORT_MAST_BACKUP](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
 CONSTRAINT [PK_PORT_BACKUP] PRIMARY KEY NONCLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PORT_PROVINCE](
	[UNLOCODE] [varchar](10) NOT NULL,
	[CITYNAME] [varchar](100) NULL,
	[PROVINCE] [varchar](100) NULL,
 CONSTRAINT [PORT_PROVINCE_BACKUP_x] PRIMARY KEY NONCLUSTERED 
(
	[UNLOCODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [port_temp](
	[port_id] [varchar](10) NOT NULL,
	[port_name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRESET_NC_MAST](
	[parentacctid] [decimal](5, 0) NULL,
	[team_name] [varchar](100) NULL,
	[nc_name] [varchar](100) NULL,
	[nc_parties] [varchar](20) NULL,
	[nc_type_code] [varchar](10) NULL,
	[nc_add_desc] [varchar](1) NULL,
	[created_by] [varchar](10) NULL,
	[date_created] [datetime] NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_PRESET_NC_MAST_pid] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL,
 CONSTRAINT [PK_prodgrp_dt] PRIMARY KEY CLUSTERED 
(
	[prodgrp_id] ASC,
	[product_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prodgrp_hd](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_name] [varchar](100) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_prodgrp_hd] PRIMARY KEY CLUSTERED 
(
	[prodgrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRODUCT_MAST](
	[CUST_ID] [varchar](15) NOT NULL,
	[PRODUCT_ID] [varchar](20) NOT NULL,
	[COMP_NAME] [varchar](50) NOT NULL,
	[COMP_GRP_ID] [varchar](50) NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) NULL,
	[HARMONIZED_CODE] [varchar](20) NULL,
	[UN_NO] [varchar](20) NULL,
	[CHEMICAL_NAME] [varchar](100) NULL,
	[HAZARDOUS_CLASS] [varchar](10) NULL,
	[PACKING_GRP] [varchar](10) NULL,
	[EMS_NO] [varchar](10) NULL,
	[PLACARD_LABEL] [varchar](50) NULL,
	[PLACARD_SUB_LABEL] [varchar](50) NULL,
	[FLASHPOINT] [numeric](10, 0) NULL,
	[TEMP_MAX_AMT] [numeric](5, 2) NULL,
	[HAZARDOUS_MAT_PAGE] [varchar](10) NULL,
	[DOT_EMERGENCY_RESP] [varchar](20) NULL,
	[MFAG_NO] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](20) NULL,
	[CONTACT_PHONE] [varchar](20) NULL,
	[TRADE_NAME] [varchar](50) NULL,
	[UOM] [varchar](20) NULL,
	[customs_hs_code] [varchar](50) NULL,
	[prod_full_name] [varchar](200) NULL,
	[dg_ind] [varchar](1) NULL,
	[dg_remarks] [varchar](255) NULL,
	[permit_custid] [varchar](10) NULL,
	[country_origin] [varchar](2) NULL,
	[prod_group_prefix] [char](20) NULL,
	[lyb_product_id] [varchar](20) NULL,
	[lyb_material_description] [varchar](200) NULL,
	[lyb_product_id_40] [varchar](40) NULL,
	[lyb_material_description_40] [varchar](200) NULL,
	[prod_base_gross_wt] [numeric](12, 3) NULL,
	[base_m3] [numeric](12, 4) NULL,
	[prod_base_net_wt] [numeric](12, 3) NULL,
 CONSTRAINT [PK_PRODUCT_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROVINCE_MAST](
	[COUNTRYCODE] [varchar](10) NOT NULL,
	[COUNTRYNAME] [varchar](50) NOT NULL,
	[PROVINCE] [varchar](100) NOT NULL,
	[VALID] [int] NOT NULL,
 CONSTRAINT [PK_PROVINCE] PRIMARY KEY NONCLUSTERED 
(
	[PROVINCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [public_holidays](
	[officecode] [varchar](50) NOT NULL,
	[holidayyear] [varchar](50) NOT NULL,
	[holidaydate] [datetime] NOT NULL,
	[holidayname] [varchar](100) NOT NULL,
	[holidayremark] [varchar](100) NULL,
	[holidayid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PUBLIC_HOLIDAYS_SG](
	[officecode] [varchar](50) NOT NULL,
	[holidayyear] [varchar](50) NOT NULL,
	[holidaydate] [datetime] NOT NULL,
	[holidayname] [varchar](100) NOT NULL,
	[holidayremark] [varchar](100) NULL,
	[holidayid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[holidayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RECEIPT](
	[RECEIPT_N] [numeric](10, 0) NOT NULL,
	[RECEIPT_YM] [varchar](10) NULL,
	[RECEIPT_D] [datetime] NULL,
	[CUST_ID] [varchar](10) NULL,
	[CUST_NAME] [varchar](70) NULL,
	[PROVIDE_FOR] [varchar](40) NULL,
	[BANK_NAME] [varchar](40) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](11, 4) NULL,
	[PAY_A] [numeric](11, 2) NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[CHQ_N] [varchar](40) NULL,
	[PREPARD_BY] [varchar](20) NULL,
	[CHQ_DT] [datetime] NULL,
	[CHQ_AMT] [numeric](10, 4) NULL,
	[CASH_AMT] [numeric](10, 4) NULL,
	[EXPORT_IND] [varchar](1) NULL,
	[COST_CENTRE_C] [varchar](10) NULL,
 CONSTRAINT [PK_RECEIPT] PRIMARY KEY NONCLUSTERED 
(
	[RECEIPT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RECEIPT_DET](
	[RECEIPT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[INVOICE_N] [varchar](10) NOT NULL,
	[FY] [varchar](4) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[PORT_DISC_ID] [varchar](10) NOT NULL,
	[HBL_N] [varchar](20) NOT NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[INV_TRA_TYPE] [varchar](10) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NOT NULL,
	[INV_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[INVOICE_TYPE] [char](2) NOT NULL,
 CONSTRAINT [PK_RECEIPT_DET] PRIMARY KEY NONCLUSTERED 
(
	[RECEIPT_N] ASC,
	[LINE_N] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REF_ORDER_DET](
	[ORDER_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[CONT_N] [varchar](30) NOT NULL,
	[SEAL_N] [varchar](30) NOT NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[SEQ_N] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_REF_ORDER_DET] PRIMARY KEY NONCLUSTERED 
(
	[ORDER_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REF_ORDER_MAST](
	[ORDER_N] [numeric](10, 0) NOT NULL,
	[ORDER_TRA_TYPE] [char](1) NOT NULL,
	[ORDER_REF] [numeric](10, 0) NOT NULL,
	[YARD_ADD1] [varchar](50) NOT NULL,
	[YARD_ADD2] [varchar](50) NOT NULL,
	[YARD_ADD3] [varchar](50) NOT NULL,
	[YARD_ADD4] [varchar](50) NOT NULL,
	[ORDER_D] [datetime] NOT NULL,
	[ORDER_REF_NO] [varchar](50) NOT NULL,
	[HAULIER_ID] [varchar](10) NOT NULL,
	[EXT_D] [datetime] NOT NULL,
	[DAY_20] [numeric](5, 0) NOT NULL,
	[AMT_20] [numeric](11, 3) NOT NULL,
	[DAY_40] [numeric](5, 0) NOT NULL,
	[AMT_40] [numeric](11, 3) NOT NULL,
	[AMT_TOT] [numeric](11, 3) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[REMARKS1] [varchar](100) NULL,
	[REMARKS2] [varchar](100) NULL,
 CONSTRAINT [PK_REF_ORDER_MAST] PRIMARY KEY NONCLUSTERED 
(
	[ORDER_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REF_SCAC_CODES](
	[country_id] [varchar](10) NOT NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_country_id] [varchar](2) NOT NULL,
	[port_disc_country_id] [varchar](2) NOT NULL,
	[scac] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_SCAC_CODES_1] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC,
	[carrier_id] ASC,
	[port_load_country_id] ASC,
	[port_disc_country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REGION_MAST](
	[REGION_ID] [varchar](10) NOT NULL,
	[REGION_NAME] [varchar](50) NULL,
	[SORT_K] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_REGION_MAST] PRIMARY KEY NONCLUSTERED 
(
	[REGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [region_mast_backup_2014SEP17](
	[REGION_ID] [varchar](10) NOT NULL,
	[REGION_NAME] [varchar](50) NULL,
	[SORT_K] [numeric](5, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReplicationCheck](
	[TimeStamp] [int] NOT NULL,
 CONSTRAINT [PK_ReplicationCheck] PRIMARY KEY CLUSTERED 
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [report_temp](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[unique_ref_no] [varchar](50) NULL,
	[certificate_no] [varchar](20) NULL,
	[hs_code] [varchar](15) NULL,
	[user_id] [varchar](15) NULL,
	[user_name] [varchar](30) NULL,
	[position] [varchar](30) NULL,
	[pic] [varchar](30) NULL,
	[status] [varchar](100) NULL,
 CONSTRAINT [PK_report_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_inv_sum](
	[sum_seq_n] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[cust_id] [varchar](10) NULL,
	[date_from] [datetime] NULL,
	[date_to] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_inv_sum_det](
	[sum_seq_n] [numeric](18, 0) NOT NULL,
	[line_n] [numeric](18, 0) NOT NULL,
	[invoice_n] [varchar](10) NULL,
	[inv_job_n] [varchar](10) NULL,
	[inv_tra_type] [varchar](10) NULL,
	[inv_ref_n] [varchar](10) NULL,
	[inv_d] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[ref1] [varchar](50) NULL,
	[ref2] [varchar](50) NULL,
	[ref3] [varchar](50) NULL,
	[ref4] [varchar](50) NULL,
	[ref5] [varchar](50) NULL,
	[chg01_a] [numeric](11, 3) NULL,
	[chg02_a] [numeric](11, 3) NULL,
	[chg03_a] [numeric](11, 3) NULL,
	[chg04_a] [numeric](11, 3) NULL,
	[chg05_a] [numeric](11, 3) NULL,
	[chg06_a] [numeric](11, 3) NULL,
	[chg07_a] [numeric](11, 3) NULL,
	[chg08_a] [numeric](11, 3) NULL,
	[chg09_a] [numeric](11, 3) NULL,
	[chg10_a] [numeric](11, 3) NULL,
	[chg11_a] [numeric](11, 3) NULL,
	[chg12_a] [numeric](11, 3) NULL,
	[chg13_a] [numeric](11, 3) NULL,
	[chg14_a] [numeric](11, 3) NULL,
	[chg15_a] [numeric](11, 3) NULL,
	[chg16_a] [numeric](11, 3) NULL,
	[chg17_a] [numeric](11, 3) NULL,
	[chg18_a] [numeric](11, 3) NULL,
	[chg19_a] [numeric](11, 3) NULL,
	[chg20_a] [numeric](11, 3) NULL,
	[chg21_a] [numeric](11, 3) NULL,
	[chg22_a] [numeric](11, 3) NULL,
	[chg23_a] [numeric](11, 3) NULL,
	[chg24_a] [numeric](11, 3) NULL,
	[chg25_a] [numeric](11, 3) NULL,
	[chg26_a] [numeric](11, 3) NULL,
	[chg27_a] [numeric](11, 3) NULL,
	[chg28_a] [numeric](11, 3) NULL,
	[chg29_a] [numeric](11, 3) NULL,
	[chg30_a] [numeric](11, 3) NULL,
	[chg31_a] [numeric](11, 3) NULL,
	[chg32_a] [numeric](11, 3) NULL,
	[chg33_a] [numeric](11, 3) NULL,
	[chg34_a] [numeric](11, 3) NULL,
	[chg35_A] [numeric](11, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sabic_shipment_report_data](
	[seq_no] [numeric](18, 0) NOT NULL,
	[received_date] [datetime] NOT NULL,
	[delivery_no] [varchar](20) NULL,
	[shipment_no] [varchar](20) NULL,
	[nomination_date] [varchar](20) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[sold_to_party] [varchar](30) NULL,
	[po_no] [varchar](40) NULL,
	[sold_to_party_name] [varchar](70) NULL,
	[ship_to_party_name] [varchar](70) NULL,
	[prod_desc] [varchar](50) NULL,
	[material_cd] [varchar](20) NULL,
	[net_wt] [varchar](20) NULL,
	[cont_20] [varchar](9) NULL,
	[cont_40] [varchar](9) NULL,
	[loading_date] [varchar](20) NULL,
	[act_gds_mvt_date] [varchar](20) NULL,
	[othr_gds_mvt_stats] [char](1) NULL,
	[shipm_end_time] [varchar](20) NULL,
	[tot_gds_mvt_stats] [char](1) NULL,
	[batch] [varchar](20) NULL,
	[bill_of_lading] [varchar](70) NULL,
	[cont_id] [varchar](70) NULL,
	[external_id_1] [varchar](20) NULL,
	[name_of_forwarding_agent] [varchar](70) NULL,
	[lc_no] [varchar](70) NULL,
	[fd_no] [varchar](70) NULL,
	[payment_terms] [varchar](250) NULL,
	[incoterms] [varchar](40) NULL,
	[route] [varchar](20) NULL,
	[shipment_route_desc] [varchar](100) NULL,
	[incoterms_2] [varchar](70) NULL,
 CONSTRAINT [PK_sabic_shipment_report_data] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SABIC_SHIPPING_ADVICE_REPORT](
	[shipment_no] [varchar](40) NULL,
	[delivery_no] [varchar](40) NULL,
	[ship_line] [varchar](40) NOT NULL,
	[vessel_name] [varchar](40) NOT NULL,
	[voyage] [varchar](40) NOT NULL,
	[port_load_name] [varchar](40) NOT NULL,
	[sail_dt] [datetime] NOT NULL,
	[eta_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SABIC_SHIPPING_ADVICE_REPORT_EGS](
	[delivery_no] [varchar](40) NOT NULL,
	[shipment_no] [varchar](40) NOT NULL,
	[VENDOR_NAME] [varchar](40) NULL,
	[VENDOR_ID] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](40) NULL,
	[cust_id] [varchar](40) NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[VESSEL] [varchar](40) NULL,
	[VOYAGE] [varchar](40) NULL,
	[ENTRY_D] [datetime] NULL,
	[eta_dt] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sabic_uploadlcreport](
	[seq_no] [numeric](18, 0) NOT NULL,
	[record_create_date] [datetime] NOT NULL,
	[cust_country] [varchar](50) NULL,
	[sold_to_cust] [varchar](50) NULL,
	[cust_name] [varchar](100) NULL,
	[ext_fin_doc_no] [varchar](50) NULL,
	[lc_crcy] [varchar](10) NULL,
	[fd_no] [varchar](10) NULL,
	[fd_doc_val] [numeric](18, 2) NULL,
	[open_val] [numeric](18, 2) NULL,
	[open_date] [date] NULL,
	[create_date] [date] NULL,
	[red_date] [date] NULL,
	[latest_ship_date] [date] NULL,
	[val_end_date] [date] NULL,
	[conf_bank_name] [varchar](100) NULL,
	[neg_bank_name] [varchar](100) NULL,
	[neg_bank_country] [varchar](50) NULL,
	[open_bank_country] [varchar](50) NULL,
	[terms_payment] [varchar](20) NULL,
	[open_bank_name] [varchar](100) NULL,
	[allowed_draft] [numeric](18, 2) NULL,
	[search_term] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SALESMAN_MAST](
	[SALESMAN_ID] [varchar](10) NOT NULL,
	[SALESMAN_NAME] [varchar](50) NULL,
 CONSTRAINT [PK_SALESMAN_MAST] PRIMARY KEY NONCLUSTERED 
(
	[SALESMAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [screen_user_access](
	[role_id] [varchar](20) NOT NULL,
	[module] [varchar](20) NOT NULL,
	[screen_name] [varchar](50) NOT NULL,
	[object_name] [varchar](50) NOT NULL,
	[s_read] [varchar](1) NULL,
	[s_write] [varchar](1) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_screen_user_access] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[module] ASC,
	[screen_name] ASC,
	[object_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [second_script](
	[Col001] [varchar](255) NULL,
	[Col002] [varchar](255) NULL,
	[Col003] [varchar](255) NULL,
	[Col004] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SendXML_Errors](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_ref_n] [decimal](10, 0) NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[log_d] [datetime] NULL,
	[user_id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SendXML_Log](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) NULL,
	[activity] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[sent_d] [datetime] NULL,
	[xml_file_name] [varchar](100) NULL,
	[log_d] [datetime] NULL,
	[msg_status] [varchar](50) NULL,
	[bkg_cfm_seq_n] [decimal](18, 0) NULL,
	[bkg_cfm_dt] [datetime] NULL,
	[si_ack_seq_n] [decimal](18, 0) NULL,
	[si_ack_dt] [datetime] NULL,
	[eliteint] [varchar](20) NULL,
	[xml_filename_resp] [varchar](50) NULL,
	[recv_date_resp] [datetime] NULL,
	[status_resp] [varchar](50) NULL,
	[carrier_id] [varchar](10) NULL,
	[msg_type] [varchar](10) NULL,
 CONSTRAINT [PK_SendXML_Log] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SendXML_Log_BACKUP_11APR2013](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) NULL,
	[activity] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[sent_d] [datetime] NULL,
	[xml_file_name] [varchar](100) NULL,
	[log_d] [datetime] NULL,
	[msg_status] [varchar](50) NULL,
	[bkg_cfm_seq_n] [decimal](18, 0) NULL,
	[bkg_cfm_dt] [datetime] NULL,
	[si_ack_seq_n] [decimal](18, 0) NULL,
	[si_ack_dt] [datetime] NULL,
	[eliteint] [varchar](20) NULL,
	[xml_filename_resp] [varchar](50) NULL,
	[recv_date_resp] [datetime] NULL,
	[status_resp] [varchar](50) NULL,
	[carrier_id] [varchar](10) NULL,
	[msg_type] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SendXML_Trans](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) NULL,
	[cust_id] [varchar](10) NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) NULL,
	[sendXML_count] [decimal](18, 0) NULL,
	[last_sendXML_user] [varchar](50) NULL,
	[last_sendXML_d] [datetime] NULL,
	[last_xml_filename] [varchar](100) NULL,
	[sendPDF_count] [decimal](18, 0) NULL,
	[last_sendPDF_user] [varchar](50) NULL,
	[last_sendPDF_d] [datetime] NULL,
	[last_pdf_filename] [char](10) NULL,
	[log_d] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SHELL_CON_PROD](
	[CONSIGNEE_NAME] [varchar](100) NULL,
	[PROD_NAME] [varchar](100) NULL,
	[EMAIL_TO] [varchar](255) NULL,
	[EMAIL_CC] [varchar](255) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATE_DATE] [datetime] NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NULL,
	[port_id] [varchar](10) NULL,
	[port_email_to] [varchar](255) NULL,
	[port_email_cc] [varchar](255) NULL,
	[ei_job_type] [varchar](10) NULL,
	[ei_vendorid] [varchar](10) NULL,
	[ei_emailto] [varchar](500) NULL,
	[ei_emailcc] [varchar](500) NULL,
	[ei_emailtofumigator] [varchar](500) NULL,
	[ei_emailton2] [varchar](500) NULL,
 CONSTRAINT [PK_SHELL_CON_PROD] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SHELL_PAYMENT_TERM](
	[days_payment] [int] NULL,
	[type_payment] [char](3) NULL,
	[description_payment] [varchar](100) NULL,
	[row_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SHELL_PRODUCT_WT](
	[ProductName] [varchar](100) NULL,
	[HsCode] [varchar](40) NULL,
	[PackingNetWt] [varchar](40) NULL,
	[NetWt] [numeric](18, 3) NULL,
	[GrossWt] [numeric](18, 3) NULL,
	[M3] [numeric](18, 3) NULL,
	[Remarks] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shipper_consignee_master](
	[cust_id] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[TEL1] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[iscustomer] [varchar](1) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_shipper_consignee_master] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SOW_JOBS_MASTER](
	[row_id] [int] NOT NULL,
	[CUST_ID] [varchar](255) NULL,
	[CUST_ORD_NO] [varchar](255) NULL,
	[EXPORT_N_DT] [numeric](19, 0) NOT NULL,
	[EXPORT_REF_N_DT] [numeric](19, 0) NULL,
	[HBL_N] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[EXPORT_N_HD] [numeric](19, 0) NOT NULL,
	[entry_d] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EXPORT_N_HD] ASC,
	[EXPORT_N_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spell_check](
	[ScreeName] [varchar](255) NOT NULL,
	[ColumnName] [varchar](255) NOT NULL,
	[ActiveFlag] [varchar](1) NOT NULL,
	[createdby] [varchar](10) NOT NULL,
	[createddate] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_spell_check] PRIMARY KEY CLUSTERED 
(
	[ScreeName] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STOCK_INFO](
	[CR_AGENT_ID] [varchar](15) NOT NULL,
	[BATCH_NO] [numeric](5, 0) NOT NULL,
	[BL_NO] [varchar](15) NOT NULL,
	[BOOKED_TYPE] [char](1) NULL,
	[BOOKED_ID] [varchar](10) NULL,
	[RECEIVED_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[STATUS] [char](1) NULL,
	[CR_BL_ID] [varchar](3) NULL,
 CONSTRAINT [PK_STOCK_INFO] PRIMARY KEY NONCLUSTERED 
(
	[CR_AGENT_ID] ASC,
	[BATCH_NO] ASC,
	[BL_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_CONTROL_VALUES](
	[GST_P] [numeric](11, 3) NULL,
	[INV_REPRN_COUNT] [numeric](18, 0) NULL,
	[INV_ROUND_A] [numeric](18, 0) NULL,
	[ID_LOCKUP_COUNT] [numeric](18, 0) NULL,
	[CUURENT_FY] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_COUNTER](
	[COUNTER_ID] [varchar](10) NOT NULL,
	[COUNTER_DES] [varchar](50) NOT NULL,
	[COUNTER_VAL] [numeric](10, 0) NOT NULL,
 CONSTRAINT [PK_SYS_COUNTER] PRIMARY KEY NONCLUSTERED 
(
	[COUNTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_COUNTER_ISSUED](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerId] [char](50) NOT NULL,
	[CounterId] [char](20) NOT NULL,
	[CounterValue] [numeric](18, 0) NULL,
	[InsertDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_DEFAULT](
	[DEFAULT_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[HBL_ID] [varchar](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[COY_NAME] [varchar](50) NOT NULL,
	[COY_ADD1] [varchar](70) NOT NULL,
	[COY_ADD2] [varchar](70) NOT NULL,
	[COY_ADD3] [varchar](70) NOT NULL,
	[COY_ADD4] [varchar](70) NOT NULL,
	[CR_N] [varchar](30) NOT NULL,
	[INVOICE_PAY_TO] [varchar](100) NOT NULL,
	[INVOICE_PAY_TO2] [varchar](100) NOT NULL,
	[BANK_AC_CODE] [varchar](15) NULL,
	[EX_AC_CODE] [varchar](15) NULL,
	[INVOICE_PAY_TO3] [varchar](100) NULL,
	[PERIOD_START] [numeric](22, 0) NULL,
	[CASH_AC_CODE] [numeric](22, 4) NULL,
	[FIND_YEAR] [numeric](22, 0) NULL,
	[D_DATE] [datetime] NULL,
	[DATE_IND] [varchar](1) NULL,
	[LOCAL_AR_ACC] [numeric](22, 4) NULL,
	[LOCAL_AP_ACC] [numeric](22, 4) NULL,
	[FORIEGN_AR_ACC] [numeric](22, 4) NULL,
	[FORIEGN_AP_ACC] [numeric](22, 4) NULL,
	[BANK_DET1] [varchar](40) NULL,
	[BANK_DET2] [varchar](40) NULL,
	[BANK_DET3] [varchar](40) NULL,
	[BANK_DET4] [varchar](40) NULL,
	[BANK_DET5] [varchar](40) NULL,
	[MAST_ID] [varchar](15) NULL,
	[PARTY_ID] [varchar](15) NULL,
	[BANK_NAME1] [varchar](30) NULL,
	[BANK_NAME2] [varchar](30) NULL,
	[BANK_NAME3] [varchar](30) NULL,
	[BANK_NAME4] [varchar](30) NULL,
	[BANK_AC1] [numeric](22, 0) NULL,
	[BANK_AC2] [numeric](22, 0) NULL,
	[BANK_AC3] [numeric](22, 0) NULL,
	[BANK_AC4] [numeric](22, 0) NULL,
	[CUST_QUT_FOOT] [varchar](300) NULL,
	[CUST_QUT_HEAD] [varchar](300) NULL,
	[GST_HEAD] [varchar](100) NULL,
	[PRINT_NAME1] [varchar](100) NULL,
	[PRINT_NAME2] [varchar](100) NULL,
	[RPT_TEXT] [varchar](300) NULL,
	[COUNTRY] [varchar](30) NULL,
	[REM1] [varchar](100) NULL,
	[REM2] [varchar](100) NULL,
	[CITY_ID] [varchar](40) NULL,
	[BL_TOP] [varchar](5) NULL,
	[BL_LEFT] [varchar](5) NULL,
	[AWB_TOP] [varchar](5) NULL,
	[AWB_LEFT] [varchar](5) NULL,
	[WORK_HR1] [varchar](40) NULL,
	[WORK_HR2] [varchar](40) NULL,
	[INVOICE_PAY_TO4] [varchar](100) NULL,
	[IATA_CD] [varchar](40) NULL,
	[ACC_NO] [varchar](40) NULL,
	[AIR_CHG_C] [varchar](10) NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[HBL_COY_NAME] [varchar](50) NULL,
	[ALERT_DAYS] [numeric](2, 0) NULL,
	[OBL_REMARKS1] [varchar](100) NULL,
	[OBL_REMARKS2] [varchar](100) NULL,
	[ARR_REMARKS] [varchar](400) NULL,
	[COY_DO_REF_N] [varchar](50) NULL,
	[E_DOCS_COUNTRY_ID] [varchar](2) NULL,
	[INV_FOOT1] [varchar](100) NULL,
	[INV_FOOT2] [varchar](100) NULL,
	[INV_FOOT3] [varchar](100) NULL,
	[INV_FOOT4] [varchar](100) NULL,
	[INV_FOOT5] [varchar](100) NULL,
	[INV_FOOT6] [varchar](100) NULL,
	[INV_FOOT7] [varchar](100) NULL,
	[INV_FOOT8] [varchar](100) NULL,
	[HAZARD_DECL] [varchar](250) NULL,
	[PACK_CERT] [varchar](250) NULL,
	[EMER_CONT] [varchar](250) NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) NULL,
	[SED_CLAUSE] [varchar](250) NULL,
	[ITN] [varchar](250) NULL,
	[SIGN_DECL] [varchar](250) NULL,
	[HAZARD_DECL2] [varchar](250) NULL,
	[SOA_FOOTER] [varchar](500) NULL,
	[BANK_NAME5] [varchar](30) NULL,
	[BANK_AC5] [numeric](22, 0) NULL,
	[TAX_LABEL] [varchar](10) NULL,
	[QUICK_TRACK_URL] [varchar](100) NULL,
	[ELITEINT_URL] [varchar](100) NULL,
	[version] [varchar](10) NULL,
	[UEN] [varchar](30) NULL,
	[INV_FOOT9] [varchar](100) NULL,
	[INV_FOOT10] [varchar](100) NULL,
	[log_history] [char](1) NOT NULL,
	[consolidate_invoice] [char](1) NOT NULL,
	[invoice_prefix] [varchar](5) NOT NULL,
	[IsMainEntity] [char](1) NOT NULL,
	[show_invoice_footer] [char](1) NOT NULL,
	[enable_cost_statement] [char](1) NOT NULL,
	[link_to_YYAcctgSystem] [char](1) NOT NULL,
	[chk_payable_linked_to_invoice] [char](1) NOT NULL,
	[def_dom_trucker_id] [varchar](10) NULL,
	[chk_read_write] [varchar](1) NULL,
	[chk_custid_security] [varchar](1) NULL,
	[chk_ord_mgmt_ind] [numeric](1, 0) NULL,
	[ord_mgmt_msg] [numeric](1, 0) NULL,
	[server_ip_add] [varchar](20) NULL,
	[dbase_name] [varchar](20) NULL,
	[BANK_NAME6] [varchar](30) NULL,
	[BANK_AC6] [numeric](22, 0) NULL,
	[BANK_NAME7] [varchar](30) NULL,
	[BANK_AC7] [numeric](22, 0) NULL,
	[BANK_NAME8] [varchar](30) NULL,
	[BANK_AC8] [numeric](22, 0) NULL,
	[sys] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SYS_DEFAULT] PRIMARY KEY NONCLUSTERED 
(
	[DEFAULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_GROUP_MAST](
	[GROUP_ID] [varchar](10) NOT NULL,
	[GROUP_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SYS_GROUP_MAST] PRIMARY KEY NONCLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_MODULE_GROUP](
	[GROUP_ID] [varchar](10) NOT NULL,
	[MODULE_ID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SYS_MODULE_GROUP] PRIMARY KEY NONCLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_MODULE_MAST](
	[MODULE_ID] [varchar](10) NOT NULL,
	[MODULE_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SYS_MODULE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_USER_LOGIN_LOG](
	[SESSION_ID] [numeric](18, 0) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[LOGIN_D] [datetime] NOT NULL,
	[LOGIN_T] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SYS_USER_LOGIN_LOG] PRIMARY KEY NONCLUSTERED 
(
	[SESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_USER_MAST](
	[USER_ID] [varchar](10) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[DEPT_ID] [varchar](50) NOT NULL,
	[COST_CTR_C] [varchar](50) NOT NULL,
	[DESIG_ID] [varchar](10) NULL,
	[CREATE_D] [datetime] NOT NULL,
	[PASSWORD] [varchar](20) NULL,
	[USER_TEL] [varchar](20) NULL,
	[USER_FAX] [varchar](20) NULL,
	[USER_EMAIL] [varchar](150) NULL,
	[USER_STAMP] [varchar](50) NULL,
	[DESIGNATION] [varchar](50) NULL,
	[MANAGER_EMAIL] [varchar](150) NULL,
	[ROLEID] [int] NULL,
	[active] [varchar](1) NULL,
	[disable_d] [datetime] NULL,
	[reinstate_d] [datetime] NULL,
	[dec_id] [varchar](17) NULL,
	[dec_code] [varchar](20) NULL,
	[dec_name] [varchar](105) NULL,
	[dec_contact] [varchar](25) NULL,
	[def_dhl_senders_id] [numeric](18, 0) NULL,
	[def_dhl_file_path] [varchar](150) NULL,
	[def_dhl_file_error] [varchar](150) NULL,
	[def_business_unit] [varchar](10) NULL,
	[BL_SURRENDER_USER_SIG] [varchar](20) NULL,
	[BL_SURRENDER_EMAIL_ADD] [varchar](50) NULL,
	[user_security_exempt] [char](1) NULL,
	[DHL_WEB_PRINTER] [varchar](50) NULL,
	[FULL_DOCS_PRINTER] [varchar](50) NULL,
	[office_id] [char](10) NULL,
	[main_dec_id] [varchar](17) NULL,
	[mobile_no] [varchar](30) NULL,
	[dept_stamp] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_USER_MAST] PRIMARY KEY NONCLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_USER_MODULE](
	[MODULE_ID] [varchar](10) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SYS_USER_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[MODULE_ID] ASC,
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Table_1](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Environment] [varchar](20) NOT NULL,
	[CustomterId] [varchar](20) NOT NULL,
	[ColumnName] [char](100) NOT NULL,
	[Description] [varchar](1000) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_5231_report](
	[cust_id] [varchar](10) NULL,
	[Cust_name] [varchar](100) NULL,
	[vendor_name] [varchar](100) NULL,
	[Job_type] [varchar](20) NULL,
	[Job_n] [numeric](10, 0) NULL,
	[Job_ref_n] [numeric](10, 0) NULL,
	[Invoice_n] [varchar](10) NULL,
	[inv_date] [datetime] NULL,
	[invoice_amt] [decimal](15, 5) NULL,
	[ar_doc_no] [varchar](10) NULL,
	[Invoice_amt_gst] [decimal](15, 5) NULL,
	[Fapiao_no] [varchar](20) NULL,
	[Fapiao_date] [datetime] NULL,
	[Fapiao_amt] [numeric](15, 2) NULL,
	[Posted_Gl] [varchar](1) NULL,
	[Ar_receipt_no] [varchar](50) NULL,
	[ar_Receipt_amt] [numeric](15, 2) NULL,
	[variance] [numeric](15, 2) NULL,
	[job_cost] [decimal](15, 5) NULL,
	[job_cost_w_vat] [decimal](15, 5) NULL,
	[Payable_doc_no] [varchar](max) NULL,
	[payment_si] [varchar](100) NULL,
	[payment_si_amt] [decimal](15, 5) NULL,
	[profit] [decimal](15, 5) NULL,
	[vendor_id] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_AUTO_INSURANCE](
	[cert_n] [numeric](10, 0) NULL,
	[ship_value] [numeric](18, 3) NULL,
	[so_n] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_BIDDER](
	[bidder_short_name] [nchar](50) NULL,
	[customer_name] [varchar](150) NULL,
	[customer_id] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_BU](
	[bu_parent_id] [int] NULL,
	[bu_name] [varchar](100) NULL,
	[cust_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_CARRIER_ALLOCATION](
	[region] [varchar](10) NULL,
	[origin] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[icd] [varchar](50) NULL,
	[cont_size] [int] NULL,
	[lane_grouping] [varchar](50) NULL,
	[bidder] [varchar](50) NULL,
	[flexibag] [char](10) NULL,
	[number_of_transhipment] [int] NULL,
	[transit_time] [int] NULL,
	[allocation_percentage] [numeric](9, 0) NULL,
	[allocation_in_cont] [numeric](9, 0) NULL,
	[allocation_in_teu] [numeric](9, 0) NULL,
	[spend_cost] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_carrier_allocation_8MAR2013_BACKUP](
	[region] [varchar](10) NULL,
	[origin] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[icd] [varchar](50) NULL,
	[cont_size] [int] NULL,
	[lane_grouping] [varchar](50) NULL,
	[bidder] [varchar](50) NULL,
	[flexibag] [char](10) NULL,
	[number_of_transhipment] [int] NULL,
	[transit_time] [int] NULL,
	[allocation_percentage] [numeric](9, 0) NULL,
	[allocation_in_cont] [numeric](9, 0) NULL,
	[allocation_in_teu] [numeric](9, 0) NULL,
	[spend_cost] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_jo](
	[port_disc] [varchar](50) NULL,
	[country] [varchar](80) NULL,
	[no_of_order] [numeric](10, 0) NULL,
	[job_type] [varchar](30) NULL,
	[gross_wt] [decimal](10, 2) NULL,
	[net_wt] [decimal](10, 2) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_bulk] [numeric](10, 0) NULL,
	[freight_cot] [decimal](20, 2) NULL,
	[prod_val] [decimal](20, 2) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_temp_jo] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_jo_imp](
	[port_load] [varchar](50) NULL,
	[country] [varchar](80) NULL,
	[no_of_order] [numeric](10, 0) NULL,
	[job_type] [varchar](30) NULL,
	[gross_wt] [decimal](10, 2) NULL,
	[net_wt] [decimal](10, 2) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_bulk] [numeric](10, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_temp_jo_imp] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_job_n](
	[cust_ord_no] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_MANUAL_INSURANCE](
	[cert_n] [numeric](10, 0) NULL,
	[ship_value] [numeric](18, 3) NULL,
	[so_n] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_mdc](
	[cust_ord_no] [varchar](40) NULL,
	[ord_rcvd_dt] [datetime] NULL,
	[booked_dt] [datetime] NULL,
	[export_n] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_ORDERS](
	[total_packages] [numeric](12, 3) NULL,
	[total_wt] [numeric](12, 3) NULL,
	[total_m3] [numeric](12, 4) NULL,
	[userid] [varchar](20) NULL,
	[date_created] [datetime] NULL,
	[product_id] [varchar](20) NULL,
	[prod_text] [varchar](2000) NULL,
	[line_tot_pack_type] [varchar](50) NULL,
	[wt_uom] [varchar](50) NULL,
	[dtl_wtm3_ind] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_port_mast](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
	[ELITE_OFF] [varchar](20) NULL,
	[PROVINCE] [varchar](100) NULL,
	[customs_port_code] [varchar](10) NULL,
	[cert_type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_sgs](
	[export_n] [numeric](10, 0) NOT NULL,
	[item_desc1] [varchar](100) NULL,
	[item_qty1] [numeric](10, 0) NULL,
	[item_desc2] [varchar](100) NULL,
	[item_qty2] [numeric](10, 0) NULL,
	[item_desc3] [varchar](100) NULL,
	[item_qty3] [numeric](10, 0) NULL,
	[item_desc4] [varchar](100) NULL,
	[item_qty4] [numeric](10, 0) NULL,
	[item_desc5] [varchar](100) NULL,
	[item_qty5] [numeric](10, 0) NULL,
	[item_desc6] [varchar](100) NULL,
	[item_qty6] [numeric](10, 0) NULL,
	[item_desc7] [varchar](100) NULL,
	[item_qty7] [numeric](10, 0) NULL,
	[item_desc8] [varchar](100) NULL,
	[item_qty8] [numeric](10, 0) NULL,
	[item_desc9] [varchar](100) NULL,
	[item_qty9] [numeric](10, 0) NULL,
	[item_desc10] [varchar](100) NULL,
	[item_qty10] [numeric](10, 0) NULL,
	[item_desc11] [varchar](100) NULL,
	[item_qty11] [numeric](10, 0) NULL,
	[item_desc12] [varchar](100) NULL,
	[item_qty12] [numeric](10, 0) NULL,
	[item_desc13] [varchar](100) NULL,
	[item_qty13] [numeric](10, 0) NULL,
	[item_desc14] [varchar](100) NULL,
	[item_qty14] [numeric](10, 0) NULL,
	[item_desc15] [varchar](100) NULL,
	[item_qty15] [numeric](10, 0) NULL,
	[item_desc16] [varchar](100) NULL,
	[item_qty16] [numeric](10, 0) NULL,
	[item_desc17] [varchar](100) NULL,
	[item_qty17] [numeric](10, 0) NULL,
	[item_desc18] [varchar](100) NULL,
	[item_qty18] [numeric](10, 0) NULL,
	[item_desc19] [varchar](100) NULL,
	[item_qty19] [numeric](10, 0) NULL,
	[item_desc20] [varchar](100) NULL,
	[item_qty20] [numeric](10, 0) NULL,
	[item_desc21] [varchar](100) NULL,
	[item_qty21] [numeric](10, 0) NULL,
	[item_desc22] [varchar](100) NULL,
	[item_qty22] [numeric](10, 0) NULL,
	[item_desc23] [varchar](100) NULL,
	[item_qty23] [numeric](10, 0) NULL,
	[item_desc24] [varchar](100) NULL,
	[item_qty24] [numeric](10, 0) NULL,
	[item_desc25] [varchar](100) NULL,
	[item_qty25] [numeric](10, 0) NULL,
	[item_desc26] [varchar](100) NULL,
	[item_qty26] [numeric](10, 0) NULL,
	[item_desc27] [varchar](100) NULL,
	[item_qty27] [numeric](10, 0) NULL,
	[item_desc28] [varchar](100) NULL,
	[item_qty28] [numeric](10, 0) NULL,
	[item_desc29] [varchar](100) NULL,
	[item_qty29] [numeric](10, 0) NULL,
	[item_desc30] [varchar](100) NULL,
	[item_qty30] [numeric](10, 0) NULL,
	[item_desc31] [varchar](100) NULL,
	[item_qty31] [numeric](10, 0) NULL,
	[item_desc32] [varchar](100) NULL,
	[item_qty32] [numeric](10, 0) NULL,
	[item_desc33] [varchar](100) NULL,
	[item_qty33] [numeric](10, 0) NULL,
	[item_desc34] [varchar](100) NULL,
	[item_qty34] [numeric](10, 0) NULL,
	[item_desc35] [varchar](100) NULL,
	[item_qty35] [numeric](10, 0) NULL,
	[item_desc36] [varchar](100) NULL,
	[item_qty36] [numeric](10, 0) NULL,
	[item_desc37] [varchar](100) NULL,
	[item_qty37] [numeric](10, 0) NULL,
	[item_desc38] [varchar](100) NULL,
	[item_qty38] [numeric](10, 0) NULL,
	[item_desc39] [varchar](100) NULL,
	[item_qty39] [numeric](10, 0) NULL,
 CONSTRAINT [PK_sgs_temp] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp1](
	[exp_imp_n] [numeric](10, 0) NULL,
	[QUICK_TRACK_NO] [varchar](25) NULL,
	[TRAX_UPDATE_D] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tempfb](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpa] [nvarchar](30) NULL,
	[tmpb] [nvarchar](20) NULL,
	[tmpc] [nvarchar](50) NULL,
	[tmpd] [nvarchar](20) NULL,
	[tmpe] [nvarchar](20) NULL,
	[tmpf] [nvarchar](20) NULL,
	[tmpg] [nvarchar](255) NULL,
	[tmph] [nvarchar](20) NULL,
	[tmpi] [nvarchar](20) NULL,
	[tmpj] [nvarchar](20) NULL,
	[tmpk] [nvarchar](20) NULL,
	[tmpl] [nvarchar](20) NULL,
	[tmpm] [nvarchar](20) NULL,
	[tmpn] [nvarchar](50) NULL,
	[tmpo] [nvarchar](20) NULL,
	[tmpp] [nvarchar](20) NULL,
	[tmpq] [nvarchar](20) NULL,
	[tmpr] [nvarchar](50) NULL,
	[tmps] [nvarchar](255) NULL,
	[tmpt] [nvarchar](50) NULL,
	[tmpu] [nvarchar](20) NULL,
	[tmpv] [nvarchar](20) NULL,
	[tmpw] [nvarchar](20) NULL,
	[tmpx] [nvarchar](20) NULL,
 CONSTRAINT [PK_tempfb] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Template_Format](
	[job_no] [varchar](50) NOT NULL,
	[job_type] [varchar](10) NOT NULL,
	[doc_head_no] [varchar](50) NOT NULL,
	[format_key] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temppl](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpa] [nvarchar](50) NULL,
	[tmpb] [nvarchar](20) NULL,
	[tmpc] [nvarchar](50) NULL,
	[tmpd] [nvarchar](20) NULL,
	[tmpe] [nvarchar](20) NULL,
	[tmpf] [nvarchar](20) NULL,
	[tmpg] [nvarchar](2000) NULL,
	[tmph] [nvarchar](20) NULL,
	[tmpi] [nvarchar](2000) NULL,
	[tmpj] [nvarchar](20) NULL,
	[tmpk] [nvarchar](2000) NULL,
	[tmpl] [nvarchar](2000) NULL,
	[tmpm] [nvarchar](20) NULL,
	[tmpn] [nvarchar](255) NULL,
	[tmpo] [nvarchar](2000) NULL,
	[tmpp] [nvarchar](2000) NULL,
	[tmpq] [nvarchar](20) NULL,
	[tmpr] [nvarchar](255) NULL,
	[tmps] [nvarchar](1000) NULL,
	[tmpt] [nvarchar](50) NULL,
	[tmpu] [nvarchar](255) NULL,
	[tmpv] [nvarchar](20) NULL,
	[tmpw] [nvarchar](20) NULL,
	[tmpx] [nvarchar](1000) NULL,
	[tmpy] [nvarchar](255) NULL,
	[tmpz] [nvarchar](2000) NULL,
	[tmpaa] [nvarchar](255) NULL,
	[tmpab] [nvarchar](2000) NULL,
	[tmpac] [nvarchar](255) NULL,
	[tmpad] [nvarchar](20) NULL,
	[tmpae] [nvarchar](20) NULL,
	[tmpaf] [nvarchar](20) NULL,
	[tmpag] [nvarchar](2000) NULL,
	[tmpah] [nvarchar](20) NULL,
	[tmpai] [nvarchar](2000) NULL,
	[tmpaj] [nvarchar](255) NULL,
	[tmpak] [nvarchar](2000) NULL,
	[tmpal] [nvarchar](2000) NULL,
	[tmpam] [nvarchar](20) NULL,
	[tmpan] [nvarchar](255) NULL,
 CONSTRAINT [PK_temppl] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tempxls](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpshipment] [nvarchar](20) NULL,
	[tmpdummy] [nvarchar](10) NULL,
	[tmpshty] [int] NULL,
	[tmptppt] [nvarchar](50) NULL,
	[tmpc] [int] NULL,
	[tmps1] [int] NULL,
	[tmpst] [int] NULL,
	[tmpdummy1] [nvarchar](10) NULL,
	[tmppl] [nvarchar](10) NULL,
	[tmpsl] [nvarchar](10) NULL,
	[tmpl] [int] NULL,
	[tmpsc] [int] NULL,
	[tmproute] [nvarchar](10) NULL,
	[tmpdummy2] [nvarchar](10) NULL,
	[tmpcontainerid] [nvarchar](20) NULL,
	[tmpexternalid1] [nvarchar](20) NULL,
	[tmpexternalid2] [nvarchar](20) NULL,
	[tmpdescription] [nvarchar](255) NULL,
	[tmps2] [int] NULL,
	[tmpservagent] [nvarchar](10) NULL,
	[tmpactloadend] [nvarchar](20) NULL,
	[tmpcust_ord_no] [varchar](40) NULL,
	[tmppay_term] [char](1) NULL,
 CONSTRAINT [PK_tempxls] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TERM_CODE_MAST](
	[TERM_ID] [varchar](10) NOT NULL,
	[TERM_DES] [varchar](40) NOT NULL,
	[CREDIT_DAYS] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_TERM_CODE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[TERM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [text_label_mast](
	[text_label] [nvarchar](200) NOT NULL,
	[text_value] [nvarchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [third_party_details](
	[party_type] [varchar](20) NULL,
	[party_name] [varchar](255) NOT NULL,
	[email_to] [varchar](255) NULL,
	[email_cc] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[addr1] [varchar](100) NULL,
	[addr2] [varchar](100) NULL,
	[addr3] [varchar](100) NULL,
	[addr4] [varchar](100) NULL,
	[attn] [char](100) NULL,
	[telno] [varchar](50) NULL,
 CONSTRAINT [PK_third_party_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_airwaybills](
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[airwaybills_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybill_num] [varchar](16) NULL,
	[airwaybill_ref] [varchar](40) NOT NULL,
	[sender_cd] [varchar](30) NULL,
	[sender_company] [varchar](50) NULL,
	[sender_name] [varchar](50) NULL,
	[sender_country_cd] [varchar](2) NOT NULL,
	[sender_country_name] [varchar](30) NULL,
	[sender_address1] [varchar](50) NULL,
	[sender_address2] [varchar](50) NULL,
	[sender_address3] [varchar](50) NULL,
	[sender_zip] [varchar](12) NULL,
	[sender_iata] [varchar](3) NULL,
	[sender_city] [varchar](35) NULL,
	[sender_state] [varchar](35) NULL,
	[sender_phone] [varchar](18) NULL,
	[sender_mobile_fax] [varchar](18) NULL,
	[sender_email] [varchar](40) NULL,
	[sender_vat_gst] [varchar](20) NULL,
	[sender_reference] [varchar](35) NULL,
	[sender_export_license] [varchar](19) NULL,
	[sender_license_exp_dt] [datetime] NULL,
	[shipper_federal_tax_id] [varchar](19) NULL,
	[sender_account_num] [varchar](12) NOT NULL,
	[sender_tc_account] [varchar](12) NULL,
	[receiver_cd] [varchar](30) NULL,
	[receiver_company] [varchar](50) NULL,
	[receiver_attention] [varchar](50) NULL,
	[receiver_country_cd] [varchar](2) NOT NULL,
	[receiver_country_name] [varchar](30) NULL,
	[receiver_address_1] [varchar](50) NULL,
	[receiver_address_2] [varchar](50) NULL,
	[receiver_address_3] [varchar](50) NULL,
	[receiver_zip] [varchar](12) NULL,
	[receiver_iata] [varchar](3) NULL,
	[receiver_city] [varchar](35) NULL,
	[receiver_state] [varchar](35) NULL,
	[receiver_phone] [varchar](18) NULL,
	[receiver_mobile_fax] [varchar](18) NULL,
	[receiver_email1] [varchar](40) NULL,
	[receiver_email2] [varchar](40) NULL,
	[receiver_email3] [varchar](40) NULL,
	[receiver_account] [varchar](12) NULL,
	[receiver_import_license] [varchar](16) NULL,
	[receiver_license_expiry] [datetime] NULL,
	[receiver_reference] [varchar](30) NULL,
	[rcvr_always_send_prealert_flag] [bit] NULL,
	[receiver_vat_gst] [varchar](20) NULL,
	[mail_sort_cd] [varchar](2) NULL,
	[pre_alert_email] [text] NULL,
	[importer_cd] [varchar](30) NULL,
	[importer_company] [varchar](50) NULL,
	[importer_attention] [varchar](50) NULL,
	[importer_address_1] [varchar](50) NULL,
	[importer_address_2] [varchar](50) NULL,
	[importer_address_3] [varchar](50) NULL,
	[importer_city] [varchar](35) NULL,
	[importer_state] [varchar](35) NULL,
	[importer_zip] [varchar](12) NULL,
	[importer_country_cd] [varchar](2) NULL,
	[importer_country_name] [varchar](30) NULL,
	[importer_phone] [varchar](18) NULL,
	[importer_fax] [varchar](18) NULL,
	[importer_email] [varchar](40) NULL,
	[Importer_tax_id_Importer_VAT] [varchar](20) NULL,
	[shipper_state_tax_id] [varchar](19) NULL,
	[ship_dt] [datetime] NOT NULL,
	[shipment_pieces] [int] NOT NULL,
	[shipment_weight] [float] NOT NULL,
	[weight_rounded] [float] NULL,
	[dim_wt_length] [float] NULL,
	[dim_wt_height] [float] NULL,
	[dim_wt_width] [float] NULL,
	[shipment_dim_weight] [float] NULL,
	[awb_currency_cd] [varchar](3) NULL,
	[total_declared_value] [float] NULL,
	[contents1] [varchar](50) NULL,
	[contents2] [varchar](50) NULL,
	[contents3] [varchar](50) NULL,
	[product_id] [numeric](18, 0) NOT NULL,
	[global_product_cd] [varchar](2) NOT NULL,
	[Local_product_cd] [varchar](2) NOT NULL,
	[Product_content_cd] [varchar](3) NOT NULL,
	[package_charge] [float] NULL,
	[total_ship_charges] [float] NULL,
	[total_ship_charge_currency] [varchar](3) NULL,
	[billto_account_num] [varchar](12) NULL,
	[Shipment_billto_options] [tinyint] NULL,
	[delivery_notification_mode] [tinyint] NULL,
	[Insured_amount] [float] NULL,
	[insure_currency_cd] [varchar](3) NULL,
	[harm_commodity_cd] [varchar](20) NULL,
	[country_of_mfg] [varchar](30) NULL,
	[Type_of_export] [varchar](1) NULL,
	[Terms_of_trade_cd] [varchar](3) NULL,
	[tax_id] [varchar](19) NULL,
	[Import_vat_num] [varchar](20) NULL,
	[export_licence_num] [varchar](12) NULL,
	[export_licence_expiry_dt] [datetime] NULL,
	[import_licence_num] [varchar](16) NULL,
	[dos_exempt_flag] [bit] NULL,
	[FTSR_exemption_no] [varchar](10) NULL,
	[dos_exempt_criteria] [varchar](30) NULL,
	[duty_billto_option] [tinyint] NULL,
	[duty_billing_cd] [varchar](30) NULL,
	[vat_billto_option] [tinyint] NULL,
	[VAT_billing_code] [varchar](30) NULL,
	[VAT_billto_country] [varchar](30) NULL,
	[VAT_billto_country_cd] [varchar](2) NULL,
	[duty_billing_accounts_account] [varchar](12) NULL,
	[duty_billing_accounts_vat] [varchar](20) NULL,
	[duty_billing_accounts_ctry_cd] [varchar](2) NULL,
	[duty_billing_accts_ctry_name] [varchar](30) NULL,
	[aggregate_charge] [float] NULL,
	[ETA_period] [int] NULL,
	[ETA_Units] [smallint] NULL,
	[Service_level] [text] NULL,
	[international_flag] [bit] NULL,
	[Dutiable_flag] [bit] NULL,
	[dim_wt_used_flag] [bit] NULL,
	[aggregate_billing_flag] [bit] NULL,
	[split_billing_flag] [bit] NULL,
	[delivery_duties_paid_flag] [bit] NULL,
	[content_attached_flag] [bit] NULL,
	[insurance_service_flag] [bit] NULL,
	[shipment_multiple_ref_flag] [bit] NULL,
	[neutral_delivery_service_flag] [bit] NULL,
	[dos_attached_flag] [bit] NULL,
	[CIPL_attached_flag] [bit] NULL,
	[SED_attached_flag] [bit] NULL,
	[NAFTA_attached_flag] [bit] NULL,
	[piece_details_attached_flag] [bit] NULL,
	[Advisory_Attached_flag] [bit] NULL,
	[dos_advisory_status] [tinyint] NULL,
	[Last_advisory_status] [tinyint] NULL,
	[dos_exempt_advisory_status] [tinyint] NULL,
	[Courier_flag] [bit] NULL,
	[pickup_time] [datetime] NULL,
	[Pickup_dt] [datetime] NULL,
	[courier_initials] [varchar](5) NULL,
	[cal_delivery_dt] [varchar](4) NULL,
	[entry_time] [datetime] NULL,
	[last_advisory_custom_text] [text] NULL,
	[manifest_dt] [datetime] NULL,
	[manifest_time] [datetime] NULL,
	[card_type] [varchar](2) NULL,
	[card_name] [varchar](30) NULL,
	[card_num] [varchar](30) NULL,
	[card_exp_dt] [datetime] NULL,
	[cost_center] [varchar](30) NULL,
	[duty_billing_accounts_company] [varchar](50) NULL,
	[duty_billing_accts_attention] [varchar](50) NULL,
	[duty_billing_accts_address_1] [varchar](50) NULL,
	[duty_billing_accts_address_2] [varchar](50) NULL,
	[duty_billing_accts_address_3] [varchar](50) NULL,
	[duty_billing_accounts_city] [varchar](35) NULL,
	[duty_billing_accounts_state] [varchar](35) NULL,
	[duty_billing_accounts_zip] [varchar](12) NULL,
	[duty_billing_accounts_phone] [varchar](18) NULL,
	[duty_billing_accounts_fax] [varchar](18) NULL,
	[duty_billing_accounts_iata] [varchar](3) NULL,
	[TC_sticker_num] [varchar](10) NULL,
	[AES] [int] NULL,
	[print_flag] [bit] NULL,
	[manifested_flag] [bit] NULL,
	[rate_table] [varchar](7) NULL,
	[move_crt] [varchar](11) NULL,
	[label_prt_flag] [bit] NULL,
	[SAT_flag] [bit] NOT NULL,
	[DVU_flag] [bit] NOT NULL,
	[PDN_flag] [bit] NULL,
	[dutiable_ship_advisory_status] [tinyint] NULL,
	[Trans_ID] [varchar](15) NULL,
	[COD_value] [float] NOT NULL,
	[COD_currency] [varchar](3) NULL,
	[Delivery_terminal_name] [varchar](35) NULL,
	[Delivery_branch_name] [varchar](35) NULL,
	[RTN_flag] [bit] NOT NULL,
	[All_pieces_printed_flag] [bit] NOT NULL,
	[Schedule_number] [varchar](4) NULL,
	[Backend] [varchar](3) NULL,
	[Shipment_VAT] [varchar](20) NULL,
	[mod_id] [varchar](20) NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Exchange_Flag] [bit] NOT NULL,
	[Deferred_Flag] [bit] NOT NULL,
	[Dangerous_Goods_Flag] [bit] NOT NULL,
	[Delivery_Instructions] [varchar](70) NULL,
	[NoOfPallet] [int] NOT NULL,
	[Pallet_Type] [varchar](40) NULL,
	[Fixed_Delivery_date] [datetime] NULL,
	[Master_Airwaybill_Ref] [varchar](40) NULL,
	[Dangerous_Class] [varchar](7) NULL,
	[PreDelivery_Route_Code] [varchar](40) NULL,
	[Province_Code] [varchar](40) NULL,
	[Sort_Code] [varchar](3) NULL,
	[Pickup_Alert_Shown_Flag] [bit] NOT NULL,
	[Piece_Details_Mandatory] [bit] NOT NULL,
	[Origin_station_Code] [varchar](3) NULL,
	[COD_Payment_Type] [varchar](40) NULL,
	[LP_Number] [varchar](35) NULL,
	[Routing_Code] [varchar](3) NULL,
	[Branch_ReamusId] [varchar](6) NULL,
	[Terminal_ReamusId] [varchar](6) NULL,
	[Receiver_state_tax_id] [varchar](19) NULL,
	[receiver_federal_tax_id] [varchar](19) NULL,
	[Invalid_Flag] [bit] NULL,
	[FileName] [varchar](255) NULL,
 CONSTRAINT [PK_tmp_airwaybills] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_cost_centre_mast_20110121](
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[COST_CENTRE_DES] [varchar](40) NOT NULL,
	[yy_cost_centre_c] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TMP_CUSTOMER_MAST_20110105](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_customer_mast_20110120](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_customer_mast_20110127](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_customer_mast_20110221](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_customer_mast_201103032011](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_NAME] [varchar](70) NOT NULL,
	[CUST_NAME2] [varchar](200) NULL,
	[CUST_TYPE_ID] [varchar](1) NOT NULL,
	[CUST_TYPE_SUB_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](40) NULL,
	[ADD2] [varchar](40) NULL,
	[ADD3] [varchar](40) NULL,
	[ADD4] [varchar](40) NULL,
	[ADD5] [varchar](40) NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NOT NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NOT NULL,
	[FAX2] [varchar](20) NULL,
	[EMAIL_1] [varchar](50) NULL,
	[EMAIL_2] [varchar](50) NULL,
	[CONTACT_1] [varchar](50) NOT NULL,
	[CONTACT_2] [varchar](50) NULL,
	[CONTACT_3] [varchar](50) NULL,
	[CONTACT_4] [varchar](50) NULL,
	[CUST_ACC_ID] [varchar](10) NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[INV_TO_DATE_A] [numeric](11, 2) NOT NULL,
	[INV_PAID_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[TERM_ID] [varchar](10) NOT NULL,
	[SALESMAN_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[TRA_PORT_ID] [varchar](10) NOT NULL,
	[ADD1_2] [varchar](40) NULL,
	[ADD2_2] [varchar](40) NULL,
	[ADD3_2] [varchar](40) NULL,
	[ADD4_2] [varchar](40) NULL,
	[LIST_IND] [varchar](1) NULL,
	[CURR_BAL] [numeric](10, 2) NULL,
	[LOOKUP_IND] [char](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[REMARKS3] [varchar](300) NULL,
	[REMARKS4] [varchar](300) NULL,
	[INAME] [varchar](20) NULL,
	[IPASS] [varchar](20) NULL,
	[INAME2] [varchar](20) NULL,
	[IPASS2] [varchar](20) NULL,
	[ICUST] [varchar](20) NULL,
	[ITYPE] [varchar](20) NULL,
	[IACTIVE] [varchar](1) NULL,
	[GLB_CUST_ID] [varchar](30) NULL,
	[DEPT_ID] [varchar](50) NULL,
	[BUSINESS_REG_NO] [varchar](30) NULL,
	[TDB_CR_NO] [varchar](30) NULL,
	[CUST_LOGO] [varchar](50) NULL,
	[CUST_FOOTER1] [varchar](100) NULL,
	[CUST_FOOTER2] [varchar](100) NULL,
	[CUST_FOOTER3] [varchar](100) NULL,
	[CUST_FOOTER4] [varchar](100) NULL,
	[CUST_FOOTER5] [varchar](100) NULL,
	[CUST_FOOTER6] [varchar](100) NULL,
	[CUST_EDOCS_FOOTER] [varchar](50) NULL,
	[CUST_EDOCS_ADD] [varchar](50) NULL,
	[CUST_EDOCS_FOOTER_IND] [varchar](1) NULL,
	[parentAcctid] [int] NULL,
	[AcctName] [varchar](81) NULL,
	[salesman_name] [varchar](255) NULL,
	[iscustomer] [varchar](1) NULL,
	[def_loc_code] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[nominated_carrier] [varchar](1) NULL,
	[bu_name] [varchar](100) NULL,
	[bu_id] [numeric](10, 0) NULL,
	[isinvoiceable] [char](1) NOT NULL,
	[CHK_CNBLICNO] [char](1) NULL,
	[consolidate_inv] [char](1) NOT NULL,
	[attention] [nvarchar](100) NULL,
	[chk_permit_product] [char](1) NOT NULL,
	[yy_cust_id] [varchar](20) NULL,
	[sy_cust_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_dhl_airwaybills](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybills_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_tmp_dhl_airwaybills] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_doc_cust_map_det](
	[job_no] [varchar](30) NOT NULL,
	[job_type] [varchar](20) NOT NULL,
	[edoc_set] [varchar](50) NULL,
	[line_no] [varchar](20) NULL,
	[doc_id] [varchar](20) NULL,
	[doc_name] [varchar](100) NULL,
	[link] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) NULL,
	[cust_ord_no] [varchar](100) NULL,
	[po_no] [varchar](100) NULL,
	[etd] [varchar](30) NULL,
	[pod] [varchar](500) NULL,
 CONSTRAINT [PK_tmp_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_before_job_import_20110111](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[HBL_N] [varchar](20) NOT NULL,
	[TOT_M3] [numeric](12, 4) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[GD_DES1] [varchar](100) NOT NULL,
	[GD_DES2] [varchar](100) NOT NULL,
	[GD_DES3] [varchar](50) NOT NULL,
	[GD_DES4] [varchar](50) NOT NULL,
	[GD_DES5] [varchar](50) NOT NULL,
	[PORT_LOAD_NAME] [varchar](40) NOT NULL,
	[PORT_DISC_NAME] [varchar](40) NOT NULL,
	[PORT_DEL_ID] [varchar](10) NOT NULL,
	[PORT_DEL_NAME] [varchar](40) NOT NULL,
	[PORT_DEL_TERMS] [varchar](10) NOT NULL,
	[PORT_REC_ID] [varchar](10) NOT NULL,
	[PORT_REC_NAME] [varchar](40) NOT NULL,
	[PORT_REC_TERMS] [varchar](40) NOT NULL,
	[FREIGHT_TERM_ID] [varchar](10) NOT NULL,
	[SHIP_ON_BRD_IND] [varchar](1) NOT NULL,
	[SHIP_ON_BRD_D] [datetime] NOT NULL,
	[EXPRESS_IND] [varchar](1) NOT NULL,
	[SHIP_COUNT_IND] [varchar](1) NOT NULL,
	[T_SHIP_IND] [varchar](1) NOT NULL,
	[BL_Q] [numeric](2, 0) NOT NULL,
	[S_SHIPPER1] [varchar](70) NOT NULL,
	[S_SHIPPER2] [varchar](70) NOT NULL,
	[S_SHIPPER3] [varchar](70) NOT NULL,
	[S_SHIPPER4] [varchar](70) NOT NULL,
	[S_SHIPPER5] [varchar](70) NOT NULL,
	[S_SHIPPER6] [varchar](70) NOT NULL,
	[S_CON1] [varchar](70) NOT NULL,
	[S_CON2] [varchar](70) NOT NULL,
	[S_CON3] [varchar](70) NOT NULL,
	[S_CON4] [varchar](70) NOT NULL,
	[S_CON5] [varchar](70) NOT NULL,
	[S_CON6] [varchar](70) NOT NULL,
	[S_NP1] [varchar](70) NOT NULL,
	[S_NP2] [varchar](70) NOT NULL,
	[S_NP3] [varchar](70) NOT NULL,
	[S_NP4] [varchar](70) NOT NULL,
	[S_NP5] [varchar](70) NOT NULL,
	[S_NP6] [varchar](70) NOT NULL,
	[S_AG1] [varchar](70) NOT NULL,
	[S_AG2] [varchar](70) NOT NULL,
	[S_AG3] [varchar](70) NOT NULL,
	[S_AG4] [varchar](70) NOT NULL,
	[S_AG5] [varchar](70) NOT NULL,
	[S_AG6] [varchar](70) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CARGO_WORDS] [varchar](70) NULL,
	[PRE_CARRIAGE] [varchar](40) NULL,
	[FR_COLLECT_IND] [varchar](1) NULL,
	[COLLECT_A] [numeric](11, 3) NULL,
	[COLLECT_CURRENCY] [varchar](10) NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[PO_N] [varchar](40) NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) NULL,
	[I_RATE] [numeric](11, 2) NULL,
	[PSC_IND] [varchar](2) NULL,
	[FR_COLLECT_IND2] [varchar](1) NULL,
	[AS_AGENT] [varchar](40) NULL,
	[WEB_WAREHOUSE] [varchar](100) NULL,
	[WEB_CFS] [varchar](100) NULL,
	[WEB_BL] [varchar](100) NULL,
	[WEB_POD] [varchar](100) NULL,
	[WEB_DO_READY] [varchar](100) NULL,
	[WEB_DO_COLLECT] [varchar](100) NULL,
	[WEB_CONSIGNEE] [varchar](100) NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[S_AGENT] [varchar](40) NULL,
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[BKG_REF_N] [varchar](30) NULL,
	[SWITCH_BL_IND] [varchar](1) NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[WEB_IND] [char](1) NULL,
	[PORT_FIN_ID] [varchar](10) NULL,
	[PORT_FIN_NAME] [varchar](40) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[COLLECT_DATE] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[CONSIGNEE_REF_N] [varchar](40) NULL,
	[TIE_REF_N] [varchar](50) NULL,
	[LC_NO] [varchar](40) NULL,
	[LC_DESC] [varchar](2000) NULL,
	[BOARD_TERM_ID] [varchar](10) NULL,
	[UP_TIE_IND] [varchar](1) NULL,
	[UP_TIE_D] [datetime] NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_RESP_USER] [varchar](10) NULL,
	[SIGNATURE_NAME] [varchar](20) NULL,
	[ISO] [numeric](18, 0) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DESC_ID] [varchar](10) NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[PORT_ISSUE_NAME] [varchar](40) NULL,
	[SHIPPER_REF1] [varchar](40) NULL,
	[SHIPPER_REF2] [varchar](40) NULL,
	[SHIPPER_REF3] [varchar](40) NULL,
	[SHIPPER_REF4] [varchar](40) NULL,
	[SHIPPER_REF5] [varchar](40) NULL,
	[INVOICE_N] [varchar](20) NULL,
	[PAYMENT_TERMS] [varchar](250) NULL,
	[BILL_TO1] [varchar](70) NULL,
	[BILL_TO2] [varchar](70) NULL,
	[BILL_TO3] [varchar](70) NULL,
	[BILL_TO4] [varchar](70) NULL,
	[BILL_TO5] [varchar](70) NULL,
	[BILL_TO6] [varchar](70) NULL,
	[OCEAN_FR_COST] [numeric](11, 3) NULL,
	[ACTUAL_ARR_D] [datetime] NULL,
	[BL_TO_SSLINE_D] [datetime] NULL,
	[BL_FROM_SSLINE_D] [datetime] NULL,
	[DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[WT_UOM] [varchar](10) NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) NULL,
	[SELECT_CONT_IND] [varchar](1) NULL,
	[LC_DESC2] [varchar](2000) NULL,
	[S_NP2_1] [varchar](70) NULL,
	[S_NP2_2] [varchar](70) NULL,
	[S_NP2_3] [varchar](70) NULL,
	[S_NP2_4] [varchar](70) NULL,
	[S_NP2_5] [varchar](70) NULL,
	[S_NP2_6] [varchar](70) NULL,
	[DTL_WTM3_IND] [varchar](1) NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) NULL,
	[SEND_TYPE_ID] [varchar](1) NULL,
	[PRT_SIG_IND] [varchar](1) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [text] NULL,
	[EDI_REMARKS2] [text] NULL,
	[FCR_N] [varchar](20) NULL,
	[HAZARD_DECL] [varchar](250) NULL,
	[PACK_CERT] [varchar](250) NULL,
	[EMER_CONT] [varchar](250) NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) NULL,
	[SED_CLAUSE] [varchar](250) NULL,
	[ITN] [varchar](250) NULL,
	[SIGN_DECL] [varchar](250) NULL,
	[ADD_REMARKS] [varchar](250) NULL,
	[DG_IND] [varchar](1) NULL,
	[HAZARD_IND] [varchar](1) NULL,
	[PACK_IND] [varchar](1) NULL,
	[EMER_IND] [varchar](1) NULL,
	[US_BOYCOTT_IND] [varchar](1) NULL,
	[SED_IND] [varchar](1) NULL,
	[ITN_IND] [varchar](1) NULL,
	[SIGN_IND] [varchar](1) NULL,
	[ADD_REM_IND] [varchar](1) NULL,
	[SELECT_CONT] [varchar](1) NULL,
	[HAZARD_DECL2] [varchar](250) NULL,
	[POINT_ID] [varchar](10) NULL,
	[POINT_DESC] [varchar](40) NULL,
	[ORIGIN_ID] [varchar](10) NULL,
	[ORIGIN_DESC] [varchar](40) NULL,
	[PRICE_TERM_PORT] [varchar](50) NULL,
	[F_AG1] [varchar](70) NULL,
	[F_AG2] [varchar](70) NULL,
	[F_AG3] [varchar](70) NULL,
	[F_AG4] [varchar](70) NULL,
	[F_AG5] [varchar](70) NULL,
	[F_AG6] [varchar](70) NULL,
	[INSURER] [varchar](50) NULL,
	[INSUR_VAL] [numeric](11, 3) NULL,
	[PRODUCT_ORIG] [varchar](50) NULL,
	[DOCS_DISP_BANK_D] [datetime] NULL,
	[DOCS_REC_CUST_D] [datetime] NULL,
	[GI_CHEMICAL_D] [datetime] NULL,
	[HI_LUB_D] [datetime] NULL,
	[SURVEYOR_D] [datetime] NULL,
	[FLAG_IMPORT_N] [numeric](10, 0) NULL,
	[FLAG_EXPORT_N] [numeric](9, 0) NULL,
	[CNB_LICENSENO] [varchar](30) NULL,
	[final_del_remarks] [varchar](50) NULL,
	[palletize] [char](1) NOT NULL,
	[status] [char](1) NOT NULL,
	[laycan_dt] [datetime] NULL,
	[FFI] [varchar](255) NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[location_id] [varchar](5) NULL,
	[pack_type] [varchar](10) NULL,
	[ISSAMPLEORDER] [char](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_mkgs](
	[export_n] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[pack_type] [varchar](20) NOT NULL,
	[wt_uom] [varchar](10) NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hd_flag] [varchar](1) NULL,
 CONSTRAINT [PK_tmp_export_mkgs] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[product_id] ASC,
	[pack_type] ASC,
	[wt_uom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_mkgs_before_job_import_20110111](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](12, 4) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[ATT_CONT_N] [varchar](20) NOT NULL,
	[ATT_SEAL_N] [varchar](20) NOT NULL,
	[MKGS1] [varchar](40) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[MKGS4] [varchar](40) NULL,
	[MKGS5] [varchar](40) NULL,
	[MKGS6] [varchar](40) NULL,
	[MKGS7] [varchar](40) NULL,
	[MKGS8] [varchar](40) NULL,
	[MKGS9] [varchar](40) NULL,
	[MKGS10] [varchar](40) NULL,
	[MKGS11] [varchar](40) NULL,
	[MKGS12] [varchar](40) NULL,
	[MKGS13] [varchar](40) NULL,
	[MKGS14] [varchar](40) NULL,
	[MKGS15] [varchar](40) NULL,
	[DES1] [varchar](100) NULL,
	[DES2] [varchar](100) NULL,
	[DES3] [varchar](100) NULL,
	[DES4] [varchar](100) NULL,
	[DES5] [varchar](100) NULL,
	[DES6] [varchar](100) NULL,
	[DES7] [varchar](100) NULL,
	[DES8] [varchar](100) NULL,
	[DES9] [varchar](100) NULL,
	[DES10] [varchar](100) NULL,
	[DES11] [varchar](100) NULL,
	[DES12] [varchar](100) NULL,
	[DES13] [varchar](100) NULL,
	[DES14] [varchar](100) NULL,
	[DES15] [varchar](100) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[LINE_CHG_IND] [char](1) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[LOT_N] [varchar](20) NULL,
	[BATCH_N] [varchar](20) NULL,
	[PRODUCT_DES] [varchar](50) NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) NULL,
	[MKGS_ALL] [varchar](700) NULL,
	[DES_ALL] [varchar](1600) NULL,
	[LUBS_HI] [char](1) NULL,
	[tare_wt] [decimal](9, 2) NULL,
	[SUM_ALL_PROD] [char](1) NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_prod_cont_before_job_import_20110111](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[CONT_TYPE_ID] [varchar](20) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[SELECT_IND] [char](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_product_before_job_import_20110111](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_DESC] [varchar](300) NULL,
	[HARMONIZE_CODE] [varchar](250) NULL,
	[PACK_TYPE] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](11, 3) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[CURRENCY_ID] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_ref_before_job_import_20110111](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NOT NULL,
	[REF_YM] [varchar](6) NOT NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) NOT NULL,
	[OCEAN_BL] [varchar](30) NOT NULL,
	[OBL_TERM_ID] [varchar](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[PORT_DISC_ID] [varchar](10) NOT NULL,
	[CR_BKG_REF_N] [varchar](50) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NOT NULL,
	[ETA_DEST] [datetime] NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[REF_CLOSE_IND] [varchar](1) NOT NULL,
	[REF_CLOSE_D] [datetime] NULL,
	[S_SHIPPER1] [varchar](70) NULL,
	[S_SHIPPER2] [varchar](70) NULL,
	[S_SHIPPER3] [varchar](70) NULL,
	[S_SHIPPER4] [varchar](70) NULL,
	[S_SHIPPER5] [varchar](70) NULL,
	[S_SHIPPER6] [varchar](70) NULL,
	[S_CON1] [varchar](70) NULL,
	[S_CON2] [varchar](70) NULL,
	[S_CON3] [varchar](70) NULL,
	[S_CON4] [varchar](70) NULL,
	[S_CON5] [varchar](70) NULL,
	[S_CON6] [varchar](70) NULL,
	[S_NP1] [varchar](70) NULL,
	[S_NP2] [varchar](70) NULL,
	[S_NP3] [varchar](70) NULL,
	[S_NP4] [varchar](70) NULL,
	[S_NP5] [varchar](70) NULL,
	[S_NP6] [varchar](70) NULL,
	[S_AG1] [varchar](70) NULL,
	[S_AG2] [varchar](70) NULL,
	[S_AG3] [varchar](70) NULL,
	[S_AG4] [varchar](70) NULL,
	[S_AG5] [varchar](70) NULL,
	[S_AG6] [varchar](70) NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[D_CUST_ID] [varchar](10) NULL,
	[D_CONTACT] [varchar](50) NULL,
	[D_HAU_ID] [varchar](10) NULL,
	[D_RE] [varchar](70) NULL,
	[D_PACK_WORDS] [varchar](70) NULL,
	[D_YARD] [varchar](50) NULL,
	[D_REMARKS1] [varchar](70) NULL,
	[D_REMARKS2] [varchar](70) NULL,
	[D_REMARKS3] [varchar](70) NULL,
	[D_REMARKS4] [varchar](70) NULL,
	[D_REMARKS5] [varchar](70) NULL,
	[D_TRK_DATE] [varchar](70) NULL,
	[D_TRK_ADD] [varchar](70) NULL,
	[D_TRK_ADD2] [varchar](70) NULL,
	[D_STUFF_DATE] [varchar](70) NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) NULL,
	[PROFIT_LOSS_A] [numeric](11, 3) NULL,
	[SHARE_50_A] [numeric](11, 3) NULL,
	[CREDIT_A] [numeric](11, 3) NULL,
	[DEBIT_A] [numeric](11, 3) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[EXPRESS_BL] [varchar](1) NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) NULL,
	[NO_HBL] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) NULL,
	[CONT_40] [numeric](3, 0) NULL,
	[CONT_20] [numeric](3, 0) NULL,
	[CONT_45] [numeric](3, 0) NULL,
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
	[UP_USER_ID] [varchar](10) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[PORT_DISC_ID2] [varchar](10) NULL,
	[NEUTRAL_IND] [varchar](1) NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[ACTUAL_CR_ID] [varchar](10) NULL,
	[OBL_TYPE] [varchar](20) NULL,
	[OBL_TOTAL] [numeric](10, 0) NULL,
	[OBL_COPY] [numeric](10, 0) NULL,
	[TRANS_MODE] [varchar](10) NULL,
	[ATA_DEST] [datetime] NULL,
	[ATA] [datetime] NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[OBL_COLLECT_DATE] [datetime] NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[EXPORT_BKG_N] [numeric](9, 0) NOT NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[TRANSIT_DAYS] [numeric](5, 0) NULL,
	[TYPE_IND] [varchar](2) NULL,
	[CARRIER_PRINT_IND] [varchar](1) NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) NULL,
	[POD_AGENT_ID] [varchar](10) NULL,
	[CONT_WORDS] [varchar](50) NULL,
	[SCH_FAX_IND] [varchar](1) NULL,
	[REMARKS] [varchar](100) NULL,
	[booked_etd] [datetime] NULL,
	[booked_etadest] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](10) NULL,
	[closed_by] [varchar](10) NULL,
	[opened_by] [varchar](10) NULL,
	[opened_d] [datetime] NULL,
	[permit_by_nvocc] [varchar](1) NULL,
	[cust_id_ref] [varchar](10) NOT NULL,
	[previous_etd] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_gl_acc_chart_20110120](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL,
	[YY_AC_CODE] [varchar](15) NULL,
	[yy_cost_centre_c] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_gl_entry_before_clear_20110126](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[POST_TRANS_NO] [numeric](10, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[POST_DT] [datetime] NULL,
	[DOC_DT] [datetime] NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[BANK_IND] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[CHQ_DT] [datetime] NULL,
	[REMARKS] [varchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[TERM_ID] [varchar](10) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REV_TRANS_NO] [numeric](10, 0) NULL,
	[AC_ACTIVE] [char](1) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[IsExportedToYY] [char](1) NOT NULL,
	[GLFileName] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_gl_entry_det_before_clear_20110126](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[GL_LINE_NO] [numeric](3, 0) NOT NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_DT] [datetime] NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[REMARKS] [varchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[PAID_DOC] [varchar](30) NULL,
	[PAID_TYPE] [varchar](2) NULL,
	[INV_DT] [datetime] NULL,
	[GST_TYPE] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_jobs_to_import_from_SI_SE](
	[export_n] [numeric](10, 0) NOT NULL,
	[dbname] [varchar](20) NULL,
	[istransferred] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_kpijobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[invoice_no] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tmp_kpijobs] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[invoice_n] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TMP_VENDOR_MAST_20110105](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_vendor_mast_20110120](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) NULL,
	[sy_vendor_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_vendor_mast_20110127](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) NULL,
	[sy_vendor_id] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_vendor_mast_20110222](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) NULL,
	[sy_vendor_id] [varchar](20) NULL,
	[allow_dg_cargo] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_vt11](
	[ServcAgent] [varchar](30) NULL,
	[PlanLoadEnd] [varchar](30) NULL,
	[ActLoadEnd] [varchar](30) NULL,
	[PlanShipEnd] [varchar](30) NULL,
	[ActShipEnd] [varchar](30) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatenOn] [varchar](30) NULL,
	[FdNo] [varchar](30) NULL,
	[ExternalId1] [varchar](150) NULL,
	[ExternalId2] [varchar](150) NULL,
	[ShipperRefNo] [varchar](50) NULL,
	[Userid] [varchar](10) NULL,
	[Rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_tmp_vt11] PRIMARY KEY CLUSTERED 
(
	[Rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TranshipmentHeader](
	[TranshipmentId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[officeintref] [varchar](10) NOT NULL,
	[OrderType] [varchar](1) NOT NULL,
	[recordFlag] [varchar](1) NOT NULL,
	[TranshipmentPort] [varchar](10) NULL,
	[Vessel] [varchar](20) NULL,
	[Voyage] [varchar](20) NULL,
	[OriginalETADate] [datetime] NULL,
	[OriginalETDDate] [datetime] NULL,
	[RevisedETADate] [datetime] NULL,
	[RevisedETDDate] [datetime] NULL,
	[Reason] [varchar](200) NULL,
	[TranshipmentATD] [datetime] NULL,
	[ChangesInETAatDischarge] [varchar](100) NULL,
	[RevisedProjectedETA] [datetime] NULL,
	[recordStatus] [varchar](1) NOT NULL,
	[createdby] [varchar](20) NULL,
	[updatedby] [varchar](20) NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[ref_n] [numeric](9, 0) NULL,
	[transhipmentcountry] [varchar](2) NULL,
	[TranshipmentATA] [datetime] NULL,
 CONSTRAINT [PK__TranshipmentHead__63EEA865] PRIMARY KEY CLUSTERED 
(
	[TranshipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Transit_mast](
	[Port_load_id] [varchar](10) NULL,
	[port_disc_id] [varchar](10) NULL,
	[Carrier_id] [varchar](10) NULL,
	[transit_days] [numeric](4, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TRAX_ERROR_LOG](
	[ERR_KEY_PK] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[ERROR_ID] [numeric](10, 0) NULL,
	[ERROR_DESC] [varchar](500) NULL,
	[ERROR_DATE] [datetime] NULL,
	[ERROR_TYPE] [char](6) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TRUCKER_ASSIGNMENT](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[LAST_ASSIGNED_TRUCKER] [char](1) NULL,
	[TRUCKER_SEQUENCE] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [unlocode_mast](
	[port_id] [varchar](10) NOT NULL,
	[port_name] [varchar](100) NULL,
 CONSTRAINT [PK_unlocode_mast] PRIMARY KEY CLUSTERED 
(
	[port_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [unused_invoiceno](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[invoice_no] [numeric](10, 0) NOT NULL,
	[isused] [char](1) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[create_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_unused_invoiceno] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [UOM](
	[CODE] [varchar](20) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_assigned_details](
	[job_no] [numeric](20, 0) NOT NULL,
	[user_id] [varchar](30) NULL,
	[date] [datetime] NULL,
	[action] [varchar](30) NOT NULL,
	[assigned_by] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_cust](
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[userid] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
 CONSTRAINT [pk_user_cust] PRIMARY KEY NONCLUSTERED 
(
	[userid] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_login](
	[user_name] [varchar](50) NULL,
	[user_id] [varchar](15) NOT NULL,
	[password] [varchar](20) NULL,
	[user_type] [varchar](20) NULL,
	[cust_id] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[last_login] [datetime] NULL,
	[last_time_password_update] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_LOGIN_LOG](
	[SESSION_ID] [numeric](18, 0) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[LOGIN_D] [datetime] NOT NULL,
	[LOGIN_T] [varchar](10) NOT NULL,
 CONSTRAINT [PK_USER_LOGIN_LOG] PRIMARY KEY NONCLUSTERED 
(
	[SESSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_tasks](
	[seq_no] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](30) NULL,
	[last_assign] [varchar](30) NULL,
	[task] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VEND_TYPE_MAST](
	[VEND_TYPE_ID] [varchar](10) NOT NULL,
	[VEND_TYPE_DES] [varchar](40) NOT NULL,
 CONSTRAINT [PK_VEND_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VEND_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vendor_group](
	[group_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[group_name] [varchar](150) NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
 CONSTRAINT [PK_vendor_group] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VENDOR_MAST](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL,
	[group_id] [numeric](18, 0) NULL,
	[yy_vendor_id] [varchar](20) NULL,
	[sy_vendor_id] [varchar](20) NULL,
	[allow_dg_cargo] [varchar](1) NULL,
	[check_actual_cr] [varchar](1) NULL,
	[HAULIER_EMAIL] [varchar](255) NULL,
	[EMAIL_3] [varchar](255) NULL,
	[HAULIER_EMAIL_CC] [varchar](255) NULL,
	[include_in_consplrpt] [char](1) NOT NULL,
	[email_to_name] [varchar](255) NULL,
	[email_cc_name] [varchar](255) NULL,
	[bl_confirmation_email_address] [varchar](255) NULL,
	[AkaVendor] [char](10) NULL,
	[mitsui_email_bkg_to] [varchar](255) NULL,
	[mitsui_email_bkg_cc] [varchar](255) NULL,
	[mitsui_email_si_to] [varchar](255) NULL,
	[mitsui_email_si_cc] [varchar](255) NULL,
	[sap_code] [varchar](30) NULL,
	[TO_ENVI] [varchar](10) NULL,
	[PAY_GRP] [varchar](20) NULL,
	[FREIGHT_AUDIT] [varchar](10) NULL,
	[REMIT_TO_SUPP] [varchar](10) NULL,
	[F_PARTY_NUMBER] [numeric](20, 0) NULL,
	[F_SUPPLIER_NUMBER] [numeric](20, 0) NULL,
	[F_SUPPLIER_SITE_NUMBER] [numeric](20, 0) NULL,
 CONSTRAINT [PK_VENDOR_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vendor_mast_2009](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vendor_mast_iris](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[VENDOR_NAME] [varchar](70) NOT NULL,
	[VENDOR_SHORT_NAME] [varchar](20) NOT NULL,
	[VEND_TYPE_ID] [varchar](1) NOT NULL,
	[ADD1] [varchar](200) NOT NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](10) NULL,
	[POSTAL_C] [varchar](10) NULL,
	[TEL1] [varchar](20) NULL,
	[TEL2] [varchar](20) NULL,
	[FAX1] [varchar](20) NULL,
	[FAX2] [varchar](20) NULL,
	[CONTACT1] [varchar](40) NULL,
	[CONTACT2] [varchar](40) NULL,
	[EMAIL_1] [varchar](40) NULL,
	[EMAIL_2] [varchar](40) NULL,
	[CR_NO] [varchar](40) NULL,
	[VENDOR_TYPE_SUB_ID] [varchar](1) NULL,
	[VENDOR_ACC_ID] [varchar](15) NULL,
	[CURRENCY_ID] [varchar](3) NULL,
	[GST] [varchar](1) NULL,
	[TERM_IND] [varchar](1) NULL,
	[BANK_IND] [varchar](1) NULL,
	[GST_REGISTERED_YN] [varchar](1) NULL,
	[IN_THIS_CURR] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[GST_REG_NO] [varchar](30) NULL,
	[VENDOR_PORT_ID] [varchar](10) NULL,
	[MAWB_CODE] [varchar](3) NULL,
	[flag] [varchar](1) NULL,
	[isvendor] [varchar](1) NULL,
	[ETS] [varchar](1) NULL,
	[CREATE_D] [datetime] NULL,
	[CREATE_BY] [varchar](20) NULL,
	[MODIFY_D] [datetime] NULL,
	[MODIFY_BY] [varchar](20) NULL,
	[UEN] [varchar](30) NULL,
	[email_bkg1] [varchar](255) NULL,
	[email_bkg2] [varchar](255) NULL,
	[email_bkg3] [varchar](255) NULL,
	[email_bkg4] [varchar](255) NULL,
	[laycan_ptc] [varchar](100) NULL,
	[laycan_tel] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VENDOR_RATES](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[POL_ID] [varchar](10) NOT NULL,
	[POD_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CURR__ID] [varchar](10) NULL,
	[CHG_UNIT_A] [numeric](11, 2) NOT NULL,
	[REMARKS1] [varchar](40) NULL,
	[REMARKS2] [varchar](40) NULL,
	[REMARKS3] [varchar](40) NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[EXP_DATE] [datetime] NOT NULL,
	[ACTUAL_IND] [varchar](10) NULL,
	[CURR_ID] [varchar](10) NULL,
	[SCHEME_ID] [varchar](10) NULL,
	[NEW_USER_ID] [varchar](10) NULL,
	[START_D] [datetime] NOT NULL,
	[SEQ_N] [numeric](11, 0) NULL,
	[NO_OF_SHIPMENT] [numeric](18, 0) NULL,
	[TRANSIT_TIME] [numeric](18, 0) NULL,
	[TRANSIT_FREQ] [char](20) NULL,
	[PODel_ID] [varchar](10) NULL,
	[original_vendor_id] [varchar](10) NULL,
 CONSTRAINT [PK_VRATES] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC,
	[POL_ID] ASC,
	[POD_ID] ASC,
	[CHGCODE_ID] ASC,
	[EXP_DATE] ASC,
	[START_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vessel_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[Vessel_name] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VESSEL_MAST](
	[VESSEL_NAME] [varchar](30) NOT NULL,
 CONSTRAINT [PK_VESSEL_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VESSEL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vessel_ref_mast](
	[VESSEL_REF] [numeric](10, 0) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DATE] [datetime] NULL,
	[actual_sail_d] [datetime] NULL,
	[etd] [datetime] NULL,
	[first_etd] [datetime] NULL,
	[CR_AGENT_ID] [varchar](10) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[port_load_id] [varchar](10) NULL,
	[vessel_grp] [numeric](5, 0) NULL,
	[eta_dest] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_d] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vessel_schedule_master](
	[carrier_id] [varchar](10) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[lloyds_no] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[port_load] [varchar](10) NULL,
	[eta] [datetime] NULL,
	[port_disc] [varchar](10) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[etapol] [datetime] NULL,
 CONSTRAINT [PK_vessel_schedule_master] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VGM_CONTACT_DEFAULT](
	[parentAcctid] [int] NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[contact_id] [numeric](10, 0) NOT NULL,
 CONSTRAINT [PK_VGM_CONTACT_DEFAULT] PRIMARY KEY CLUSTERED 
(
	[parentAcctid] ASC,
	[cust_id] ASC,
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VOUCHER](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_TRA_TYPE] [varchar](1) NOT NULL,
	[VOC_REF_N] [numeric](10, 0) NOT NULL,
	[VOC_JOB_N] [numeric](10, 0) NOT NULL,
	[VOUCHER_D] [datetime] NOT NULL,
	[COST_CENTRE_C] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[REF_EX_RATE] [numeric](11, 5) NULL,
	[VOC_EX_RATE] [numeric](11, 5) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_ID] [varchar](10) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NULL,
	[VOID_IND] [varchar](1) NULL,
	[EXPORT_IND] [varchar](10) NULL,
	[TERM_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[BANK] [varchar](30) NULL,
	[DOC_NO] [varchar](20) NULL,
	[DOC_NAME] [varchar](30) NULL,
	[PAY_DATE] [datetime] NULL,
	[DOC_DATE] [datetime] NULL,
	[DOC_IND] [varchar](2) NULL,
	[PO_NO] [varchar](16) NULL,
	[PO_DATE] [datetime] NULL,
	[DOC_DUE_DATE] [datetime] NULL,
	[DOC_TERM] [numeric](5, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[CHEQUE_NO] [varchar](10) NULL,
	[VOC_EX_RATE_USER_ID] [varchar](20) NULL,
	[VOC_EX_RATE_ENTRY_D] [datetime] NULL,
	[VOC_EX_RATE_USD] [numeric](11, 5) NULL,
	[REMARKS3] [varchar](50) NULL,
	[REMARKS4] [varchar](50) NULL,
	[REMARKS5] [varchar](50) NULL,
	[CONTROL_FLAG] [varchar](1) NULL,
	[INVOICE_N] [numeric](10, 0) NULL,
	[REV_VOUCHER_N] [numeric](10, 0) NULL,
	[isautocreated] [char](1) NOT NULL,
	[entity_rowid] [numeric](18, 0) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[type] [varchar](10) NOT NULL,
	[TO_ENVI] [varchar](10) NULL,
	[APPROVED_BY] [varchar](10) NULL,
	[APPROVED_DATE] [datetime] NULL,
	[PROCESS_FLAG] [varchar](10) NULL,
	[PROCESS_DATE] [datetime] NULL,
	[rejected_flag] [char](1) NULL,
 CONSTRAINT [PK_VOUCHER] PRIMARY KEY NONCLUSTERED 
(
	[VOUCHER_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VOUCHER_DET](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) NULL,
	[DOC_NO] [varchar](20) NULL,
	[PAYTYPE] [varchar](20) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](20) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[sy_gst_amt] [numeric](10, 3) NULL,
	[sy_gst_amt_TEMP] [numeric](10, 2) NULL,
	[linechgunit_desc] [varchar](10) NULL,
 CONSTRAINT [PK_VOUCHER_DET] PRIMARY KEY NONCLUSTERED 
(
	[VOUCHER_N] ASC,
	[VOC_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [voucher_det_recalc_tax](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) NULL,
	[DOC_NO] [varchar](20) NULL,
	[PAYTYPE] [varchar](20) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[sy_gst_amt] [numeric](10, 3) NULL,
	[sy_gst_amt_TEMP] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [voucher_det_SSHL2012DDP024](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) NULL,
	[DOC_NO] [varchar](20) NULL,
	[PAYTYPE] [varchar](20) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[sy_gst_amt] [numeric](10, 3) NULL,
	[sy_gst_amt_TEMP] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [voucher_det_SSHL2012DDP038](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) NULL,
	[DOC_NO] [varchar](20) NULL,
	[PAYTYPE] [varchar](20) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[sy_gst_amt] [numeric](10, 3) NULL,
	[sy_gst_amt_TEMP] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [weekly_date_mast](
	[week_no] [numeric](2, 0) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[row_id] [numeric](20, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[active_yr] [numeric](4, 0) NULL,
 CONSTRAINT [PK_weekly_date_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workflow_event_mast](
	[team_id] [varchar](10) NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[event_desc] [varchar](2000) NULL,
	[valid] [varchar](1) NULL,
	[next_team_id] [varchar](10) NULL,
	[next_event_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_workflow_event_mast] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workflow_team_mast](
	[team_id] [varchar](10) NOT NULL,
	[team_desc] [varchar](100) NULL,
 CONSTRAINT [PK_workflow_team_mast] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workflow_trans](
	[job_n] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[team_id] [varchar](10) NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[assign_to_user] [varchar](50) NULL,
	[assigned_by] [varchar](20) NULL,
	[assigned_dt] [datetime] NULL,
	[confirmed_by_user] [varchar](20) NULL,
	[confirmed_dt] [datetime] NULL,
	[remarks] [varchar](3000) NULL,
	[event_desc] [varchar](2000) NULL,
	[next_team_id] [varchar](10) NULL,
	[next_event_id] [numeric](18, 0) NULL,
	[reprint_ffi] [varchar](5) NULL,
 CONSTRAINT [PK_workflow_trans] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_CUST_MAP](
	[seq_n] [numeric](18, 0) NOT NULL,
	[from_cust_id] [varchar](10) NULL,
	[from_cust_name] [varchar](100) NULL,
	[to_cust_id] [varchar](10) NULL,
	[to_cust_name] [varchar](100) NULL,
	[from_office_code] [varchar](10) NULL,
	[to_office_code] [varchar](10) NULL,
 CONSTRAINT [PK_XML_CUST_MAP] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_CONT](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal1] [varchar](50) NULL,
	[seal2] [varchar](50) NULL,
	[seal3] [varchar](50) NULL,
	[seal4] [varchar](50) NULL,
	[CONT_WT] [numeric](11, 3) NULL,
	[CONT_NET_WT] [numeric](11, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) NULL,
 CONSTRAINT [pk_xml_doc_cont] PRIMARY KEY NONCLUSTERED 
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_doc_cont_2012below](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal1] [varchar](50) NULL,
	[seal2] [varchar](50) NULL,
	[seal3] [varchar](50) NULL,
	[seal4] [varchar](50) NULL,
	[CONT_WT] [numeric](11, 3) NULL,
	[CONT_NET_WT] [numeric](11, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_HEADER](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[msg_ver] [varchar](50) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_action] [varchar](50) NULL,
	[msg_type] [varchar](50) NULL,
	[msg_user_id] [varchar](150) NULL,
	[from_hub_id] [varchar](10) NULL,
	[to_hub_id] [varchar](10) NULL,
	[xml_party_id] [varchar](10) NULL,
	[xml_user_id] [varchar](20) NULL,
	[xml_create_dt] [datetime] NULL,
	[off_int_ref_no] [varchar](50) NULL,
	[ref_1] [varchar](50) NULL,
	[ref_2] [varchar](50) NULL,
	[ref_3] [varchar](50) NULL,
	[ref_4] [varchar](50) NULL,
	[ref_5] [varchar](50) NULL,
	[ref_6] [varchar](50) NULL,
	[cust_id] [varchar](10) NULL,
	[po_no] [varchar](50) NULL,
	[consignee_n] [varchar](50) NULL,
	[prepaid_collect] [varchar](50) NULL,
	[seller_no] [varchar](20) NULL,
	[invoice_n] [varchar](50) NULL,
	[insurance_n] [varchar](20) NULL,
	[booking_n] [varchar](50) NULL,
	[bl_n] [varchar](50) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[vessel_scac] [varchar](20) NULL,
	[sail_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[move_type] [varchar](30) NULL,
	[load_plant_d] [varchar](10) NULL,
	[payment_terms] [varchar](20) NULL,
	[inco_terms] [varchar](20) NULL,
	[carrier_name] [varchar](70) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_load_name] [varchar](50) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](50) NULL,
	[port_del_id] [varchar](10) NULL,
	[port_del_name] [varchar](50) NULL,
	[place_rec_name] [varchar](50) NULL,
	[country_del_id] [varchar](20) NULL,
	[tot_gross_wt] [numeric](11, 2) NULL,
	[tot_gross_wt_uom] [varchar](50) NULL,
	[tot_net_wt] [numeric](11, 2) NULL,
	[tot_net_wt_uom] [varchar](50) NULL,
	[tot_vol] [numeric](11, 2) NULL,
	[tot_vol_uom] [char](10) NULL,
	[est_frt_cost] [numeric](11, 2) NULL,
	[tarrif_desc] [varchar](100) NULL,
	[title_terms] [varchar](100) NULL,
	[move_type_desc] [varchar](100) NULL,
	[term_sale] [varchar](50) NULL,
	[currency_id] [varchar](10) NULL,
	[marks_numbers] [varchar](255) NULL,
	[tot_fob] [numeric](11, 2) NULL,
	[del_request] [varchar](100) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[bl_to_ss_d] [datetime] NULL,
	[bl_from_ss_d] [datetime] NULL,
	[doc_bank_d] [datetime] NULL,
	[doc_cust_d] [datetime] NULL,
	[cut_off_d] [datetime] NULL,
	[transfer_ind] [varchar](1) NULL,
	[transfer_d] [datetime] NULL,
	[fms_job_type] [varchar](1) NULL,
	[fms_ref_n] [numeric](10, 0) NULL,
	[fms_job_n] [numeric](10, 0) NULL,
	[dup_ind] [varchar](1) NULL,
	[last_edi_update] [datetime] NULL,
	[process_date] [datetime] NULL,
	[by_user] [varchar](70) NULL,
	[fms_bkg_direct_n] [numeric](10, 0) NULL,
	[assigned_user] [varchar](10) NULL,
	[payment_method] [varchar](50) NULL,
	[dept_id] [varchar](20) NULL,
	[mode_of_tpt] [varchar](50) NULL,
	[delivery_req_d] [datetime] NULL,
	[tot_lading_q] [decimal](18, 2) NULL,
	[sales_comment] [varchar](50) NULL,
	[edi_ref_n] [varchar](50) NULL,
	[auth_d] [datetime] NULL,
	[origin_id] [varchar](10) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[proposed_del_d] [datetime] NULL,
	[custprodno] [varchar](100) NULL,
	[xml_filename] [varchar](255) NULL,
	[PAYMENT_TERMS1] [varchar](30) NULL,
	[PAYMENT_GUARANTEE_PROCEDURE] [varchar](50) NULL,
	[REQ_ETD] [datetime] NULL,
	[DEST_COUNTRY] [varchar](30) NULL,
	[VEHICLE_LOAD_N] [varchar](40) NULL,
 CONSTRAINT [PK3] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_doc_header_2012below](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[msg_ver] [varchar](50) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_action] [varchar](50) NULL,
	[msg_type] [varchar](50) NULL,
	[msg_user_id] [varchar](50) NULL,
	[from_hub_id] [varchar](10) NULL,
	[to_hub_id] [varchar](10) NULL,
	[xml_party_id] [varchar](10) NULL,
	[xml_user_id] [varchar](20) NULL,
	[xml_create_dt] [datetime] NULL,
	[off_int_ref_no] [varchar](50) NULL,
	[ref_1] [varchar](50) NULL,
	[ref_2] [varchar](50) NULL,
	[ref_3] [varchar](50) NULL,
	[ref_4] [varchar](50) NULL,
	[ref_5] [varchar](50) NULL,
	[ref_6] [varchar](50) NULL,
	[cust_id] [varchar](10) NULL,
	[po_no] [varchar](50) NULL,
	[consignee_n] [varchar](50) NULL,
	[prepaid_collect] [varchar](50) NULL,
	[seller_no] [varchar](20) NULL,
	[invoice_n] [varchar](50) NULL,
	[insurance_n] [varchar](20) NULL,
	[booking_n] [varchar](50) NULL,
	[bl_n] [varchar](50) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[vessel_scac] [varchar](20) NULL,
	[sail_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[move_type] [varchar](30) NULL,
	[load_plant_d] [varchar](10) NULL,
	[payment_terms] [varchar](20) NULL,
	[inco_terms] [varchar](20) NULL,
	[carrier_name] [varchar](70) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_load_name] [varchar](50) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](50) NULL,
	[port_del_id] [varchar](10) NULL,
	[port_del_name] [varchar](50) NULL,
	[place_rec_name] [varchar](50) NULL,
	[country_del_id] [varchar](20) NULL,
	[tot_gross_wt] [numeric](11, 2) NULL,
	[tot_gross_wt_uom] [varchar](50) NULL,
	[tot_net_wt] [numeric](11, 2) NULL,
	[tot_net_wt_uom] [varchar](50) NULL,
	[tot_vol] [numeric](11, 2) NULL,
	[tot_vol_uom] [char](10) NULL,
	[est_frt_cost] [numeric](11, 2) NULL,
	[tarrif_desc] [varchar](100) NULL,
	[title_terms] [varchar](100) NULL,
	[move_type_desc] [varchar](100) NULL,
	[term_sale] [varchar](50) NULL,
	[currency_id] [varchar](10) NULL,
	[marks_numbers] [varchar](255) NULL,
	[tot_fob] [numeric](11, 2) NULL,
	[del_request] [varchar](100) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[bl_to_ss_d] [datetime] NULL,
	[bl_from_ss_d] [datetime] NULL,
	[doc_bank_d] [datetime] NULL,
	[doc_cust_d] [datetime] NULL,
	[cut_off_d] [datetime] NULL,
	[transfer_ind] [varchar](1) NULL,
	[transfer_d] [datetime] NULL,
	[fms_job_type] [varchar](1) NULL,
	[fms_ref_n] [numeric](10, 0) NULL,
	[fms_job_n] [numeric](10, 0) NULL,
	[dup_ind] [varchar](1) NULL,
	[last_edi_update] [datetime] NULL,
	[process_date] [datetime] NULL,
	[by_user] [varchar](70) NULL,
	[fms_bkg_direct_n] [numeric](10, 0) NULL,
	[assigned_user] [varchar](10) NULL,
	[payment_method] [varchar](50) NULL,
	[dept_id] [varchar](20) NULL,
	[mode_of_tpt] [varchar](50) NULL,
	[delivery_req_d] [datetime] NULL,
	[tot_lading_q] [decimal](18, 2) NULL,
	[sales_comment] [varchar](50) NULL,
	[edi_ref_n] [varchar](50) NULL,
	[auth_d] [datetime] NULL,
	[origin_id] [varchar](10) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[proposed_del_d] [datetime] NULL,
	[custprodno] [varchar](100) NULL,
	[xml_filename] [varchar](255) NULL,
	[PAYMENT_TERMS1] [varchar](30) NULL,
	[PAYMENT_GUARANTEE_PROCEDURE] [varchar](50) NULL,
	[REQ_ETD] [datetime] NULL,
	[DEST_COUNTRY] [varchar](30) NULL,
	[VEHICLE_LOAD_N] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_PARTY](
	[MSG_SEQ_N] [numeric](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) NOT NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[PARTY_ADD_TYPE_ID] [varchar](50) NOT NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[ZIP] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](50) NULL,
	[TEL] [varchar](50) NULL,
	[EMAIL_ADD] [varchar](50) NULL,
	[ADD1] [varchar](50) NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[PARTY_NAME2] [varchar](50) NULL,
	[FAX] [varchar](50) NULL,
 CONSTRAINT [PK_XML_DOC_PARTY] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[PARTY_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_doc_party_2012below](
	[MSG_SEQ_N] [numeric](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) NOT NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[PARTY_ADD_TYPE_ID] [varchar](50) NOT NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[ZIP] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](50) NULL,
	[TEL] [varchar](50) NULL,
	[EMAIL_ADD] [varchar](50) NULL,
	[ADD1] [varchar](50) NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[PARTY_NAME2] [varchar](50) NULL,
	[FAX] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_PRODUCTS](
	[MSQ_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[PRODUCT_ID] [varchar](20) NULL,
	[PRODUCT_NAME] [varchar](50) NULL,
	[NET_WT] [numeric](11, 2) NULL,
	[NET_WT_UOM] [varchar](10) NULL,
	[GROSS_WT] [numeric](11, 2) NULL,
	[GROSS_WT_UOM] [varchar](10) NULL,
	[TOT_VOL] [numeric](11, 2) NULL,
	[TOT_PACKAGE] [numeric](11, 2) NULL,
	[PACKAGE_TYPE] [varchar](10) NULL,
	[HEIGHT_UOM] [varchar](10) NULL,
	[WIDTH_UOM] [varchar](10) NULL,
	[LENGTH_UOM] [varchar](10) NULL,
	[HAZARD_IND] [varchar](10) NULL,
	[NO_CONT] [numeric](18, 0) NULL,
	[CONT_ISO_CODE] [varchar](10) NULL,
	[TOT_VOL_UOM] [varchar](18) NULL,
	[HS_CODE] [varchar](40) NULL,
	[LADING_DESC] [varchar](1000) NULL,
	[FOB_VALUE] [decimal](18, 2) NULL,
	[UNIT_PRICE] [numeric](11, 2) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[MARKS1] [varchar](50) NULL,
	[MARKS2] [varchar](50) NULL,
	[MARKS3] [varchar](50) NULL,
	[MARKS4] [varchar](50) NULL,
	[MARKS5] [varchar](50) NULL,
	[CON_PO_N] [varchar](50) NULL,
	[CON_SHIP_ID] [varchar](50) NULL,
	[EXPORT_LIC_N] [varchar](50) NULL,
	[IDENTIFY_CODE] [varchar](50) NULL,
	[COUNTRY_CODE] [varchar](10) NULL,
	[PACK_CODE] [varchar](20) NULL,
	[PROD_LADING_Q] [numeric](18, 0) NULL,
	[HAZARD_TEXT] [varchar](2000) NULL,
	[HAZARD_CERT] [varchar](50) NULL,
	[LINE_ITEM_SEQ] [numeric](18, 0) NULL,
	[LIC_EFF] [varchar](10) NULL,
	[LIC_EXP] [varchar](10) NULL,
	[ALT_PROD_DESC] [varchar](100) NULL,
	[TOT_PRICE] [decimal](10, 2) NULL,
	[DELIVERY_NOTE_N] [varchar](20) NULL,
	[BATCH_N] [varchar](20) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
 CONSTRAINT [PK4] PRIMARY KEY NONCLUSTERED 
(
	[MSQ_SEQ_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_doc_products_2012below](
	[MSQ_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[PRODUCT_ID] [varchar](20) NULL,
	[PRODUCT_NAME] [varchar](50) NULL,
	[NET_WT] [numeric](11, 2) NULL,
	[NET_WT_UOM] [varchar](10) NULL,
	[GROSS_WT] [numeric](11, 2) NULL,
	[GROSS_WT_UOM] [varchar](10) NULL,
	[TOT_VOL] [numeric](11, 2) NULL,
	[TOT_PACKAGE] [numeric](11, 2) NULL,
	[PACKAGE_TYPE] [varchar](10) NULL,
	[HEIGHT_UOM] [varchar](10) NULL,
	[WIDTH_UOM] [varchar](10) NULL,
	[LENGTH_UOM] [varchar](10) NULL,
	[HAZARD_IND] [varchar](10) NULL,
	[NO_CONT] [numeric](18, 0) NULL,
	[CONT_ISO_CODE] [varchar](10) NULL,
	[TOT_VOL_UOM] [varchar](18) NULL,
	[HS_CODE] [varchar](40) NULL,
	[LADING_DESC] [varchar](1000) NULL,
	[FOB_VALUE] [decimal](18, 2) NULL,
	[UNIT_PRICE] [numeric](11, 2) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[MARKS1] [varchar](50) NULL,
	[MARKS2] [varchar](50) NULL,
	[MARKS3] [varchar](50) NULL,
	[MARKS4] [varchar](50) NULL,
	[MARKS5] [varchar](50) NULL,
	[CON_PO_N] [varchar](50) NULL,
	[CON_SHIP_ID] [varchar](50) NULL,
	[EXPORT_LIC_N] [varchar](50) NULL,
	[IDENTIFY_CODE] [varchar](50) NULL,
	[COUNTRY_CODE] [varchar](10) NULL,
	[PACK_CODE] [varchar](20) NULL,
	[PROD_LADING_Q] [numeric](18, 0) NULL,
	[HAZARD_TEXT] [varchar](2000) NULL,
	[HAZARD_CERT] [varchar](50) NULL,
	[LINE_ITEM_SEQ] [numeric](18, 0) NULL,
	[LIC_EFF] [varchar](10) NULL,
	[LIC_EXP] [varchar](10) NULL,
	[ALT_PROD_DESC] [varchar](100) NULL,
	[TOT_PRICE] [decimal](10, 2) NULL,
	[DELIVERY_NOTE_N] [varchar](20) NULL,
	[BATCH_N] [varchar](20) NULL,
	[CURRENCY_ID] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_REMARKS](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](3500) NULL,
 CONSTRAINT [PK5_1] PRIMARY KEY NONCLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_doc_remarks_2012below](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](3500) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_elc_group_mast](
	[cust_group_id] [varchar](20) NOT NULL,
	[cust_group_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_xml_elc_group_mast] PRIMARY KEY CLUSTERED 
(
	[cust_group_id] ASC,
	[cust_group_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_elc_mast](
	[cust_id] [varchar](100) NOT NULL,
	[document_type] [varchar](50) NOT NULL,
	[message_type] [varchar](2) NULL,
	[version_no] [varchar](50) NULL,
	[revision_no] [varchar](50) NULL,
	[create_dt] [datetime] NULL,
	[tag_27] [varchar](100) NULL,
	[tag_40a] [varchar](100) NULL,
	[tag_20] [varchar](100) NULL,
	[tag_23] [varchar](100) NULL,
	[tag_31c] [datetime] NULL,
	[tag_31d] [varchar](100) NULL,
	[tag_51a] [varchar](200) NULL,
	[tag_50] [varchar](200) NULL,
	[tag_59] [varchar](200) NULL,
	[tag_32b] [varchar](100) NULL,
	[tag_39a] [varchar](100) NULL,
	[tag_39b] [varchar](100) NULL,
	[tag_39c] [varchar](200) NULL,
	[tag_41a] [varchar](200) NULL,
	[tag_42c] [varchar](150) NULL,
	[tag_42a] [varchar](150) NULL,
	[tag_42m] [varchar](200) NULL,
	[tag_42p] [varchar](200) NULL,
	[tag_43p] [varchar](100) NULL,
	[tag_43t] [varchar](100) NULL,
	[tag_44a] [varchar](100) NULL,
	[tag_44b] [varchar](200) NULL,
	[tag_44c] [varchar](100) NULL,
	[tag_44d] [varchar](450) NULL,
	[tag_45a] [varchar](8000) NULL,
	[tag_46a] [varchar](8000) NULL,
	[tag_47a] [varchar](8000) NULL,
	[tag_71b] [varchar](250) NULL,
	[tag_48] [varchar](200) NULL,
	[tag_49] [varchar](1000) NULL,
	[tag_53a] [varchar](1000) NULL,
	[tag_78] [varchar](1000) NULL,
	[tag_57a] [varchar](250) NULL,
	[tag_72] [varchar](250) NULL,
	[user_id] [varchar](20) NULL,
	[scEnv] [varchar](20) NULL,
	[tag_21] [varchar](16) NULL,
	[tag_52a] [varchar](200) NULL,
	[tag_40e] [varchar](100) NULL,
	[tag_44e] [varchar](100) NULL,
	[tag_44f] [varchar](100) NULL,
	[tag_50b] [varchar](100) NULL,
	[tag_20_707] [varchar](100) NULL,
	[tag_21_707] [varchar](100) NULL,
	[tag_23_707] [varchar](100) NULL,
	[tag_52a_707] [varchar](200) NULL,
	[tag_31c_707] [datetime] NULL,
	[tag_30_707] [varchar](50) NULL,
	[tag_26e_707] [varchar](50) NULL,
	[tag_59_707] [varchar](200) NULL,
	[tag_31e_707] [varchar](200) NULL,
	[tag_32b_707] [varchar](100) NULL,
	[tag_33b_707] [varchar](150) NULL,
	[tag_34b_707] [varchar](100) NULL,
	[tag_39a_707] [varchar](50) NULL,
	[tag_39b_707] [varchar](100) NULL,
	[tag_39c_707] [varchar](200) NULL,
	[tag_44a_707] [varchar](100) NULL,
	[tag_44b_707] [varchar](100) NULL,
	[tag_44c_707] [varchar](50) NULL,
	[tag_44d_707] [varchar](450) NULL,
	[tag_79_707] [varchar](2000) NULL,
	[tag_72_707] [varchar](250) NULL,
	[tag_44e_707] [varchar](100) NULL,
	[tag_44f_707] [varchar](100) NULL,
 CONSTRAINT [PK_xml_elc_mast] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[document_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_MSG_LOG](
	[log_seq_n] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[msg_seq_n] [numeric](10, 0) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_log] [varchar](255) NOT NULL,
	[msg_log_type] [varchar](10) NULL,
	[msg_file] [varchar](100) NULL,
 CONSTRAINT [PK_XML_MSG_LOG] PRIMARY KEY CLUSTERED 
(
	[log_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_MSG_TYPE_MAST](
	[msg_type_id] [varchar](10) NOT NULL,
	[msg_desc] [varchar](50) NULL,
 CONSTRAINT [PK1] PRIMARY KEY NONCLUSTERED 
(
	[msg_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_MT700](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[document_type] [varchar](50) NOT NULL,
	[message_type] [varchar](2) NOT NULL,
	[version_no] [varchar](50) NOT NULL,
	[revision_no] [varchar](50) NOT NULL,
	[document_d] [datetime] NOT NULL,
	[BankID] [varchar](100) NOT NULL,
	[ffid] [varchar](100) NOT NULL,
	[cust_id] [varchar](100) NOT NULL,
	[cust_ref_no] [varchar](100) NULL,
	[bank_ref_no] [varchar](100) NOT NULL,
	[tag_27] [varchar](100) NOT NULL,
	[tag_40a] [varchar](100) NOT NULL,
	[tag_20] [varchar](100) NOT NULL,
	[tag_23] [varchar](100) NULL,
	[tag_31c] [datetime] NULL,
	[tag_31d] [varchar](100) NOT NULL,
	[tag_51a] [varchar](200) NULL,
	[tag_50] [varchar](200) NOT NULL,
	[tag_59] [varchar](200) NULL,
	[tag_32b] [varchar](100) NOT NULL,
	[tag_39a] [varchar](100) NULL,
	[tag_39b] [varchar](100) NULL,
	[tag_39c] [varchar](200) NULL,
	[tag_41a] [varchar](200) NULL,
	[tag_42c] [varchar](150) NULL,
	[tag_42a] [varchar](150) NULL,
	[tag_42m] [varchar](200) NULL,
	[tag_42p] [varchar](200) NULL,
	[tag_43p] [varchar](100) NULL,
	[tag_43t] [varchar](100) NULL,
	[tag_44a] [varchar](100) NULL,
	[tag_44b] [varchar](200) NULL,
	[tag_44c] [varchar](100) NULL,
	[tag_44d] [varchar](450) NULL,
	[tag_45a] [varchar](8000) NULL,
	[tag_46a] [varchar](8000) NULL,
	[tag_47a] [varchar](8000) NULL,
	[tag_71b] [varchar](250) NULL,
	[tag_48] [varchar](200) NULL,
	[tag_49] [varchar](1000) NOT NULL,
	[tag_53a] [varchar](1000) NULL,
	[tag_78] [varchar](1000) NULL,
	[tag_57a] [varchar](250) NULL,
	[tag_72] [varchar](250) NULL,
	[apply_change_d] [datetime] NULL,
	[user_id] [varchar](15) NULL,
	[job_n] [varchar](15) NULL,
	[scEnv] [varchar](10) NULL,
	[tag_21] [varchar](16) NULL,
	[tag_52a] [varchar](200) NULL,
	[lc_no_separator] [varchar](100) NULL,
	[pdf_sent_dt] [datetime] NULL,
	[tag_40e] [varchar](100) NULL,
	[tag_44e] [varchar](100) NULL,
	[tag_44f] [varchar](100) NULL,
	[tag_50b] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_mt700_mast](
	[cust_id] [varchar](100) NOT NULL,
	[document_type] [varchar](50) NULL,
	[message_type] [varchar](2) NULL,
	[version_no] [varchar](50) NULL,
	[revision_no] [varchar](50) NULL,
	[create_dt] [datetime] NULL,
	[tag_27] [varchar](100) NULL,
	[tag_40a] [varchar](100) NULL,
	[tag_20] [varchar](100) NULL,
	[tag_23] [varchar](100) NULL,
	[tag_31c] [datetime] NULL,
	[tag_31d] [varchar](100) NULL,
	[tag_51a] [varchar](200) NULL,
	[tag_50] [varchar](200) NULL,
	[tag_59] [varchar](200) NULL,
	[tag_32b] [varchar](100) NULL,
	[tag_39a] [varchar](100) NULL,
	[tag_39b] [varchar](100) NULL,
	[tag_39c] [varchar](200) NULL,
	[tag_41a] [varchar](200) NULL,
	[tag_42c] [varchar](150) NULL,
	[tag_42a] [varchar](150) NULL,
	[tag_42m] [varchar](200) NULL,
	[tag_42p] [varchar](200) NULL,
	[tag_43p] [varchar](100) NULL,
	[tag_43t] [varchar](100) NULL,
	[tag_44a] [varchar](100) NULL,
	[tag_44b] [varchar](200) NULL,
	[tag_44c] [varchar](100) NULL,
	[tag_44d] [varchar](450) NULL,
	[tag_45a] [varchar](8000) NULL,
	[tag_46a] [varchar](8000) NULL,
	[tag_47a] [varchar](8000) NULL,
	[tag_71b] [varchar](250) NULL,
	[tag_48] [varchar](200) NULL,
	[tag_49] [varchar](1000) NULL,
	[tag_53a] [varchar](1000) NULL,
	[tag_78] [varchar](1000) NULL,
	[tag_57a] [varchar](250) NULL,
	[tag_72] [varchar](250) NULL,
	[user_id] [varchar](20) NULL,
	[scEnv] [varchar](20) NULL,
	[tag_21] [varchar](16) NULL,
	[tag_52a] [varchar](200) NULL,
	[tag_40e] [varchar](100) NULL,
	[tag_44e] [varchar](100) NULL,
	[tag_44f] [varchar](100) NULL,
	[tag_50b] [varchar](100) NULL,
	[tag_20_707] [varchar](100) NULL,
	[tag_21_707] [varchar](100) NULL,
	[tag_23_707] [varchar](100) NULL,
	[tag_52a_707] [varchar](200) NULL,
	[tag_31c_707] [datetime] NULL,
	[tag_30_707] [varchar](50) NULL,
	[tag_26e_707] [varchar](50) NULL,
	[tag_59_707] [varchar](50) NULL,
	[tag_31e_707] [varchar](200) NULL,
	[tag_32b_707] [varchar](100) NULL,
	[tag_33b_707] [varchar](150) NULL,
	[tag_34b_707] [varchar](100) NULL,
	[tag_39a_707] [varchar](50) NULL,
	[tag_39b_707] [varchar](100) NULL,
	[tag_39c_707] [varchar](200) NULL,
	[tag_44a_707] [varchar](100) NULL,
	[tag_44b_707] [varchar](100) NULL,
	[tag_44c_707] [varchar](50) NULL,
	[tag_44d_707] [varchar](450) NULL,
	[tag_79_707] [varchar](2000) NULL,
	[tag_72_707] [varchar](250) NULL,
	[tag_44e_707] [varchar](100) NULL,
	[tag_44f_707] [varchar](100) NULL,
 CONSTRAINT [PK_xml_mt700_mast] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_PARTY_MAP](
	[xml_party_id] [varchar](10) NOT NULL,
	[xml_party_type_id] [varchar](10) NOT NULL,
	[sc_type_id] [varchar](10) NULL,
	[sc_party_id] [varchar](10) NULL,
	[party_name] [varchar](50) NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[xml_party_id] ASC,
	[xml_party_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_PROD_CUST_MAP](
	[cust_id] [varchar](10) NOT NULL,
	[hub_id] [varchar](10) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[product_name] [varchar](50) NULL,
 CONSTRAINT [PK_PROD_CUST_MAP] PRIMARY KEY NONCLUSTERED 
(
	[cust_id] ASC,
	[hub_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_SAP_CUT_OFF_POINT](
	[cut_off_point_code] [varchar](50) NOT NULL,
	[cut_off_point_desc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_SAP_DISC_POINT](
	[cut_disc_code] [varchar](50) NOT NULL,
	[cut_disc_desc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_XOM_HEADER](
	[seq_n] [decimal](18, 0) NOT NULL,
	[idoc_n] [varchar](50) NULL,
	[sent_dt] [datetime] NULL,
	[ref_1] [varchar](50) NULL,
	[route] [varchar](50) NULL,
	[sc_env] [varchar](50) NULL,
	[tf_code] [varchar](50) NULL,
	[sales_order_ref] [varchar](10) NULL,
	[notify_partner_id] [varchar](20) NULL,
	[msg_seq_n] [decimal](18, 0) NULL,
	[purchase_order_line_n] [varchar](100) NULL,
	[shipment_id] [varchar](50) NULL,
	[po_no] [varchar](50) NULL,
	[req_del_dt] [varchar](10) NULL,
	[proposed_del_dt] [varchar](10) NULL,
	[trans_plan_dt] [varchar](10) NULL,
	[notify_partner_name] [varchar](100) NULL,
	[notify_partner_email] [varchar](150) NULL,
	[sap_cutoff_point] [varchar](50) NULL,
	[exxon_transmit_status] [varchar](50) NULL,
	[ship_cost_main] [varchar](10) NULL,
	[ship_cost_prelim] [varchar](10) NULL,
	[move_type] [varchar](10) NULL,
	[sap_disc_point] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_XOM_VENDOR_MAP](
	[vendor_name] [varchar](70) NOT NULL,
	[elite_vendor_id] [varchar](10) NOT NULL,
	[cust_vendor_id] [varchar](10) NOT NULL,
	[office_code] [varchar](10) NOT NULL,
	[customer] [varchar](15) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xom_carrier_mast](
	[carrier_name] [varchar](70) NULL,
	[carrier_id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xom_log](
	[file_name] [varchar](100) NOT NULL,
	[shipper_ref] [varchar](100) NOT NULL,
	[edi_type] [varchar](100) NULL,
	[error_msg] [varchar](100) NULL,
	[process_date] [datetime] NULL,
	[scEnv] [varchar](50) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_xom_log] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xom_port_mast](
	[PORT_ID] [varchar](10) NULL,
	[PORT_NAME] [varchar](50) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_xom_port_mast] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_chgcode_mast] FOREIGN KEY([chgcode_id])
REFERENCES [CHGCODE_MAST] ([CHGCODE_ID])
GO
ALTER TABLE [costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_chgcode_mast]
GO
ALTER TABLE [costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_costcentre_grp]
GO
ALTER TABLE [costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp]
GO
ALTER TABLE [costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [prodgrp_hd] ([prodgrp_id])
GO
ALTER TABLE [costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd]
GO
ALTER TABLE [CR_NOTE]  WITH CHECK ADD  CONSTRAINT [FK_cr_note_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [CR_NOTE] CHECK CONSTRAINT [FK_cr_note_entity_rowid]
GO
ALTER TABLE [CUSTOMER_RATES]  WITH NOCHECK ADD  CONSTRAINT [FK_CUSTOMER_REF_4123_PORT_MAS] FOREIGN KEY([PORT_ID])
REFERENCES [PORT_MAST] ([PORT_ID])
GO
ALTER TABLE [CUSTOMER_RATES] CHECK CONSTRAINT [FK_CUSTOMER_REF_4123_PORT_MAS]
GO
ALTER TABLE [CUSTOMER_RATES]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_REF_4126_CHGCODE_] FOREIGN KEY([CHGCODE_ID])
REFERENCES [CHGCODE_MAST] ([CHGCODE_ID])
GO
ALTER TABLE [CUSTOMER_RATES] CHECK CONSTRAINT [FK_CUSTOMER_REF_4126_CHGCODE_]
GO
ALTER TABLE [DR_NOTE]  WITH CHECK ADD  CONSTRAINT [FK_dr_note_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [DR_NOTE] CHECK CONSTRAINT [FK_dr_note_entity_rowid]
GO
ALTER TABLE [fumigation_ex]  WITH CHECK ADD  CONSTRAINT [FK_fumigation_ex_export_n] FOREIGN KEY([export_n])
REFERENCES [EXPORT] ([EXPORT_N])
ON DELETE CASCADE
GO
ALTER TABLE [fumigation_ex] CHECK CONSTRAINT [FK_fumigation_ex_export_n]
GO
ALTER TABLE [GL_TEMPLATEDT]  WITH CHECK ADD  CONSTRAINT [FK_GL_TEMPLATEDT_GL_TEMPLATEHD] FOREIGN KEY([gltmpdid])
REFERENCES [GL_TEMPLATEHD] ([gltmphid])
ON DELETE CASCADE
GO
ALTER TABLE [GL_TEMPLATEDT] CHECK CONSTRAINT [FK_GL_TEMPLATEDT_GL_TEMPLATEHD]
GO
ALTER TABLE [IMPORT]  WITH CHECK ADD  CONSTRAINT [FK_IMPORT] FOREIGN KEY([CUST_ID])
REFERENCES [CUSTOMER_MAST] ([CUST_ID])
GO
ALTER TABLE [IMPORT] CHECK CONSTRAINT [FK_IMPORT]
GO
ALTER TABLE [inspection_ex]  WITH CHECK ADD  CONSTRAINT [FK_inspection_ex_export_n] FOREIGN KEY([export_n])
REFERENCES [EXPORT] ([EXPORT_N])
ON DELETE CASCADE
GO
ALTER TABLE [inspection_ex] CHECK CONSTRAINT [FK_inspection_ex_export_n]
GO
ALTER TABLE [INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_INVOICE] FOREIGN KEY([CUST_ID])
REFERENCES [CUSTOMER_MAST] ([CUST_ID])
GO
ALTER TABLE [INVOICE] CHECK CONSTRAINT [FK_INVOICE]
GO
ALTER TABLE [INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_invoice_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [entity_info] ([row_id])
GO
ALTER TABLE [INVOICE] CHECK CONSTRAINT [FK_invoice_entity_rowid]
GO
ALTER TABLE [INVOICE_DET]  WITH NOCHECK ADD  CONSTRAINT [FK_INVOICE_DET_INVOICE_N] FOREIGN KEY([FY], [INVOICE_N])
REFERENCES [INVOICE] ([FY], [INVOICE_N])
GO
ALTER TABLE [INVOICE_DET] CHECK CONSTRAINT [FK_INVOICE_DET_INVOICE_N]
GO
ALTER TABLE [permit_cost_statement_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_cost_statement_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [permit_cost_statement_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [permit_cost_statement_dt] CHECK CONSTRAINT [FK_permit_cost_statement_dt_row_id]
GO
ALTER TABLE [permit_freight_rate_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_freight_rate_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [permit_freight_rate_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [permit_freight_rate_dt] CHECK CONSTRAINT [FK_permit_freight_rate_dt_row_id]
GO
ALTER TABLE [prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [prodgrp_hd] ([prodgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_prodgrp_hd]
GO
ALTER TABLE [prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_product_mast] FOREIGN KEY([cust_id], [product_id])
REFERENCES [PRODUCT_MAST] ([CUST_ID], [PRODUCT_ID])
GO
ALTER TABLE [prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_product_mast]
GO
