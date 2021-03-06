USE [appdata]
GO
/****** Object:  Table [dbo].[weekly_date_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[weekly_date_mast]
GO
/****** Object:  Table [dbo].[weekly_date_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[weekly_date_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[weekly_date_mast](
	[week_no] [numeric](2, 0) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[row_id] [numeric](20, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[active_yr] [numeric](4, 0) NULL,
 CONSTRAINT [PK_weekly_date_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[weekly_date_mast] TO  SCHEMA OWNER 
GO
