USE [appdata]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LUB_EMAIL_REF](
	[country_name] [varchar](50) NULL,
	[consignee_name] [varchar](120) NULL,
	[email_addr] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
