USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Inlt_Fixed_Del_dt_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Domestic_fixed_del_dt_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Intl_Warning_Message]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Domestic_Warning_Message]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Intl_Max_Pallet_wt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Domestic_Max_Pallet_wt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Allow_Exchange_Shipment]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Allow_Dangerous_Goods]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Intl_Max_Advanced_days]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_Domestic_Max_Advanced_Days]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_VCF_Calc_Weight]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_intl_aggregate_allowed_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_intl_shipment_allowed_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_domestic_agg_allowed_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_domestic_shipment_allowed_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_dpgm_product_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
ALTER TABLE [dbo].[dhl_products] DROP CONSTRAINT IF EXISTS [DF_products_price_flat_rate_flag]
GO
/****** Object:  Table [dbo].[dhl_products]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_products]
GO
/****** Object:  Table [dbo].[dhl_products]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_products](
	[products_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[local_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[global_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[product_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[product_content_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[weight_desc] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_flat_rate_flag] [bit] NOT NULL,
	[proforma_required] [tinyint] NOT NULL,
	[price_high_value] [float] NOT NULL,
	[effective_from] [datetime] NULL,
	[effective_till] [datetime] NULL,
	[dpgm_product_flag] [bit] NOT NULL,
	[domestic_dim_wt_divisor] [float] NOT NULL,
	[domestic_shipment_allowed_flag] [bit] NOT NULL,
	[domestic_agg_allowed_flag] [bit] NOT NULL,
	[domestic_aggregate_weight_min] [float] NULL,
	[domestic_aggregate_price_min] [float] NULL,
	[intl_dim_wt_divisor] [float] NULL,
	[intl_shipment_allowed_flag] [bit] NOT NULL,
	[intl_aggregate_allowed_flag] [bit] NOT NULL,
	[intl_aggregate_weight_min] [float] NOT NULL,
	[intl_aggregate_price_min] [float] NOT NULL,
	[Product_notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_type] [smallint] NULL,
	[Routing_barcode] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VCF_Calc_Weight] [bit] NOT NULL,
	[Domestic_Weight_Min] [float] NULL,
	[Domestic_Weight_Max] [float] NULL,
	[Intl_Weight_Min] [float] NULL,
	[Intl_Weight_Max] [float] NULL,
	[Domestic_Wt_Round_Factor] [float] NULL,
	[Intl_Wt_Round_Factor] [float] NULL,
	[Domestic_Max_Wt_Per_Item] [float] NULL,
	[Intl_Max_Wt_Per_Item] [float] NULL,
	[Shipment_Identifier] [smallint] NULL,
	[Lp_Identifier] [smallint] NULL,
	[Domestic_Max_Advanced_Days] [smallint] NULL,
	[Intl_Max_Advanced_days] [smallint] NULL,
	[Allow_Dangerous_Goods] [bit] NULL,
	[Allow_Exchange_Shipment] [bit] NULL,
	[Domestic_No_Of_Pieces] [smallint] NULL,
	[Domestic_Max_Pallet_No] [int] NULL,
	[Intl_No_Of_Pieces] [smallint] NULL,
	[Intl_Max_Pallet_No] [int] NULL,
	[Domestic_Max_Pallet_wt] [float] NULL,
	[Intl_Max_Pallet_wt] [float] NULL,
	[Shipment_Multi_Ref] [bit] NULL,
	[Piece_Multi_Ref] [bit] NULL,
	[Piece_Details_Mandatory] [bit] NULL,
	[Domestic_Min_Length_Piece] [float] NULL,
	[Domestic_Min_Width_Piece] [float] NULL,
	[Domestic_Min_Height_Piece] [float] NULL,
	[Domestic_Max_Length_Piece] [float] NULL,
	[Domestic_Max_Width_Piece] [float] NULL,
	[Domestic_Max_Height_Piece] [float] NULL,
	[Intl_Min_Length_Piece] [float] NULL,
	[Intl_Min_Width_Piece] [float] NULL,
	[Intl_Min_Height_Piece] [float] NULL,
	[Intl_Max_Length_Piece] [float] NULL,
	[Intl_Max_Width_Piece] [float] NULL,
	[Intl_Max_Height_Piece] [float] NULL,
	[Allow_Delivery_Instruction] [bit] NULL,
	[Pickup_Alert_Msg] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Domestic_Metric_Dim_Wt_Divisor] [float] NULL,
	[Intl_Metric_Dim_Wt_Divisor] [float] NULL,
	[Domestic_Wt_Default] [float] NULL,
	[Intl_Wt_Default] [float] NULL,
	[Domestic_Warning_Message] [bit] NOT NULL,
	[Intl_Warning_Message] [bit] NOT NULL,
	[US2ndDay] [bit] NULL,
	[Domestic_fixed_del_dt_flag] [bit] NOT NULL,
	[Intl_Fixed_Del_dt_flag] [bit] NOT NULL,
	[Domestic_max_dimensional_weight] [float] NULL,
	[Intl_Max_Dimensional_weight] [float] NULL,
 CONSTRAINT [PK_dhl_products] PRIMARY KEY CLUSTERED 
(
	[products_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_products] TO  SCHEMA OWNER 
GO
