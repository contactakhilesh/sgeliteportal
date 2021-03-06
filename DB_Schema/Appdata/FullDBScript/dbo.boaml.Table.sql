USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boaml]') AND type in (N'U'))
ALTER TABLE [dbo].[boaml] DROP CONSTRAINT IF EXISTS [DF__boaml__is_delete__5972B0A0]
GO
/****** Object:  Table [dbo].[boaml]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[boaml]
GO
/****** Object:  Table [dbo].[boaml]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boaml]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[boaml](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[doc_head_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[drawer_party_id] [int] NULL,
	[drawee_party_id] [int] NULL,
	[collect_from_party_id] [int] NULL,
	[tenor_type] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[documents_against_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[protest_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[our_bank_charge_for_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[our_bank_waived_if_refused] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[os_bank_charge_for_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[os_bank_waive_if_refused] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit_proceeds_by_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[advise_acceptance_by_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[advise_nonacceptance_by_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[advise_pay_by_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[advise_nonpay_by_cd] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[collection_text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bol_non_nego_copy_count] [int] NULL,
	[tenor_phrase] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenor_days] [int] NULL,
 CONSTRAINT [PK__boaml__587E8C67] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[boaml] TO  SCHEMA OWNER 
GO
