USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN_ENTITIES](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_certificate_of_origin_id] [bigint] NOT NULL,
	[entity_type_id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[address_line_1] [varchar](255) NULL,
	[address_line_2] [varchar](255) NULL,
	[address_line_3] [varchar](255) NULL,
	[address_line_4] [varchar](255) NULL,
	[address_line_5] [varchar](255) NULL,
	[address_line_6] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
