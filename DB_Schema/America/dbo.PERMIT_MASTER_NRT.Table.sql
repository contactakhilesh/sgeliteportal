USE [AMERICA]
GO
/****** Object:  Table [dbo].[PERMIT_MASTER_NRT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMIT_MASTER_NRT](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[vessel] [varchar](30) NULL,
	[nrt] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PERMIT_MASTER_NRT] TO  SCHEMA OWNER 
GO
