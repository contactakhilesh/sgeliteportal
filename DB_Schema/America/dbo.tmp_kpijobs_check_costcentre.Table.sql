USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_kpijobs_check_costcentre]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_kpijobs_check_costcentre](
	[invoice_n] [numeric](10, 0) NOT NULL,
	[lineamt_wo_gst] [numeric](11, 2) NOT NULL,
	[cost_center] [varchar](10) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_tmp_kpijobs_check_costcentre] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs_check_costcentre] TO  SCHEMA OWNER 
GO
