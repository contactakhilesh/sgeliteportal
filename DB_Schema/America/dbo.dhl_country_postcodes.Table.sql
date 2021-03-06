USE [AMERICA]
GO
/****** Object:  Table [dbo].[dhl_country_postcodes]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dhl_country_postcodes](
	[country_postcodes_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[postal_format] [varchar](12) NOT NULL,
	[postal_sig_digits] [smallint] NULL,
 CONSTRAINT [PK__dhl_country_post__7C055DC1] PRIMARY KEY CLUSTERED 
(
	[country_postcodes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dhl_country_postcodes] TO  SCHEMA OWNER 
GO
