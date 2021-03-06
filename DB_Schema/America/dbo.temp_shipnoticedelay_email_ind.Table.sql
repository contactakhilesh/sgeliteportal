USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_shipnoticedelay_email_ind]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_shipnoticedelay_email_ind](
	[cust_ord_no] [varchar](100) NOT NULL,
	[mail_ind] [varchar](3) NULL,
	[PLANT_CODE] [varchar](10) NULL,
 CONSTRAINT [PK_temp_shipnoticedelay_email_ind] PRIMARY KEY CLUSTERED 
(
	[cust_ord_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_shipnoticedelay_email_ind] TO  SCHEMA OWNER 
GO
