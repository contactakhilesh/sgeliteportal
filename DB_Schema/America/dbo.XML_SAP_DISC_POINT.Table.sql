USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_SAP_DISC_POINT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_SAP_DISC_POINT](
	[cut_disc_code] [varchar](50) NOT NULL,
	[cut_disc_desc] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_SAP_DISC_POINT] TO  SCHEMA OWNER 
GO
