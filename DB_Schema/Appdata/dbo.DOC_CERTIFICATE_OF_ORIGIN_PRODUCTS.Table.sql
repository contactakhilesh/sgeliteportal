USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_CERTIFICATE_OF_ORIGIN_PRODUCTS](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_certificate_of_origin_id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[harmonize_code] [varchar](255) NULL,
	[producer] [varchar](255) NULL,
	[preference_criterion] [varchar](255) NULL,
	[regional_value_content] [varchar](255) NULL,
	[country_of_origin] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
