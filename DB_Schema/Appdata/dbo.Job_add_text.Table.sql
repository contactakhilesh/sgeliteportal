USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Job_add_text](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Text_Label] [nvarchar](200) NULL,
	[Text_Value] [nvarchar](200) NULL
) ON [PRIMARY]

GO
