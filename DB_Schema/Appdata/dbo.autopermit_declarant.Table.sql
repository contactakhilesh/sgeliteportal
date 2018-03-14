USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [autopermit_declarant](
	[cust_id] [varchar](10) NULL,
	[dec_id] [varchar](17) NULL,
	[dec_code] [varchar](20) NULL,
	[dec_name] [varchar](105) NULL,
	[dec_contact] [varchar](25) NULL,
	[fms_userid] [varchar](10) NULL
) ON [PRIMARY]

GO
