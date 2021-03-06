USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Sent_Denied_Parties]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Sent_Denied_Parties](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[export_n] [numeric](12, 0) NOT NULL,
	[export_ref_n] [numeric](12, 0) NOT NULL,
	[shipper_ref] [varchar](40) NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[DestinationCountry] [char](2) NULL,
	[PartyName] [varchar](30) NOT NULL,
	[PartyAddress] [varchar](100) NOT NULL,
 CONSTRAINT [PK_US_Permit_Sent_Denied_Parties] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Sent_Denied_Parties] TO  SCHEMA OWNER 
GO
