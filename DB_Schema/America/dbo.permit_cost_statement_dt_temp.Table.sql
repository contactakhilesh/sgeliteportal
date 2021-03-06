USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dt_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_cost_statement_dt_temp](
	[product_id] [varchar](20) NULL,
	[comp_name] [varchar](100) NULL,
	[doc_name] [varchar](50) NULL,
	[criterio] [numeric](10, 0) NULL,
	[hs_code] [varchar](20) NULL,
	[cust_id] [varchar](10) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cert_type] [varchar](10) NULL,
 CONSTRAINT [pk_permit_cost_statement_dt_temp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_cost_statement_dt_temp] TO  SCHEMA OWNER 
GO
