USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_check]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_kpijobs_check]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_check]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs_check]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_kpijobs_check](
	[invoice] [numeric](10, 0) NULL,
	[inv_amt] [numeric](10, 4) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_tmp_kpijobs_check] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs_check] TO  SCHEMA OWNER 
GO
