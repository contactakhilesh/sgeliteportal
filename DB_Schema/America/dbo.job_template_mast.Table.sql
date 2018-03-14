USE [AMERICA]
GO
/****** Object:  Table [dbo].[job_template_mast]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_template_mast](
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
	[PROD_ID] [varchar](20) NULL,
	[job_type] [varchar](10) NULL,
	[old_export_n] [numeric](9, 0) NULL,
 CONSTRAINT [pk_job_template_mast] PRIMARY KEY NONCLUSTERED 
(
	[ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[job_template_mast] TO  SCHEMA OWNER 
GO
