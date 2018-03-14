USE [AMERICA]
GO
/****** Object:  Table [dbo].[pbcatvld]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pbcatvld](
	[pbv_name] [varchar](30) NOT NULL,
	[pbv_vald] [varchar](254) NOT NULL,
	[pbv_type] [smallint] NOT NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[pbcatvld] TO  SCHEMA OWNER 
GO
