USE [AMERICA]
GO
/****** Object:  Table [dbo].[costcentre_prodgrp]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costcentre_prodgrp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[cost_centre] [char](1) NOT NULL,
	[item_charge] [varchar](100) NOT NULL,
	[costcentre_code] [varchar](15) NOT NULL,
	[account_code] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[PLANT_CODE] [varchar](10) NOT NULL,
 CONSTRAINT [PK_COSTCENTRE_PRODGRP] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[prodgrp_id] ASC,
	[cost_centre] ASC,
	[PLANT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[costcentre_prodgrp] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [dbo].[costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_costcentre_grp]
GO
ALTER TABLE [dbo].[costcentre_prodgrp]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [dbo].[prodgrp_hd] ([prodgrp_id])
GO
ALTER TABLE [dbo].[costcentre_prodgrp] CHECK CONSTRAINT [FK_costcentre_prodgrp_prodgrp_hd]
GO
