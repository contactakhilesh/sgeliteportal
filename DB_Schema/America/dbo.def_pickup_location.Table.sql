USE [AMERICA]
GO
/****** Object:  Table [dbo].[def_pickup_location]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[def_pickup_location](
	[carrier_id] [varchar](10) NOT NULL,
	[def_pickup_location] [varchar](255) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_def_pickup_location] PRIMARY KEY CLUSTERED 
(
	[carrier_id] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[def_pickup_location] TO  SCHEMA OWNER 
GO
