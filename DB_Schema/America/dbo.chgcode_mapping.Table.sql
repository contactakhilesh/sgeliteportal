USE [AMERICA]
GO
/****** Object:  Table [dbo].[chgcode_mapping]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chgcode_mapping](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[environment_code] [varchar](10) NULL,
	[fr_chgcode_id] [varchar](10) NULL,
	[to_chgcode_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_chgcode_mapping] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[chgcode_mapping] TO  SCHEMA OWNER 
GO
