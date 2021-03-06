USE [AMERICA]
GO
/****** Object:  Table [dbo].[eLC_logs]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eLC_logs](
	[msg_seq_n] [numeric](18, 0) NOT NULL,
	[msg_type] [varchar](10) NULL,
	[lcNo] [varchar](50) NULL,
	[ref_1] [varchar](100) NULL,
	[job_n] [varchar](15) NULL,
	[user_id] [varchar](15) NULL,
	[apply_d] [datetime] NULL,
	[scEnv] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[eLC_logs] TO  SCHEMA OWNER 
GO
