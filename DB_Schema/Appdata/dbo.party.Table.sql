USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [party](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[party_name] [varchar](255) NOT NULL,
	[party_display_name] [varchar](255) NOT NULL,
	[party_address] [varchar](255) NOT NULL,
	[country_id] [varchar](5) NOT NULL,
	[party_type_id] [int] NOT NULL,
 CONSTRAINT [PK_party_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
