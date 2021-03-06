USE [appdata]
GO
/****** Object:  Table [dbo].[permit_freight_rate_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_freight_rate_mast]
GO
/****** Object:  Table [dbo].[permit_freight_rate_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_freight_rate_mast](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FREIGHT_RATES] [decimal](10, 4) NULL,
	[EFFECTIVITY_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_DT] [datetime] NULL,
 CONSTRAINT [PK_permit_freight_rate_mast] PRIMARY KEY CLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_LOAD_ID] ASC,
	[PORT_DISC_ID] ASC,
	[PORT_DEL_ID] ASC,
	[CONT_TYPE] ASC,
	[EFFECTIVITY_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_mast] TO  SCHEMA OWNER 
GO
