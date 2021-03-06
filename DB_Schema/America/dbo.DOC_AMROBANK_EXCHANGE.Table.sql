USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_AMROBANK_EXCHANGE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_AMROBANK_EXCHANGE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[exg_amount] [varchar](80) NULL,
	[exg_date] [datetime] NULL,
	[payment_term] [varchar](200) NULL,
	[to_order] [varchar](200) NULL,
	[amount_words] [varchar](500) NULL,
	[credit_no] [varchar](80) NULL,
	[credit_dt] [datetime] NULL,
	[issued_by] [varchar](80) NULL,
	[issued_to] [varchar](80) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_AMROBANK_EXCHANGE] TO  SCHEMA OWNER 
GO
