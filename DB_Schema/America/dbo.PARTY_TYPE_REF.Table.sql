USE [AMERICA]
GO
/****** Object:  Table [dbo].[PARTY_TYPE_REF]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTY_TYPE_REF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[logical_name] [varchar](150) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PARTY_TYPE_REF] TO  SCHEMA OWNER 
GO
