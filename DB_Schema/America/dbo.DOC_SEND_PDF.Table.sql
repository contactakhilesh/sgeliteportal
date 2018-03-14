USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_SEND_PDF]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_SEND_PDF](
	[doc_head_no] [varchar](30) NULL,
	[doc_id] [varchar](30) NULL,
	[last_modify] [datetime] NULL,
	[chk_ind] [varchar](2) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_SEND_PDF] TO  SCHEMA OWNER 
GO
