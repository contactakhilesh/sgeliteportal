USE [AMERICA]
GO
/****** Object:  Table [dbo].[dhl_state]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dhl_state](
	[state_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[State] [varchar](35) NOT NULL,
	[Country_cd] [varchar](2) NOT NULL,
	[Country_name] [varchar](30) NOT NULL,
	[postal_abbreviation] [varchar](2) NULL,
 CONSTRAINT [PK__dhl_state__2AF556D4] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dhl_state] TO  SCHEMA OWNER 
GO
