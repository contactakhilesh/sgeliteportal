USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cost_statement_dt](
	[row_id] [numeric](18, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cost_statement_dt] [datetime] NOT NULL,
	[validity_period] [int] NOT NULL,
	[expiry_dt] [datetime] NOT NULL,
	[hs_code] [varchar](10) NOT NULL,
	[match_product_by] [varchar](20) NOT NULL,
	[criterio] [numeric](5, 2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
	[pref_code] [varchar](5) NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[certdesc_hscode] [varchar](10) NULL,
 CONSTRAINT [PK_permit_cost_statement_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [permit_cost_statement_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_cost_statement_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [permit_cost_statement_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [permit_cost_statement_dt] CHECK CONSTRAINT [FK_permit_cost_statement_dt_row_id]
GO
