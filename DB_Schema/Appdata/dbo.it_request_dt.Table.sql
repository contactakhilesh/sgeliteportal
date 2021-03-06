USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [it_request_dt](
	[row_id] [numeric](10, 0) NOT NULL,
	[line_no] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[filename] [varchar](255) NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [pk_it_request_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [it_request_dt]  WITH CHECK ADD  CONSTRAINT [FK_it_request_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [it_request_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [it_request_dt] CHECK CONSTRAINT [FK_it_request_dt_row_id]
GO
