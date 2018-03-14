USE [AMERICA]
GO
/****** Object:  Table [dbo].[HAULIER_INS_SHEET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HAULIER_INS_SHEET](
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
	[remarks] [text] NULL,
	[palletization] [varchar](50) NULL,
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
	[sent_ind] [varchar](1) NULL,
	[stuffing_remarks] [nvarchar](255) NULL,
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
ALTER AUTHORIZATION ON [dbo].[HAULIER_INS_SHEET] TO  SCHEMA OWNER 
GO
