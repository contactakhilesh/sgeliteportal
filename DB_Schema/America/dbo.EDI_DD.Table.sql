USE [AMERICA]
GO
/****** Object:  Table [dbo].[EDI_DD]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDI_DD](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[HBL] [varchar](16) NOT NULL,
	[MBL] [varchar](20) NOT NULL,
	[SHPR] [varchar](10) NOT NULL,
	[SHPR_NAME] [varchar](50) NOT NULL,
	[SHPR_ADD1] [varchar](50) NOT NULL,
	[SHPR_ADD2] [varchar](50) NOT NULL,
	[SHPR_ADD3] [varchar](50) NOT NULL,
	[CNEE] [varchar](10) NOT NULL,
	[CNEE_NAME] [varchar](50) NOT NULL,
	[CNEE_ADD1] [varchar](50) NOT NULL,
	[CNEE_ADD2] [varchar](50) NOT NULL,
	[CNEE_ADD3] [varchar](50) NOT NULL,
	[NTFY] [varchar](10) NOT NULL,
	[NTFY_NAME] [varchar](50) NOT NULL,
	[NTFY_ADD1] [varchar](50) NOT NULL,
	[NTFY_ADD2] [varchar](50) NOT NULL,
	[NTFY_ADD3] [varchar](50) NOT NULL,
	[AGNT] [varchar](6) NOT NULL,
	[POL_NAME] [varchar](32) NOT NULL,
	[POL] [varchar](3) NOT NULL,
	[POD_NAME] [varchar](32) NOT NULL,
	[POD] [varchar](3) NOT NULL,
	[PLD_NAME] [varchar](32) NOT NULL,
	[PLD] [varchar](3) NOT NULL,
	[FD_NAME] [varchar](32) NOT NULL,
	[FD] [varchar](3) NOT NULL,
	[CY20] [numeric](2, 0) NOT NULL,
	[CY40] [numeric](2, 0) NOT NULL,
	[CYHQ] [numeric](2, 0) NOT NULL,
	[CY] [numeric](2, 0) NOT NULL,
	[CY_SIZE] [varchar](2) NOT NULL,
	[CY_TYPE] [varchar](2) NOT NULL,
	[CY_UNIT] [varchar](13) NOT NULL,
	[G1] [numeric](10, 1) NOT NULL,
	[M1] [numeric](10, 3) NOT NULL,
	[CFS_UNIT] [varchar](13) NOT NULL,
	[G2] [numeric](10, 1) NOT NULL,
	[M2] [numeric](10, 3) NOT NULL,
	[INWORDS] [varchar](78) NOT NULL,
	[SVC_TYPE] [varchar](1) NOT NULL,
	[SVC_NAME] [varchar](14) NOT NULL,
	[BLCOPY] [numeric](1, 0) NOT NULL,
	[F1] [varchar](16) NOT NULL,
	[F2] [varchar](16) NOT NULL,
	[F3] [varchar](16) NOT NULL,
	[F4] [varchar](16) NOT NULL,
	[F5] [varchar](16) NOT NULL,
	[F6] [varchar](16) NOT NULL,
	[F7] [varchar](16) NOT NULL,
	[F8] [varchar](16) NOT NULL,
	[R1] [numeric](8, 2) NOT NULL,
	[R2] [numeric](8, 2) NOT NULL,
	[R3] [numeric](8, 2) NOT NULL,
	[R4] [numeric](8, 2) NOT NULL,
	[R5] [numeric](8, 2) NOT NULL,
	[R6] [numeric](8, 2) NOT NULL,
	[R7] [numeric](8, 2) NOT NULL,
	[R8] [numeric](8, 2) NOT NULL,
	[OF_PPCC] [varchar](1) NOT NULL,
	[COLOADER] [varchar](40) NOT NULL,
	[IMPORT_N] [numeric](10, 0) NULL,
 CONSTRAINT [PK_EDIDD] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EDI_DD] TO  SCHEMA OWNER 
GO
