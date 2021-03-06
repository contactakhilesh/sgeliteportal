USE [AMERICA]
GO
/****** Object:  Table [dbo].[it_request_developer]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_request_developer](
	[row_id] [numeric](10, 0) NOT NULL,
	[line_no] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[staff_id] [numeric](10, 0) NULL,
	[apps] [varchar](20) NOT NULL,
	[status] [varchar](20) NOT NULL,
	[start_dt] [datetime] NULL,
	[completion_dt] [datetime] NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[actual_completion_dt] [datetime] NULL,
	[user_id] [varchar](10) NULL,
 CONSTRAINT [pk_it_request_developer] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[it_request_developer] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[it_request_developer]  WITH CHECK ADD  CONSTRAINT [FK_it_request_developer_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[it_request_hd] ([row_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[it_request_developer] CHECK CONSTRAINT [FK_it_request_developer_row_id]
GO
