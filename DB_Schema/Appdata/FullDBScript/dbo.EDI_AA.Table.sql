USE [appdata]
GO
/****** Object:  Table [dbo].[EDI_AA]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EDI_AA]
GO
/****** Object:  Table [dbo].[EDI_AA]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDI_AA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDI_AA](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VSL_NAME] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VOY] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SERVICE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AGNT] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POL_NAME] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POD] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OB_D] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETD_D] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETA_D] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EDI_D] [datetime] NOT NULL,
	[CSERVICE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANSFER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EDIAA] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EDI_AA] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EDI_AA] TO [public] AS [dbo]
GO
