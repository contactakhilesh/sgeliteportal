USE [AMERICA]
GO
/****** Object:  Table [dbo].[EDI_RECEIVED]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDI_RECEIVED](
	[msg_type] [varchar](20) NOT NULL,
	[shipper_ref] [varchar](50) NOT NULL,
	[recv_date] [datetime] NULL,
	[status] [varchar](10) NULL,
	[xml_filename] [varchar](255) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[processed_date] [datetime] NULL,
	[idoc_no] [varchar](50) NULL,
	[remarks] [varchar](2000) NULL,
 CONSTRAINT [PK_EDI_RECEIVED] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EDI_RECEIVED] TO  SCHEMA OWNER 
GO
