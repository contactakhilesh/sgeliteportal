USE [appdata]
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
	[user_id] [varchar](10) NULL,
 CONSTRAINT [PK_SendXML_Errors] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
