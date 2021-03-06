USE [AMERICA]
GO
/****** Object:  Table [dbo].[public_holiday_sg]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[public_holiday_sg](
	[officecode] [char](50) NULL,
	[holidayyear] [char](50) NULL,
	[holidaydate] [datetime] NULL,
	[holidayname] [char](100) NULL,
	[holidayremark] [char](100) NULL,
	[holidayid] [float] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[public_holiday_sg] TO  SCHEMA OWNER 
GO
