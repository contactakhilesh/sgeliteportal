USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_GST](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[GST_TYPE] [varchar](1) NOT NULL,
	[GST_SRC] [varchar](2) NOT NULL,
	[GST_PER] [numeric](3, 2) NULL,
 CONSTRAINT [SYS_C0052345] PRIMARY KEY NONCLUSTERED 
(
	[AC_CODE] ASC,
	[GST_TYPE] ASC,
	[GST_SRC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
