USE [appdata]
GO
/****** Object:  Table [dbo].[IMAGE_REPO]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[IMAGE_REPO]
GO
/****** Object:  Table [dbo].[IMAGE_REPO]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMAGE_REPO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IMAGE_REPO](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[carrier_name] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[booking_ref] [char](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[raw_data] [image] NOT NULL,
	[information] [nchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[date_inserted] [datetime] NOT NULL,
	[file_path] [char](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[file_name] [char](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_ord_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
	[process_flag] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_IMAGE_REPO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[IMAGE_REPO] TO  SCHEMA OWNER 
GO
