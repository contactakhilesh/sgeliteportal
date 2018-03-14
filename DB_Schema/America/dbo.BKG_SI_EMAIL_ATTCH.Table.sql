USE [AMERICA]
GO
/****** Object:  Table [dbo].[BKG_SI_EMAIL_ATTCH]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BKG_SI_EMAIL_ATTCH](
	[rowid] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[field_label] [varchar](255) NULL,
	[bc_req] [varchar](1) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[BKG_SI_EMAIL_ATTCH] TO  SCHEMA OWNER 
GO
