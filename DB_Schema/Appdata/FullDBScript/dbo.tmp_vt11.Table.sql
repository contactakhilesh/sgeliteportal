USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_vt11]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_vt11]
GO
/****** Object:  Table [dbo].[tmp_vt11]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_vt11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_vt11](
	[ServcAgent] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlanLoadEnd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActLoadEnd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlanShipEnd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActShipEnd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatenOn] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FdNo] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalId1] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalId2] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperRefNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Userid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_tmp_vt11] PRIMARY KEY CLUSTERED 
(
	[Rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_vt11] TO  SCHEMA OWNER 
GO
