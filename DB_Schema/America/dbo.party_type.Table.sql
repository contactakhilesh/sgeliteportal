USE [AMERICA]
GO
/****** Object:  Table [dbo].[party_type]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[party_type](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[logical_name] [varchar](255) NULL,
 CONSTRAINT [PK__party_type__0D45C3B3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[party_type] TO  SCHEMA OWNER 
GO
