USE [appdata]
GO
/****** Object:  Table [dbo].[temp_jo_imp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_jo_imp]
GO
/****** Object:  Table [dbo].[temp_jo_imp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_jo_imp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_jo_imp](
	[port_load] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_of_order] [numeric](10, 0) NULL,
	[job_type] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [decimal](10, 2) NULL,
	[net_wt] [decimal](10, 2) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_bulk] [numeric](10, 0) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_temp_jo_imp] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_jo_imp] TO  SCHEMA OWNER 
GO
