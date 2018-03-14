USE [AMERICA]
GO
/****** Object:  Table [dbo].[PUBLIC_HOLIDAYS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUBLIC_HOLIDAYS](
	[officecode] [varchar](50) NOT NULL,
	[holidayyear] [varchar](50) NOT NULL,
	[holidaydate] [datetime] NOT NULL,
	[holidayname] [varchar](100) NOT NULL,
	[holidayremark] [varchar](100) NULL,
	[holidayid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK__PUBLIC_HOLIDAYS__2CF2ADDF] PRIMARY KEY CLUSTERED 
(
	[holidayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PUBLIC_HOLIDAYS] TO  SCHEMA OWNER 
GO
