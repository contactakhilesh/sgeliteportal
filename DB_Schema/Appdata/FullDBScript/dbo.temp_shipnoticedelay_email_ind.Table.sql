USE [appdata]
GO
/****** Object:  Table [dbo].[temp_shipnoticedelay_email_ind]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_shipnoticedelay_email_ind]
GO
/****** Object:  Table [dbo].[temp_shipnoticedelay_email_ind]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_shipnoticedelay_email_ind]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_shipnoticedelay_email_ind](
	[cust_ord_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mail_ind] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_temp_shipnoticedelay_email_ind] PRIMARY KEY CLUSTERED 
(
	[cust_ord_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_shipnoticedelay_email_ind] TO  SCHEMA OWNER 
GO
