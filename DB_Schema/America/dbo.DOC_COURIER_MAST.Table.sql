USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_COURIER_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_COURIER_MAST](
	[courier_id] [varchar](15) NOT NULL,
	[courier_name] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[courier_code] [varchar](20) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_COURIER_MAST] TO  SCHEMA OWNER 
GO
