USE [appdata]
GO
/****** Object:  Table [dbo].[permit_counter]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_counter]
GO
/****** Object:  Table [dbo].[permit_counter]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_counter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_counter](
	[counter_id] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[counter_val] [numeric](4, 0) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_counter] PRIMARY KEY CLUSTERED 
(
	[counter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_counter] TO  SCHEMA OWNER 
GO
