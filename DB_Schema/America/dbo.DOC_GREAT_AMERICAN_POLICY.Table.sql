USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_GREAT_AMERICAN_POLICY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_GREAT_AMERICAN_POLICY](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[ship_ref] [varchar](50) NULL,
	[ins_val] [varchar](50) NULL,
	[Ins_val_words] [varchar](500) NULL,
	[place_issued] [varchar](80) NULL,
	[ship_date] [datetime] NULL,
	[insurer] [varchar](120) NULL,
	[vessel_voyage] [varchar](80) NULL,
	[place_of_receipt] [varchar](80) NULL,
	[port_of_loading] [varchar](80) NULL,
	[port_discharge] [varchar](80) NULL,
	[final_dest] [varchar](80) NULL,
	[spl_inst] [varchar](500) NULL,
	[cur_id] [varchar](10) NULL,
 CONSTRAINT [PK_DOC_GREAT_AMERICAN_POLICY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_GREAT_AMERICAN_POLICY] TO  SCHEMA OWNER 
GO
