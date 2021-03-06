USE [AMERICA]
GO
/****** Object:  Table [dbo].[prodgrp_dt]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodgrp_dt](
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
ALTER AUTHORIZATION ON [dbo].[prodgrp_dt] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_prodgrp_hd] FOREIGN KEY([prodgrp_id])
REFERENCES [dbo].[prodgrp_hd] ([prodgrp_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_prodgrp_hd]
GO
ALTER TABLE [dbo].[prodgrp_dt]  WITH CHECK ADD  CONSTRAINT [FK_prodgrp_dt_product_mast] FOREIGN KEY([cust_id], [product_id])
REFERENCES [dbo].[PRODUCT_MAST] ([CUST_ID], [PRODUCT_ID])
GO
ALTER TABLE [dbo].[prodgrp_dt] CHECK CONSTRAINT [FK_prodgrp_dt_product_mast]
GO
