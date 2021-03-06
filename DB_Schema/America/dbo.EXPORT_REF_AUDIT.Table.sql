USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_REF_AUDIT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_REF_AUDIT](
	[application_name] [varchar](100) NULL,
	[created_date] [datetime] NULL,
	[eidt_by] [varchar](50) NULL,
	[hostname] [varchar](50) NULL,
	[old_value] [varchar](50) NULL,
	[new_value] [varchar](50) NULL,
	[export_ref_n] [numeric](9, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF_AUDIT] TO  SCHEMA OWNER 
GO
