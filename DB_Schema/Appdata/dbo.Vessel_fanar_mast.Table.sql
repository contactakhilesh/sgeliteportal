USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vessel_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[Vessel_name] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
