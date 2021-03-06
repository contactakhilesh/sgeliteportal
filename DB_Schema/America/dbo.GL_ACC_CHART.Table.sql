USE [AMERICA]
GO
/****** Object:  Table [dbo].[GL_ACC_CHART]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GL_ACC_CHART](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL,
	[YY_AC_CODE] [varchar](15) NULL,
	[yy_cost_centre_c] [varchar](12) NULL,
 CONSTRAINT [PK_GL_AC] PRIMARY KEY NONCLUSTERED 
(
	[AC_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GL_ACC_CHART] TO  SCHEMA OWNER 
GO
