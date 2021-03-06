USE [appdata]
GO
/****** Object:  Table [dbo].[PERMIT_ENTRY_DETAILS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PERMIT_ENTRY_DETAILS]
GO
/****** Object:  Table [dbo].[PERMIT_ENTRY_DETAILS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PERMIT_ENTRY_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PERMIT_ENTRY_DETAILS](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ost] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dex_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[agent_company] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[plant_location] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type_of_permit_required] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type_of_fta_coo_required] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_mode] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_loading] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_of_discharge] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[final_destination] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_type] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_code] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_of_origin] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_quantity_mt] [float] NULL,
	[bl_quantity_bbl] [float] NULL,
	[invoice_amount] [money] NULL,
	[unit_price] [money] NULL,
	[vessel_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[conveyance_number] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eta_sg] [datetime] NULL,
	[etd_sg] [datetime] NULL,
	[eta_discharge_port] [datetime] NULL,
	[bl_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_date] [datetime] NULL,
	[trader_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[permit_number] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customer_id] [int] NULL,
	[filename] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_date] [datetime] NULL,
	[job_number] [bigint] NULL,
	[decaliters] [float] NULL,
	[eta_departure_port] [datetime] NULL,
	[order_type_id] [int] NULL,
	[is_sts] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_along_side] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[unit_price_uom] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__PERMIT_E__3213E83F2D6A1130] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PERMIT_ENTRY_DETAILS] TO  SCHEMA OWNER 
GO
