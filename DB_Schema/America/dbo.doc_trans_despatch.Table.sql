USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_trans_despatch]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_trans_despatch](
	[doc_head_no] [varchar](100) NOT NULL,
	[remarks] [varchar](500) NULL,
	[trans_head_no] [varchar](50) NULL,
	[despatch] [varchar](4) NULL,
	[line_no] [int] NULL,
	[remarks2] [varchar](100) NULL,
	[shipper_name] [varchar](100) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[BL_NUMBER] [varchar](20) NULL,
	[ORD_NUMBER] [varchar](100) NULL,
	[special_instruction] [varchar](50) NULL,
 CONSTRAINT [PK_doc_trans_despatch] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_trans_despatch] TO  SCHEMA OWNER 
GO
