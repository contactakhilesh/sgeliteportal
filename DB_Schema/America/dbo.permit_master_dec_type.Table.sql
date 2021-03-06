USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_master_dec_type]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_master_dec_type](
	[dec_code] [varchar](3) NOT NULL,
	[dec_descs] [varchar](100) NULL,
	[dec_type] [varchar](3) NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_dec_type_master] PRIMARY KEY CLUSTERED 
(
	[dec_code] ASC,
	[dec_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_master_dec_type] TO  SCHEMA OWNER 
GO
