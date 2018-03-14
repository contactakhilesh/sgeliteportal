USE [AMERICA]
GO
/****** Object:  Table [dbo].[birt_report_master_details]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[birt_report_master_details](
	[report_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[Report_id] [int] NULL,
	[parameter_order] [int] NULL,
	[parameter_name] [varchar](100) NULL,
	[parameter_value] [varchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[birt_report_master_details] TO  SCHEMA OWNER 
GO
