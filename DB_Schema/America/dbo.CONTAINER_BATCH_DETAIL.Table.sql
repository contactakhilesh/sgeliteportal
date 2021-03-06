USE [AMERICA]
GO
/****** Object:  Table [dbo].[CONTAINER_BATCH_DETAIL]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTAINER_BATCH_DETAIL](
	[export_n] [numeric](9, 0) NULL,
	[container_number] [varchar](50) NULL,
	[batch_order] [int] NULL,
	[batch_number] [varchar](100) NULL,
	[quantity] [numeric](12, 3) NULL,
	[package_type] [varchar](50) NULL,
	[manufacture_date] [datetime] NULL,
	[expiry_date] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CONTAINER_BATCH_DETAIL] TO  SCHEMA OWNER 
GO
