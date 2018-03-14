USE [AMERICA]
GO
/****** Object:  Table [dbo].[PRESET_DETAILS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRESET_DETAILS](
	[preset_details] [varchar](max) NULL,
	[column_group] [varchar](50) NULL,
	[booking_group] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PRESET_DETAILS] TO  SCHEMA OWNER 
GO
