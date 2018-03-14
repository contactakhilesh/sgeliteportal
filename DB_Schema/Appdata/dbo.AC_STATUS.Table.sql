USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AC_STATUS](
	[AC_YEAR] [decimal](4, 0) NOT NULL,
	[AC_CODE] [decimal](15, 4) NOT NULL,
	[AC_PERIOD] [decimal](2, 0) NOT NULL,
	[FROM_DT] [datetime] NULL,
	[TO_DT] [datetime] NULL,
	[CURR_BAL] [decimal](15, 2) NULL,
	[OPEN_BAL] [decimal](15, 2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[BUD_AMT] [decimal](15, 2) NULL,
	[DOC_AMT] [decimal](15, 2) NULL,
 CONSTRAINT [PK_AC_STATUS] PRIMARY KEY CLUSTERED 
(
	[AC_YEAR] ASC,
	[AC_CODE] ASC,
	[AC_PERIOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
