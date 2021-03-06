USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [msg315](
	[seq_n] [numeric](18, 0) NOT NULL,
	[msg315_d] [datetime] NULL,
	[insert315_d] [datetime] NULL,
	[carrier] [varchar](70) NULL,
	[bl_n] [varchar](30) NULL,
	[booking_n] [varchar](30) NULL,
	[equipment_n] [varchar](500) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[filename] [varchar](500) NULL,
	[sc_env] [varchar](10) NULL,
	[matched] [varchar](2) NULL,
	[export_n] [numeric](18, 0) NULL,
	[ref_1] [varchar](40) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[event_code] [varchar](10) NULL,
	[place_of_delivery] [varchar](255) NULL,
	[port_of_load] [varchar](255) NULL,
	[place_of_receipt] [varchar](255) NULL,
	[port_of_discharge] [varchar](255) NULL,
	[event_location] [varchar](255) NULL,
 CONSTRAINT [PK_msg315] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
