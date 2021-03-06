USE [AMERICA]
GO
/****** Object:  Table [dbo].[unused_invoiceno]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unused_invoiceno](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[invoice_no] [numeric](10, 0) NOT NULL,
	[isused] [char](1) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[create_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_unused_invoiceno] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[unused_invoiceno] TO  SCHEMA OWNER 
GO
