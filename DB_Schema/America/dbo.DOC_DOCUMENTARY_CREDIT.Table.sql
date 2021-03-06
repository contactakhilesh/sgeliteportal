USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_CREDIT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_DOCUMENTARY_CREDIT](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_DOCUMENTARY_CREDIT] TO  SCHEMA OWNER 
GO
