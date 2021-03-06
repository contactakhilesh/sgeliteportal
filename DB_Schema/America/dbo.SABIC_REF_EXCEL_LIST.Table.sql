USE [AMERICA]
GO
/****** Object:  Table [dbo].[SABIC_REF_EXCEL_LIST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SABIC_REF_EXCEL_LIST](
	[excel_filename] [varchar](250) NULL,
	[extraction_date] [datetime] NULL,
	[ref_ord_no] [varchar](40) NULL,
	[delivery_no] [varchar](40) NULL,
	[error_tag] [char](20) NULL,
	[export_n] [numeric](9, 0) NULL,
	[export_ref_n] [numeric](9, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SABIC_REF_EXCEL_LIST] TO  SCHEMA OWNER 
GO
