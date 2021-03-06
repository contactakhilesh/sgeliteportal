USE [AMERICA]
GO
/****** Object:  Table [dbo].[PUBLIC_HOLIDAYS_ALL_ENVI]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUBLIC_HOLIDAYS_ALL_ENVI](
	[OfficeCode] [char](10) NOT NULL,
	[Year] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Name] [nchar](150) NOT NULL,
	[Remarks] [nchar](250) NULL,
 CONSTRAINT [PK_PUBLIC_HOLIDAYS_ALL_ENVI] PRIMARY KEY CLUSTERED 
(
	[OfficeCode] ASC,
	[Year] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PUBLIC_HOLIDAYS_ALL_ENVI] TO  SCHEMA OWNER 
GO
