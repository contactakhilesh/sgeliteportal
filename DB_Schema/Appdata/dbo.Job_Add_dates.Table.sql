USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Job_Add_dates](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Date_Label] [nvarchar](50) NULL,
	[date_value] [datetime] NULL
) ON [PRIMARY]

GO
