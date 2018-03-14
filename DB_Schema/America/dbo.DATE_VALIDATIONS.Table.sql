USE [AMERICA]
GO
/****** Object:  Table [dbo].[DATE_VALIDATIONS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATE_VALIDATIONS](
	[screen_name] [varchar](50) NOT NULL,
	[region_id] [varchar](10) NOT NULL,
	[key_field] [varchar](20) NOT NULL,
	[againts_field] [varchar](20) NULL,
	[FROM_D] [numeric](10, 0) NULL,
	[TO_D] [numeric](10, 0) NULL,
 CONSTRAINT [DATE_VALIDATIONS_PK] PRIMARY KEY NONCLUSTERED 
(
	[screen_name] ASC,
	[region_id] ASC,
	[key_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DATE_VALIDATIONS] TO  SCHEMA OWNER 
GO
