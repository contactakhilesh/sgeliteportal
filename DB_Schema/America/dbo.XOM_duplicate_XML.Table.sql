USE [AMERICA]
GO
/****** Object:  Table [dbo].[XOM_duplicate_XML]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XOM_duplicate_XML](
	[Ref1] [varchar](50) NOT NULL,
 CONSTRAINT [PK_XOM_duplicate_XML] PRIMARY KEY CLUSTERED 
(
	[Ref1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XOM_duplicate_XML] TO  SCHEMA OWNER 
GO
