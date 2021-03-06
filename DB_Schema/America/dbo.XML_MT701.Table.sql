USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_MT701]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_MT701](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[line_n] [decimal](18, 0) NOT NULL,
	[tag_27] [varchar](10) NULL,
	[tag_20] [varchar](20) NOT NULL,
	[tag_45b] [varchar](6500) NULL,
	[tag_46b] [varchar](6500) NULL,
	[tag_47b] [varchar](6500) NULL,
	[tag_21] [varchar](16) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_MT701] TO  SCHEMA OWNER 
GO
