USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_port_email](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[port_id] [varchar](10) NOT NULL,
	[bkg_toemail] [varchar](255) NULL,
	[bkg_ccemail] [varchar](255) NULL,
	[si_toemail] [varchar](255) NULL,
	[si_ccemail] [varchar](255) NULL,
	[modified_by] [varchar](10) NOT NULL,
	[modified_dt] [datetime] NOT NULL,
	[bl_confirm_toemail] [varchar](255) NULL,
	[bl_confirm_ccemail] [varchar](255) NULL,
 CONSTRAINT [PK_carrier_port_email] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
