USE [AMERICA]
GO
/****** Object:  Table [dbo].[linked_it_request]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[linked_it_request](
	[row_id] [numeric](10, 0) NOT NULL,
	[linked_rowid] [numeric](10, 0) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [pk_linked_it_request] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[linked_rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[linked_it_request] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[linked_it_request]  WITH CHECK ADD  CONSTRAINT [FK_linked_it_request_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[it_request_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[linked_it_request] CHECK CONSTRAINT [FK_linked_it_request_row_id]
GO
