USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_REF_AUDIT](
	[application_name] [varchar](100) NULL,
	[created_date] [datetime] NULL,
	[eidt_by] [varchar](50) NULL,
	[hostname] [varchar](50) NULL,
	[old_value] [varchar](50) NULL,
	[new_value] [varchar](50) NULL,
	[export_ref_n] [numeric](9, 0) NULL
) ON [PRIMARY]

GO
