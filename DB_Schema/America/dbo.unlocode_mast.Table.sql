USE [AMERICA]
GO
/****** Object:  Table [dbo].[unlocode_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unlocode_mast](
	[port_id] [varchar](10) NOT NULL,
	[port_name] [varchar](100) NULL,
 CONSTRAINT [PK_unlocode_mast] PRIMARY KEY CLUSTERED 
(
	[port_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[unlocode_mast] TO  SCHEMA OWNER 
GO
