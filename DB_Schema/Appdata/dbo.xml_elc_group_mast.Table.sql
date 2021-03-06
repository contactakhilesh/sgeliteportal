USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xml_elc_group_mast](
	[cust_group_id] [varchar](20) NOT NULL,
	[cust_group_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_xml_elc_group_mast] PRIMARY KEY CLUSTERED 
(
	[cust_group_id] ASC,
	[cust_group_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
