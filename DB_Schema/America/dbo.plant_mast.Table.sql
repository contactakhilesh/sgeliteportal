USE [AMERICA]
GO
/****** Object:  Table [dbo].[plant_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plant_mast](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[plant_name] [varchar](255) NOT NULL,
	[contact_person1] [varchar](150) NULL,
	[contact_person2] [varchar](150) NULL,
	[telephone1] [varchar](20) NULL,
	[telephone2] [varchar](20) NULL,
	[fax1] [varchar](20) NULL,
	[fax2] [varchar](20) NULL,
	[email1] [varchar](150) NULL,
	[email2] [varchar](150) NULL,
	[address] [varchar](255) NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) NULL,
 CONSTRAINT [PK_plant_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[plant_mast] TO  SCHEMA OWNER 
GO
