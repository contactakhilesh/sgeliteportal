USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOMESTIC_ACTIVITY_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOMESTIC_ACTIVITY_MAST](
	[seq_n] [decimal](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[group_seq] [decimal](18, 0) NOT NULL,
	[group_name] [varchar](200) NOT NULL,
	[act_seq] [decimal](18, 0) NOT NULL,
	[act_name] [varchar](200) NOT NULL,
	[act_type] [varchar](20) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[last_updated_by] [varchar](10) NULL,
	[last_updated_dt] [datetime] NULL,
	[display_seq] [decimal](18, 0) NULL,
	[ETA_FLAG] [varchar](1) NULL,
	[ETD_FLAG] [varchar](1) NULL,
	[start_date_ot] [varchar](1) NULL,
	[end_date_ot] [varchar](1) NULL,
	[etd_atd_flag] [varchar](1) NULL,
	[start_date_hr_rate] [varchar](1) NULL,
	[end_date_hr_rate] [varchar](1) NULL,
	[etd_atd_hr_rate] [varchar](1) NULL,
 CONSTRAINT [PK_DOMESTIC_ACTIVITY_MAST] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_ACTIVITY_MAST] TO  SCHEMA OWNER 
GO
