USE [AMERICA]
GO
/****** Object:  Table [dbo].[haulage_other_details]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[haulage_other_details](
	[export_n] [numeric](9, 0) NOT NULL,
	[export_ref_n] [numeric](9, 0) NULL,
	[laadrerentie] [varchar](100) NULL,
	[openingsuren] [varchar](100) NULL,
	[op_kaai_nr] [varchar](100) NULL,
	[tav] [varchar](100) NULL,
	[beschikbaar_vanaf] [varchar](100) NULL,
	[imo] [varchar](1000) NULL,
	[loading_slot] [varchar](1000) NULL,
	[tender_condition] [varchar](2000) NULL,
	[quay] [varchar](1000) NULL,
	[dd] [datetime] NULL,
	[flexibag] [varchar](50) NULL,
	[week] [varchar](50) NULL,
	[terminal_date] [datetime] NULL,
	[loading_date] [datetime] NULL,
	[loading_hours] [varchar](1000) NULL,
	[NitroBlanketReq] [char](50) NULL,
	[old_booking_status] [char](20) NULL,
	[new_booking_status] [char](20) NULL,
	[old_booking_remarks] [char](100) NULL,
	[new_booking_remarks] [char](100) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[haulage_other_details] TO  SCHEMA OWNER 
GO
