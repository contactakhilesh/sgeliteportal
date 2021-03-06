USE [AMERICA]
GO
/****** Object:  Table [dbo].[haulage_intruction_ref]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[haulage_intruction_ref](
	[report_name] [varchar](100) NOT NULL,
	[desc_1] [varchar](max) NULL,
	[desc_2] [varchar](max) NULL,
	[desc_3] [varchar](max) NULL,
	[desc_4] [varchar](max) NULL,
	[desc_5] [varchar](max) NULL,
	[desc_6] [varchar](max) NULL,
	[desc_7] [varchar](max) NULL,
	[desc_8] [varchar](max) NULL,
	[desc_9] [varchar](max) NULL,
	[booking_group] [char](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[haulage_intruction_ref] TO  SCHEMA OWNER 
GO
