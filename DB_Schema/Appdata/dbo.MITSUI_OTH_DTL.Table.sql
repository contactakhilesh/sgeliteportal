USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MITSUI_OTH_DTL](
	[export_n] [numeric](9, 0) NOT NULL,
	[remarks_1] [varchar](1000) NULL,
	[remarks_2] [varchar](max) NULL,
	[remarks_3] [varchar](1000) NULL,
	[number_of_amendment] [char](10) NULL,
	[contract_number] [varchar](50) NULL,
	[ack_to] [varchar](1000) NULL,
	[ack_attn] [varchar](100) NULL,
	[ack_tel] [varchar](50) NULL,
	[ack_body] [varchar](max) NULL,
	[ack_email_by] [char](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
