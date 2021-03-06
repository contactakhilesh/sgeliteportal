USE [AMERICA]
GO
/****** Object:  Table [dbo].[invoice_hub]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_hub](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hub_name] [varchar](35) NOT NULL,
	[contact_person] [varchar](50) NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
 CONSTRAINT [PK_invoice_hub] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[invoice_hub] TO  SCHEMA OWNER 
GO
