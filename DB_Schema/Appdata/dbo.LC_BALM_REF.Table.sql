USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_BALM_REF](
	[export_n] [numeric](9, 0) NOT NULL,
	[cust_ord_no] [varchar](100) NOT NULL,
	[create_d] [datetime] NOT NULL,
	[file_path] [varchar](100) NULL,
	[email_flag] [int] NULL
) ON [PRIMARY]

GO
