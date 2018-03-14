USE [AMERICA]
GO
/****** Object:  Table [dbo].[CHG_GROUP_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHG_GROUP_MAST](
	[GRPCODE_ID] [varchar](10) NOT NULL,
	[GRPCODE_DES] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CHG_GROUP_MAST] PRIMARY KEY NONCLUSTERED 
(
	[GRPCODE_ID] ASC,
	[GRPCODE_DES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CHG_GROUP_MAST] TO  SCHEMA OWNER 
GO
