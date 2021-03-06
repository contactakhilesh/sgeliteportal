USE [AMERICA]
GO
/****** Object:  Table [dbo].[crimson_logic_uen]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crimson_logic_uen](
	[cr_no] [varchar](30) NOT NULL,
	[entity_name] [varchar](100) NULL,
	[uen] [varchar](30) NULL,
	[uen_status] [varchar](1) NULL,
	[isssue_ageny] [varchar](10) NULL,
	[entity_type] [varchar](10) NULL,
	[address] [varchar](100) NULL,
	[remarks] [varchar](100) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [crimson_logic_uen_pk] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[crimson_logic_uen] TO  SCHEMA OWNER 
GO
