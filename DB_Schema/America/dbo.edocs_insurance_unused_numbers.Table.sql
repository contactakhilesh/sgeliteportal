USE [AMERICA]
GO
/****** Object:  Table [dbo].[edocs_insurance_unused_numbers]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[edocs_insurance_unused_numbers](
	[cust_id] [nvarchar](10) NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[insurance_n] [nvarchar](40) NOT NULL,
	[entry_by] [nvarchar](50) NULL,
	[entry_dt] [datetime] NULL,
 CONSTRAINT [PK_edocs_insurance_unused_numbers] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[insurance_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[edocs_insurance_unused_numbers] TO  SCHEMA OWNER 
GO
