USE [AMERICA]
GO
/****** Object:  Table [dbo].[order_doc_track]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_doc_track](
	[doc_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[final_email] [char](1) NULL,
 CONSTRAINT [pk_order_doc_track] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[order_doc_track] TO  SCHEMA OWNER 
GO
