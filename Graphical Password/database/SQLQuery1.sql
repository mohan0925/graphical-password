USE [graphicalpasswords]
GO
/****** Object:  Table [dbo].[registrations]    Script Date: 03/17/2017 14:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registrations](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](100) NULL,
	[lastname] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[phoneno] [varchar](30) NULL,
	[username] [varchar](100) NULL,
	[images] [int] NULL,
	[imagenames] [varchar](600) NULL,
	[imagepoint] [varchar](50) NULL,
	[regdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 03/17/2017 14:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
