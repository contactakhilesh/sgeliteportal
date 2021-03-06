USE [AMERICA]
GO
/****** Object:  Table [dbo].[kpi_criteria_dt]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_criteria_dt](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hd_row_id] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[etd_from] [datetime] NOT NULL,
	[etd_to] [datetime] NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_kpi_criteria_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[kpi_criteria_dt] TO  SCHEMA OWNER 
GO
