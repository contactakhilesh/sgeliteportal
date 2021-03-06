USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_BOA_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_BOA_DET](
	[export_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[doc_info] [varchar](50) NULL,
	[org_lc] [varchar](10) NULL,
	[org_draft] [varchar](10) NULL,
	[org_bl_neg] [varchar](10) NULL,
	[org_bl_nn] [varchar](10) NULL,
	[org_com_inv] [varchar](10) NULL,
	[org_cust_inv] [varchar](10) NULL,
	[org_coo] [varchar](10) NULL,
	[org_ins] [varchar](10) NULL,
	[org_wt_cert] [varchar](10) NULL,
	[org_pack_list] [varchar](10) NULL,
	[org_ins_cert] [varchar](10) NULL,
	[org_ship_co_cert] [varchar](10) NULL,
	[org_ben_cert] [varchar](10) NULL,
	[issue_bank] [varchar](100) NULL,
	[lc_expire_d] [datetime] NULL,
	[bank_ref_n] [varchar](50) NULL,
 CONSTRAINT [PK_export_boa_det] PRIMARY KEY NONCLUSTERED 
(
	[export_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_BOA_DET] TO  SCHEMA OWNER 
GO
