USE [AMERICA]
GO
/****** Object:  Table [dbo].[entity_info]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entity_info](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[entity_db] [varchar](20) NOT NULL,
	[entity_name] [varchar](50) NOT NULL,
	[ismain] [char](1) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[chk_payable_linked_to_invoice] [char](1) NOT NULL,
 CONSTRAINT [PK_entity_info] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[entity_info] TO  SCHEMA OWNER 
GO
