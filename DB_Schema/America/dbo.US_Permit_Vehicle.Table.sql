USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Vehicle]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Vehicle](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[Seqno] [int] NOT NULL,
	[VehicleTypeID] [char](1) NULL,
	[VehicleIDNo] [varchar](25) NULL,
	[VehicleTitleNo] [varchar](15) NULL,
	[VehicleTitleState] [char](2) NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[RowID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_US_Permit_Vehicle] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[Seqno] ASC,
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Vehicle] TO  SCHEMA OWNER 
GO
