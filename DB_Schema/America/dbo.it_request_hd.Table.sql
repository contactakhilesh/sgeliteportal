USE [AMERICA]
GO
/****** Object:  Table [dbo].[it_request_hd]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_request_hd](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[request_no] [numeric](5, 0) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[status] [varchar](10) NOT NULL,
	[application] [varchar](20) NOT NULL,
	[priority] [int] NOT NULL,
	[requested_by] [varchar](20) NOT NULL,
	[requested_dt] [datetime] NOT NULL,
	[approved_by] [varchar](20) NULL,
	[approved_dt] [datetime] NULL,
	[assigned_to] [varchar](20) NULL,
	[assigned_dt] [datetime] NULL,
	[start_dt] [datetime] NULL,
	[completion_dt] [datetime] NULL,
	[description] [text] NOT NULL,
	[remarks] [text] NULL,
	[dept_code] [varchar](10) NOT NULL,
	[environment] [varchar](20) NOT NULL,
	[closed_by] [varchar](20) NULL,
	[closed_dt] [datetime] NULL,
	[actual_completion_dt] [datetime] NULL,
	[approver_remarks] [varchar](max) NULL,
	[requestor_remarks] [varchar](max) NULL,
	[IsApproved] [char](1) NOT NULL,
	[mandays] [decimal](10, 2) NULL,
	[user_extended] [varchar](1) NULL,
	[extended_dt] [datetime] NULL,
	[released_live_dt] [datetime] NULL,
 CONSTRAINT [pk_it_request_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[it_request_hd] TO  SCHEMA OWNER 
GO
