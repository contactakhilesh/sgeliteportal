USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tempxls](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) NOT NULL,
	[tmpshipment] [nvarchar](20) NULL,
	[tmpdummy] [nvarchar](10) NULL,
	[tmpshty] [int] NULL,
	[tmptppt] [nvarchar](50) NULL,
	[tmpc] [int] NULL,
	[tmps1] [int] NULL,
	[tmpst] [int] NULL,
	[tmpdummy1] [nvarchar](10) NULL,
	[tmppl] [nvarchar](10) NULL,
	[tmpsl] [nvarchar](10) NULL,
	[tmpl] [int] NULL,
	[tmpsc] [int] NULL,
	[tmproute] [nvarchar](10) NULL,
	[tmpdummy2] [nvarchar](10) NULL,
	[tmpcontainerid] [nvarchar](20) NULL,
	[tmpexternalid1] [nvarchar](20) NULL,
	[tmpexternalid2] [nvarchar](20) NULL,
	[tmpdescription] [nvarchar](255) NULL,
	[tmps2] [int] NULL,
	[tmpservagent] [nvarchar](10) NULL,
	[tmpactloadend] [nvarchar](20) NULL,
	[tmpcust_ord_no] [varchar](40) NULL,
	[tmppay_term] [char](1) NULL,
 CONSTRAINT [PK_tempxls] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
