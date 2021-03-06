USE [AMERICA]
GO
/****** Object:  Table [dbo].[CHGCODE_BU_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHGCODE_BU_MAST](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[DEPT_ID] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CHGCODE_BU_MAST] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CHGCODE_BU_MAST_idx]    Script Date: 3/14/2018 6:00:03 AM ******/
CREATE UNIQUE CLUSTERED INDEX [CHGCODE_BU_MAST_idx] ON [dbo].[CHGCODE_BU_MAST]
(
	[CHGCODE_ID] ASC,
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
