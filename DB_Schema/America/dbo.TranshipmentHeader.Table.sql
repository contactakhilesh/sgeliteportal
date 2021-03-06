USE [AMERICA]
GO
/****** Object:  Table [dbo].[TranshipmentHeader]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranshipmentHeader](
	[TranshipmentId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[officeintref] [varchar](10) NOT NULL,
	[OrderType] [varchar](1) NOT NULL,
	[recordFlag] [varchar](1) NOT NULL,
	[TranshipmentPort] [varchar](10) NULL,
	[Vessel] [varchar](20) NULL,
	[Voyage] [varchar](20) NULL,
	[OriginalETADate] [datetime] NULL,
	[OriginalETDDate] [datetime] NULL,
	[RevisedETADate] [datetime] NULL,
	[RevisedETDDate] [datetime] NULL,
	[Reason] [varchar](200) NULL,
	[TranshipmentATD] [datetime] NULL,
	[ChangesInETAatDischarge] [varchar](100) NULL,
	[RevisedProjectedETA] [datetime] NULL,
	[recordStatus] [varchar](1) NOT NULL,
	[createdby] [varchar](10) NOT NULL,
	[updatedby] [varchar](10) NOT NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[ref_n] [numeric](9, 0) NULL,
	[transhipmentcountry] [varchar](2) NULL,
	[TranshipmentATA] [datetime] NULL,
 CONSTRAINT [PK__TranshipmentHead__63EEA865] PRIMARY KEY CLUSTERED 
(
	[TranshipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TranshipmentHeader] TO  SCHEMA OWNER 
GO
