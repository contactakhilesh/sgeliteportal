USE [AMERICA]
GO
/****** Object:  Table [dbo].[export_si_det]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[export_si_det](
	[export_n] [decimal](18, 0) NOT NULL,
	[move_type] [varchar](10) NULL,
	[send_det_wt] [varchar](10) NULL,
	[shipping_instruction] [varchar](1500) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[doc_header_seq_n_atd] [numeric](18, 0) NULL,
	[doc_header_seq_n_ata] [numeric](18, 0) NULL,
	[po_n_ind] [varchar](2) NULL,
	[freight_payment_loc] [varchar](50) NULL,
	[senddelete_flag] [varchar](2) NULL,
	[remarks] [varchar](1500) NULL,
	[push_email_1] [varchar](50) NULL,
	[push_email_2] [varchar](50) NULL,
	[POD_315] [varchar](10) NULL,
	[TotalPalletSendFlag] [varchar](10) NULL,
	[tech_name_ind] [char](2) NULL,
	[customs_clearance_POL_d] [datetime] NULL,
	[container_clearance_POD_d] [datetime] NULL,
	[freight_payment_loc_code] [char](10) NULL,
 CONSTRAINT [PK_export_si_det] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[export_si_det] TO  SCHEMA OWNER 
GO
