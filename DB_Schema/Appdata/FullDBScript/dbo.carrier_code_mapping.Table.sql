USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_code_mapping]') AND type in (N'U'))
ALTER TABLE [dbo].[carrier_code_mapping] DROP CONSTRAINT IF EXISTS [DF__carrier_c__creat__165AF7F8]
GO
/****** Object:  Index [carrier_code_mapping_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [carrier_code_mapping_idx2] ON [dbo].[carrier_code_mapping]
GO
/****** Object:  Index [carrier_code_mapping_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [carrier_code_mapping_idx1] ON [dbo].[carrier_code_mapping]
GO
/****** Object:  Table [dbo].[carrier_code_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_code_mapping]
GO
/****** Object:  Table [dbo].[carrier_code_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_code_mapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_code_mapping](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [nvarchar](10) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[type] [nvarchar](10) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[input_code] [nvarchar](20) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[output_code] [nvarchar](100) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[created_by] [nvarchar](10) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK__carrier_code_map__1566D3BF] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[carrier_code_mapping] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [carrier_code_mapping_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[carrier_code_mapping]') AND name = N'carrier_code_mapping_idx1')
CREATE NONCLUSTERED INDEX [carrier_code_mapping_idx1] ON [dbo].[carrier_code_mapping]
(
	[vendor_id] ASC,
	[input_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [carrier_code_mapping_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[carrier_code_mapping]') AND name = N'carrier_code_mapping_idx2')
CREATE NONCLUSTERED INDEX [carrier_code_mapping_idx2] ON [dbo].[carrier_code_mapping]
(
	[vendor_id] ASC,
	[type] ASC,
	[input_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
