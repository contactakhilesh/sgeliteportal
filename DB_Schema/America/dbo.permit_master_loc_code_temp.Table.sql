USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_loc_code_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_loc_code_temp](
	[loc_code] [varchar](10) NOT NULL,
	[loc_descs] [varchar](200) NULL,
 CONSTRAINT [PK_permit_master_loc_code_temp] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_loc_code_temp] TO  SCHEMA OWNER 
GO
