USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_cert]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_cert](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[app_prod_type] [varchar](2) NOT NULL,
	[app_prod_desc] [varchar](200) NULL,
	[cert_type1] [varchar](2) NULL,
	[cert_desc1] [varchar](50) NULL,
	[cert_type2] [varchar](2) NULL,
	[cert_desc2] [varchar](50) NULL,
	[cert_copy1] [decimal](2, 0) NULL,
	[cert_copy2] [decimal](2, 0) NULL,
	[currency_code] [varchar](3) NULL,
	[entry_year] [decimal](4, 0) NULL,
	[gsp_donor_cty] [varchar](2) NULL,
	[gsp_donor_desc] [varchar](50) NULL,
	[content_percent] [decimal](3, 0) NULL,
	[add_cert_dtl] [varchar](175) NULL,
	[tpt_dtl] [varchar](175) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cert] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_cert] TO  SCHEMA OWNER 
GO
