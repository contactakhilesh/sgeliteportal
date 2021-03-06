USE [AMERICA]
GO
/****** Object:  Table [dbo].[EMAIL_FLAG]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_FLAG](
	[export_ref_n] [numeric](9, 0) NULL,
	[email_status] [varchar](20) NULL,
	[transaction_id] [int] NULL,
	[transaction_description] [char](100) NULL,
	[date_created] [datetime] NULL,
	[user_id] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EMAIL_FLAG] TO  SCHEMA OWNER 
GO
