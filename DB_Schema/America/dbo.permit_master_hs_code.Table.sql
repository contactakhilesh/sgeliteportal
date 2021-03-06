USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_hs_code]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_hs_code](
	[hs_code] [varchar](50) NOT NULL,
	[hs_desc] [varchar](255) NULL,
	[hs_uom] [varchar](5) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_hs_code] PRIMARY KEY CLUSTERED 
(
	[hs_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_hs_code] TO  SCHEMA OWNER 
GO
