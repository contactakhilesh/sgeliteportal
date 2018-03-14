USE [AMERICA]
GO
/****** Object:  Table [dbo].[MISC_CHG]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MISC_CHG](
	[TRA_TYPE] [varchar](1) NOT NULL,
	[REF_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[DOC_N] [varchar](20) NOT NULL,
	[CHG_DES1] [varchar](50) NOT NULL,
	[CHG_DES2] [varchar](50) NOT NULL,
	[CHG_A] [numeric](11, 2) NOT NULL,
 CONSTRAINT [PK_MISC_CHG_DET] PRIMARY KEY NONCLUSTERED 
(
	[TRA_TYPE] ASC,
	[REF_N] ASC,
	[LINE_N] ASC,
	[DOC_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[MISC_CHG] TO  SCHEMA OWNER 
GO
