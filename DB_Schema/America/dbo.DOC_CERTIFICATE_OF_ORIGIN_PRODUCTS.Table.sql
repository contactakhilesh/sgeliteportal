USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_CERTIFICATE_OF_ORIGIN_PRODUCTS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_CERTIFICATE_OF_ORIGIN_PRODUCTS](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_certificate_of_origin_id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[harmonize_code] [varchar](255) NULL,
	[producer] [varchar](255) NULL,
	[preference_criterion] [varchar](255) NULL,
	[regional_value_content] [varchar](255) NULL,
	[country_of_origin] [varchar](255) NULL,
 CONSTRAINT [PK__DOC_CERT__3213E83F55AB7606] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_CERTIFICATE_OF_ORIGIN_PRODUCTS] TO  SCHEMA OWNER 
GO
