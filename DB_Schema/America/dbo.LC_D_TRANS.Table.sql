USE [AMERICA]
GO
/****** Object:  Table [dbo].[LC_D_TRANS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LC_D_TRANS](
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
	[LC_COST_INCURRD] [numeric](11, 3) NULL,
	[lc_tran_dt] [datetime] NULL,
 CONSTRAINT [PK_LC_D_TRANS] PRIMARY KEY CLUSTERED 
(
	[LC_NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[LC_D_TRANS] TO  SCHEMA OWNER 
GO
