USE [ApiContainer]
GO
/****** Object:  Table [dbo].[ApiContainerRouteMapping]    Script Date: 17/7/25 17:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApiContainerRouteMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Verb] [varchar](10) NULL,
	[Path] [nvarchar](100) NULL,
	[ServiceAssembly] [varchar](200) NULL,
	[ServiceName] [varchar](200) NULL,
	[MethodName] [varchar](100) NULL,
	[SiteId] [int] NULL,
	[IsAsyncInvoke] [bit] NULL,
 CONSTRAINT [PK_ApiContainerRouteMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApiContainerRouteMappingHistory]    Script Date: 17/7/25 17:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApiContainerRouteMappingHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Verb] [varchar](10) NULL,
	[Path] [nvarchar](100) NULL,
	[ServiceAssembly] [varchar](200) NULL,
	[ServiceName] [varchar](200) NULL,
	[MethodName] [varchar](100) NULL,
	[SiteId] [int] NULL,
	[IsAsyncInvoke] [bit] NULL,
	[UploadRecordId] [int] NULL,
 CONSTRAINT [PK_ApiContainerRouteMappingHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApiContainerSiteConfig]    Script Date: 17/7/25 17:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApiContainerSiteConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ApiDomain] [varchar](50) NULL,
	[LibFolder] [varchar](200) NULL,
	[Description] [varchar](200) NULL,
	[Machine] [varchar](200) NULL,
 CONSTRAINT [PK_ApiContainerSiteConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApiContainerUploadRecord]    Script Date: 17/7/25 17:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApiContainerUploadRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddTime] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[SiteId] [int] NULL,
	[BackupFolder] [varchar](100) NULL,
 CONSTRAINT [PK_ApiContainerUploadRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
