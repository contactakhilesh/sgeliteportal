USE [AMERICA]
GO
/****** Object:  Table [dbo].[pbcatfmt]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pbcatfmt](
	[pbf_name] [varchar](30) NOT NULL,
	[pbf_frmt] [varchar](254) NOT NULL,
	[pbf_type] [smallint] NOT NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[pbcatfmt] TO  SCHEMA OWNER 
GO
