USE [AMERICA]
GO
/****** Object:  Table [dbo].[CONTAINER_VGM_Contact]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTAINER_VGM_Contact](
	[contact_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[contact_name] [varchar](150) NOT NULL,
	[contact_email] [varchar](150) NOT NULL,
	[contact_phone] [varchar](20) NULL,
	[cust_id] [varchar](10) NULL,
 CONSTRAINT [PK_Container_VGM_Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[CONTAINER_VGM_Contact] TO  SCHEMA OWNER 
GO
