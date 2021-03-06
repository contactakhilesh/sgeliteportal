USE [AMERICA]
GO
/****** Object:  Table [dbo].[country_state_master]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country_state_master](
	[country_state_code] [varchar](5) NOT NULL,
	[country_code] [varchar](2) NOT NULL,
	[state_code] [nchar](10) NOT NULL,
	[state_description] [varchar](100) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_country_state_master] PRIMARY KEY CLUSTERED 
(
	[country_state_code] ASC,
	[country_code] ASC,
	[state_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[country_state_master] TO  SCHEMA OWNER 
GO
