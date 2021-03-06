USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_errorlog]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_errorlog](
	[job_n] [varchar](12) NOT NULL,
	[error_n] [varchar](256) NULL,
	[error_descs] [text] NULL,
	[status] [varchar](20) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_log_detail] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_errorlog] TO  SCHEMA OWNER 
GO
