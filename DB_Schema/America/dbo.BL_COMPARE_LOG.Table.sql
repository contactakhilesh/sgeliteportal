USE [AMERICA]
GO
/****** Object:  Table [dbo].[BL_COMPARE_LOG]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BL_COMPARE_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BLHeaderID] [int] NULL,
	[BLNO] [varchar](100) NULL,
	[FieldName] [varchar](200) NULL,
	[SourceTable] [varchar](max) NULL,
	[TargetTable] [varchar](max) NULL,
	[Status] [varchar](100) NULL,
	[Action] [varchar](1) NULL,
	[Remarks] [varchar](max) NULL,
	[GetDateTime] [datetime] NULL,
	[SecttionId] [int] NULL,
	[seq] [int] NULL,
 CONSTRAINT [PK_BL_COMPARE_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[BL_COMPARE_LOG] TO  SCHEMA OWNER 
GO
/****** Object:  Index [idx_BLHeaderID]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [idx_BLHeaderID] ON [dbo].[BL_COMPARE_LOG]
(
	[BLHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
