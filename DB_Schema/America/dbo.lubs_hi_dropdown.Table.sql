USE [AMERICA]
GO
/****** Object:  Table [dbo].[lubs_hi_dropdown]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lubs_hi_dropdown](
	[indicator] [numeric](10, 0) NOT NULL,
	[descs] [varchar](200) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_lubs_hi_dropdown] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[lubs_hi_dropdown] TO  SCHEMA OWNER 
GO
