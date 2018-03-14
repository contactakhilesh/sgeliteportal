USE [AMERICA]
GO
/****** Object:  Table [dbo].[LUB_EMAIL_REF]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUB_EMAIL_REF](
	[country_name] [varchar](50) NULL,
	[consignee_name] [varchar](120) NULL,
	[email_addr] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[LUB_EMAIL_REF] TO  SCHEMA OWNER 
GO
