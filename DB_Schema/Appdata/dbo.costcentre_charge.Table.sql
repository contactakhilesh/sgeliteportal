USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_charge](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[ISSAMPLEORDERCHG] [char](1) NOT NULL,
 CONSTRAINT [PK_costcentre_charge] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC,
	[chgcode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_chgcode_mast] FOREIGN KEY([chgcode_id])
REFERENCES [CHGCODE_MAST] ([CHGCODE_ID])
GO
ALTER TABLE [costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_chgcode_mast]
GO
ALTER TABLE [costcentre_charge]  WITH CHECK ADD  CONSTRAINT [FK_costcentre_charge_costcentre_grp] FOREIGN KEY([ccgrp_id])
REFERENCES [costcentre_grp] ([ccgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [costcentre_charge] CHECK CONSTRAINT [FK_costcentre_charge_costcentre_grp]
GO
