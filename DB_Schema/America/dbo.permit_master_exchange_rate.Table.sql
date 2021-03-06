USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_exchange_rate]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_exchange_rate](
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[curr_code] [varchar](3) NOT NULL,
	[curr_desc] [varchar](50) NULL,
	[ex_rate] [decimal](18, 6) NULL,
	[rate_unit] [decimal](18, 0) NULL,
	[country_id] [char](2) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_master_exchange_rate] PRIMARY KEY CLUSTERED 
(
	[start_date] ASC,
	[end_date] ASC,
	[curr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_exchange_rate] TO  SCHEMA OWNER 
GO
