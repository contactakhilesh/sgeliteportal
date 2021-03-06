USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_surcharge](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](10) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[basis] [bit] NOT NULL,
	[percentage] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dhl_surcharge] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
