USE [AMERICA]
GO
/****** Object:  Table [dbo].[cust_not_sendxml_to_eliteint]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cust_not_sendxml_to_eliteint](
	[cust_id] [varchar](10) NOT NULL,
	[cust_name] [varchar](70) NULL,
 CONSTRAINT [PK_cust_not_sendxml_to_eliteint] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cust_not_sendxml_to_eliteint] TO  SCHEMA OWNER 
GO
