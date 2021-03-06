USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tempfb](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpa] [nvarchar](30) NULL,
	[tmpb] [nvarchar](20) NULL,
	[tmpc] [nvarchar](50) NULL,
	[tmpd] [nvarchar](20) NULL,
	[tmpe] [nvarchar](20) NULL,
	[tmpf] [nvarchar](20) NULL,
	[tmpg] [nvarchar](255) NULL,
	[tmph] [nvarchar](20) NULL,
	[tmpi] [nvarchar](20) NULL,
	[tmpj] [nvarchar](20) NULL,
	[tmpk] [nvarchar](20) NULL,
	[tmpl] [nvarchar](20) NULL,
	[tmpm] [nvarchar](20) NULL,
	[tmpn] [nvarchar](50) NULL,
	[tmpo] [nvarchar](20) NULL,
	[tmpp] [nvarchar](20) NULL,
	[tmpq] [nvarchar](20) NULL,
	[tmpr] [nvarchar](50) NULL,
	[tmps] [nvarchar](255) NULL,
	[tmpt] [nvarchar](50) NULL,
	[tmpu] [nvarchar](20) NULL,
	[tmpv] [nvarchar](20) NULL,
	[tmpw] [nvarchar](20) NULL,
	[tmpx] [nvarchar](20) NULL,
 CONSTRAINT [PK_tempfb] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
