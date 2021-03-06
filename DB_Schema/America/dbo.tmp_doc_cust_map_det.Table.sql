USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_doc_cust_map_det]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_doc_cust_map_det](
	[job_no] [varchar](30) NOT NULL,
	[job_type] [varchar](20) NOT NULL,
	[edoc_set] [varchar](50) NULL,
	[line_no] [varchar](20) NULL,
	[doc_id] [varchar](20) NULL,
	[doc_name] [varchar](100) NULL,
	[link] [varchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_doc_cust_map_det] TO  SCHEMA OWNER 
GO
