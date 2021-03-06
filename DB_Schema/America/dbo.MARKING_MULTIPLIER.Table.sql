USE [AMERICA]
GO
/****** Object:  Table [dbo].[MARKING_MULTIPLIER]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARKING_MULTIPLIER](
	[product_id] [varchar](20) NOT NULL,
	[net_weight] [decimal](15, 5) NULL,
	[gross_weight] [decimal](15, 5) NULL,
	[m3] [decimal](15, 5) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[MARKING_MULTIPLIER] TO  SCHEMA OWNER 
GO
