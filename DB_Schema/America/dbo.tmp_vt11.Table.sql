USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_vt11]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_vt11](
	[ServcAgent] [varchar](30) NULL,
	[PlanLoadEnd] [varchar](30) NULL,
	[ActLoadEnd] [varchar](30) NULL,
	[PlanShipEnd] [varchar](30) NULL,
	[ActShipEnd] [varchar](30) NULL,
	[CreatedBy] [varchar](30) NULL,
	[CreatenOn] [varchar](30) NULL,
	[FdNo] [varchar](30) NULL,
	[ExternalId1] [varchar](150) NULL,
	[ExternalId2] [varchar](150) NULL,
	[ShipperRefNo] [varchar](50) NULL,
	[Userid] [varchar](10) NULL,
	[Rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_tmp_vt11] PRIMARY KEY CLUSTERED 
(
	[Rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_vt11] TO  SCHEMA OWNER 
GO
