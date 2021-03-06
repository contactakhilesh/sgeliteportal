USE [appdata]
GO
/****** Object:  Table [dbo].[AC_STATUS]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AC_STATUS]
GO
/****** Object:  Table [dbo].[AC_STATUS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AC_STATUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AC_STATUS](
	[AC_YEAR] [decimal](4, 0) NOT NULL,
	[AC_CODE] [decimal](15, 4) NOT NULL,
	[AC_PERIOD] [decimal](2, 0) NOT NULL,
	[FROM_DT] [datetime] NULL,
	[TO_DT] [datetime] NULL,
	[CURR_BAL] [decimal](15, 2) NULL,
	[OPEN_BAL] [decimal](15, 2) NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BUD_AMT] [decimal](15, 2) NULL,
	[DOC_AMT] [decimal](15, 2) NULL,
 CONSTRAINT [PK_AC_STATUS] PRIMARY KEY CLUSTERED 
(
	[AC_YEAR] ASC,
	[AC_CODE] ASC,
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AC_STATUS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AC_STATUS] TO [public] AS [dbo]
GO
