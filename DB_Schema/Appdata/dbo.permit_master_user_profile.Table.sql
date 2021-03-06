USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_user_profile](
	[user_id] [varchar](10) NOT NULL,
	[dec_id] [varchar](17) NOT NULL,
	[dec_code] [varchar](20) NULL,
	[dec_name] [varchar](105) NULL,
	[dec_contact] [varchar](25) NULL,
	[active] [varchar](1) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_user_profile] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[dec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
