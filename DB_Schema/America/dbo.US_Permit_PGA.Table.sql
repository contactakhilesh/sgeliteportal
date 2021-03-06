USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_PGA]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_PGA](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[Seqno] [int] NOT NULL,
	[PGAID] [char](3) NULL,
	[AMSCertNo] [varchar](13) NULL,
	[EPALicense_ind] [char](1) NULL,
	[EPAConsentNo] [varchar](12) NULL,
	[RCRAHazWasteTrackNo] [varchar](11) NULL,
	[EPAQTY] [numeric](10, 0) NULL,
	[EPAQTYUOM] [varchar](5) NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[RowID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_US_Permit_PGA_1] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[Seqno] ASC,
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_PGA] TO  SCHEMA OWNER 
GO
