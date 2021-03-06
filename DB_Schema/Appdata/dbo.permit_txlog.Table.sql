USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_txlog](
	[job_n] [varchar](12) NOT NULL,
	[customs_permit_n] [varchar](20) NULL,
	[export_n] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
	[shipper_ref] [varchar](40) NULL,
	[status_code] [varchar](70) NOT NULL,
	[status_desc] [varchar](255) NULL,
	[user_id] [varchar](50) NULL,
	[create_d] [datetime] NULL,
	[xml_filename] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_log_hd] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
