USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_SCHEDULE](
	[SCH_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CUST_ID] [varchar](10) NOT NULL,
	[SCH_DATE] [datetime] NOT NULL,
	[TRUCK_ID] [numeric](10, 0) NOT NULL,
	[LOAD_QTY] [numeric](10, 3) NULL,
	[LOAD_FACTOR] [numeric](10, 3) NULL,
	[PRESENT_STATUS] [char](1) NULL,
	[ANY_INCIDENT] [char](1) NULL,
	[REMARK] [varchar](100) NULL,
	[DRIVER_ID1] [numeric](10, 3) NULL,
	[DRIVER_ID2] [numeric](10, 3) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](20) NULL,
	[MODIFIED_D] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
