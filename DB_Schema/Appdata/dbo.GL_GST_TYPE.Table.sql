USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_GST_TYPE](
	[GST_TYPE] [varchar](1) NOT NULL,
	[GST_SRC] [varchar](1) NULL,
	[GST_DESC] [varchar](40) NULL,
	[GST_PER] [numeric](3, 2) NULL,
 CONSTRAINT [SYS_C0052355] PRIMARY KEY NONCLUSTERED 
(
	[GST_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
