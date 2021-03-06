USE [AMERICA]
GO
/****** Object:  Table [dbo].[dhl_directory]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dhl_directory](
	[directory_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[IATA] [varchar](3) NOT NULL,
	[City] [varchar](35) NOT NULL,
	[Z_sector] [varchar](3) NULL,
	[Z_rate_subset] [varchar](1) NULL,
	[L_sector] [varchar](3) NULL,
	[L_rate_subset] [varchar](1) NULL,
	[A_sector] [varchar](3) NULL,
	[A_rate_subset] [varchar](1) NULL,
 CONSTRAINT [PK__dhl_directory__1E05700A] PRIMARY KEY CLUSTERED 
(
	[directory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[dhl_directory] TO  SCHEMA OWNER 
GO
