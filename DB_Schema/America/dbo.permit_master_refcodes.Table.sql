USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_refcodes]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_refcodes](
	[ref_name] [varchar](50) NOT NULL,
	[ref_code] [varchar](50) NOT NULL,
	[ref_descs] [varchar](300) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_refcodes] PRIMARY KEY CLUSTERED 
(
	[ref_name] ASC,
	[ref_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_refcodes] TO  SCHEMA OWNER 
GO
