USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_SOA_DETAILS](
	[cust_id] [numeric](10, 0) NOT NULL,
	[cust_name] [varchar](150) NOT NULL,
	[contact_person] [varchar](200) NULL,
	[cust_email1] [varchar](70) NULL,
	[cust_email2] [varchar](70) NULL,
	[cust_email3] [varchar](70) NULL,
	[cust_email4] [varchar](70) NULL,
	[cust_email5] [varchar](70) NULL,
	[elite_email1] [varchar](70) NULL,
	[elite_email2] [varchar](70) NULL,
	[elite_email3] [varchar](70) NULL,
	[elite_email4] [varchar](70) NULL,
	[elite_email5] [varchar](70) NULL,
	[acct_email1] [varchar](70) NULL,
	[acct_email2] [varchar](70) NULL,
	[acct_email3] [varchar](70) NULL,
	[acct_email4] [varchar](70) NULL,
	[acct_email5] [varchar](70) NULL,
 CONSTRAINT [PK_CUSTOMER_SOA_DETAILS] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
