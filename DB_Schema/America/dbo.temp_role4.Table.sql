USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_role4]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_role4](
	[cont_seq_n] [varchar](2) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[seal1] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_role4] TO  SCHEMA OWNER 
GO
