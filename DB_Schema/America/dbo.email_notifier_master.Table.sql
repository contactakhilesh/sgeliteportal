USE [AMERICA]
GO
/****** Object:  Table [dbo].[email_notifier_master]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_notifier_master](
	[TYPE] [varchar](8) NOT NULL,
	[VALUE] [varchar](50) NOT NULL,
 CONSTRAINT [PK__email_no__80334AA03FBDCB95] PRIMARY KEY CLUSTERED 
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[email_notifier_master] TO  SCHEMA OWNER 
GO
