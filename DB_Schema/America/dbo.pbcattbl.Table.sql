USE [AMERICA]
GO
/****** Object:  Table [dbo].[pbcattbl]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pbcattbl](
	[pbt_tnam] [char](30) NULL,
	[pbt_tid] [int] NULL,
	[pbt_ownr] [char](30) NULL,
	[pbd_fhgt] [smallint] NULL,
	[pbd_fwgt] [smallint] NULL,
	[pbd_fitl] [char](1) NULL,
	[pbd_funl] [char](1) NULL,
	[pbd_fchr] [smallint] NULL,
	[pbd_fptc] [smallint] NULL,
	[pbd_ffce] [char](32) NULL,
	[pbh_fhgt] [smallint] NULL,
	[pbh_fwgt] [smallint] NULL,
	[pbh_fitl] [char](1) NULL,
	[pbh_funl] [char](1) NULL,
	[pbh_fchr] [smallint] NULL,
	[pbh_fptc] [smallint] NULL,
	[pbh_ffce] [char](32) NULL,
	[pbl_fhgt] [smallint] NULL,
	[pbl_fwgt] [smallint] NULL,
	[pbl_fitl] [char](1) NULL,
	[pbl_funl] [char](1) NULL,
	[pbl_fchr] [smallint] NULL,
	[pbl_fptc] [smallint] NULL,
	[pbl_ffce] [char](32) NULL,
	[pbt_cmnt] [varchar](254) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[pbcattbl] TO  SCHEMA OWNER 
GO
