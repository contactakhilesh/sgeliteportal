USE [AMERICA]
GO
/****** Object:  Table [dbo].[allow_jobs_us_sanctions]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allow_jobs_us_sanctions](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[CUST_ORD_NO] [varchar](40) NOT NULL,
	[APPROVED_BY] [varchar](50) NOT NULL,
	[APPROVED_DT] [datetime] NOT NULL,
	[REMARKS] [varchar](255) NULL,
 CONSTRAINT [PK_allow_jobs_us_sanctions] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[CUST_ORD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[allow_jobs_us_sanctions] TO  SCHEMA OWNER 
GO
