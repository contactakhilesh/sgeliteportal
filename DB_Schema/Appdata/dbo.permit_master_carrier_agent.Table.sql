USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_master_carrier_agent](
	[carrier_agent] [varchar](200) NOT NULL,
	[fax_no] [varchar](50) NULL,
	[tel_no] [varchar](50) NULL,
	[email_add] [varchar](255) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[carrier_id] [varchar](10) NULL,
 CONSTRAINT [PK_permit_master_carrier_agent] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
