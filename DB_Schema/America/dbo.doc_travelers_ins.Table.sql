USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_travelers_ins]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_travelers_ins](
	[doc_head_no] [varchar](30) NOT NULL,
	[policy_n] [varchar](20) NULL,
	[policy_date] [datetime] NULL,
	[shipper_ref_n] [varchar](40) NULL,
	[currency_id] [varchar](5) NULL,
	[port_del_name] [varchar](40) NULL,
	[port_of_load] [varchar](40) NULL,
	[port_of_discharge] [varchar](40) NULL,
	[pier_or_airport] [varchar](40) NULL,
	[sum_insured] [numeric](11, 3) NULL,
	[sum_insured_word] [varchar](500) NULL,
	[vessel_voyage] [varchar](60) NULL,
	[user_id] [varchar](50) NULL,
	[country_origin] [varchar](50) NULL,
	[export_ins] [varchar](70) NULL,
	[fwd_agent_ref] [varchar](100) NULL,
	[transshippent] [varchar](50) NULL,
 CONSTRAINT [PK_doc_travelers_ins] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_travelers_ins] TO  SCHEMA OWNER 
GO
