USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL,
 CONSTRAINT [PK_prodgrp_dt] PRIMARY KEY CLUSTERED 
(
	[prodgrp_id] ASC,
	[product_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [prodgrp_hd] ([prodgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_prodgrp_hd]
GO
ALTER TABLE [prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_product_mast] FOREIGN KEY([cust_id], [product_id])
REFERENCES [PRODUCT_MAST] ([CUST_ID], [PRODUCT_ID])
GO
ALTER TABLE [prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_product_mast]
GO
