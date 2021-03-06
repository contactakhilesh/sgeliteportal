USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_SICC_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) NOT NULL,
	[departure_dt] [datetime] NULL,
	[vessel] [varchar](60) NULL,
	[pod] [varchar](50) NULL,
	[finel_dest] [varchar](50) NULL,
	[country_origin] [varchar](70) NULL,
	[strike_field] [varchar](50) NULL,
	[exp_sign] [varchar](2) NULL,
	[exp_company_stamp] [varchar](2) NULL,
	[exp_name] [varchar](50) NULL,
	[exp_desig] [varchar](80) NULL,
	[exp_date] [datetime] NULL,
	[print_markings] [varchar](2) NULL,
	[print_tot_net_wt] [varchar](2) NULL,
	[print_tot_gross_wt] [varchar](2) NULL,
	[remarks1] [varchar](100) NULL,
	[remarks2] [varchar](100) NULL,
	[remarks3] [varchar](100) NULL,
	[remarks4] [varchar](100) NULL,
	[remarks5] [varchar](100) NULL,
	[remarks6] [varchar](100) NULL,
	[remarks7] [varchar](100) NULL,
	[remarks8] [varchar](100) NULL,
	[remarks9] [varchar](100) NULL,
	[remarks10] [varchar](100) NULL,
	[body_remarks] [varchar](1000) NULL,
	[shipper_ref] [varchar](50) NULL,
	[po_no] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_SICC_GENERAL_ENTRY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
