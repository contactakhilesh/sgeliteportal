USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_MAST](
	[vendor_id] [varchar](10) NOT NULL,
	[driver_id] [decimal](18, 0) NOT NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL,
	[active_ind] [varchar](2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[JOINING_DATE] [datetime] NULL,
	[TRAINED_BY] [varchar](100) NULL,
	[TRAINING_START_DATE] [datetime] NULL,
	[TRAINING_END_DATE] [datetime] NULL,
	[REMARK] [varchar](200) NULL,
 CONSTRAINT [PK_DRIVER_MAST] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
