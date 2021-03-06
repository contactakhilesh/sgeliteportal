USE [AMERICA]
GO
/****** Object:  Table [dbo].[VENDOR_RATES]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDOR_RATES](
	[VENDOR_ID] [varchar](10) NOT NULL,
	[POL_ID] [varchar](10) NOT NULL,
	[POD_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CURR__ID] [varchar](10) NULL,
	[CHG_UNIT_A] [numeric](11, 2) NOT NULL,
	[REMARKS1] [varchar](40) NULL,
	[REMARKS2] [varchar](40) NULL,
	[REMARKS3] [varchar](40) NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[EXP_DATE] [datetime] NOT NULL,
	[ACTUAL_IND] [varchar](10) NULL,
	[CURR_ID] [varchar](10) NULL,
	[SCHEME_ID] [varchar](10) NULL,
	[NEW_USER_ID] [varchar](10) NULL,
	[START_D] [datetime] NOT NULL,
	[SEQ_N] [numeric](11, 0) NULL,
	[NO_OF_SHIPMENT] [numeric](18, 0) NULL,
	[TRANSIT_TIME] [numeric](18, 0) NULL,
	[TRANSIT_FREQ] [char](20) NULL,
	[PODel_ID] [varchar](10) NULL,
	[original_vendor_id] [varchar](10) NULL,
 CONSTRAINT [PK_VRATES] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC,
	[POL_ID] ASC,
	[POD_ID] ASC,
	[CHGCODE_ID] ASC,
	[EXP_DATE] ASC,
	[START_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[VENDOR_RATES] TO  SCHEMA OWNER 
GO
