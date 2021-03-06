USE [AMERICA]
GO
/****** Object:  Table [dbo].[temppl]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temppl](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpa] [nvarchar](50) NULL,
	[tmpb] [nvarchar](20) NULL,
	[tmpc] [nvarchar](50) NULL,
	[tmpd] [nvarchar](20) NULL,
	[tmpe] [nvarchar](20) NULL,
	[tmpf] [nvarchar](20) NULL,
	[tmpg] [nvarchar](2000) NULL,
	[tmph] [nvarchar](1000) NULL,
	[tmpi] [nvarchar](2000) NULL,
	[tmpj] [nvarchar](20) NULL,
	[tmpk] [nvarchar](2000) NULL,
	[tmpl] [nvarchar](2000) NULL,
	[tmpm] [nvarchar](20) NULL,
	[tmpn] [nvarchar](255) NULL,
	[tmpo] [nvarchar](2000) NULL,
	[tmpp] [nvarchar](2000) NULL,
	[tmpq] [nvarchar](20) NULL,
	[tmpr] [nvarchar](255) NULL,
	[tmps] [nvarchar](1000) NULL,
	[tmpt] [nvarchar](50) NULL,
	[tmpu] [nvarchar](255) NULL,
	[tmpv] [nvarchar](20) NULL,
	[tmpw] [nvarchar](20) NULL,
	[tmpx] [nvarchar](2000) NULL,
	[tmpy] [nvarchar](255) NULL,
	[tmpz] [nvarchar](2000) NULL,
	[tmpaa] [nvarchar](255) NULL,
	[tmpab] [nvarchar](2000) NULL,
	[tmpac] [nvarchar](255) NULL,
	[tmpad] [nvarchar](20) NULL,
	[tmpae] [nvarchar](20) NULL,
	[tmpaf] [nvarchar](20) NULL,
	[tmpag] [nvarchar](2000) NULL,
	[tmpah] [nvarchar](20) NULL,
	[tmpai] [nvarchar](2000) NULL,
	[tmpaj] [nvarchar](255) NULL,
	[tmpak] [nvarchar](2000) NULL,
	[tmpal] [nvarchar](2000) NULL,
	[tmpam] [nvarchar](20) NULL,
	[tmpan] [nvarchar](255) NULL,
 CONSTRAINT [PK_temppl] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temppl] TO  SCHEMA OWNER 
GO
