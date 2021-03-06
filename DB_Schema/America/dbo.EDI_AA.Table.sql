USE [AMERICA]
GO
/****** Object:  Table [dbo].[EDI_AA]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDI_AA](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REF_ID] [varchar](1) NOT NULL,
	[VSL_NAME] [varchar](25) NOT NULL,
	[VOY] [varchar](12) NOT NULL,
	[LINE_N] [varchar](40) NOT NULL,
	[SERVICE] [varchar](2) NULL,
	[AGNT] [varchar](6) NOT NULL,
	[POL_NAME] [varchar](25) NOT NULL,
	[POD] [varchar](3) NOT NULL,
	[OB_D] [varchar](8) NOT NULL,
	[ETD_D] [varchar](8) NOT NULL,
	[ETA_D] [varchar](8) NOT NULL,
	[EDI_D] [datetime] NOT NULL,
	[CSERVICE] [varchar](2) NULL,
	[TRANSFER_IND] [varchar](1) NULL,
	[CR_ID] [varchar](10) NULL,
	[POL_ID] [varchar](10) NULL,
	[POD_ID] [varchar](10) NULL,
 CONSTRAINT [PK_EDIAA] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EDI_AA] TO  SCHEMA OWNER 
GO
