USE [AMERICA]
GO
/****** Object:  Table [dbo].[SHELL_PAYMENT_TERM]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHELL_PAYMENT_TERM](
	[days_payment] [int] NULL,
	[type_payment] [char](3) NULL,
	[description_payment] [varchar](100) NULL,
	[row_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SHELL_PAYMENT_TERM] TO  SCHEMA OWNER 
GO
