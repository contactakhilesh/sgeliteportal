USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_kpijobs]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_kpijobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[invoice_no] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tmp_kpijobs] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[invoice_n] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs] TO  SCHEMA OWNER 
GO
