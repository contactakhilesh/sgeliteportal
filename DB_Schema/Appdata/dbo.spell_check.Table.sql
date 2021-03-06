USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spell_check](
	[ScreeName] [varchar](255) NOT NULL,
	[ColumnName] [varchar](255) NOT NULL,
	[ActiveFlag] [varchar](1) NOT NULL,
	[createdby] [varchar](10) NOT NULL,
	[createddate] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_spell_check] PRIMARY KEY CLUSTERED 
(
	[ScreeName] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
