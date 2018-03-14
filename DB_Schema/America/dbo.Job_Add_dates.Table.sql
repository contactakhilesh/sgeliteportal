USE [AMERICA]
GO
/****** Object:  Table [dbo].[Job_Add_dates]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Add_dates](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Date_Label] [nvarchar](50) NULL,
	[date_value] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Job_Add_dates] TO  SCHEMA OWNER 
GO
