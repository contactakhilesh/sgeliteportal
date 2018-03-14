USE [AMERICA]
GO
/****** Object:  Table [dbo].[CHG_TYPE_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHG_TYPE_MAST](
	[CHG_TYPE_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_DES] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CHG_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CHG_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CHG_TYPE_MAST] TO  SCHEMA OWNER 
GO
