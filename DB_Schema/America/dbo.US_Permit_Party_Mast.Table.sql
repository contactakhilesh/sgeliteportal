USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Party_Mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Party_Mast](
	[PartyName] [varchar](30) NOT NULL,
	[AddrLine1] [varchar](32) NOT NULL,
	[AddrLine2] [varchar](32) NOT NULL,
	[CityName] [varchar](25) NOT NULL,
	[StateCode] [char](2) NULL,
	[CountryCode] [char](2) NOT NULL,
	[PostalCode] [varchar](9) NULL,
	[Email] [varchar](50) NULL,
	[ContactFName] [varchar](13) NULL,
	[ContactLName] [varchar](20) NULL,
	[ContactPhoneNo] [varchar](13) NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[ROW_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_US_Permit_Party_Mast] PRIMARY KEY CLUSTERED 
(
	[ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Party_Mast] TO  SCHEMA OWNER 
GO
