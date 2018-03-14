USE [AMERICA]
GO
/****** Object:  Table [dbo].[text_label_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[text_label_mast](
	[text_label] [nvarchar](200) NOT NULL,
	[text_value] [nvarchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[text_label_mast] TO  SCHEMA OWNER 
GO
