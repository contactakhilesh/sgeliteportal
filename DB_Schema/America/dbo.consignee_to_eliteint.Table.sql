USE [AMERICA]
GO
/****** Object:  Table [dbo].[consignee_to_eliteint]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consignee_to_eliteint](
	[cust_id] [varchar](10) NULL,
	[s_con_to_send] [varchar](70) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[consignee_to_eliteint] TO  SCHEMA OWNER 
GO
