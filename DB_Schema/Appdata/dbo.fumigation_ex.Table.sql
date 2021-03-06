USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fumigation_ex](
	[export_n] [numeric](10, 0) NOT NULL,
	[group_no] [varchar](30) NULL,
	[location_id] [numeric](10, 0) NULL,
	[location_addr1] [varchar](150) NULL,
	[location_addr2] [varchar](150) NULL,
	[contact_person] [varchar](150) NULL,
	[contact_no] [varchar](50) NULL,
	[cc] [varchar](100) NULL,
	[pallet_cnt] [numeric](10, 2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_fumigation_ex] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [fumigation_ex]  WITH CHECK ADD  CONSTRAINT [FK_fumigation_ex_export_n] FOREIGN KEY([export_n])
REFERENCES [EXPORT] ([EXPORT_N])
ON DELETE CASCADE
GO
ALTER TABLE [fumigation_ex] CHECK CONSTRAINT [FK_fumigation_ex_export_n]
GO
