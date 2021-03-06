USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_ct_pc_code]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_ct_pc_code](
	[ct_pc_code] [varchar](10) NOT NULL,
	[ct_pc_descs] [varchar](50) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_permit_master_ct_pc_code] PRIMARY KEY NONCLUSTERED 
(
	[ct_pc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_ct_pc_code] TO  SCHEMA OWNER 
GO
