USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Parent_Acct](
	[parentacctid] [int] NOT NULL,
	[acctname] [varchar](81) NULL,
	[accttype] [int] NOT NULL,
	[address] [varchar](400) NULL,
	[postcode] [varchar](20) NULL,
	[countrycode] [varchar](10) NOT NULL,
	[phone] [varchar](20) NULL,
	[activatedate] [datetime] NULL,
	[expirydate] [datetime] NULL,
	[createdby] [int] NULL,
	[createddate] [datetime] NULL,
	[modifiedby] [int] NULL,
	[modifieddate] [datetime] NULL,
	[enabled] [int] NOT NULL,
	[deleted] [int] NOT NULL,
	[logintry] [int] NOT NULL,
	[timeout] [int] NULL,
	[fax] [varchar](20) NULL,
	[hitrate_freq] [int] NULL,
 CONSTRAINT [PK_Parent_Acct] PRIMARY KEY CLUSTERED 
(
	[parentacctid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
