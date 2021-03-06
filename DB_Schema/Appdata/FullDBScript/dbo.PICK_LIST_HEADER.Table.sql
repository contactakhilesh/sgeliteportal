USE [appdata]
GO
/****** Object:  Table [dbo].[PICK_LIST_HEADER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PICK_LIST_HEADER]
GO
/****** Object:  Table [dbo].[PICK_LIST_HEADER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PICK_LIST_HEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PICK_LIST_HEADER](
	[seq_n] [decimal](18, 0) NOT NULL,
	[group_n] [decimal](18, 0) NOT NULL,
	[plant_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tot_qty] [decimal](18, 0) NOT NULL,
	[tot_gross_wt] [decimal](18, 0) NOT NULL,
	[tot_net_wt] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_PICK_LIST_HEADER] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC,
	[group_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PICK_LIST_HEADER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[PICK_LIST_HEADER] TO [public] AS [dbo]
GO
