USE [AMERICA]
GO
/****** Object:  Table [dbo].[consolidated_pl_roe]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consolidated_pl_roe](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[currency_id] [varchar](10) NOT NULL,
	[rate] [numeric](11, 4) NOT NULL,
 CONSTRAINT [PK_consolidated_pl_roe] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[consolidated_pl_roe] TO  SCHEMA OWNER 
GO
