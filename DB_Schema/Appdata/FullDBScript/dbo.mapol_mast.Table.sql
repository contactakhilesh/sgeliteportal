USE [appdata]
GO
/****** Object:  Table [dbo].[mapol_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[mapol_mast]
GO
/****** Object:  Table [dbo].[mapol_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mapol_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mapol_mast](
	[prod_id] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[desc1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[desc2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[desc3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[desc4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[desc5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_mapol_mast] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[mapol_mast] TO  SCHEMA OWNER 
GO
