USE [AMERICA]
GO
/****** Object:  Table [dbo].[document_matrix]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[document_matrix](
	[Country_ID] [varchar](50) NULL,
	[BL] [varchar](500) NULL,
	[ShippingMark] [varchar](255) NULL,
	[Invoice] [varchar](255) NULL,
	[COO] [varchar](100) NULL,
	[PL] [varchar](100) NULL,
	[COA] [varchar](100) NULL,
	[Remark] [varchar](500) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[document_matrix] TO  SCHEMA OWNER 
GO
