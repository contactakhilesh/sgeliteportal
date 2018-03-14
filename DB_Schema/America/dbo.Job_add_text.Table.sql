USE [AMERICA]
GO
/****** Object:  Table [dbo].[Job_add_text]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_add_text](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Text_Label] [nvarchar](200) NULL,
	[Text_Value] [nvarchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Job_add_text] TO  SCHEMA OWNER 
GO
