USE [AMERICA]
GO
/****** Object:  Table [dbo].[fumigation_location]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fumigation_location](
	[location_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[location_name1] [varchar](150) NULL,
	[location_name2] [varchar](150) NULL,
	[location_addr1] [varchar](150) NULL,
	[location_addr2] [varchar](150) NULL,
	[contact_person] [varchar](100) NULL,
	[contact_no] [varchar](50) NULL,
	[cc] [varchar](100) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_fumigation_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[fumigation_location] TO  SCHEMA OWNER 
GO
