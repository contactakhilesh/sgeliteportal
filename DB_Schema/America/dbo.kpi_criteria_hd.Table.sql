USE [AMERICA]
GO
/****** Object:  Table [dbo].[kpi_criteria_hd]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_criteria_hd](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[invoice_no] [varchar](15) NULL,
	[create_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_kpi_criteria_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[kpi_criteria_hd] TO  SCHEMA OWNER 
GO
