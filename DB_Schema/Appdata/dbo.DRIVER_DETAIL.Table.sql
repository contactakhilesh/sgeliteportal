USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_DETAIL](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[driver_seq] [decimal](18, 0) NOT NULL,
	[driver_id] [decimal](18, 0) NULL,
	[driver_name] [nvarchar](150) NOT NULL,
	[driver_ic_no] [varchar](50) NULL,
	[driver_tel_no] [varchar](50) NULL,
 CONSTRAINT [PK_DRIVER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[driver_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
