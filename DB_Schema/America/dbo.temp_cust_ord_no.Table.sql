USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_cust_ord_no]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_cust_ord_no](
	[cust_ord_no] [varchar](40) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_cust_ord_no] TO  SCHEMA OWNER 
GO
