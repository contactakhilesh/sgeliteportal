USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_cpc]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_cpc](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[ct_pc_idx] [numeric](4, 0) NOT NULL,
	[ct_pc_code] [varchar](7) NULL,
	[pcs_code1] [varchar](35) NULL,
	[pcs_code2] [varchar](35) NULL,
	[pcs_code3] [varchar](35) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_permit_cpc] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[ct_pc_idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_cpc] TO  SCHEMA OWNER 
GO
