USE [appdata]
GO
/****** Object:  Table [dbo].[CUSTOMER_SOA_DETAILS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_SOA_DETAILS]
GO
/****** Object:  Table [dbo].[CUSTOMER_SOA_DETAILS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_SOA_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_SOA_DETAILS](
	[cust_id] [numeric](10, 0) NOT NULL,
	[cust_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[contact_person] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_email1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_email2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_email3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_email4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_email5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acct_email1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acct_email2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acct_email3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acct_email4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acct_email5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CUSTOMER_SOA_DETAILS] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_SOA_DETAILS] TO  SCHEMA OWNER 
GO
