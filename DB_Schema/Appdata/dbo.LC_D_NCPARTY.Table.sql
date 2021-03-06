USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_NCPARTY](
	[LC_NC_PARTYID] [decimal](10, 0) NOT NULL,
	[LC_NC_PARTYNAME] [varchar](50) NULL,
	[NC_CATE_CODE] [varchar](50) NULL,
	[NC_CODE] [varchar](10) NULL,
 CONSTRAINT [PK_LC_D_NCPARTY] PRIMARY KEY CLUSTERED 
(
	[LC_NC_PARTYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
