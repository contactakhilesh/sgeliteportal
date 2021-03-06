USE [AMERICA]
GO
/****** Object:  Table [dbo].[app_modules]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_modules](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[group_name] [varchar](30) NOT NULL,
	[grp_order_no] [int] NOT NULL,
	[module_name] [varchar](50) NOT NULL,
	[mod_order_no] [int] NOT NULL,
	[hide] [char](1) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[application] [varchar](20) NOT NULL,
	[isforhistory] [char](1) NOT NULL,
	[window] [varchar](150) NULL,
	[datawindow] [varchar](150) NULL,
 CONSTRAINT [PK_app_modules] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[app_modules] TO  SCHEMA OWNER 
GO
