USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_app_collect_DefaultDocs](
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[COUNTRY_NAME] [varchar](50) NOT NULL,
	[draft_o] [varchar](10) NULL,
	[draft_c] [varchar](10) NULL,
	[comm_inv_o] [varchar](10) NULL,
	[comm_inv_c] [varchar](10) NULL,
	[pack_list_o] [varchar](10) NULL,
	[pack_list_c] [varchar](10) NULL,
	[bill_lading_o] [varchar](10) NULL,
	[bill_lading_c] [varchar](10) NULL,
	[insur_cert_o] [varchar](10) NULL,
	[insur_cert_c] [varchar](10) NULL,
	[co_o] [varchar](10) NULL,
	[co_c] [varchar](10) NULL,
	[doc4_o] [varchar](10) NULL,
	[doc4_c] [varchar](10) NULL,
	[doc5_o] [varchar](10) NULL,
	[doc5_c] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
