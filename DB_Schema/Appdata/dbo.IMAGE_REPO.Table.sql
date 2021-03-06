USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMAGE_REPO](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[carrier_name] [char](100) NOT NULL,
	[booking_ref] [char](1000) NOT NULL,
	[raw_data] [image] NOT NULL,
	[information] [nchar](1000) NOT NULL,
	[date_inserted] [datetime] NOT NULL,
	[file_path] [char](1000) NOT NULL,
	[file_name] [char](1000) NOT NULL,
	[cust_id] [char](10) NOT NULL,
	[cust_ord_no] [varchar](100) NULL,
	[export_n] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
	[process_flag] [char](100) NULL,
 CONSTRAINT [PK_IMAGE_REPO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
