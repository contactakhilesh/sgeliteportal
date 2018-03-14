USE [AMERICA]
GO
/****** Object:  Table [dbo].[PORT_PROVINCE_BACKUP]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PORT_PROVINCE_BACKUP](
	[UNLOCODE] [varchar](10) NOT NULL,
	[CITYNAME] [varchar](100) NULL,
	[PROVINCE] [varchar](100) NULL,
 CONSTRAINT [PK_PORT_PROVINCE] PRIMARY KEY CLUSTERED 
(
	[UNLOCODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PORT_PROVINCE_BACKUP] TO  SCHEMA OWNER 
GO
