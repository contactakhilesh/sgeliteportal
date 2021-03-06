USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Party]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Party](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[PartyID] [varchar](11) NULL,
	[PartyType] [char](1) NOT NULL,
	[PartyIDType] [char](1) NULL,
	[PartyIDTypeNo] [varchar](11) NULL,
	[PartyName] [varchar](30) NULL,
	[ContactFName] [varchar](13) NULL,
	[ContactLName] [varchar](20) NULL,
	[AddrLine1] [varchar](32) NULL,
	[AddrLine2] [varchar](32) NULL,
	[ContactPhoneNo] [varchar](13) NULL,
	[CityName] [varchar](25) NULL,
	[StateCode] [char](2) NULL,
	[CountryCode] [char](2) NULL,
	[PostalCode] [varchar](9) NULL,
	[Email] [varchar](50) NULL,
	[USPPIIRSNo] [varchar](9) NULL,
	[USPPIIRSIDType] [char](1) NULL,
	[UltimateConsigneeType] [char](1) NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
 CONSTRAINT [PK_US_Permit_Party] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[PartyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Party] TO  SCHEMA OWNER 
GO
