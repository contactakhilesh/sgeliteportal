USE [appdata]
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
	[log_d] [datetime] NULL,
 CONSTRAINT [PK_SendXML_Trans] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
