USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xom_log](
	[file_name] [varchar](100) NOT NULL,
	[shipper_ref] [varchar](100) NOT NULL,
	[edi_type] [varchar](100) NULL,
	[error_msg] [varchar](100) NULL,
	[process_date] [datetime] NULL,
	[scEnv] [varchar](50) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_xom_log] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
