USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [boaml](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_head_no] [varchar](50) NOT NULL,
	[drawer_party_id] [int] NULL,
	[drawee_party_id] [int] NULL,
	[collect_from_party_id] [int] NULL,
	[tenor_type] [varchar](5) NULL,
	[documents_against_cd] [varchar](5) NULL,
	[protest_cd] [varchar](5) NULL,
	[our_bank_charge_for_cd] [varchar](5) NULL,
	[our_bank_waived_if_refused] [varchar](5) NULL,
	[os_bank_charge_for_cd] [varchar](5) NULL,
	[os_bank_waive_if_refused] [varchar](5) NULL,
	[remit_proceeds_by_cd] [varchar](5) NULL,
	[advise_acceptance_by_cd] [varchar](5) NULL,
	[advise_nonacceptance_by_cd] [varchar](5) NULL,
	[advise_pay_by_cd] [varchar](5) NULL,
	[advise_nonpay_by_cd] [varchar](5) NULL,
	[is_deleted] [tinyint] NULL,
	[bol_count] [int] NULL,
	[bol_total_count] [int] NULL,
	[consular_invoice_copy_count] [int] NULL,
	[consular_invoice_orig_count] [int] NULL,
	[policy_orig_count] [int] NULL,
	[policy_copy_count] [int] NULL,
	[airway_bill_orig_count] [int] NULL,
	[airway_bill_copy_count] [int] NULL,
	[drafts_presented_count] [int] NULL,
	[drafts_copy_count] [int] NULL,
	[collection_text] [text] NULL,
	[bol_non_nego_copy_count] [int] NULL,
	[tenor_phrase] [varchar](255) NULL,
	[tenor_days] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
