USE [appdata]
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
