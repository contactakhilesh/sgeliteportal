USE [AMERICA]
GO
/****** Object:  Table [dbo].[haulier_pending]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[haulier_pending](
	[group_n] [varchar](50) NOT NULL,
	[shipper_ref] [varchar](40) NOT NULL,
	[prod_no] [varchar](10) NOT NULL,
	[qty] [varchar](10) NOT NULL,
	[shipping_point] [varchar](20) NOT NULL,
	[plant_code] [varchar](10) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[processed] [char](1) NOT NULL,
	[prod_ids] [varchar](100) NULL,
 CONSTRAINT [PK_haulier_pending] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[haulier_pending] TO  SCHEMA OWNER 
GO
