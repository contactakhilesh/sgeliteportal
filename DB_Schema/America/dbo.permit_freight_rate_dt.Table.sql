USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_freight_rate_dt](
	[row_id] [numeric](18, 0) NOT NULL,
	[pol_id] [varchar](10) NOT NULL,
	[pod_id] [varchar](10) NOT NULL,
	[amt_20] [numeric](10, 2) NULL,
	[amt_40] [numeric](10, 2) NULL,
	[freight] [numeric](5, 4) NULL,
	[insurance] [numeric](5, 4) NULL,
	[port_disc_id] [varchar](10) NULL,
 CONSTRAINT [PK__permit_freight_r__261B931E] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[pol_id] ASC,
	[pod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_dt] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[permit_freight_rate_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_freight_rate_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[permit_freight_rate_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permit_freight_rate_dt] CHECK CONSTRAINT [FK_permit_freight_rate_dt_row_id]
GO
