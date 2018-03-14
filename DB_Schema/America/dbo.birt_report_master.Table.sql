USE [AMERICA]
GO
/****** Object:  Table [dbo].[birt_report_master]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[birt_report_master](
	[Report_id] [int] IDENTITY(1,1) NOT NULL,
	[egs_report_name] [varchar](200) NULL,
	[birt_report_design_name] [varchar](200) NULL,
	[parent_acct_id] [int] NULL,
	[visibility_indicator] [int] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[birt_report_master] TO  SCHEMA OWNER 
GO
