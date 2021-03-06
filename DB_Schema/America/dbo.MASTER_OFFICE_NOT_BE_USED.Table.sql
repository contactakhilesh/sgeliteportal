USE [AMERICA]
GO
/****** Object:  Table [dbo].[MASTER_OFFICE_NOT_BE_USED]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER_OFFICE_NOT_BE_USED](
	[mapmid] [int] NOT NULL,
	[officecode] [varchar](10) NOT NULL,
	[hqofficecode] [varchar](10) NULL,
	[description] [varchar](100) NULL,
	[ipaddress] [varchar](40) NOT NULL,
	[adminemail] [varchar](50) NOT NULL,
	[valid] [int] NOT NULL,
	[lastupdate] [datetime] NULL,
	[dbEnv] [varchar](10) NULL,
 CONSTRAINT [PK_tes_offipmaster] PRIMARY KEY CLUSTERED 
(
	[mapmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[MASTER_OFFICE_NOT_BE_USED] TO  SCHEMA OWNER 
GO
