USE [AMERICA]
GO
/****** Object:  Table [dbo].[consolidated_inv_error]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consolidated_inv_error](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[error_desc] [varchar](200) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[source] [varchar](5) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[consolidated_inv_error] TO  SCHEMA OWNER 
GO
