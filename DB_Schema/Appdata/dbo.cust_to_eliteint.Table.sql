USE [appdata]
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
 CONSTRAINT [PK_cust_to_eliteint] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
