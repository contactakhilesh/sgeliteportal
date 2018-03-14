USE [AMERICA]
GO
/****** Object:  Table [dbo].[direct_collection_approver]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direct_collection_approver](
	[approver_id] [varchar](50) NOT NULL,
	[approver_name] [varchar](50) NOT NULL,
	[approver_email] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[direct_collection_approver] TO  SCHEMA OWNER 
GO
