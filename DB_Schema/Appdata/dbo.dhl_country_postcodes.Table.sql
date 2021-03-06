USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_country_postcodes](
	[country_postcodes_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[postal_format] [varchar](12) NOT NULL,
	[postal_sig_digits] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[country_postcodes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
