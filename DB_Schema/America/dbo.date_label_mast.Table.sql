USE [AMERICA]
GO
/****** Object:  Table [dbo].[date_label_mast]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[date_label_mast](
	[label_id] [nvarchar](50) NOT NULL,
	[label_name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[date_label_mast] TO  SCHEMA OWNER 
GO
