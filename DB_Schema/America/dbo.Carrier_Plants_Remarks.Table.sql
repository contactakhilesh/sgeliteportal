USE [AMERICA]
GO
/****** Object:  Table [dbo].[Carrier_Plants_Remarks]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrier_Plants_Remarks](
	[port_id] [varchar](10) NULL,
	[cont_size] [varchar](10) NULL,
	[Remarks_plant] [varchar](max) NULL,
	[remarks_carrier] [varchar](max) NULL,
	[job_type] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Carrier_Plants_Remarks] TO  SCHEMA OWNER 
GO
