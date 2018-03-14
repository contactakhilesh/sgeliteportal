USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PUBLIC_HOLIDAYS](
	[officecode] [varchar](50) NOT NULL,
	[holidayyear] [varchar](50) NOT NULL,
	[holidaydate] [datetime] NOT NULL,
	[holidayname] [varchar](100) NOT NULL,
	[holidayremark] [varchar](100) NULL,
	[holidayid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[holidayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
