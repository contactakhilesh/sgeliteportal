USE [AMERICA]
GO
/****** Object:  Table [dbo].[CARRIER_EMAIL_BY_CUSTOMER]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRIER_EMAIL_BY_CUSTOMER](
	[parentAcctid] [int] NOT NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[bl_confirm_toemail] [varchar](255) NULL,
	[bl_confirm_ccemail] [varchar](255) NULL,
	[modified_by] [varchar](50) NULL,
	[modified_dt] [datetime] NULL,
	[bl_chaserreminderlist] [varchar](255) NULL,
 CONSTRAINT [PK_CARRIER_EMAIL_BY_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[parentAcctid] ASC,
	[vendor_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CARRIER_EMAIL_BY_CUSTOMER] TO  SCHEMA OWNER 
GO
