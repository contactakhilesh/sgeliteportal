USE [AMERICA]
GO
/****** Object:  Table [dbo].[order_doc_track_2017JAN7]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_doc_track_2017JAN7](
	[doc_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[job_n] [numeric](10, 0) NOT NULL,
	[order_type] [char](1) NOT NULL,
	[doc_title] [varchar](50) NULL,
	[doc_filename] [varchar](255) NULL,
	[sys_filename] [varchar](255) NULL,
	[doc_path] [varchar](200) NULL,
	[web_ind] [char](1) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[cust_id] [varchar](10) NULL,
	[upload_dt] [datetime] NULL,
	[upload_by] [varchar](10) NULL,
	[delete_dt] [datetime] NULL,
	[delete_by] [varchar](10) NULL,
	[valid] [char](1) NULL,
	[cust_email] [varchar](2000) NULL,
	[email_ind] [char](1) NULL,
	[final_email] [char](1) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[order_doc_track_2017JAN7] TO  SCHEMA OWNER 
GO
