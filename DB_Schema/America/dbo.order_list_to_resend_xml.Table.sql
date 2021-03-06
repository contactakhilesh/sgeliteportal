USE [AMERICA]
GO
/****** Object:  Table [dbo].[order_list_to_resend_xml]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_list_to_resend_xml](
	[seq_n] [numeric](18, 0) NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[job_type] [varchar](2) NULL,
	[ref_1] [varchar](40) NULL,
	[upload_user_id] [varchar](10) NULL,
	[upload_date] [datetime] NULL,
	[sent_ind] [varchar](2) NULL,
	[remarks] [varchar](100) NULL,
	[excel_file_name] [varchar](500) NULL,
	[xml_sent_date] [datetime] NULL,
	[xml_file_name] [varchar](100) NULL,
	[delete_ind] [varchar](2) NULL,
 CONSTRAINT [PK_order_list_to_resend_xml] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[order_list_to_resend_xml] TO  SCHEMA OWNER 
GO
