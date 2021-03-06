USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_SICC_GENERAL_ENTRY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_SICC_GENERAL_ENTRY]
GO
/****** Object:  Table [dbo].[DOC_SICC_GENERAL_ENTRY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_SICC_GENERAL_ENTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_SICC_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[departure_dt] [datetime] NULL,
	[vessel] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[finel_dest] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_origin] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strike_field] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exp_sign] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exp_company_stamp] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exp_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exp_desig] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exp_date] [datetime] NULL,
	[print_markings] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_net_wt] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_gross_wt] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[body_remarks] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_SICC_GENERAL_ENTRY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_SICC_GENERAL_ENTRY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_SICC_GENERAL_ENTRY] TO [public] AS [dbo]
GO
