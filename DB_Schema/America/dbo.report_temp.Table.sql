USE [AMERICA]
GO
/****** Object:  Table [dbo].[report_temp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_temp](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[unique_ref_no] [varchar](50) NULL,
	[certificate_no] [varchar](20) NULL,
	[hs_code] [varchar](15) NULL,
	[user_id] [varchar](15) NULL,
	[user_name] [varchar](30) NULL,
	[position] [varchar](30) NULL,
	[pic] [varchar](30) NULL,
	[status] [varchar](100) NULL,
 CONSTRAINT [PK_report_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[report_temp] TO  SCHEMA OWNER 
GO
