USE [appdata]
GO
/****** Object:  Table [dbo].[doc_travelers_ins]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_travelers_ins]
GO
/****** Object:  Table [dbo].[doc_travelers_ins]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_travelers_ins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_travelers_ins](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[policy_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policy_date] [datetime] NULL,
	[shipper_ref_n] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_load] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_discharge] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pier_or_airport] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sum_insured] [numeric](11, 3) NULL,
	[sum_insured_word] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_voyage] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_origin] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_ins] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fwd_agent_ref] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transshippent] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_travelers_ins] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_travelers_ins] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[doc_travelers_ins] TO [public] AS [dbo]
GO
