USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_casc_dt](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[seq_no] [numeric](4, 0) NOT NULL,
	[prod_code] [varchar](35) NOT NULL,
	[line_n] [numeric](4, 0) NOT NULL,
	[casc_code1] [varchar](35) NULL,
	[casc_code2] [varchar](35) NULL,
	[casc_code3] [varchar](35) NULL,
	[enduse_desc1] [varchar](256) NULL,
	[enduse_desc2] [varchar](35) NULL,
	[enduse_desc3] [varchar](35) NULL,
	[prod_uom] [varchar](3) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[item_n] [numeric](4, 0) NOT NULL,
 CONSTRAINT [PK_permit_casc_dt] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[seq_no] ASC,
	[prod_code] ASC,
	[line_n] ASC,
	[item_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
