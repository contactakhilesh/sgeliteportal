USE [AMERICA]
GO
/****** Object:  Table [dbo].[MOVE_TYPE]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVE_TYPE](
	[type_code] [varchar](10) NOT NULL,
	[type_desc] [varchar](50) NULL,
 CONSTRAINT [PK_MOVE_TYPE_type_code] PRIMARY KEY NONCLUSTERED 
(
	[type_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[MOVE_TYPE] TO  SCHEMA OWNER 
GO
