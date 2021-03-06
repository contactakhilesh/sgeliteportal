USE [AMERICA]
GO
/****** Object:  Table [dbo].[GLOBAL_CUST_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_CUST_MAST](
	[GLB_CUST_ID] [varchar](30) NOT NULL,
	[GLB_CUST_NAME] [varchar](70) NOT NULL,
 CONSTRAINT [PK_GLB_CUST_ID] PRIMARY KEY NONCLUSTERED 
(
	[GLB_CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GLOBAL_CUST_MAST] TO  SCHEMA OWNER 
GO
