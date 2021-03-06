USE [appdata]
GO
/****** Object:  Table [dbo].[FMS_LOAD_STANDARD_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[FMS_LOAD_STANDARD_MAST]
GO
/****** Object:  Table [dbo].[FMS_LOAD_STANDARD_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FMS_LOAD_STANDARD_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FMS_LOAD_STANDARD_MAST](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[weight_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_type_id] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pallet_count] [int] NULL,
	[package_count] [numeric](9, 0) NULL,
	[package_type] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[m3] [numeric](18, 3) NULL,
 CONSTRAINT [PK_FMS_LOAD_STANDARD_MAST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[FMS_LOAD_STANDARD_MAST] TO  SCHEMA OWNER 
GO
