USE [AMERICA]
GO
/****** Object:  Table [dbo].[AIR_MARKING]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIR_MARKING](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](10) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NULL,
	[LINE_WT] [numeric](11, 3) NULL,
	[LINE_M3] [numeric](11, 3) NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NULL,
	[CONT_N] [varchar](20) NULL,
	[SEAL_N] [varchar](20) NULL,
	[ATT_CONT_N] [varchar](20) NULL,
	[ATT_SEAL_N] [varchar](20) NULL,
	[MKGS1] [varchar](40) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[MKGS4] [varchar](40) NULL,
	[MKGS5] [varchar](40) NULL,
	[MKGS6] [varchar](40) NULL,
	[MKGS7] [varchar](40) NULL,
	[MKGS8] [varchar](40) NULL,
	[MKGS9] [varchar](40) NULL,
	[MKGS10] [varchar](40) NULL,
	[MKGS11] [varchar](40) NULL,
	[MKGS12] [varchar](40) NULL,
	[MKGS13] [varchar](40) NULL,
	[MKGS14] [varchar](40) NULL,
	[MKGS15] [varchar](40) NULL,
	[DES1] [varchar](100) NULL,
	[DES2] [varchar](100) NULL,
	[DES3] [varchar](100) NULL,
	[DES4] [varchar](100) NULL,
	[DES5] [varchar](100) NULL,
	[DES6] [varchar](100) NULL,
	[DES7] [varchar](100) NULL,
	[DES8] [varchar](100) NULL,
	[DES9] [varchar](100) NULL,
	[DES10] [varchar](100) NULL,
	[DES11] [varchar](100) NULL,
	[DES12] [varchar](100) NULL,
	[DES13] [varchar](100) NULL,
	[DES14] [varchar](100) NULL,
	[DES15] [varchar](100) NULL,
	[LINE_CHG_IND] [varchar](1) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
 CONSTRAINT [PK_AIR_MARKING] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AIR_MARKING] TO  SCHEMA OWNER 
GO
