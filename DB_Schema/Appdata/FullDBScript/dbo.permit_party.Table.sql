USE [appdata]
GO
/****** Object:  Table [dbo].[permit_party]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_party]
GO
/****** Object:  Table [dbo].[permit_party]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_party]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_party](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[decagent_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_name2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_name3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_name1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_add1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_add2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_add3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_name2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_name3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incragent_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incragent_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incragent_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incragent_name3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incragent_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_name2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_name3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_name1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_name1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_name3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_add1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_add2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[enduser_add3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_name1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_add3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_name1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_add1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_add2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_add3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[claim_party_name1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claim_party_name2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claim_party_name3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claim_party_cr_uei] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claimant_name1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claimant_name2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claimant_name3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claimant_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_str2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exporter_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[decagent_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outcragent_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_str2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_str] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_str2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_sbt_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_sbt_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_pst_code] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manu_cty_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_permit_party] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_party] TO  SCHEMA OWNER 
GO
