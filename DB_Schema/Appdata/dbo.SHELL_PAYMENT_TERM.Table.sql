USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SHELL_PAYMENT_TERM](
	[days_payment] [int] NULL,
	[type_payment] [char](3) NULL,
	[description_payment] [varchar](100) NULL,
	[row_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
