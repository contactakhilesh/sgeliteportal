USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BUSINESS_UNIT_GROUPING](
	[parent_acct_id_group] [int] NOT NULL,
	[business_unit_id] [int] NOT NULL,
	[business_unit_description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_BUSINESS_UNIT_GROUPING] PRIMARY KEY CLUSTERED 
(
	[parent_acct_id_group] ASC,
	[business_unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
