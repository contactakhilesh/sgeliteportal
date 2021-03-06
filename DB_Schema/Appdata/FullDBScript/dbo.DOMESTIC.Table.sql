USE [appdata]
GO
/****** Object:  Trigger [TRG_DOM_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_DOM_JOBS_UPDATED]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC]') AND type in (N'U'))
ALTER TABLE [dbo].[DOMESTIC] DROP CONSTRAINT IF EXISTS [DF__DOMESTIC__WEB_IN__3E1E0538]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC]') AND type in (N'U'))
ALTER TABLE [dbo].[DOMESTIC] DROP CONSTRAINT IF EXISTS [DF_DOMESTIC_order_receive_dt_1]
GO
/****** Object:  Table [dbo].[DOMESTIC]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC]
GO
/****** Object:  Table [dbo].[DOMESTIC]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[cust_ord_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[do_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[i_track_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[add_ref_2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add_ref_3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add_ref_4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add_ref_5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add_ref_6] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trucker_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[truck_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chasis_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[truck_tare_wt] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_rec_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_rec_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_del_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eta] [datetime] NULL,
	[ata] [datetime] NULL,
	[etd] [datetime] NULL,
	[atd] [datetime] NULL,
	[cut_off_date] [datetime] NULL,
	[move_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mot] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper_contact_name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper_contact_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper_instruction] [nvarchar](2500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_contact_name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_contact_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_instruction] [nvarchar](2500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np_contact_name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_np_contact_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_n] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[est_door_del_dt] [datetime] NULL,
	[plant_load_dt] [datetime] NULL,
	[payment_terms] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inco_terms] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[free_det_time_period] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_desc] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[net_wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_m3] [decimal](18, 0) NULL,
	[remarks] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gd_des1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gd_des2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_of_ult_dest] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_updated_dt] [datetime] NULL,
	[consignee_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sc_job_n] [decimal](18, 0) NULL,
	[freight_term_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ocean_fr_cost] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_other_name] [nvarchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_receive_dt] [datetime] NULL,
	[cancel_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper_province] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_province] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_shipper_postal_c] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_con_postal_c] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_cost] [numeric](11, 3) NULL,
	[freight_currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_to_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sch_id] [numeric](10, 0) NULL,
	[bulk_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[package_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mix_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hourly_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bulk_ret_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[actual_truckker_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[distance] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOMESTIC] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC] TO [public] AS [dbo]
GO
