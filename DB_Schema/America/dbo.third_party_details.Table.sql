USE [AMERICA]
GO
/****** Object:  Table [dbo].[third_party_details]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[third_party_details](
	[party_type] [varchar](20) NULL,
	[party_name] [varchar](255) NOT NULL,
	[email_to] [varchar](255) NULL,
	[email_cc] [varchar](255) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[addr1] [varchar](100) NULL,
	[addr2] [varchar](100) NULL,
	[addr3] [varchar](100) NULL,
	[addr4] [varchar](100) NULL,
	[attn] [char](100) NULL,
	[telno] [varchar](50) NULL,
 CONSTRAINT [PK_third_party_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[third_party_details] TO  SCHEMA OWNER 
GO
