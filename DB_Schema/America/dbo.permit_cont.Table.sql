USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_cont]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_cont](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](5, 0) NOT NULL,
	[ctn_no] [varchar](13) NULL,
	[ctn_type_size] [varchar](5) NULL,
	[ctn_wt_value] [decimal](3, 0) NULL,
	[ctn_seal_no] [varchar](35) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TransRefNo] [varchar](30) NULL,
 CONSTRAINT [PK_permit_cont] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_cont] TO  SCHEMA OWNER 
GO
