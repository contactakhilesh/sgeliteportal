USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOMESTIC_PROD_CONT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOMESTIC_PROD_CONT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[prod_line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[cont_line_no] [decimal](18, 0) NOT NULL,
	[cont_n] [varchar](20) NOT NULL,
	[seal_n] [varchar](20) NOT NULL,
	[cont_type_id] [varchar](20) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[select_ind] [varchar](1) NOT NULL,
 CONSTRAINT [PK_DOMESTIC_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[prod_line_no] ASC,
	[prod_id] ASC,
	[cont_line_no] ASC,
	[cont_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_PROD_CONT] TO  SCHEMA OWNER 
GO
