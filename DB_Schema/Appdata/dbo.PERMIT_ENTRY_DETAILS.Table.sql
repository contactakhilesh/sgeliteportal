USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PERMIT_ENTRY_DETAILS](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ost] [varchar](255) NULL,
	[dex_id] [varchar](255) NULL,
	[shipper_name] [varchar](255) NULL,
	[agent_company] [varchar](255) NULL,
	[plant_location] [varchar](255) NULL,
	[type_of_permit_required] [varchar](255) NULL,
	[type_of_fta_coo_required] [varchar](255) NULL,
	[consignee] [varchar](255) NULL,
	[shipment_mode] [varchar](255) NULL,
	[port_of_loading] [varchar](255) NULL,
	[country_of_discharge] [varchar](255) NULL,
	[final_destination] [varchar](255) NULL,
	[job_type] [varchar](255) NULL,
	[product_code] [varchar](255) NULL,
	[product_name] [varchar](255) NULL,
	[country_of_origin] [varchar](255) NULL,
	[bl_quantity_mt] [float] NULL,
	[bl_quantity_bbl] [float] NULL,
	[invoice_amount] [money] NULL,
	[unit_price] [money] NULL,
	[vessel_name] [varchar](255) NULL,
	[conveyance_number] [varchar](255) NULL,
	[eta_sg] [datetime] NULL,
	[etd_sg] [datetime] NULL,
	[eta_discharge_port] [datetime] NULL,
	[bl_number] [varchar](50) NULL,
	[bl_date] [datetime] NULL,
	[trader_remarks] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[permit_number] [varchar](255) NULL,
	[customer_id] [int] NULL,
	[filename] [varchar](300) NULL,
	[create_date] [datetime] NULL,
	[job_number] [bigint] NULL,
	[decaliters] [float] NULL,
	[eta_departure_port] [datetime] NULL,
	[order_type_id] [int] NULL,
	[is_sts] [varchar](255) NULL,
	[vessel_along_side] [varchar](255) NULL,
	[unit_price_uom] [varchar](255) NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
