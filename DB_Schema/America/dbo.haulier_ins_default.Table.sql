USE [AMERICA]
GO
/****** Object:  Table [dbo].[haulier_ins_default]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[haulier_ins_default](
	[cust_id] [varchar](10) NOT NULL,
	[column_id] [varchar](20) NOT NULL,
	[default_val] [varchar](200) NOT NULL,
	[remarks] [varchar](255) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_haulier_ins_default] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[column_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[haulier_ins_default] TO  SCHEMA OWNER 
GO
