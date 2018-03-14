USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_CUST_ORD_NO_W_BOOKED_DATES](
	[cust_ord_no] [varchar](50) NULL,
	[booked_d] [datetime] NULL,
	[environment] [char](2) NULL,
	[cust_id] [char](4) NULL
) ON [PRIMARY]

GO
