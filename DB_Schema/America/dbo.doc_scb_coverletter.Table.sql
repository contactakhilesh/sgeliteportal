USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_scb_coverletter]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_scb_coverletter](
	[doc_head_no] [varchar](100) NOT NULL,
	[tenor] [varchar](100) NULL,
	[trans_head_no] [varchar](50) NULL,
	[issuing_bank] [varchar](500) NULL,
	[tot_amount] [decimal](18, 2) NULL,
	[inv_amount] [decimal](18, 2) NULL,
	[inv_amount_sub] [decimal](18, 2) NULL,
	[split_job] [varchar](2) NULL,
	[split_job_no] [varchar](2) NULL,
	[inv_no] [varchar](100) NULL,
	[split_inv] [varchar](2) NULL,
	[beneficiary] [varchar](150) NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_doc_scb_coverletter] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_scb_coverletter] TO  SCHEMA OWNER 
GO
