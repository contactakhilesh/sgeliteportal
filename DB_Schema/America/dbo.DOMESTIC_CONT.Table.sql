USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOMESTIC_CONT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOMESTIC_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) NOT NULL,
	[seal_n] [varchar](20) NOT NULL,
	[cont_type_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) NULL,
	[lot_n] [varchar](20) NULL,
 CONSTRAINT [PK_DOMESTIC_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_CONT] TO  SCHEMA OWNER 
GO
