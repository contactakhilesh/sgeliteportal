USE [AMERICA]
GO
/****** Object:  Table [dbo].[Vessel_fanar_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vessel_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[Vessel_name] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Vessel_f__4B5BD7F8070F5E1E] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Vessel_fanar_mast] TO  SCHEMA OWNER 
GO
