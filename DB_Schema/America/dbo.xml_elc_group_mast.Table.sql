USE [AMERICA]
GO
/****** Object:  Table [dbo].[xml_elc_group_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xml_elc_group_mast](
	[cust_group_id] [varchar](20) NOT NULL,
	[cust_group_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_xml_elc_group_mast] PRIMARY KEY CLUSTERED 
(
	[cust_group_id] ASC,
	[cust_group_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[xml_elc_group_mast] TO  SCHEMA OWNER 
GO
