USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[export_n] [bigint] NULL,
	[import_n] [bigint] NULL,
	[ref_type] [varchar](255) NULL,
	[document_no] [varchar](255) NULL,
	[exporter_id] [varchar](255) NULL,
	[importer_id] [varchar](255) NULL,
	[producer_id] [varchar](255) NULL,
	[signature_id] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[is_deleted] [int] NULL,
	[consignee] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[modified_by] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[title] [varchar](255) NULL,
	[contact_info] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
