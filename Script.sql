
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[Phone2] [varchar](50) NULL,
	[Fax] [varchar](50) NOT NULL,
	[MapPathLarge] [varchar](max) NOT NULL,
	[MapPathSmall] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ads](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[Link] [varchar](max) NOT NULL,
	[Size] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CommentContent] [varchar](250) NOT NULL,
	[isApproved] [bit] NOT NULL,
	[ApproveUserID] [int] NULL,
	[ApproveDate] [datetime] NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Subject] [varchar](50) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[isRead] [bit] NOT NULL,
	[ReadUserID] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FavLogoTitle]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FavLogoTitle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Fav] [varchar](max) NOT NULL,
	[Logo] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FavLogoTitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_Table]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IPAdress] [varchar](20) NOT NULL,
	[ProcessID] [int] NOT NULL,
	[ProcessType] [int] NOT NULL,
	[ProcessCategoryType] [varchar](50) NOT NULL,
	[ProcessDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Log_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Meta]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MetaContent] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Meta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[ShortContent] [varchar](250) NOT NULL,
	[PostContent] [varchar](max) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[SeoLink] [varchar](100) NOT NULL,
	[Slider] [bit] NOT NULL,
	[Area1] [bit] NOT NULL,
	[Area2] [bit] NOT NULL,
	[Area3] [bit] NOT NULL,
	[Notification] [bit] NOT NULL,
	[LanguageName] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostImage]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PostImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[TagContent] [varchar](30) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PostTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessType]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProcessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[Link] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SocialMedia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](30) NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[AddDate] [datetime] NOT NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Video]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VideoPath] [varchar](max) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[OriginalVideoPath] [varchar](100) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([ID], [Address], [Email], [Phone], [Phone2], [Fax], [MapPathLarge], [MapPathSmall], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Ashley House, 235-239 High Road, London, N22 8HF United Kingdom', N'oak@oak.com2', N'+44 20 3290 62712', N'+44 20 3290 62712', N'+44 20 3290 62712', N'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d619.5943254717762!2d-0.1116122!3d51.597975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761be210b31aff%3A0x75edb0fe221d37ee!2sAshley%20House%20Business%20Centre!5e0!3m2!1sen!2sua!4v1589113679577!5m2!1sen!2sua" width="720" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', N'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d619.5943254717762!2d-0.1116122!3d51.597975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761be210b31aff%3A0x75edb0fe221d37ee!2sAshley%20House%20Business%20Centre!5e0!3m2!1sen!2sua!4v1589113679577!5m2!1sen!2sua" width="300" height="250" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', CAST(N'2020-05-10 15:31:01.383' AS DateTime), 0, NULL, 1, CAST(N'2020-05-10 15:31:01.383' AS DateTime))
INSERT [dbo].[Address] ([ID], [Address], [Email], [Phone], [Phone2], [Fax], [MapPathLarge], [MapPathSmall], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'address1', N'ads@ads.com', N'1234', N'12234', N'1234', N'bigmap', N'smalmap', CAST(N'2020-05-17 15:01:22.263' AS DateTime), 1, CAST(N'2020-05-17 15:01:34.033' AS DateTime), 1, CAST(N'2020-05-17 15:01:34.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Ads] ON 

INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'OAK Academy', N'4366620d-3399-45a8-b20d-4ad0a6993b10Ads1.png', N' https://oakacademy.uk', N'978x965', CAST(N'2020-05-09 16:22:07.500' AS DateTime), 0, NULL, 1, CAST(N'2020-05-09 16:22:07.500' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'OAK Academy 2', N'5aadd201-4664-4759-8ede-68230441daecAds2.png', N' https://oakacademy.uk', N'200x64', CAST(N'2020-05-09 16:23:01.037' AS DateTime), 0, NULL, 1, CAST(N'2020-05-09 16:23:01.037' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Oak Tech 2', N'dfff6bd5-c3e2-41c0-8be6-d9a4351b5846Ads3.png', N' https://oakacademy.uk', N'100x100', CAST(N'2020-05-09 16:23:31.663' AS DateTime), 1, CAST(N'2020-05-18 12:01:35.760' AS DateTime), 1, CAST(N'2020-05-18 12:01:35.760' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'aa', N'ca60a5d0-b2e0-4723-a2f1-b59718ea157bindex.png', N'aa', N'23', CAST(N'2020-05-20 16:05:46.677' AS DateTime), 1, CAST(N'2020-05-20 17:27:53.067' AS DateTime), 1, CAST(N'2020-05-20 17:27:53.067' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Last Ads', N'431f343b-0883-4aa9-a093-24cf9ce88d23New Ads.png', N'https://oakacademy.uk/', N'529x316', CAST(N'2020-06-09 08:50:57.863' AS DateTime), 0, NULL, 1, CAST(N'2020-06-09 08:50:57.863' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ads] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Network Security', CAST(N'2020-05-11 13:23:52.467' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:23:52.467' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Databases', CAST(N'2020-05-11 13:24:10.270' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:24:10.270' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'Web Development', CAST(N'2020-05-11 13:24:23.320' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:24:23.320' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'Programming Languages', CAST(N'2020-05-11 13:24:33.243' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:24:33.243' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Mobile Programming', CAST(N'2020-05-11 13:24:41.997' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:24:41.997' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'Game Programming', CAST(N'2020-05-11 13:24:50.207' AS DateTime), 0, NULL, 1, CAST(N'2020-05-11 13:50:42.877' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'deletecategory', CAST(N'2020-05-21 11:39:22.787' AS DateTime), 1, CAST(N'2020-05-21 11:41:17.753' AS DateTime), 1, CAST(N'2020-05-21 11:41:17.753' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 63, N'Oak', N'oak@oka.com', N'first comment', 0, 1, CAST(N'2020-06-04 09:28:41.080' AS DateTime), CAST(N'2020-06-03 11:08:42.447' AS DateTime), 1, CAST(N'2020-06-09 22:03:15.917' AS DateTime), 1, CAST(N'2020-06-09 22:03:15.917' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 63, N'OAK2', N'ads@ads.com', N'second', 0, NULL, NULL, CAST(N'2020-06-03 11:09:05.460' AS DateTime), 1, CAST(N'2020-06-09 22:03:15.917' AS DateTime), 1, CAST(N'2020-06-09 22:03:15.917' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 57, N'OAK', N'oak@oka.com', N'Unapproved Comment', 0, 1, CAST(N'2020-06-03 12:33:58.320' AS DateTime), CAST(N'2020-06-03 12:32:52.673' AS DateTime), 0, NULL, 1, CAST(N'2020-06-03 12:33:58.320' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 57, N'OAK', N'ads@ads.com', N'comment', 1, 1, CAST(N'2020-06-03 12:36:48.827' AS DateTime), CAST(N'2020-06-03 12:36:24.467' AS DateTime), 0, NULL, 1, CAST(N'2020-06-03 12:36:48.827' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, 57, N'OAK', N'oak@oka.com', N'Comment try for layout', 0, NULL, NULL, CAST(N'2020-06-06 12:16:36.843' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (11, 63, N'OAK', N'oak@oka.com', N'try', 1, NULL, NULL, CAST(N'2020-06-09 21:49:44.357' AS DateTime), 0, CAST(N'2020-06-09 22:03:15.917' AS DateTime), 1, CAST(N'2020-06-09 22:03:15.917' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, 63, N'OAK', N'oak@oka.com', N'new template', 1, 1, CAST(N'2020-06-09 22:10:01.577' AS DateTime), CAST(N'2020-06-09 22:09:28.870' AS DateTime), 0, NULL, 1, CAST(N'2020-06-09 22:10:01.577' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurname], [Email], [CommentContent], [isApproved], [ApproveUserID], [ApproveDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, 63, N'OAK', N'oak@oka.com', N'new template', 0, NULL, NULL, CAST(N'2020-06-09 22:10:16.147' AS DateTime), 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (1, N'Lev Tolstoy', N'oak@oka.com', NULL, N'subject1', N'first message', 0, NULL, 0, NULL, NULL, CAST(N'2020-06-05 09:23:15.883' AS DateTime), CAST(N'2020-06-05 09:23:15.883' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (2, N'John Ward', N'oak@oka.com', NULL, N'subject 2', N'second', 0, NULL, 1, CAST(N'2020-06-06 08:53:55.643' AS DateTime), 1, CAST(N'2020-06-06 08:53:55.643' AS DateTime), CAST(N'2020-06-05 09:23:39.933' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (3, N'Bernard Lewis', N'ads@ads.com', NULL, N'subject3', N'third', 1, 1, 0, NULL, 1, CAST(N'2020-06-06 08:53:44.330' AS DateTime), CAST(N'2020-06-05 09:24:04.040' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (4, N'Franz KAFKA', N'oak@oka.com', NULL, N'message', N'try Message', 0, NULL, 0, NULL, NULL, CAST(N'2020-06-06 09:14:58.857' AS DateTime), CAST(N'2020-06-06 09:14:58.857' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (5, N'Nietzsche', N'oak@oka.com', NULL, N'try', N'last message', 1, 1, 1, CAST(N'2020-06-06 09:16:31.937' AS DateTime), 1, CAST(N'2020-06-06 09:16:31.937' AS DateTime), CAST(N'2020-06-06 09:15:33.087' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (6, N'LayOut', N'oak@oka.com', NULL, N'layout', N'Layout try', 0, NULL, 0, NULL, NULL, CAST(N'2020-06-06 12:16:04.090' AS DateTime), CAST(N'2020-06-06 12:16:04.090' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (7, N'OAK', N'oak@oka.com', NULL, N'try', N'new Template', 0, NULL, 0, NULL, NULL, CAST(N'2020-06-10 08:29:45.307' AS DateTime), CAST(N'2020-06-10 08:29:45.307' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[FavLogoTitle] ON 

INSERT [dbo].[FavLogoTitle] ([ID], [Title], [Fav], [Logo], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'OAK Academy', N'1aaea28e-2c5a-433e-b030-1279e1db8a1bAds1.png', N'6401d4db-8d88-4f03-9158-32dd10cddca5Ads1.png', CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, NULL, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FavLogoTitle] OFF
SET IDENTITY_INSERT [dbo].[Log_Table] ON 

INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (2, 1, N'::1', 1, 14, N'Meta', CAST(N'2020-05-06 15:10:32.717' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (3, 1, N'::1', 2, 14, N'Meta', CAST(N'2020-05-06 15:39:08.830' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (4, 1, N'::1', 2, 15, N'Meta', CAST(N'2020-05-06 17:51:01.693' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (5, 1, N'::1', 1, 17, N'Social Media', CAST(N'2020-05-07 13:43:03.910' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (6, 1, N'::1', 2, 17, N'Social Media', CAST(N'2020-05-07 13:43:30.707' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (7, 1, N'::1', 3, 17, N'Social Media', CAST(N'2020-05-07 13:44:10.617' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (8, 1, N'::1', 4, 17, N'Social Media', CAST(N'2020-05-07 13:44:36.280' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (9, 1, N'::1', 5, 17, N'Social Media', CAST(N'2020-05-07 13:52:47.343' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (10, 1, N'::1', 6, 17, N'Social Media', CAST(N'2020-05-07 13:53:21.240' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (11, 1, N'::1', 7, 17, N'Social Media', CAST(N'2020-05-07 13:53:43.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (12, 1, N'::1', 1, 17, N'Social Media', CAST(N'2020-05-07 14:33:06.930' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (13, 1, N'::1', 2, 17, N'Social Media', CAST(N'2020-05-07 14:33:28.930' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (14, 1, N'::1', 3, 17, N'Social Media', CAST(N'2020-05-07 14:34:07.193' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (15, 1, N'::1', 4, 17, N'Social Media', CAST(N'2020-05-07 14:35:19.457' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (16, 1, N'::1', 5, 17, N'Social Media', CAST(N'2020-05-07 14:35:37.757' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (17, 1, N'::1', 1, 18, N'Social Media', CAST(N'2020-05-07 16:04:57.953' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (18, 1, N'::1', 1, 18, N'Social Media', CAST(N'2020-05-07 16:05:46.437' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (19, 1, N'::1', 1, 18, N'Social Media', CAST(N'2020-05-07 16:06:04.837' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (20, 1, N'::1', 1, 18, N'Social Media', CAST(N'2020-05-07 16:06:19.387' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (21, 1, N'::1', 2, 20, N'User', CAST(N'2020-05-08 02:01:18.883' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (22, 1, N'::1', 3, 20, N'User', CAST(N'2020-05-08 02:03:37.397' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (23, 1, N'::1', 4, 20, N'User', CAST(N'2020-05-08 02:11:52.333' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (24, 1, N'::1', 5, 20, N'User', CAST(N'2020-05-08 02:12:35.417' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (25, 1, N'::1', 6, 20, N'User', CAST(N'2020-05-08 02:13:05.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (26, 1, N'::1', 7, 20, N'User', CAST(N'2020-05-08 02:35:48.473' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (27, 1, N'::1', 8, 20, N'User', CAST(N'2020-05-08 02:35:59.417' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (28, 1, N'::1', 9, 20, N'User', CAST(N'2020-05-08 14:23:05.307' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (29, 1, N'::1', 10, 20, N'User', CAST(N'2020-05-08 14:24:55.440' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (30, 1, N'::1', 11, 20, N'User', CAST(N'2020-05-08 14:26:04.617' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (31, 1, N'::1', 12, 20, N'User', CAST(N'2020-05-08 14:30:04.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (32, 1, N'::1', 13, 20, N'User', CAST(N'2020-05-08 14:34:15.353' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (33, 1, N'::1', 14, 20, N'User', CAST(N'2020-05-08 14:34:33.053' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (34, 1, N'::1', 15, 20, N'User', CAST(N'2020-05-08 14:35:23.573' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (35, 1, N'::1', 16, 20, N'User', CAST(N'2020-05-08 14:35:58.437' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (36, 1, N'::1', 17, 20, N'User', CAST(N'2020-05-08 15:12:31.753' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (37, 1, N'::1', 18, 20, N'User', CAST(N'2020-05-08 15:13:18.523' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (38, 1, N'::1', 19, 20, N'User', CAST(N'2020-05-08 15:16:47.497' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (39, 1, N'::1', 20, 20, N'User', CAST(N'2020-05-08 20:29:13.653' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (40, 1, N'::1', 21, 20, N'User', CAST(N'2020-05-08 20:29:28.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (41, 1, N'::1', 22, 20, N'User', CAST(N'2020-05-08 20:30:14.393' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (42, 1, N'::1', 23, 20, N'User', CAST(N'2020-05-08 20:30:24.797' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (43, 1, N'::1', 24, 20, N'User', CAST(N'2020-05-08 20:31:10.193' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (44, 1, N'::1', 25, 20, N'User', CAST(N'2020-05-08 20:31:26.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (45, 1, N'::1', 26, 20, N'User', CAST(N'2020-05-08 20:31:41.803' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (46, 1, N'::1', 27, 20, N'User', CAST(N'2020-05-08 20:34:16.307' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (47, 1, N'::1', 28, 20, N'User', CAST(N'2020-05-08 20:34:43.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (48, 1, N'::1', 29, 20, N'User', CAST(N'2020-05-08 20:35:23.933' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (49, 1, N'::1', 30, 20, N'User', CAST(N'2020-05-08 20:37:05.927' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (50, 1, N'::1', 31, 20, N'User', CAST(N'2020-05-08 20:43:46.670' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (51, 1, N'::1', 32, 20, N'User', CAST(N'2020-05-08 20:44:01.677' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (52, 1, N'::1', 33, 20, N'User', CAST(N'2020-05-08 23:19:43.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (53, 1, N'::1', 34, 20, N'User', CAST(N'2020-05-08 23:19:55.537' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (54, 1, N'::1', 2, 20, N'User', CAST(N'2020-05-09 00:39:35.363' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (55, 1, N'::1', 3, 20, N'User', CAST(N'2020-05-09 00:40:15.637' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (56, 1, N'::1', 1, 21, N'User', CAST(N'2020-05-09 15:18:44.483' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (57, 1, N'::1', 1, 5, N'Ads', CAST(N'2020-05-09 16:22:07.907' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (58, 1, N'::1', 2, 5, N'Ads', CAST(N'2020-05-09 16:23:01.060' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (59, 1, N'::1', 3, 5, N'Ads', CAST(N'2020-05-09 16:23:31.670' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (60, 1, N'::1', 3, 6, N'Ads', CAST(N'2020-05-10 06:16:41.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (61, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 07:01:14.493' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (62, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 07:01:29.213' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (63, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 07:04:04.900' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (64, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 07:06:22.187' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (65, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 13:35:18.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (66, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 13:35:26.177' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (67, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2020-05-10 13:35:37.990' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (68, 1, N'::1', 2, 12, N'IconFavTitle', CAST(N'2020-05-10 14:28:17.427' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (69, 1, N'::1', 1, 2, N'Address', CAST(N'2020-05-10 15:31:01.770' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (70, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-10 16:18:30.153' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (71, 1, N'::1', 1, 23, N'Video', CAST(N'2020-05-11 03:05:02.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (72, 1, N'::1', 2, 23, N'Video', CAST(N'2020-05-11 03:09:18.187' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (73, 1, N'::1', 3, 23, N'Video', CAST(N'2020-05-11 03:09:47.617' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (74, 1, N'::1', 4, 23, N'Video', CAST(N'2020-05-11 03:10:16.450' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (75, 1, N'::1', 2, 24, N'Video', CAST(N'2020-05-11 12:14:34.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (76, 1, N'::1', 2, 24, N'Video', CAST(N'2020-05-11 12:38:18.200' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (77, 1, N'::1', 2, 24, N'Video', CAST(N'2020-05-11 12:38:25.740' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (78, 1, N'::1', 2, 24, N'Video', CAST(N'2020-05-11 12:38:52.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (79, 1, N'::1', 2, 24, N'Video', CAST(N'2020-05-11 12:39:07.203' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (80, 1, N'::1', 2, 8, N'Category', CAST(N'2020-05-11 13:23:52.870' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (81, 1, N'::1', 3, 8, N'Category', CAST(N'2020-05-11 13:24:10.277' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (82, 1, N'::1', 4, 8, N'Category', CAST(N'2020-05-11 13:24:23.327' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (83, 1, N'::1', 5, 8, N'Category', CAST(N'2020-05-11 13:24:33.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (84, 1, N'::1', 6, 8, N'Category', CAST(N'2020-05-11 13:24:42.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (85, 1, N'::1', 7, 8, N'Category', CAST(N'2020-05-11 13:24:50.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (86, 1, N'::1', 7, 9, N'Category', CAST(N'2020-05-11 13:48:51.443' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (87, 1, N'::1', 7, 9, N'Category', CAST(N'2020-05-11 13:50:06.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (88, 1, N'::1', 7, 9, N'Category', CAST(N'2020-05-11 13:50:30.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (89, 1, N'::1', 7, 9, N'Category', CAST(N'2020-05-11 13:50:42.883' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (109, 1, N'::1', 1, 26, N'Post', CAST(N'2020-05-14 17:15:22.390' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (110, 1, N'::1', 1, 29, N'Image', CAST(N'2020-05-14 17:15:22.417' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (111, 1, N'::1', 1, 32, N'Tag', CAST(N'2020-05-14 17:15:22.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (112, 1, N'::1', 2, 32, N'Tag', CAST(N'2020-05-14 17:15:22.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (113, 1, N'::1', 3, 32, N'Tag', CAST(N'2020-05-14 17:15:22.437' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (114, 1, N'::1', 4, 32, N'Tag', CAST(N'2020-05-14 17:15:22.437' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (115, 1, N'::1', 2, 26, N'Post', CAST(N'2020-05-14 17:17:25.627' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (116, 1, N'::1', 2, 29, N'Image', CAST(N'2020-05-14 17:17:25.630' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (117, 1, N'::1', 3, 29, N'Image', CAST(N'2020-05-14 17:17:25.637' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (118, 1, N'::1', 5, 32, N'Tag', CAST(N'2020-05-14 17:17:25.640' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (119, 1, N'::1', 6, 32, N'Tag', CAST(N'2020-05-14 17:17:25.643' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (120, 1, N'::1', 7, 32, N'Tag', CAST(N'2020-05-14 17:17:25.650' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (121, 1, N'::1', 8, 32, N'Tag', CAST(N'2020-05-14 17:17:25.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (122, 1, N'::1', 9, 32, N'Tag', CAST(N'2020-05-14 17:17:25.663' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (123, 1, N'::1', 10, 32, N'Tag', CAST(N'2020-05-14 17:17:25.670' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (124, 1, N'::1', 3, 26, N'Post', CAST(N'2020-05-14 17:18:37.947' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (125, 1, N'::1', 4, 29, N'Image', CAST(N'2020-05-14 17:18:37.953' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (126, 1, N'::1', 5, 29, N'Image', CAST(N'2020-05-14 17:18:37.957' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (127, 1, N'::1', 11, 32, N'Tag', CAST(N'2020-05-14 17:18:37.967' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (128, 1, N'::1', 12, 32, N'Tag', CAST(N'2020-05-14 17:18:37.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (129, 1, N'::1', 13, 32, N'Tag', CAST(N'2020-05-14 17:18:37.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (143, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-15 16:16:58.260' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (144, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-15 16:20:53.950' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (145, 1, N'::1', 19, 32, N'Tag', CAST(N'2020-05-15 16:20:54.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (146, 1, N'::1', 20, 32, N'Tag', CAST(N'2020-05-15 16:20:54.007' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (147, 1, N'::1', 21, 32, N'Tag', CAST(N'2020-05-15 16:20:54.010' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (148, 1, N'::1', 22, 32, N'Tag', CAST(N'2020-05-15 16:20:54.013' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (149, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-16 12:59:29.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (150, 1, N'::1', 7, 29, N'Image', CAST(N'2020-05-16 12:59:29.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (151, 1, N'::1', 8, 29, N'Image', CAST(N'2020-05-16 12:59:29.253' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (152, 1, N'::1', 23, 32, N'Tag', CAST(N'2020-05-16 12:59:29.277' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (153, 1, N'::1', 24, 32, N'Tag', CAST(N'2020-05-16 12:59:29.283' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (154, 1, N'::1', 25, 32, N'Tag', CAST(N'2020-05-16 12:59:29.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (155, 1, N'::1', 26, 32, N'Tag', CAST(N'2020-05-16 12:59:29.297' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (156, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-16 13:04:50.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (157, 1, N'::1', 27, 32, N'Tag', CAST(N'2020-05-16 13:04:51.013' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (158, 1, N'::1', 28, 32, N'Tag', CAST(N'2020-05-16 13:04:51.020' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (159, 1, N'::1', 29, 32, N'Tag', CAST(N'2020-05-16 13:04:51.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (160, 1, N'::1', 30, 32, N'Tag', CAST(N'2020-05-16 13:04:51.033' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (161, 1, N'::1', 2, 27, N'Post', CAST(N'2020-05-16 13:05:27.430' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (162, 1, N'::1', 31, 32, N'Tag', CAST(N'2020-05-16 13:05:27.457' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (163, 1, N'::1', 32, 32, N'Tag', CAST(N'2020-05-16 13:05:27.463' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (164, 1, N'::1', 33, 32, N'Tag', CAST(N'2020-05-16 13:05:27.470' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (165, 1, N'::1', 34, 32, N'Tag', CAST(N'2020-05-16 13:05:27.483' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (166, 1, N'::1', 35, 32, N'Tag', CAST(N'2020-05-16 13:05:27.490' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (167, 1, N'::1', 36, 32, N'Tag', CAST(N'2020-05-16 13:05:27.500' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (168, 1, N'::1', 37, 32, N'Tag', CAST(N'2020-05-16 13:05:27.507' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (169, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-16 18:47:53.350' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (170, 1, N'::1', 38, 32, N'Tag', CAST(N'2020-05-16 18:47:53.373' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (171, 1, N'::1', 39, 32, N'Tag', CAST(N'2020-05-16 18:47:53.377' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (172, 1, N'::1', 40, 32, N'Tag', CAST(N'2020-05-16 18:47:53.380' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (173, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-16 18:50:43.507' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (174, 1, N'::1', 9, 29, N'Image', CAST(N'2020-05-16 18:50:43.527' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (175, 1, N'::1', 10, 29, N'Image', CAST(N'2020-05-16 18:50:43.530' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (176, 1, N'::1', 41, 32, N'Tag', CAST(N'2020-05-16 18:50:43.543' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (177, 1, N'::1', 42, 32, N'Tag', CAST(N'2020-05-16 18:50:43.547' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (178, 1, N'::1', 43, 32, N'Tag', CAST(N'2020-05-16 18:50:43.550' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (179, 1, N'::1', 44, 32, N'Tag', CAST(N'2020-05-16 18:50:43.557' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (180, 1, N'::1', 2, 27, N'Post', CAST(N'2020-05-16 18:51:19.077' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (181, 1, N'::1', 45, 32, N'Tag', CAST(N'2020-05-16 18:51:19.107' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (182, 1, N'::1', 46, 32, N'Tag', CAST(N'2020-05-16 18:51:19.117' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (183, 1, N'::1', 47, 32, N'Tag', CAST(N'2020-05-16 18:51:19.120' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (184, 1, N'::1', 48, 32, N'Tag', CAST(N'2020-05-16 18:51:19.127' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (185, 1, N'::1', 49, 32, N'Tag', CAST(N'2020-05-16 18:51:19.137' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (186, 1, N'::1', 50, 32, N'Tag', CAST(N'2020-05-16 18:51:19.143' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (187, 1, N'::1', 51, 32, N'Tag', CAST(N'2020-05-16 18:51:19.150' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (188, 1, N'::1', 52, 32, N'Tag', CAST(N'2020-05-16 18:51:19.157' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (189, 1, N'::1', 1, 27, N'Post', CAST(N'2020-05-16 18:51:40.933' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (190, 1, N'::1', 53, 32, N'Tag', CAST(N'2020-05-16 18:51:40.943' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (191, 1, N'::1', 54, 32, N'Tag', CAST(N'2020-05-16 18:51:40.950' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (192, 1, N'::1', 55, 32, N'Tag', CAST(N'2020-05-16 18:51:40.953' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (193, 1, N'::1', 56, 32, N'Tag', CAST(N'2020-05-16 18:51:40.963' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (194, 1, N'::1', 57, 32, N'Tag', CAST(N'2020-05-16 18:51:40.970' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (195, 1, N'::1', 3, 27, N'Post', CAST(N'2020-05-17 00:30:53.707' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (196, 1, N'::1', 11, 29, N'Image', CAST(N'2020-05-17 00:30:53.733' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (197, 1, N'::1', 12, 29, N'Image', CAST(N'2020-05-17 00:30:53.737' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (198, 1, N'::1', 58, 32, N'Tag', CAST(N'2020-05-17 00:30:53.757' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (199, 1, N'::1', 59, 32, N'Tag', CAST(N'2020-05-17 00:30:53.760' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (200, 1, N'::1', 60, 32, N'Tag', CAST(N'2020-05-17 00:30:53.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (201, 1, N'::1', 61, 32, N'Tag', CAST(N'2020-05-17 00:30:53.770' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (202, 1, N'::1', 62, 32, N'Tag', CAST(N'2020-05-17 00:30:53.773' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (203, 1, N'::1', 2, 27, N'Post', CAST(N'2020-05-17 00:31:48.140' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (204, 1, N'::1', 63, 32, N'Tag', CAST(N'2020-05-17 00:31:48.157' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (205, 1, N'::1', 64, 32, N'Tag', CAST(N'2020-05-17 00:31:48.160' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (206, 1, N'::1', 65, 32, N'Tag', CAST(N'2020-05-17 00:31:48.167' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (207, 1, N'::1', 66, 32, N'Tag', CAST(N'2020-05-17 00:31:48.173' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (208, 1, N'::1', 67, 32, N'Tag', CAST(N'2020-05-17 00:31:48.187' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (209, 1, N'::1', 68, 32, N'Tag', CAST(N'2020-05-17 00:31:48.190' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (210, 1, N'::1', 69, 32, N'Tag', CAST(N'2020-05-17 00:31:48.197' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (211, 1, N'::1', 70, 32, N'Tag', CAST(N'2020-05-17 00:31:48.200' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (212, 1, N'::1', 1, 27, N'Post', CAST(N'2020-05-17 00:32:30.060' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (213, 1, N'::1', 71, 32, N'Tag', CAST(N'2020-05-17 00:32:30.080' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (214, 1, N'::1', 72, 32, N'Tag', CAST(N'2020-05-17 00:32:30.090' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (215, 1, N'::1', 73, 32, N'Tag', CAST(N'2020-05-17 00:32:30.100' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (216, 1, N'::1', 74, 32, N'Tag', CAST(N'2020-05-17 00:32:30.110' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (217, 1, N'::1', 75, 32, N'Tag', CAST(N'2020-05-17 00:32:30.127' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (218, 1, N'::1', 76, 32, N'Tag', CAST(N'2020-05-17 00:32:30.137' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (219, 1, N'::1', 2, 16, N'Meta', CAST(N'2020-05-17 13:59:18.710' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (220, 1, N'::1', 3, 14, N'Meta', CAST(N'2020-05-17 14:06:43.687' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (221, 1, N'::1', 4, 14, N'Meta', CAST(N'2020-05-17 14:06:52.063' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (222, 1, N'::1', 3, 16, N'Meta', CAST(N'2020-05-17 14:08:36.157' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (223, 1, N'::1', 3, 16, N'Meta', CAST(N'2020-05-17 14:32:04.753' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (224, 1, N'::1', 2, 2, N'Address', CAST(N'2020-05-17 15:01:22.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (225, 1, N'::1', 2, 4, N'Address', CAST(N'2020-05-17 15:01:34.040' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (226, 1, N'::1', 2, 25, N'Video', CAST(N'2020-05-17 15:07:53.260' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (227, 1, N'::1', 3, 7, N'Ads', CAST(N'2020-05-17 15:25:52.107' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (228, 1, N'::1', 3, 7, N'Ads', CAST(N'2020-05-17 15:27:22.663' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (229, 1, N'::1', 3, 7, N'Ads', CAST(N'2020-05-17 15:53:50.363' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (230, 1, N'::1', 3, 7, N'Ads', CAST(N'2020-05-17 15:57:23.863' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (231, 1, N'::1', 3, 7, N'Ads', CAST(N'2020-05-18 12:01:35.930' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (232, 1, N'::1', 6, 17, N'Social Media', CAST(N'2020-05-18 12:20:07.523' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (233, 1, N'::1', 6, 19, N'Social Media', CAST(N'2020-05-18 12:20:26.897' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (234, 1, N'::1', 11, 31, N'Image', CAST(N'2020-05-18 12:34:07.983' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (235, 1, N'::1', 12, 31, N'Image', CAST(N'2020-05-18 12:34:23.897' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (236, 1, N'::1', 4, 5, N'Ads', CAST(N'2020-05-20 16:05:46.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (237, 1, N'::1', 4, 7, N'Ads', CAST(N'2020-05-20 17:27:53.223' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (238, 1, N'::1', 2, 28, N'Post', CAST(N'2020-05-21 01:52:52.177' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (239, 1, N'::1', 8, 8, N'Category', CAST(N'2020-05-21 11:39:23.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (240, 1, N'::1', 4, 26, N'Post', CAST(N'2020-05-21 11:39:59.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (241, 1, N'::1', 13, 29, N'Image', CAST(N'2020-05-21 11:39:59.780' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (242, 1, N'::1', 77, 32, N'Tag', CAST(N'2020-05-21 11:39:59.797' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (243, 1, N'::1', 5, 26, N'Post', CAST(N'2020-05-21 11:40:24.197' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (244, 1, N'::1', 14, 29, N'Image', CAST(N'2020-05-21 11:40:24.200' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (245, 1, N'::1', 78, 32, N'Tag', CAST(N'2020-05-21 11:40:24.203' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (246, 1, N'::1', 8, 10, N'Category', CAST(N'2020-05-21 11:41:17.947' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (247, 1, N'::1', 4, 28, N'Post', CAST(N'2020-05-21 11:41:18.007' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (248, 1, N'::1', 4, 28, N'Post', CAST(N'2020-05-21 11:41:18.010' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (249, 1, N'::1', 5, 28, N'Post', CAST(N'2020-05-21 11:41:18.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (250, 1, N'::1', 5, 28, N'Post', CAST(N'2020-05-21 11:41:18.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (251, 1, N'::1', 4, 20, N'User', CAST(N'2020-05-21 12:11:36.963' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (252, 1, N'::1', 4, 22, N'User', CAST(N'2020-05-21 12:11:43.187' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (253, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 13:48:34.623' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (254, 1, N'::1', 5, 20, N'User', CAST(N'2020-05-21 13:49:15.487' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (255, 5, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 13:49:43.777' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (256, 5, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 13:51:29.587' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (257, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 22:30:18.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (258, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 22:48:50.750' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (259, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 22:51:12.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (260, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 23:15:31.497' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (261, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-21 23:31:33.417' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (262, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-22 00:11:35.957' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (263, 1, N'::1', 6, 26, N'Post', CAST(N'2020-05-22 00:12:48.963' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (264, 1, N'::1', 15, 29, N'Image', CAST(N'2020-05-22 00:12:48.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (265, 1, N'::1', 16, 29, N'Image', CAST(N'2020-05-22 00:12:48.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (266, 1, N'::1', 79, 32, N'Tag', CAST(N'2020-05-22 00:12:48.993' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (267, 1, N'::1', 80, 32, N'Tag', CAST(N'2020-05-22 00:12:49.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (268, 1, N'::1', 81, 32, N'Tag', CAST(N'2020-05-22 00:12:49.007' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (269, 1, N'::1', 7, 26, N'Post', CAST(N'2020-05-22 00:13:51.963' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (270, 1, N'::1', 17, 29, N'Image', CAST(N'2020-05-22 00:13:51.970' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (271, 1, N'::1', 18, 29, N'Image', CAST(N'2020-05-22 00:13:51.973' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (272, 1, N'::1', 82, 32, N'Tag', CAST(N'2020-05-22 00:13:51.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (273, 1, N'::1', 83, 32, N'Tag', CAST(N'2020-05-22 00:13:51.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (274, 1, N'::1', 84, 32, N'Tag', CAST(N'2020-05-22 00:13:51.983' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (275, 1, N'::1', 8, 26, N'Post', CAST(N'2020-05-22 00:15:13.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (276, 1, N'::1', 19, 29, N'Image', CAST(N'2020-05-22 00:15:13.777' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (277, 1, N'::1', 20, 29, N'Image', CAST(N'2020-05-22 00:15:13.780' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (278, 1, N'::1', 85, 32, N'Tag', CAST(N'2020-05-22 00:15:13.787' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (279, 1, N'::1', 86, 32, N'Tag', CAST(N'2020-05-22 00:15:13.790' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (280, 1, N'::1', 87, 32, N'Tag', CAST(N'2020-05-22 00:15:13.793' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (281, 1, N'::1', 9, 26, N'Post', CAST(N'2020-05-22 00:16:04.197' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (282, 1, N'::1', 21, 29, N'Image', CAST(N'2020-05-22 00:16:04.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (283, 1, N'::1', 22, 29, N'Image', CAST(N'2020-05-22 00:16:04.210' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (284, 1, N'::1', 88, 32, N'Tag', CAST(N'2020-05-22 00:16:04.213' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (285, 1, N'::1', 89, 32, N'Tag', CAST(N'2020-05-22 00:16:04.217' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (286, 1, N'::1', 90, 32, N'Tag', CAST(N'2020-05-22 00:16:04.220' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (287, 1, N'::1', 10, 26, N'Post', CAST(N'2020-05-22 00:17:02.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (288, 1, N'::1', 23, 29, N'Image', CAST(N'2020-05-22 00:17:02.860' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (289, 1, N'::1', 24, 29, N'Image', CAST(N'2020-05-22 00:17:02.870' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (290, 1, N'::1', 91, 32, N'Tag', CAST(N'2020-05-22 00:17:02.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (291, 1, N'::1', 92, 32, N'Tag', CAST(N'2020-05-22 00:17:02.883' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (292, 1, N'::1', 93, 32, N'Tag', CAST(N'2020-05-22 00:17:02.890' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (293, 1, N'::1', 11, 26, N'Post', CAST(N'2020-05-22 00:18:11.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (294, 1, N'::1', 25, 29, N'Image', CAST(N'2020-05-22 00:18:11.007' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (295, 1, N'::1', 26, 29, N'Image', CAST(N'2020-05-22 00:18:11.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (296, 1, N'::1', 94, 32, N'Tag', CAST(N'2020-05-22 00:18:11.023' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (297, 1, N'::1', 95, 32, N'Tag', CAST(N'2020-05-22 00:18:11.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (298, 1, N'::1', 96, 32, N'Tag', CAST(N'2020-05-22 00:18:11.037' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (299, 1, N'::1', 12, 26, N'Post', CAST(N'2020-05-22 00:19:02.467' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (300, 1, N'::1', 27, 29, N'Image', CAST(N'2020-05-22 00:19:02.477' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (301, 1, N'::1', 28, 29, N'Image', CAST(N'2020-05-22 00:19:02.480' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (302, 1, N'::1', 97, 32, N'Tag', CAST(N'2020-05-22 00:19:02.483' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (303, 1, N'::1', 98, 32, N'Tag', CAST(N'2020-05-22 00:19:02.487' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (304, 1, N'::1', 99, 32, N'Tag', CAST(N'2020-05-22 00:19:02.493' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (305, 1, N'::1', 13, 26, N'Post', CAST(N'2020-05-22 00:19:55.430' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (306, 1, N'::1', 29, 29, N'Image', CAST(N'2020-05-22 00:19:55.447' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (307, 1, N'::1', 30, 29, N'Image', CAST(N'2020-05-22 00:19:55.453' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (308, 1, N'::1', 100, 32, N'Tag', CAST(N'2020-05-22 00:19:55.457' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (309, 1, N'::1', 101, 32, N'Tag', CAST(N'2020-05-22 00:19:55.463' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (310, 1, N'::1', 14, 26, N'Post', CAST(N'2020-05-22 00:20:40.097' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (311, 1, N'::1', 31, 29, N'Image', CAST(N'2020-05-22 00:20:40.103' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (312, 1, N'::1', 32, 29, N'Image', CAST(N'2020-05-22 00:20:40.113' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (313, 1, N'::1', 102, 32, N'Tag', CAST(N'2020-05-22 00:20:40.120' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (314, 1, N'::1', 103, 32, N'Tag', CAST(N'2020-05-22 00:20:40.130' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (315, 1, N'::1', 15, 26, N'Post', CAST(N'2020-05-22 00:21:30.543' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (316, 1, N'::1', 33, 29, N'Image', CAST(N'2020-05-22 00:21:30.553' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (317, 1, N'::1', 104, 32, N'Tag', CAST(N'2020-05-22 00:21:30.567' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (318, 1, N'::1', 105, 32, N'Tag', CAST(N'2020-05-22 00:21:30.570' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (319, 1, N'::1', 106, 32, N'Tag', CAST(N'2020-05-22 00:21:30.577' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (320, 1, N'::1', 16, 26, N'Post', CAST(N'2020-05-22 00:26:43.103' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (321, 1, N'::1', 34, 29, N'Image', CAST(N'2020-05-22 00:26:43.120' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (322, 1, N'::1', 107, 32, N'Tag', CAST(N'2020-05-22 00:26:43.127' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (323, 1, N'::1', 108, 32, N'Tag', CAST(N'2020-05-22 00:26:43.137' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (324, 1, N'::1', 109, 32, N'Tag', CAST(N'2020-05-22 00:26:43.147' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (325, 1, N'::1', 110, 32, N'Tag', CAST(N'2020-05-22 00:26:43.153' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (326, 1, N'::1', 17, 26, N'Post', CAST(N'2020-05-22 00:27:57.260' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (327, 1, N'::1', 35, 29, N'Image', CAST(N'2020-05-22 00:27:57.280' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (328, 1, N'::1', 111, 32, N'Tag', CAST(N'2020-05-22 00:27:57.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (329, 1, N'::1', 112, 32, N'Tag', CAST(N'2020-05-22 00:27:57.300' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (330, 1, N'::1', 113, 32, N'Tag', CAST(N'2020-05-22 00:27:57.313' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (331, 1, N'::1', 18, 26, N'Post', CAST(N'2020-05-22 00:29:00.313' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (332, 1, N'::1', 36, 29, N'Image', CAST(N'2020-05-22 00:29:00.323' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (333, 1, N'::1', 114, 32, N'Tag', CAST(N'2020-05-22 00:29:00.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (334, 1, N'::1', 115, 32, N'Tag', CAST(N'2020-05-22 00:29:00.347' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (335, 1, N'::1', 116, 32, N'Tag', CAST(N'2020-05-22 00:29:00.357' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (336, 1, N'::1', 19, 26, N'Post', CAST(N'2020-05-22 00:29:44.847' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (337, 1, N'::1', 37, 29, N'Image', CAST(N'2020-05-22 00:29:44.857' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (338, 1, N'::1', 117, 32, N'Tag', CAST(N'2020-05-22 00:29:44.873' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (339, 1, N'::1', 118, 32, N'Tag', CAST(N'2020-05-22 00:29:44.880' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (340, 1, N'::1', 20, 26, N'Post', CAST(N'2020-05-22 00:30:46.930' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (341, 1, N'::1', 38, 29, N'Image', CAST(N'2020-05-22 00:30:46.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (342, 1, N'::1', 119, 32, N'Tag', CAST(N'2020-05-22 00:30:46.967' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (343, 1, N'::1', 120, 32, N'Tag', CAST(N'2020-05-22 00:30:46.983' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (344, 1, N'::1', 21, 26, N'Post', CAST(N'2020-05-22 00:32:07.913' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (345, 1, N'::1', 39, 29, N'Image', CAST(N'2020-05-22 00:32:07.927' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (346, 1, N'::1', 121, 32, N'Tag', CAST(N'2020-05-22 00:32:07.937' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (347, 1, N'::1', 122, 32, N'Tag', CAST(N'2020-05-22 00:32:07.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (348, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-22 00:35:08.800' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (349, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-22 00:39:33.447' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (350, 1, N'::1', 22, 26, N'Post', CAST(N'2020-05-22 00:40:51.317' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (351, 1, N'::1', 40, 29, N'Image', CAST(N'2020-05-22 00:40:51.330' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (352, 1, N'::1', 41, 29, N'Image', CAST(N'2020-05-22 00:40:51.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (353, 1, N'::1', 123, 32, N'Tag', CAST(N'2020-05-22 00:40:51.347' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (354, 1, N'::1', 124, 32, N'Tag', CAST(N'2020-05-22 00:40:51.350' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (355, 1, N'::1', 125, 32, N'Tag', CAST(N'2020-05-22 00:40:51.350' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (356, 1, N'::1', 23, 26, N'Post', CAST(N'2020-05-22 00:41:46.023' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (357, 1, N'::1', 42, 29, N'Image', CAST(N'2020-05-22 00:41:46.030' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (358, 1, N'::1', 126, 32, N'Tag', CAST(N'2020-05-22 00:41:46.037' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (359, 1, N'::1', 127, 32, N'Tag', CAST(N'2020-05-22 00:41:46.040' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (360, 1, N'::1', 128, 32, N'Tag', CAST(N'2020-05-22 00:41:46.047' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (361, 1, N'::1', 24, 26, N'Post', CAST(N'2020-05-22 00:42:29.677' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (362, 1, N'::1', 43, 29, N'Image', CAST(N'2020-05-22 00:42:29.687' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (363, 1, N'::1', 129, 32, N'Tag', CAST(N'2020-05-22 00:42:29.690' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (364, 1, N'::1', 130, 32, N'Tag', CAST(N'2020-05-22 00:42:29.700' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (365, 1, N'::1', 131, 32, N'Tag', CAST(N'2020-05-22 00:42:29.703' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (366, 1, N'::1', 25, 26, N'Post', CAST(N'2020-05-22 00:43:12.137' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (367, 1, N'::1', 44, 29, N'Image', CAST(N'2020-05-22 00:43:12.143' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (368, 1, N'::1', 132, 32, N'Tag', CAST(N'2020-05-22 00:43:12.157' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (369, 1, N'::1', 133, 32, N'Tag', CAST(N'2020-05-22 00:43:12.173' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (370, 1, N'::1', 134, 32, N'Tag', CAST(N'2020-05-22 00:43:12.180' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (371, 1, N'::1', 26, 26, N'Post', CAST(N'2020-05-22 00:44:00.237' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (372, 1, N'::1', 45, 29, N'Image', CAST(N'2020-05-22 00:44:00.253' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (373, 1, N'::1', 135, 32, N'Tag', CAST(N'2020-05-22 00:44:00.263' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (374, 1, N'::1', 136, 32, N'Tag', CAST(N'2020-05-22 00:44:00.270' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (375, 1, N'::1', 137, 32, N'Tag', CAST(N'2020-05-22 00:44:00.280' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (376, 1, N'::1', 27, 26, N'Post', CAST(N'2020-05-22 00:44:46.703' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (377, 1, N'::1', 46, 29, N'Image', CAST(N'2020-05-22 00:44:46.713' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (378, 1, N'::1', 138, 32, N'Tag', CAST(N'2020-05-22 00:44:46.717' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (379, 1, N'::1', 139, 32, N'Tag', CAST(N'2020-05-22 00:44:46.723' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (380, 1, N'::1', 28, 26, N'Post', CAST(N'2020-05-22 00:45:50.137' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (381, 1, N'::1', 47, 29, N'Image', CAST(N'2020-05-22 00:45:50.147' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (382, 1, N'::1', 140, 32, N'Tag', CAST(N'2020-05-22 00:45:50.153' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (383, 1, N'::1', 141, 32, N'Tag', CAST(N'2020-05-22 00:45:50.160' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (384, 1, N'::1', 142, 32, N'Tag', CAST(N'2020-05-22 00:45:50.167' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (385, 1, N'::1', 29, 26, N'Post', CAST(N'2020-05-22 00:52:46.333' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (386, 1, N'::1', 48, 29, N'Image', CAST(N'2020-05-22 00:52:46.340' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (387, 1, N'::1', 143, 32, N'Tag', CAST(N'2020-05-22 00:52:46.350' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (388, 1, N'::1', 144, 32, N'Tag', CAST(N'2020-05-22 00:52:46.360' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (389, 1, N'::1', 30, 26, N'Post', CAST(N'2020-05-22 00:53:28.100' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (390, 1, N'::1', 49, 29, N'Image', CAST(N'2020-05-22 00:53:28.110' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (391, 1, N'::1', 145, 32, N'Tag', CAST(N'2020-05-22 00:53:28.117' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (392, 1, N'::1', 146, 32, N'Tag', CAST(N'2020-05-22 00:53:28.120' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (393, 1, N'::1', 31, 26, N'Post', CAST(N'2020-05-22 00:54:10.080' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (394, 1, N'::1', 50, 29, N'Image', CAST(N'2020-05-22 00:54:10.090' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (395, 1, N'::1', 147, 32, N'Tag', CAST(N'2020-05-22 00:54:10.100' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (396, 1, N'::1', 148, 32, N'Tag', CAST(N'2020-05-22 00:54:10.107' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (397, 1, N'::1', 149, 32, N'Tag', CAST(N'2020-05-22 00:54:10.117' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (398, 1, N'::1', 32, 26, N'Post', CAST(N'2020-05-22 00:55:00.517' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (399, 1, N'::1', 51, 29, N'Image', CAST(N'2020-05-22 00:55:00.530' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (400, 1, N'::1', 150, 32, N'Tag', CAST(N'2020-05-22 00:55:00.540' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (401, 1, N'::1', 151, 32, N'Tag', CAST(N'2020-05-22 00:55:00.547' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (402, 1, N'::1', 152, 32, N'Tag', CAST(N'2020-05-22 00:55:00.553' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (403, 1, N'::1', 33, 26, N'Post', CAST(N'2020-05-22 00:55:42.327' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (404, 1, N'::1', 52, 29, N'Image', CAST(N'2020-05-22 00:55:42.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (405, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-22 00:56:10.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (406, 1, N'::1', 33, 28, N'Post', CAST(N'2020-05-22 00:56:20.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (407, 1, N'::1', 34, 26, N'Post', CAST(N'2020-05-22 00:57:50.470' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (408, 1, N'::1', 53, 29, N'Image', CAST(N'2020-05-22 00:57:50.477' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (409, 1, N'::1', 153, 32, N'Tag', CAST(N'2020-05-22 00:57:50.500' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (410, 1, N'::1', 154, 32, N'Tag', CAST(N'2020-05-22 00:57:50.507' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (411, 1, N'::1', 155, 32, N'Tag', CAST(N'2020-05-22 00:57:50.510' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (412, 1, N'::1', 35, 26, N'Post', CAST(N'2020-05-22 00:58:40.363' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (413, 1, N'::1', 54, 29, N'Image', CAST(N'2020-05-22 00:58:40.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (414, 1, N'::1', 156, 32, N'Tag', CAST(N'2020-05-22 00:58:40.397' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (415, 1, N'::1', 157, 32, N'Tag', CAST(N'2020-05-22 00:58:40.407' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (416, 1, N'::1', 158, 32, N'Tag', CAST(N'2020-05-22 00:58:40.410' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (417, 1, N'::1', 159, 32, N'Tag', CAST(N'2020-05-22 00:58:40.413' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (418, 1, N'::1', 160, 32, N'Tag', CAST(N'2020-05-22 00:58:40.420' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (419, 1, N'::1', 161, 32, N'Tag', CAST(N'2020-05-22 00:58:40.427' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (420, 1, N'::1', 162, 32, N'Tag', CAST(N'2020-05-22 00:58:40.430' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (421, 1, N'::1', 36, 26, N'Post', CAST(N'2020-05-22 00:59:26.597' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (422, 1, N'::1', 55, 29, N'Image', CAST(N'2020-05-22 00:59:26.603' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (423, 1, N'::1', 163, 32, N'Tag', CAST(N'2020-05-22 00:59:26.610' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (424, 1, N'::1', 164, 32, N'Tag', CAST(N'2020-05-22 00:59:26.617' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (425, 1, N'::1', 37, 26, N'Post', CAST(N'2020-05-22 01:00:29.907' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (426, 1, N'::1', 56, 29, N'Image', CAST(N'2020-05-22 01:00:29.927' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (427, 1, N'::1', 57, 29, N'Image', CAST(N'2020-05-22 01:00:29.950' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (428, 1, N'::1', 165, 32, N'Tag', CAST(N'2020-05-22 01:00:29.973' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (429, 1, N'::1', 166, 32, N'Tag', CAST(N'2020-05-22 01:00:29.987' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (430, 1, N'::1', 167, 32, N'Tag', CAST(N'2020-05-22 01:00:29.990' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (431, 1, N'::1', 38, 26, N'Post', CAST(N'2020-05-22 01:01:14.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (432, 1, N'::1', 58, 29, N'Image', CAST(N'2020-05-22 01:01:14.990' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (433, 1, N'::1', 168, 32, N'Tag', CAST(N'2020-05-22 01:01:14.997' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (434, 1, N'::1', 169, 32, N'Tag', CAST(N'2020-05-22 01:01:15.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (435, 1, N'::1', 39, 26, N'Post', CAST(N'2020-05-22 01:01:53.267' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (436, 1, N'::1', 59, 29, N'Image', CAST(N'2020-05-22 01:01:53.273' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (437, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-22 01:03:36.957' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (438, 1, N'::1', 39, 28, N'Post', CAST(N'2020-05-22 01:03:57.310' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (439, 1, N'::1', 40, 26, N'Post', CAST(N'2020-05-22 01:05:02.037' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (440, 1, N'::1', 60, 29, N'Image', CAST(N'2020-05-22 01:05:02.043' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (441, 1, N'::1', 170, 32, N'Tag', CAST(N'2020-05-22 01:05:02.067' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (442, 1, N'::1', 171, 32, N'Tag', CAST(N'2020-05-22 01:05:02.070' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (443, 1, N'::1', 172, 32, N'Tag', CAST(N'2020-05-22 01:05:02.073' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (444, 1, N'::1', 41, 26, N'Post', CAST(N'2020-05-22 01:05:49.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (445, 1, N'::1', 61, 29, N'Image', CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (446, 1, N'::1', 173, 32, N'Tag', CAST(N'2020-05-22 01:05:49.300' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (447, 1, N'::1', 174, 32, N'Tag', CAST(N'2020-05-22 01:05:49.303' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (448, 1, N'::1', 175, 32, N'Tag', CAST(N'2020-05-22 01:05:49.307' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (449, 1, N'::1', 176, 32, N'Tag', CAST(N'2020-05-22 01:05:49.313' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (450, 1, N'::1', 177, 32, N'Tag', CAST(N'2020-05-22 01:05:49.317' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (451, 1, N'::1', 178, 32, N'Tag', CAST(N'2020-05-22 01:05:49.323' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (452, 1, N'::1', 179, 32, N'Tag', CAST(N'2020-05-22 01:05:49.327' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (453, 1, N'::1', 42, 26, N'Post', CAST(N'2020-05-22 01:06:42.387' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (454, 1, N'::1', 62, 29, N'Image', CAST(N'2020-05-22 01:06:42.393' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (455, 1, N'::1', 180, 32, N'Tag', CAST(N'2020-05-22 01:06:42.403' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (456, 1, N'::1', 181, 32, N'Tag', CAST(N'2020-05-22 01:06:42.410' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (457, 1, N'::1', 182, 32, N'Tag', CAST(N'2020-05-22 01:06:42.417' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (458, 1, N'::1', 43, 26, N'Post', CAST(N'2020-05-22 01:14:43.190' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (459, 1, N'::1', 63, 29, N'Image', CAST(N'2020-05-22 01:14:43.197' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (460, 1, N'::1', 183, 32, N'Tag', CAST(N'2020-05-22 01:14:43.200' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (461, 1, N'::1', 184, 32, N'Tag', CAST(N'2020-05-22 01:14:43.210' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (462, 1, N'::1', 185, 32, N'Tag', CAST(N'2020-05-22 01:14:43.220' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (463, 1, N'::1', 44, 26, N'Post', CAST(N'2020-05-22 01:15:31.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (464, 1, N'::1', 64, 29, N'Image', CAST(N'2020-05-22 01:15:31.040' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (465, 1, N'::1', 186, 32, N'Tag', CAST(N'2020-05-22 01:15:31.047' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (466, 1, N'::1', 187, 32, N'Tag', CAST(N'2020-05-22 01:15:31.050' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (467, 1, N'::1', 45, 26, N'Post', CAST(N'2020-05-22 01:16:21.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (468, 1, N'::1', 65, 29, N'Image', CAST(N'2020-05-22 01:16:21.667' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (469, 1, N'::1', 188, 32, N'Tag', CAST(N'2020-05-22 01:16:21.677' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (470, 1, N'::1', 189, 32, N'Tag', CAST(N'2020-05-22 01:16:21.683' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (471, 1, N'::1', 190, 32, N'Tag', CAST(N'2020-05-22 01:16:21.690' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (472, 1, N'::1', 46, 26, N'Post', CAST(N'2020-05-22 01:17:17.823' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (473, 1, N'::1', 66, 29, N'Image', CAST(N'2020-05-22 01:17:17.840' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (474, 1, N'::1', 67, 29, N'Image', CAST(N'2020-05-22 01:17:17.847' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (475, 1, N'::1', 191, 32, N'Tag', CAST(N'2020-05-22 01:17:17.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (476, 1, N'::1', 192, 32, N'Tag', CAST(N'2020-05-22 01:17:17.863' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (477, 1, N'::1', 193, 32, N'Tag', CAST(N'2020-05-22 01:17:17.870' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (478, 1, N'::1', 47, 26, N'Post', CAST(N'2020-05-22 01:18:14.527' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (479, 1, N'::1', 68, 29, N'Image', CAST(N'2020-05-22 01:18:14.533' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (480, 1, N'::1', 194, 32, N'Tag', CAST(N'2020-05-22 01:18:14.543' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (481, 1, N'::1', 195, 32, N'Tag', CAST(N'2020-05-22 01:18:14.550' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (482, 1, N'::1', 196, 32, N'Tag', CAST(N'2020-05-22 01:18:14.557' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (483, 1, N'::1', 48, 26, N'Post', CAST(N'2020-05-22 01:18:57.270' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (484, 1, N'::1', 69, 29, N'Image', CAST(N'2020-05-22 01:18:57.280' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (485, 1, N'::1', 197, 32, N'Tag', CAST(N'2020-05-22 01:18:57.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (486, 1, N'::1', 198, 32, N'Tag', CAST(N'2020-05-22 01:18:57.297' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (487, 1, N'::1', 49, 26, N'Post', CAST(N'2020-05-22 01:20:20.897' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (488, 1, N'::1', 70, 29, N'Image', CAST(N'2020-05-22 01:20:20.900' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (489, 1, N'::1', 71, 29, N'Image', CAST(N'2020-05-22 01:20:20.907' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (490, 1, N'::1', 199, 32, N'Tag', CAST(N'2020-05-22 01:20:20.917' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (491, 1, N'::1', 200, 32, N'Tag', CAST(N'2020-05-22 01:20:20.920' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (492, 1, N'::1', 201, 32, N'Tag', CAST(N'2020-05-22 01:20:20.927' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (493, 1, N'::1', 50, 26, N'Post', CAST(N'2020-05-22 01:21:06.230' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (494, 1, N'::1', 72, 29, N'Image', CAST(N'2020-05-22 01:21:06.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (495, 1, N'::1', 202, 32, N'Tag', CAST(N'2020-05-22 01:21:06.257' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (496, 1, N'::1', 203, 32, N'Tag', CAST(N'2020-05-22 01:21:06.263' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (497, 1, N'::1', 204, 32, N'Tag', CAST(N'2020-05-22 01:21:06.273' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (498, 1, N'::1', 51, 26, N'Post', CAST(N'2020-05-22 01:21:58.987' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (499, 1, N'::1', 73, 29, N'Image', CAST(N'2020-05-22 01:21:58.993' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (500, 1, N'::1', 205, 32, N'Tag', CAST(N'2020-05-22 01:21:59.003' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (501, 1, N'::1', 206, 32, N'Tag', CAST(N'2020-05-22 01:21:59.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (502, 1, N'::1', 207, 32, N'Tag', CAST(N'2020-05-22 01:21:59.023' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (503, 1, N'::1', 52, 26, N'Post', CAST(N'2020-05-22 01:23:29.003' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (504, 1, N'::1', 74, 29, N'Image', CAST(N'2020-05-22 01:23:29.013' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (505, 1, N'::1', 208, 32, N'Tag', CAST(N'2020-05-22 01:23:29.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (506, 1, N'::1', 209, 32, N'Tag', CAST(N'2020-05-22 01:23:29.037' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (507, 1, N'::1', 53, 26, N'Post', CAST(N'2020-05-22 01:24:46.703' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (508, 1, N'::1', 75, 29, N'Image', CAST(N'2020-05-22 01:24:46.720' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (509, 1, N'::1', 210, 32, N'Tag', CAST(N'2020-05-22 01:24:46.737' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (510, 1, N'::1', 211, 32, N'Tag', CAST(N'2020-05-22 01:24:46.747' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (511, 1, N'::1', 54, 26, N'Post', CAST(N'2020-05-22 01:25:33.153' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (512, 1, N'::1', 76, 29, N'Image', CAST(N'2020-05-22 01:25:33.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (513, 1, N'::1', 212, 32, N'Tag', CAST(N'2020-05-22 01:25:33.217' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (514, 1, N'::1', 213, 32, N'Tag', CAST(N'2020-05-22 01:25:33.223' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (515, 1, N'::1', 214, 32, N'Tag', CAST(N'2020-05-22 01:25:33.230' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (516, 1, N'::1', 55, 26, N'Post', CAST(N'2020-05-22 01:26:31.407' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (517, 1, N'::1', 77, 29, N'Image', CAST(N'2020-05-22 01:26:31.427' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (518, 1, N'::1', 215, 32, N'Tag', CAST(N'2020-05-22 01:26:31.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (519, 1, N'::1', 216, 32, N'Tag', CAST(N'2020-05-22 01:26:31.440' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (520, 1, N'::1', 217, 32, N'Tag', CAST(N'2020-05-22 01:26:31.447' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (521, 1, N'::1', 218, 32, N'Tag', CAST(N'2020-05-22 01:26:31.457' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (522, 1, N'::1', 56, 26, N'Post', CAST(N'2020-05-22 01:27:09.123' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (523, 1, N'::1', 78, 29, N'Image', CAST(N'2020-05-22 01:27:09.143' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (524, 1, N'::1', 219, 32, N'Tag', CAST(N'2020-05-22 01:27:09.153' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (525, 1, N'::1', 220, 32, N'Tag', CAST(N'2020-05-22 01:27:09.160' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (526, 1, N'::1', 221, 32, N'Tag', CAST(N'2020-05-22 01:27:09.183' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (527, 1, N'::1', 57, 26, N'Post', CAST(N'2020-05-22 01:27:53.340' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (528, 1, N'::1', 79, 29, N'Image', CAST(N'2020-05-22 01:27:53.357' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (529, 1, N'::1', 222, 32, N'Tag', CAST(N'2020-05-22 01:27:53.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (530, 1, N'::1', 223, 32, N'Tag', CAST(N'2020-05-22 01:27:53.377' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (531, 1, N'::1', 224, 32, N'Tag', CAST(N'2020-05-22 01:27:53.397' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (532, 1, N'::1', 225, 32, N'Tag', CAST(N'2020-05-22 01:27:53.407' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (533, 1, N'::1', 58, 26, N'Post', CAST(N'2020-05-22 01:28:39.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (534, 1, N'::1', 80, 29, N'Image', CAST(N'2020-05-22 01:28:39.377' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (535, 1, N'::1', 81, 29, N'Image', CAST(N'2020-05-22 01:28:39.387' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (536, 1, N'::1', 226, 32, N'Tag', CAST(N'2020-05-22 01:28:39.397' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (537, 1, N'::1', 227, 32, N'Tag', CAST(N'2020-05-22 01:28:39.403' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (538, 1, N'::1', 228, 32, N'Tag', CAST(N'2020-05-22 01:28:39.413' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (539, 1, N'::1', 59, 26, N'Post', CAST(N'2020-05-22 01:32:17.930' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (540, 1, N'::1', 82, 29, N'Image', CAST(N'2020-05-22 01:32:17.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (541, 1, N'::1', 229, 32, N'Tag', CAST(N'2020-05-22 01:32:17.953' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (542, 1, N'::1', 230, 32, N'Tag', CAST(N'2020-05-22 01:32:17.967' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (543, 1, N'::1', 231, 32, N'Tag', CAST(N'2020-05-22 01:32:17.977' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (544, 1, N'::1', 60, 26, N'Post', CAST(N'2020-05-22 01:33:09.227' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (545, 1, N'::1', 83, 29, N'Image', CAST(N'2020-05-22 01:33:09.237' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (546, 1, N'::1', 232, 32, N'Tag', CAST(N'2020-05-22 01:33:09.250' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (547, 1, N'::1', 233, 32, N'Tag', CAST(N'2020-05-22 01:33:09.257' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (548, 1, N'::1', 234, 32, N'Tag', CAST(N'2020-05-22 01:33:09.267' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (549, 1, N'::1', 61, 26, N'Post', CAST(N'2020-05-22 01:34:04.560' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (550, 1, N'::1', 84, 29, N'Image', CAST(N'2020-05-22 01:34:04.570' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (551, 1, N'::1', 235, 32, N'Tag', CAST(N'2020-05-22 01:34:04.580' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (552, 1, N'::1', 236, 32, N'Tag', CAST(N'2020-05-22 01:34:04.590' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (553, 1, N'::1', 237, 32, N'Tag', CAST(N'2020-05-22 01:34:04.600' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (554, 1, N'::1', 62, 26, N'Post', CAST(N'2020-05-22 01:34:44.973' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (555, 1, N'::1', 85, 29, N'Image', CAST(N'2020-05-22 01:34:44.987' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (556, 1, N'::1', 238, 32, N'Tag', CAST(N'2020-05-22 01:34:45.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (557, 1, N'::1', 239, 32, N'Tag', CAST(N'2020-05-22 01:34:45.010' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (558, 1, N'::1', 63, 26, N'Post', CAST(N'2020-05-22 01:35:35.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (559, 1, N'::1', 86, 29, N'Image', CAST(N'2020-05-22 01:35:35.623' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (560, 1, N'::1', 240, 32, N'Tag', CAST(N'2020-05-22 01:35:35.640' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (561, 1, N'::1', 241, 32, N'Tag', CAST(N'2020-05-22 01:35:35.657' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (562, 1, N'::1', 242, 32, N'Tag', CAST(N'2020-05-22 01:35:35.663' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (563, 1, N'::1', 64, 26, N'Post', CAST(N'2020-05-22 01:36:19.637' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (564, 1, N'::1', 87, 29, N'Image', CAST(N'2020-05-22 01:36:19.647' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (565, 1, N'::1', 88, 29, N'Image', CAST(N'2020-05-22 01:36:19.660' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (566, 1, N'::1', 243, 32, N'Tag', CAST(N'2020-05-22 01:36:19.670' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (567, 1, N'::1', 244, 32, N'Tag', CAST(N'2020-05-22 01:36:19.680' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (568, 1, N'::1', 245, 32, N'Tag', CAST(N'2020-05-22 01:36:19.693' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (569, 1, N'::1', 65, 26, N'Post', CAST(N'2020-05-22 01:37:00.727' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (570, 1, N'::1', 89, 29, N'Image', CAST(N'2020-05-22 01:37:00.757' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (571, 1, N'::1', 246, 32, N'Tag', CAST(N'2020-05-22 01:37:00.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (572, 1, N'::1', 247, 32, N'Tag', CAST(N'2020-05-22 01:37:00.780' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (573, 1, N'::1', 248, 32, N'Tag', CAST(N'2020-05-22 01:37:00.790' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (574, 1, N'::1', 249, 32, N'Tag', CAST(N'2020-05-22 01:37:00.800' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (575, 1, N'::1', 250, 32, N'Tag', CAST(N'2020-05-22 01:37:00.817' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (576, 1, N'::1', 251, 32, N'Tag', CAST(N'2020-05-22 01:37:00.827' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (577, 1, N'::1', 252, 32, N'Tag', CAST(N'2020-05-22 01:37:00.840' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (578, 1, N'::1', 66, 26, N'Post', CAST(N'2020-05-22 01:37:47.503' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (579, 1, N'::1', 90, 29, N'Image', CAST(N'2020-05-22 01:37:47.523' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (580, 1, N'::1', 91, 29, N'Image', CAST(N'2020-05-22 01:37:47.537' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (581, 1, N'::1', 253, 32, N'Tag', CAST(N'2020-05-22 01:37:47.550' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (582, 1, N'::1', 254, 32, N'Tag', CAST(N'2020-05-22 01:37:47.563' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (583, 1, N'::1', 255, 32, N'Tag', CAST(N'2020-05-22 01:37:47.577' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (584, 1, N'::1', 256, 32, N'Tag', CAST(N'2020-05-22 01:37:47.593' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (585, 1, N'::1', 257, 32, N'Tag', CAST(N'2020-05-22 01:37:47.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (586, 1, N'::1', 258, 32, N'Tag', CAST(N'2020-05-22 01:37:47.623' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (587, 1, N'::1', 259, 32, N'Tag', CAST(N'2020-05-22 01:37:47.633' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (588, 1, N'::1', 67, 26, N'Post', CAST(N'2020-05-22 01:38:35.967' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (589, 1, N'::1', 92, 29, N'Image', CAST(N'2020-05-22 01:38:35.987' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (590, 1, N'::1', 260, 32, N'Tag', CAST(N'2020-05-22 01:38:36.003' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (591, 1, N'::1', 261, 32, N'Tag', CAST(N'2020-05-22 01:38:36.023' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (592, 1, N'::1', 262, 32, N'Tag', CAST(N'2020-05-22 01:38:36.040' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (593, 1, N'::1', 68, 26, N'Post', CAST(N'2020-05-22 01:39:21.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (594, 1, N'::1', 93, 29, N'Image', CAST(N'2020-05-22 01:39:21.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (595, 1, N'::1', 263, 32, N'Tag', CAST(N'2020-05-22 01:39:21.033' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (596, 1, N'::1', 264, 32, N'Tag', CAST(N'2020-05-22 01:39:21.047' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (597, 1, N'::1', 69, 26, N'Post', CAST(N'2020-05-22 01:40:01.440' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (598, 1, N'::1', 94, 29, N'Image', CAST(N'2020-05-22 01:40:01.463' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (599, 1, N'::1', 265, 32, N'Tag', CAST(N'2020-05-22 01:40:01.480' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (600, 1, N'::1', 266, 32, N'Tag', CAST(N'2020-05-22 01:40:01.493' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (601, 1, N'::1', 70, 26, N'Post', CAST(N'2020-05-22 01:40:41.527' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (602, 1, N'::1', 95, 29, N'Image', CAST(N'2020-05-22 01:40:41.550' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (603, 1, N'::1', 267, 32, N'Tag', CAST(N'2020-05-22 01:40:41.570' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (604, 1, N'::1', 268, 32, N'Tag', CAST(N'2020-05-22 01:40:41.587' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (605, 1, N'::1', 269, 32, N'Tag', CAST(N'2020-05-22 01:40:41.597' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (606, 1, N'::1', 5, 23, N'Video', CAST(N'2020-05-22 01:42:58.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (607, 1, N'::1', 6, 23, N'Video', CAST(N'2020-05-22 01:43:13.107' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (608, 1, N'::1', 7, 23, N'Video', CAST(N'2020-05-22 01:43:28.833' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (609, 1, N'::1', 8, 23, N'Video', CAST(N'2020-05-22 01:43:44.580' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (610, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-23 23:54:51.750' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (611, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-31 07:52:53.287' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (612, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-31 07:53:40.343' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (613, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-31 07:54:31.870' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (614, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-31 07:54:54.193' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (615, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-31 07:55:13.437' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (616, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-31 07:55:48.603' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (617, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-31 08:07:00.193' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (618, 1, N'::1', 1, 3, N'Address', CAST(N'2020-05-31 08:07:28.267' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (619, 1, N'::1', 12, 1, N'Login', CAST(N'2020-05-31 15:53:25.697' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (620, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-01 08:00:40.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (621, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-01 19:49:43.327' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (622, 1, N'::1', 63, 27, N'Post', CAST(N'2020-06-01 19:50:52.567' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (623, 1, N'::1', 96, 29, N'Image', CAST(N'2020-06-01 19:50:52.583' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (624, 1, N'::1', 270, 32, N'Tag', CAST(N'2020-06-01 19:50:52.603' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (625, 1, N'::1', 271, 32, N'Tag', CAST(N'2020-06-01 19:50:52.613' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (626, 1, N'::1', 272, 32, N'Tag', CAST(N'2020-06-01 19:50:52.617' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (627, 1, N'::1', 273, 32, N'Tag', CAST(N'2020-06-01 19:50:52.623' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (628, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 11:39:18.993' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (629, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 11:42:27.810' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (630, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 11:45:07.923' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (631, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 11:48:14.450' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (632, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:03:31.177' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (633, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:04:28.287' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (634, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:16:45.800' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (635, 1, N'::1', 1, 35, N'Comment', CAST(N'2020-06-03 12:16:57.010' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (636, 1, N'::1', 2, 36, N'Comment', CAST(N'2020-06-03 12:17:04.893' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (637, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:28:57.357' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (638, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:32:19.423' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (639, 1, N'::1', 4, 35, N'Comment', CAST(N'2020-06-03 12:33:58.333' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (640, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-03 12:36:35.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (641, 1, N'::1', 5, 35, N'Comment', CAST(N'2020-06-03 12:36:48.830' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (642, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-04 09:20:22.227' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (643, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-04 09:24:26.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (644, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-04 09:25:37.477' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (645, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-04 09:28:24.033' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (646, 1, N'::1', 1, 35, N'Comment', CAST(N'2020-06-04 09:28:41.087' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (647, 1, N'::1', 2, 36, N'Comment', CAST(N'2020-06-04 09:28:49.963' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (648, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 08:53:22.073' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (649, 1, N'::1', 3, 37, N'Contact', CAST(N'2020-06-06 08:53:44.347' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (650, 1, N'::1', 2, 38, N'Contact', CAST(N'2020-06-06 08:53:55.647' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (651, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 08:55:33.020' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (652, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 09:05:59.983' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (653, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 09:07:44.820' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (654, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 09:15:46.653' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (655, 1, N'::1', 5, 37, N'Contact', CAST(N'2020-06-06 09:16:23.693' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (656, 1, N'::1', 5, 38, N'Contact', CAST(N'2020-06-06 09:16:31.940' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (657, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 10:49:46.127' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (658, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 10:56:58.167' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (659, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 10:58:20.650' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (660, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 11:02:19.267' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (661, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 11:44:20.667' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (662, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 11:48:42.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (663, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 12:13:22.537' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (664, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 12:14:59.850' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (665, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 13:02:18.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (666, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 13:04:13.020' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (667, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 13:56:14.380' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (668, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 14:15:22.177' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (669, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-06 14:15:50.943' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (670, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-08 13:16:07.500' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (671, 1, N'::1', 5, 5, N'Ads', CAST(N'2020-06-08 13:17:27.180' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (672, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-08 13:18:13.117' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (673, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-09 08:50:25.780' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (674, 1, N'::1', 6, 5, N'Ads', CAST(N'2020-06-09 08:50:57.897' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (675, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-09 21:49:54.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (676, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-09 21:55:48.007' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (677, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-09 22:09:47.040' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (678, 1, N'::1', 14, 35, N'Comment', CAST(N'2020-06-09 22:10:01.580' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (679, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-10 07:19:02.683' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAdress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (680, 1, N'::1', 12, 1, N'Login', CAST(N'2020-06-10 08:29:59.067' AS DateTime))
SET IDENTITY_INSERT [dbo].[Log_Table] OFF
SET IDENTITY_INSERT [dbo].[Meta] ON 

INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Keywords', N'OAK,oak,OAK Academy', CAST(N'2020-05-06 15:10:32.340' AS DateTime), 0, NULL, 1, CAST(N'2020-05-06 15:10:32.340' AS DateTime))
INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Description', N'Academy', CAST(N'2020-05-06 15:39:08.447' AS DateTime), 0, CAST(N'2020-05-17 13:59:18.500' AS DateTime), 1, CAST(N'2020-05-17 13:59:18.500' AS DateTime))
INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Keywords', N'OAK', CAST(N'2020-05-17 14:06:43.450' AS DateTime), 1, CAST(N'2020-05-17 14:32:04.583' AS DateTime), 1, CAST(N'2020-05-17 14:32:04.583' AS DateTime))
INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'Keywords', N'Academy,Education', CAST(N'2020-05-17 14:06:52.060' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 14:06:52.060' AS DateTime))
SET IDENTITY_INSERT [dbo].[Meta] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Java Programming: Learn Java and Improve Core Java Skills', N'Learn Java Programming with hands-on examples.This Core Java online course will take you more experienced level at Java', N'<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Course Details</em></span></span></span></h4>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hello there,</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Welcome to the <strong>Java Programming: Learn Java and Improve Core Java Skills </strong>course online.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This Java Programming online course is <strong>one of the most awesome </strong>Udemy courses which teach step by step and follow methodology in introducing concepts and demos ( learn by doing ) to the students so that they can learn with ease Java and learn the core Java skills needed to apply for Java developer positions.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This Java Programming course is a project-based and we will do <strong>7 awesome projects</strong> during the course. During the course we will do more than <strong>50 coding exercises</strong>.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">In this course <em><strong>you will learn</strong></em>;</span></span></p>

<ul>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">What Java is and how it works,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Programming Fundamentals with Java,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Eclipse</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Java Development Kit - JDK,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Java Runtime Environment &ndash; JRE,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Java Virtual Machine - JVM</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">All Concepts of Object-Oriented Programming</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">How To Use &lsquo;Static&rsquo; Keyword and &lsquo;Nested and Inner&rsquo; Classes</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Super Classes and Sub Classes</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Strings,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Wrapper Classes,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Throw and Throws</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Exceptions,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Swing</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Layouts and Grid Layout</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Enum Types and more</span></span></li>
</ul>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>Why would you want to take this course?</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Our answer is simple: The quality of teaching.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">When you enroll Java Programming online course, you will feel the OAK Academy`s seasoned developers expertise.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>No Previous Knowledge is needed!</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>This course will take you from a beginner to a more experienced level.</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This Java course takes you from absolute beginner core concepts, like showing you the free tools you need to download and install, to writing your very first Java program. You will learn the core java skills step by step with hands-on examples. If you are from the field and need a refresher this course will be a guide for you, too. Every time you come back to this course you will learn something new or improve yourself.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>Fresh Content</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Owners of Java ( Oracles ) are releasing new versions of Java at least twice in a year and it&rsquo;s no secret how technology is advancing at a rapid rate. It&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>Video and Audio Production Quality</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">You will be,</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot; Seeing clearly</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot; Hearing clearly</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot; Moving through the course without distractions</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>You&#39;ll also get:</strong></em></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Lifetime Access to The Course</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Fast &amp; Friendly Support in the Q&amp;A section</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Udemy Certificate of Completion Ready for Download</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Dive in now!</strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">We offer <strong>full support</strong>, answering any questions.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">See you in the course!</span></span></p>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Requirements</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">No prior knowledge is required!</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Basic Computer Knowledge</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Desire to learn Java Core Skills</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We prefered Windows OS but this is not mandatory. You can prefer to use other Operating Systems. We also provided specific videos on installations for each platform</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">We prefered Eclipse which is a powerful and advanced text editor with a lot of plug-ins and tools</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>What you will learn</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Proficiency in Java 11</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Proficiency in Eclipse</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Obtain Core Java skills</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Essential Java basics</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">What Java is and how it works</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Programming fundamentals with Java</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Java Development Kit - JDK</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Java Runtime Environment &ndash; JRE</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Java Virtual Machine - JVM</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">All concepts of Object-Oriented Programming</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">How to use &lsquo;static&rsquo; keyword and &lsquo;nested and inner&rsquo; classes</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Super Classes and Sub Classes</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Strings</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Wrapper Classes</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Throw vs Throws</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Exceptions</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Swing</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Layouts and Grid Layout</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Enum Types and more</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Who should attend</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Beginners with no previous coding experience</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Programmers who are looking to sharpen their skills to the expert level</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to learn important subjects of Java like Strings, Exceptions, Swing and Enum Types and etc.</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to create desktop applications, web applications, enterprise applications, mobile applications, computer games with Java</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who are planning job transformation and want to become Java developer</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who are beginner but wants to become expert</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to become a computer programmer</span></span></li>
</ul>
', 5, 0, N'java-programming-learn-java-and-improve-core-java-skills', 1, 1, 0, 1, 0, N'English', CAST(N'2020-05-14 17:15:22.077' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-17 00:32:30.043' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'React Native: Learn React Native With Hands-On Practices2', N'Learn React Native from scratch. Use React Native to build iOS and Android Apps and dive deeper into React Native2', N'<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Course Details</em></span></span></span></h4>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hello there,</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Welcome to <strong>React Native: Learn React Native With Hands-On Practices</strong> course.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">React-Native is a library developed by the React team and it is widely used to create mobile applications for both<strong> Android and IOS</strong>. You do not need to learn Java, Android, Swift, Objective-C or anything of that.&nbsp; <strong>React and JavaScript is all you need </strong>to create awesome mobile apps that work on both Android and iOS.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This course is for beginners. We will take you from beginner to advance level.&nbsp; You will learn <strong>React</strong> development <strong>step-by-step with hands-on demonstrations</strong>. To be able to benefit from this course, all you need is a basic understanding of JavaScript.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">In the course, we are going to tell you what dependencies you need to install and how in detail, to be able to create mobile apps on both MAC and Windows. We are going to use free tools and platforms so you don&#39;t have to buy any tool or app. You are going to learn how to run an Android and iOS simulator on your MAC or Windows computer.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Later on the course, we are going to learn the basics of React.&nbsp; JSX, &#39;props system&#39; and &#39;state system&#39; are going to be crystal clear for you at the end of the course.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">We&#39;ll be creating nice-looking reusable components. So you will be able to use this reusable component on your own future projects.On</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">In this course, I explained all the complex topics in very detail but by making them simpler which I believe will help you a lot. I used some diagrams to tell some important topics and created a nice looking mobile application.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>At the end of the course;</strong></span></span></p>

<ul>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Basics of React and React-Native libraries,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">How to send an HTTP request from a mobile application,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">How to use the flex-box system,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">How to create reusable components,</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">To reach another app on the device from our app and</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Creating your own mobile app is going to be clear for you.</span></span></li>
</ul>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Why would you want to take this course?</strong>&nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Our answer is simple: The quality of teaching.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>No prior knowledge is needed!</strong>&nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">It doesn&#39;t need any prior knowledge to learn OOP.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This course starts with&nbsp;very basics. First, you will learn some terminology. Then the show will start and you will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">By the end of the course, you&rsquo;ll have a firm understanding of the OOP with C# and hungry to learn more.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Video and Audio Production Quality</strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">You will be,</span></span></p>

<ul>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Seeing clearly</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hearing clearly</span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Moving through the course without distractions</span></span></li>
</ul>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>You&#39;ll also get:</strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Lifetime Access to The Course</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Fast &amp; Friendly Support in the Q&amp;A section</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-family:&quot;Segoe UI Symbol&quot;,sans-serif">?</span> Udemy Certificate of Completion Ready for Download</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Dive in now!</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">We offer&nbsp;<strong>full support</strong>, answering any questions.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">See you in the course!</span></span></p>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Requirements</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">No prior React and React-Native knowledge</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">JavaScript + HTML + CSS fundamentals are absolutely required but you don&#39;t need to be an expert</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Basic ES6 knowledge would be beneficial but not required</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Desire to learn React Native</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Computer with access to the internet</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>What you will learn</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Set up our virtual environment</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Install React-Native dependencies for MAC and Windows</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Run Android and IOS simulator</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">JSX syntax and expressions</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">ES6 syntax</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">See the content on the simulator</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Styling with React-Native and flex-box rules</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Send an HTTP request to a remote API</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">State ve Props systems</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Reusable components</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Reach another app on the phone from the React-Native app</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Who should attend</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Programmers who want to learn React and React-Native</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Someone who has basic HTML, CSS and JavaScript knowledge and wants to learn how to create complex applications</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to create mobile applications for both Android and IOS</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">People who are willing to make a career in the application world2</span></span></li>
</ul>
', 6, 0, N'react-native-learn-react-native-with-hands-on-practices2', 1, 0, 1, 1, 1, N'English', CAST(N'2020-05-14 17:17:25.617' AS DateTime), 1, 1, CAST(N'2020-05-21 01:52:51.933' AS DateTime), 1, CAST(N'2020-05-21 01:52:51.933' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Unity For Beginners:Game Development From Scratch with Unity', N'Learn Unity by developing 2D games, use Unity and develop your game with the ultimate guide to game development2', N'<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Course Details</em></span></span></span></h4>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hi everyone,</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Welcome to my <strong>&quot;Learn Game Development From Scratch with C# Unity</strong> <strong>&quot; </strong>course.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Gaming on the Go</strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Mobile games have a long way since Game Boy, but like any game on any platform, mobile games are made to keep us having fun. &nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">This time you will not just play and enjoy but also <strong>learn to create video games with Unity C#</strong>.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">My Unity course utilizes a unique teaching method which will allow you to gain a thorough understanding of concepts. If you interested in game development with Unity and C# and is looking for an interactive, project-based course then my course will be a perfect starter for you to develop your own games.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">By the end of this course you will learn to;</span></span></p>

<ul>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Navigate the Unity Engine and discover unique features like the Asset Store</strong></span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>Detect collisions, receive user input, and create player movements</strong></em></span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Collect and destroy game objects</strong></span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Build 2D Unity games &amp; work with sprites</strong></span></span></li>
	<li><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>and also you will gain confidence in translating theories of physics into working game code</strong></span></span></li>
</ul>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">With my Unity course you will also have a brief idea regarding the gaming sector. As the mobile is set to be the dominant trend for the foreseeable future, I believe the same can be confidently said of mobile gaming as well.</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">If you want to start a new career or if you want to have a new hobby which can turn into a profitable business in a short-term then do not wait! &nbsp;</span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong>Dive in now, you won&#39;t be disappointed!&nbsp;</strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong>Because&nbsp;by the end of the course you&#39;ll be very confident in the basics of coding and game development, and HUNGRY&nbsp;to learn more.</strong></em></span></span></p>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Requirements</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">A computer to install and run Unity</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">People who will enroll should have basic computer experience and knowledge</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Have an eagerness to learn</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Nothing else! It&rsquo;s just you, your computer and your ambition to get started now</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>What you will learn</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Gain an excellent general knowledge of game creation in Unity</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Navigate the Unity Engine and discover unique features like the Asset Store</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Detect collisions, receive user input, and create player movements</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Collect and destroy game objects</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Activate and use Unity&rsquo;s Team Collaboration service</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Learn C#</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Learn the fundamentals of game design</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Build 2D Unity games &amp; work with sprites</span></span></li>
</ul>

<h4><span style="font-size:11pt"><span style="font-family:&quot;Calibri Light&quot;,sans-serif"><span style="color:#2e74b5"><em>Who should attend</em></span></span></span></h4>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to learn Unity Game Engine</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to build games for iOS and Android devices</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who wants to learn how to coding with C# programming language</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone want wants to learn how to monetise games with Google Admob ads</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone who has a love for game development</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone interested in developing commercial quality 2D games either professionally or as a hobby</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">Anyone interested in Unity and C# and is looking for an interactive, project-based course</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif">People who are willing to make a career in Game Development2</span></span></li>
</ul>
', 7, 0, N'unity-for-beginners-game-development-from-scratch-with-unity', 1, 0, 1, 1, 1, N'English', CAST(N'2020-05-14 17:18:37.937' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-17 00:30:53.450' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'd1', N'd1', N'<p>d1</p>
', 8, 0, N'd1', 1, 1, 0, 0, 0, N'english', CAST(N'2020-05-21 11:39:59.737' AS DateTime), 1, 1, CAST(N'2020-05-21 11:41:17.967' AS DateTime), 1, CAST(N'2020-05-21 11:41:17.967' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'p2', N'p2', N'<p>p2</p>
', 8, 0, N'p2', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-21 11:40:24.190' AS DateTime), 1, 1, CAST(N'2020-05-21 11:41:18.013' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.013' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'C# For Beginners: Learn C# Programming From Scratch', N'Learn to code with C#: Learn the most popular game development language C# Fundamentals with Visual Studio and examples', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>&quot;C# For Beginners: Learn C# From Scratch&quot;</strong> course.</p>

<p>If <strong>all you want to learn is C#,</strong>&nbsp;our new beginner course is the perfect place for you to start.</p>

<p>We designed C# .NET (pronounced&nbsp;C- <em>see&nbsp; #-sharp</em> ) course to give you everything you need to become a productive with <strong>C# </strong>. C# is a cross-platform language that can be used to build variety of applications. With C#, you can build mobile apps (for Windows, Android and iOS), games, web sites and desktop applications.&nbsp; C# is also a widely used and the most popular game development language among <strong>Unity </strong>developers.</p>

<p><strong>Learn to code with C# today!</strong></p>

<p>Maybe you&rsquo;re a college kid in the middle of achieving your masters in computer science or maybe you&rsquo;re a coder for a major Cloud hosting firm constantly looking to improve your C# skills.&nbsp; Whatever the case, <strong>learning game development </strong>extends far beyond the game programming and nowadays more and more companies are looking to hire bright coders with a background in C#.</p>

<p>That`s why you are at a great place to start with C#.&nbsp;</p>

<p>All my students will have a chance to learn not only the whats, but also&nbsp;<strong>learn the whys, and hows</strong>.</p>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p>C# Programming and Features of C#</p>
	</li>
	<li>
	<p>Visual Studio IDE</p>
	</li>
	<li>
	<p>Console Application</p>
	</li>
	<li>
	<p>Variables</p>
	</li>
	<li>
	<p>Primitive Types and Non-Primitive Types</p>
	</li>
	<li>
	<p>Flow Control Expressions</p>
	</li>
	<li>
	<p>Arrays and Lists</p>
	</li>
	<li>
	<p>Error Handling and Debugging</p>
	</li>
	<li>
	<p>Functions</p>
	</li>
	<li>
	<p>Reading File</p>
	</li>
	<li>
	<p>Writing to File</p>
	</li>
	<li>
	<p>DateTime</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn it and the&nbsp;<strong>C#</strong> is easy to understand&nbsp;for the beginners.&nbsp;</p>

<p>This course starts with&nbsp;very basics. First, you will learn how to install the the tools, some terminology. Then the show will start and you will&nbsp; learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the C# language and valuable insights on how things work under the hood and you&#39;ll also be very confident in the basics of coding and game development, and hungry to learn more.&nbsp;Good news is since&nbsp;the <strong>Free and popular tools are used</strong> you don&rsquo;t need to buy any tool or application.</p>

<p>&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Dive in now!</p>

<p>&nbsp;</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>&nbsp;</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge of C# is required</li>
	<li>A Windows or Mac for installing all the free software and tools needed to practice</li>
	<li>Desire to learn C#</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn C# from scratch</li>
	<li>Learn the fundamentals of C# and .NET Framework</li>
	<li>Work with Primitive Types and Expressions</li>
	<li>Work with classes, structs, arrays</li>
	<li>Learn the difference between value types and reference types</li>
	<li>Use Arrays and Lists</li>
	<li>Work with Date and Time</li>
	<li>Debug C# applications</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Newbies or students looking for a refresher on the basics of C# and .NET</li>
	<li>People who wants to learn C#</li>
	<li>People who wants to read and write C# code</li>
	<li>People who wants to learn Visual Studio</li>
	<li>People who want to learn game development &amp; design</li>
	<li>People who wants to understand the Unity better</li>
	<li>People who wants to develeop 2D or 3D games</li>
	<li>People who wants develop their own game</li>
</ul>
', 5, 55, N'c-for-beginners-learn-c-programming-from-scratch', 1, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 00:12:48.937' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:12:48.937' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'Metasploit Framework: Penetration Testing with Metasploit', N'Become Hacker: Learn ethical hacking and penetration testing using Metasploit and start your cyber security career', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to <strong>&quot;Metasploit Framework: Penetration Testing with Metasploit&quot; </strong>course.</p>

<p>In this course you will learn ethical hacking with the best ethical hacking distribution Kali, and the tool: <strong>Metasploit.</strong></p>

<p>This is not a pure Penetration Testing course but <strong>Complete Penetration Testing with Metasploit </strong>course.</p>

<p>In this course you will <strong>learn the capabilities of the Metasploit Framework</strong> while you are doing a penetration test.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p>You don&rsquo;t need to have a previous knowledge about all. <strong>This course will take you from a beginner to a more advanced level with hands-on examples.</strong></p>

<p><strong><em>Learn the famous hacking framework Metasploit</em></strong></p>

<p>We will start with very basics. First you will learn to set up laboratory. Then you will learn</p>

<p>-how to scan vulnerabilities</p>

<p>-gain full access to computer systems</p>

<p>-to discover the weaknesses and vulnerabilities and at the end of the course you will become a Metasploit pro.</p>

<p><strong>We will be conducting penetration testing only with Metasploit Framework </strong>and by doing so, we want to show you how to use the framework and cover as much as modules that I can.</p>

<p><strong><em>Hands-On Course</em></strong></p>

<p>From open-source research and information gathering to the exploitation and covering of their tracks, you will learn hands-on techniques to probe your network for vulnerabilities and understand how they are exploited. You will learn to think like a hacker in order to thwart black hat hackers future attacks on your networks.</p>

<p>Here is the list of <strong>what you&rsquo;ll learn by the end of course,</strong></p>

<ul>
	<li>
	<p>Penetration Testing with Metasploit</p>
	</li>
	<li>
	<p>Why Metasploit Framework? aka: MSF</p>
	</li>
	<li>
	<p>Metasploit Filesystem and Libraries</p>
	</li>
	<li>
	<p>Enumeration</p>
	</li>
	<li>
	<p>Vulnerability Scanning</p>
	</li>
	<li>
	<p>Exploitation and Gaining Access</p>
	</li>
	<li>
	<p>Post-exploitation-Meterpreter</p>
	</li>
	<li>
	<p>Antivirus Evasion and Cleaning</p>
	</li>
</ul>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better security specialist. You will always have up-to-date content to this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p><strong>IMPORTANT: This course is created for educational purposes and all the information learned should be used when the attacker is authorized.</strong></p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Be able to download and install all the free software and tools needed to practice</li>
	<li>A strong work ethic, willingness to learn and plenty of excitement about the back door of the digital world</li>
	<li>Just you, your computer and your ambition to get started now!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Become an Expert in Using Metasploit</li>
	<li>Learn Ethical Hacking from scratch with Metasploit</li>
	<li>Importance of Penetration Testing</li>
	<li>Types of Penetration Testing</li>
	<li>Basics of Penetration Testing</li>
	<li>Metasploit Filesystem and Libraries</li>
	<li>The Architecture of MSF</li>
	<li>Auxiliary Modules</li>
	<li>Payload Modules</li>
	<li>Exploit Modules</li>
	<li>Encoder Modules</li>
	<li>Post Modules</li>
	<li>Metasploit Community</li>
	<li>Metasploit Interfaces</li>
	<li>Armitage</li>
	<li>MSFconsole</li>
	<li>Enumeration</li>
	<li>Nmap Integration and Port Scanning</li>
	<li>SMB and Samba Enumeration</li>
	<li>MySQL Enumeration</li>
	<li>FTP Enumeration</li>
	<li>SSH Enumeration</li>
	<li>HTTP Enumeration</li>
	<li>SNMP Enumeration</li>
	<li>MTP Enumeration</li>
	<li>Using Shodan with MSF</li>
	<li>Vulnerability Scanning</li>
	<li>Exploitation and Gaining Access</li>
	<li>Post-exploitation-Meterpreter</li>
	<li>Meterpreter Commands</li>
	<li>Pass The Hash with Metasploit</li>
	<li>John the Ripper Module</li>
	<li>Meterpreter Python/Powershell Extension</li>
	<li>Antivirus Evasion and Cleaning</li>
	<li>MSFvenom</li>
	<li>Using Custom Payload Generators</li>
	<li>Deceiving File System Using Timestomp</li>
	<li>The very latest up-to-date information and methods</li>
	<li>During the course you will learn both the theory and how to step by step setup each method</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to become Metasploit Superstar</li>
	<li>Anyone who wants to learn Metasploit</li>
	<li>Anyone who wants to learn Penetration Test with Metasploit</li>
	<li>Anyone who wants to learn the tools to exploit vulnerabilities,</li>
	<li>Anyone who wants to learn Metasploit as exploitation and post exploitation tool</li>
	<li>Anyone who wants to learn &quot;Pass the hash&quot; method to compromise a Windows system with no vulnerability</li>
	<li>Anyone who wants to learn how to crack password hashes</li>
	<li>People who are willing to make a career in Cyber Security</li>
	<li>Anyone already in Cybersecurity but needs a up-to-date and good refresher</li>
	<li>Anyone who are beginner but wants to become expert</li>
</ul>
', 2, 0, N'metasploit-framework-penetration-testing-with-metasploit', 0, 1, 0, 1, 0, N'English', CAST(N'2020-05-22 00:13:51.960' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:13:51.960' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'R For Beginners: Learn R Programming from Scratch', N'Learn R Programming in R and R Studio, analyse data with R programming course and become professional at data mining', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to my <strong>&ldquo;R For Beginners: Learn R Programming from Scratch&rdquo;</strong> course.</p>

<p>In this course you will learn how to code with <strong>R Programming Language</strong>, manage and analyse data with R programming and report your findings.</p>

<p>R programming language is a leading data mining technology. To learn data science, if you don&rsquo;t know which high return programming language to start with. The answer is R programming.</p>

<p><strong><em>This R programming course is for</em></strong>:</p>

<ul>
	<li>
	<p>Students in statistical courses,</p>
	</li>
	<li>
	<p>Analysts who produce statistical reports,</p>
	</li>
	<li>
	<p>Professional programmers on other languages,</p>
	</li>
	<li>
	<p>Academic researchers developing statistical methodology,</p>
	</li>
	<li>
	<p>Specialists in various area who need to develop sophisticated graphical presentations of data,</p>
	</li>
	<li>
	<p>and anyone who is particularly interested in big data, machine learning and data intelligence.</p>
	</li>
</ul>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p><strong>This course will take you from a beginner to a more advanced level.</strong></p>

<p>If you are new to data science, no problem, you will learn anything you need to start with R.</p>

<p>If you are already used to R and you just need a refresher, you are also in the right place.</p>

<p>&nbsp;</p>

<p>Here is the list of <strong>what you&rsquo;ll learn by the end of course,</strong></p>

<p>&middot; Installation</p>

<p>&middot; R Console Versus R Studio</p>

<p>&middot; R and R Studio Installation</p>

<p>&middot; Basic Syntax</p>

<p>&middot; Data Types in R</p>

<p>&middot; Operators and Functions in R</p>

<p>&middot; R Packages</p>

<p>&middot; Managing R Packages</p>

<p>&middot; Data Management in R</p>

<p>&middot; Getting Data into R</p>

<p>&middot; Computation and Statistics</p>

<p>&middot; Hands on Projects Experimental Learning</p>

<p><strong>After every session you will have a strong set of skills to take with you</strong> into your Data Science career.</p>

<p>So, This is the right course for anyone who wants to learn learn R from scratch or for anyone who needs a refresher.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge. You will always have up-to-date content to this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No Previous Knowledge is needed!</li>
	<li>Be able to download and install all the free software and tools needed to practice</li>
	<li>A strong work ethic, willingness to learn and plenty of excitement about the data mining</li>
	<li>Just you, your computer and your ambition to get started now!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>R and R Studio Installation</li>
	<li>R Console</li>
	<li>R Studio</li>
	<li>Data Types in R</li>
	<li>Operators and Functions in R</li>
	<li>R Packages</li>
	<li>Managing R Packages</li>
	<li>Data Management in R</li>
	<li>Getting Data into R</li>
	<li>Computation and Statistics</li>
	<li>Hands on Projects</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Students who need R for their courses</li>
	<li>Students in statistical courses</li>
	<li>Web developers who want to implement data analysis features in their webpage</li>
	<li>Professional programmers on other languages</li>
	<li>Everybody interested in statistics and data sciences</li>
	<li>Researchers who perform data analysis including graphs</li>
	<li>Professionals working in analytics or related fields</li>
	<li>Analysts who produce statistical reports</li>
	<li>Specialists in various area who need to develop sophisticated graphical presentations of data</li>
	<li>Anyone who is particularly interested in big data, machine learning and data intelligence</li>
</ul>
', 5, 43, N'r-for-beginners-learn-r-programming-from-scratch', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 00:15:13.763' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:15:13.763' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, N'Mobile App Marketing: Learn App Monetization From Scratch', N'Learn mobile app monetization strategies to monetize your app and create a profit-generating app business', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>&quot;Mobile App Marketing: Learn App Monetization From Scratch&quot;</strong> course.</p>

<p>Do want to create a successful mobile app business?</p>

<p>Do you know;</p>

<ul>
	<li>
	<p>How to make money with your Apps?</p>
	</li>
	<li>
	<p>How to put Adds adds into your Apps?</p>
	</li>
	<li>
	<p>How you can turn a non-paying user to a paying user?</p>
	</li>
	<li>
	<p>What can you sell to your subscribers?</p>
	</li>
	<li>
	<p>How can you re-engage with your users?</p>
	</li>
</ul>

<p>If you want to learn all the answers <strong>&quot;Mobile App Marketing: Learn App Monetization From Scratch&quot; </strong>course is the perfect place for you to start.</p>

<p>This course is specifically designed for the<strong> Beginner all the way up to Advanced;</strong></p>

<ul>
	<li>
	<p>Ad Monetization Experts,</p>
	</li>
	<li>
	<p>App Developers</p>
	</li>
	<li>
	<p>Mobile App entrepreneur</p>
	</li>
	<li>
	<p>Marketing, strategy, and ad consultants who want to expand their business and offer more to their clients,</p>
	</li>
	<li>
	<p>Technical or non-technical entrepreneurs</p>
	</li>
</ul>

<p>who needs to <strong>learn </strong>how to successfully <strong>Market, Promote and Monetize</strong> your apps, so that you can actually make a living doing what you enjoy the most!</p>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Everyone is talking about design, coding but no-one is talking about <strong>how to make money with apps</strong>.&nbsp; There are a tons of tutorials for how to make game, but everyone is silent about making money with apps and they are keeping it as a secret. We believe the power of sharing. Sharing is caring, any? So we decided to come out and teach you how to actually make money with apps.</p>

<p><strong><em>In this course we will cover;</em></strong></p>

<ul>
	<li>
	<p>Key Metrics ( Revenue Metrics, User Acquisition, Engagement Tracking , etc )</p>
	</li>
	<li>
	<p>App Publishing Process</p>
	</li>
	<li>
	<p>App Monetization Types</p>
	</li>
	<li>
	<p>Ad Monetization ( Ad Networks, Ad Mediation Platforms, Ad Placement Strategies )</p>
	</li>
	<li>
	<p>Ad Placement Strategies ( Banner, Native, Interstitial, Rewarded Video )</p>
	</li>
	<li>
	<p>Ad Monetization Tips</p>
	</li>
	<li>
	<p>IAP Monetization</p>
	</li>
	<li>
	<p>Subscription Model</p>
	</li>
	<li>
	<p>Retention Increasing Tips</p>
	</li>
</ul>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers and marketing experts expertise.&nbsp;</p>

<p><strong>Step-by-Step Way</strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the <strong>how to make money with apps. </strong>Good news is since&nbsp;the <strong>Free and popular tools are used</strong> you don&rsquo;t need to buy any tool or application.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Dive in now!</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required</li>
	<li>No pre-requisites necessary</li>
	<li>Desire to learn App Business</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>You will learn how to correctly monetize your app</li>
	<li>You will learn how to make more money with your app</li>
	<li>You will learn to generate more revenue with your app</li>
	<li>Top app monetization strategies</li>
	<li>You will learn about mobile app business</li>
	<li>You will learn how to grow your app business</li>
	<li>You will become a much stronger mobile app entrepreneur</li>
	<li>Retention increasing tips</li>
	<li>Mobile App Publishing Types</li>
	<li>In-App Purchase Monetization</li>
	<li>Ad Placement Strategies</li>
	<li>Ad Mediation Platforms</li>
	<li>Analytical Tools` dashboards</li>
	<li>Ad Network</li>
	<li>User Acquisition Campaigns</li>
	<li>Fill Rate/Match Rate</li>
	<li>eCPM/RPM</li>
	<li>LTV</li>
	<li>ARPDAU (Average Revenue per Daily Active User)</li>
	<li>ARPU (Average Revenue Per User )</li>
	<li>Difference between ARPDAU and ARPU</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Mobile app entrepreneurs</li>
	<li>Mobile app developers who want to learn how to expand their skills into a business</li>
	<li>Technical or non-technical entrepreneurs who want to start mobile app business</li>
	<li>Freelancers who want to add development services to their offerings</li>
	<li>Marketing, strategy, and ad consultants who want to expand their business and offer more to their clients</li>
	<li>Anyone who have an app on the store</li>
	<li>Anyone who wants to correctly monetize app</li>
	<li>Anyone who wants to become a much stronger mobile app entrepreneur</li>
	<li>Anyone who wants to grow app business</li>
</ul>
', 6, 0, N'mobile-app-marketing-learn-app-monetization-from-scratch', 0, 1, 1, 1, 0, N'English', CAST(N'2020-05-22 00:16:04.190' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:16:04.190' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (10, N'Spring Boot: Learn Spring Boot From Scratch', N'Learn Rest, JDBC, Database, Maven and all other details of Spring Boot with this course and become Spring Boot master', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to <strong>Spring Boot: Learn Spring Boot From Scratch </strong>course.</p>

<p>Do you want to learn;</p>

<ul>
	<li>
	<p><strong><em>Rest ?</em></strong></p>
	</li>
	<li>
	<p><strong><em>Spring Boot ?</em></strong></p>
	</li>
	<li>
	<p><strong><em>Every Fundamental Details of Spring Boot ?&nbsp; </em></strong></p>
	</li>
</ul>

<p>If your answer is &quot;YES&quot; this course is the perfect place for you to start.</p>

<p>We designed this course for anyone who wants to understand and develop production-ready Spring Applications with minimum configurations. This course explores major features of Spring Boot such as Spring Boot Starters, Auto Configuration, Beans, Actuator and more.</p>

<p>In this Spring Boot course <strong>you will learn</strong>;</p>

<ul>
	<li>
	<p>to create an enterprise Web Application Form from scratch,</p>
	</li>
	<li>
	<p>handle basic necessities like Crud Scenarios, Database Connectivity, Basic Query Issues, Unit and Integration Testing</p>
	</li>
	<li>
	<p>creating and consuming REST services.</p>
	</li>
	<li>
	<p>Major Spring Framework Capabilities like profiling, working with different environment annotations and more</p>
	</li>
	<li>
	<p>Creating Demo Web Application and implement the domain step by step</p>
	</li>
	<li>
	<p>How to create executable Jar Files on Project</p>
	</li>
	<li>
	<p>How to code test classes using Spring Boot Testing Capability -Rest Services</p>
	</li>
	<li>
	<p>How to connect a database using JDBC</p>
	</li>
	<li>
	<p>Major Annotations</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better specialist. You will always have up-to-date content to this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Be able to download and install all the free software and tools needed to practice</li>
	<li>Prior experience on Java, Spring, Maven and Eclipse Environment is an asset</li>
	<li>A strong work ethic, willingness to learn and plenty of excitement about the back door of the Spring Framework and Spring Boot</li>
	<li>Just you, your computer and your ambition to get started now!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Build awesome Web Applications using Spring Boot</li>
	<li>Learn every fundamental details of Spring Boot Framework</li>
	<li>Learn Environment Setups</li>
	<li>Spring Boots Development Tools</li>
	<li>Create a datasource in Spring Boot</li>
	<li>Test Rest Methods Programmaticaly</li>
	<li>Learn Using JDBC with Spring Boot</li>
	<li>Maven Build and Dependency Management</li>
	<li>Create Executable Jar File</li>
	<li>YAML and Java Based Configuration</li>
	<li>Spring Boot and Web MVC</li>
	<li>Working with JSP Technology</li>
	<li>Rest Services</li>
	<li>JDBC Query Basics</li>
	<li>Spring Test Modules</li>
	<li>Learn to use testing features of Spring Boot</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework Developers</li>
	<li>Java Developers who wish to create quality software</li>
	<li>Java Beginner developers who are seeking marketable skills</li>
	<li>Anyone wants to learn Spring Boot Step by Step with a Hands-on Approach</li>
	<li>Anyone wants to learn how to design and develop RESTful web services with Spring Boot</li>
	<li>Anyone wants to explore major features of Spring Boot</li>
	<li>Anyone wants to create an expertise web application from the very beginning</li>
	<li>Anyone wants to learn Spring Boot Developer Tools</li>
	<li>Anyone who are beginner but wants to become expert</li>
</ul>
', 4, 0, N'spring-boot-learn-spring-boot-from-scratch', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 00:17:02.840' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:17:02.840' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (11, N'Unity C# Game Development: Learn C# Unity From Scratch', N'Learn 2d & 3d game dev with C# Unity and become game maker. You will learn to design, create and publish your games.', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>Unity For Beginners:Game Development From Scratch with Unity </strong>course.</p>

<p>In this course you will learn;</p>

<ul>
	<li>
	<p>2d &amp; 3d game development with C# Unity</p>
	</li>
	<li>
	<p>to design, create and publish your games and you will become game maker.</p>
	</li>
</ul>

<p><strong>This course is completely project based </strong>and we believe this is the best way to learn<strong> Unity and C#</strong>.<strong>&nbsp; </strong>You will start to learn from scratch but you will not just be learning dry programming concepts, you will be applying them to games as you go. You will be shown<strong> step-by step</strong> how to build it. We will never let you get stuck.</p>

<p><strong><em>This </em>C# Unity Game Development<em> course is for</em>:</strong></p>

<ul>
	<li>
	<p>C# Unity Beginners</p>
	</li>
	<li>
	<p>Game Development Beginners</p>
	</li>
	<li>
	<p>Experienced Game Developers</p>
	</li>
	<li>
	<p>Anyone Who Wants To Learn Game Development</p>
	</li>
	<li>
	<p>Anyone who is interested in game development with Unity and C# and also is looking for an interactive, project-based course.</p>
	</li>
	<li>
	<p>Artists who want to learn to bring their assets into games</p>
	</li>
	<li>
	<p>Anyone who is looking for a new hobby which can turn into a profitable business</p>
	</li>
</ul>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p>C# Programming Basics</p>
	</li>
	<li>
	<p>Visual Studio IDE</p>
	</li>
	<li>
	<p>Unity Editor</p>
	</li>
	<li>
	<p>Unity Concepts</p>
	</li>
	<li>
	<p>User Interface</p>
	</li>
	<li>
	<p>Physics</p>
	</li>
	<li>
	<p>Tips and Trick for Unity</p>
	</li>
	<li>
	<p>and more!</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p><strong>This course will take you from a beginner to a more experienced level. </strong></p>

<p>If you are new to C# or Unity, no problem, you will learn anything you need to start with C# Unity.</p>

<p>If you are already used to Unity and you just need a refresher, you are also in the right place. You will learn step by step with hands-on examples.</p>

<p>Prefer to learn the app monetization?</p>

<p>Check-out our sister course, <strong>the Mobile App Marketing: Learn App Monetization From Scratch</strong>.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how gaming technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required</li>
	<li>A Windows or Mac for installing all the free software and tools needed to practice</li>
	<li>Desire to learn C# Unity</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn C# from scratch</li>
	<li>Learn the fundamentals of C# and .NET Framework</li>
	<li>Learn the fundamentals of game design</li>
	<li>Gain an excellent general knowledge of game creation in Unity</li>
	<li>Build 2D Unity games &amp; work with sprites</li>
	<li>Collect and destroy game objects</li>
	<li>Detect collisions, receive user input, and create player movements</li>
	<li>Activate and use Unity&rsquo;s Team Collaboration service</li>
	<li>Play Music In Your Game</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn C#</li>
	<li>Anyone who wants to read and write C# code</li>
	<li>Anyone who wants to develeop 2D or 3D games</li>
	<li>Anyone who wants develop their own game</li>
	<li>Anyone who want to learn game development &amp; design</li>
	<li>Anyone interested in Unity and C# and is looking for an interactive, project-based course</li>
	<li>Anyone who are willing to make a career in Game Development</li>
</ul>
', 7, 14, N'unity-c-game-development-learn-c-unity-from-scratch', 0, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 00:18:10.990' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:18:10.990' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (12, N'Become Oracle DBA:Learn Database Administration From Scratch', N'To become DBA start learning Database Basics, Oracle Database Administration, SQL and become an expert Oracle DBA', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>Become Oracle DBA: Learn Database Administration From Scratch </strong>course.</p>

<p>This Oracle DBA course is <strong>one of the most awesome </strong>Udemy courses which teach step by step and follow methodology in introducing concepts and demos ( Learn by doing ) to the students so that they can learn with ease Oracle Database Administration.</p>

<p>In this course <strong><em>you will learn</em></strong>;</p>

<ul>
	<li>
	<p>Downloading Oracle Software,</p>
	</li>
	<li>
	<p>Database and RDBMS Concepts,</p>
	</li>
	<li>
	<p>DML ( Data Manipulating Language ) and TCL ( Transaction Control Language ),</p>
	</li>
	<li>
	<p>Retrieving Data,</p>
	</li>
	<li>
	<p>Restricting And Sorting Data,</p>
	</li>
	<li>
	<p>Using Single Row Functions and Customize Output,</p>
	</li>
	<li>
	<p>Using Conversion Functions and Conditional Expressions,</p>
	</li>
	<li>
	<p>Reporting Aggregated Data Using The Group Functions,</p>
	</li>
	<li>
	<p>Defining Table Joins and Displaying Data from multiple Tables,</p>
	</li>
	<li>
	<p>Using Subqueries,</p>
	</li>
	<li>
	<p>Using The Set Operators,</p>
	</li>
	<li>
	<p>Schema Objects And Managing Schema,</p>
	</li>
	<li>
	<p>Controlling User Access,</p>
	</li>
	<li>
	<p>Manipulating Large Data Sets and more!</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p><strong><em>This course will take you from a beginner to a more experienced level. </em></strong></p>

<p>If you are new to Oracle Database, or have no idea about what a DBA does no problem, you will learn anything you need to start Oracle Database.</p>

<p>If you are a DBA or familiar to the Oracle Database / Oracle SQL&nbsp; and you just need a refresher, you are also in the right place. You will learn step by step with hands-on examples.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>You will find DBA&#39;s in almost every organization/business, to maintain the organization&#39;s database. Becoming a DBA is totaly depends on the knowledge you have in the overall architecture of Oracle Database. It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Oracle updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required!</li>
	<li>Basic Computer Knowledge</li>
	<li>Desire to learn Oracle Database Administration</li>
	<li>We prefered Windows OS , but this is not mandatory. You can prefer to use other Operating Systems</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
	<li>This is one of the most amazing Udemy courses in Oracle SQL</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>You would be able to install the necessary Oracle Software/Database</li>
	<li>Creating and Starting Oracle Database</li>
	<li>Creating A New Database User</li>
	<li>Database Concepts And Fundamentals</li>
	<li>Creating Tables</li>
	<li>Inserting, Updating and Deleting Data In The Table</li>
	<li>Retrieving Data From Table</li>
	<li>Filtering Result Set</li>
	<li>Sorting Data</li>
	<li>Limiting Result Set</li>
	<li>Using Ampersand Subtition To Make More Dynamic Queries</li>
	<li>Single Row Functions</li>
	<li>Reporting Aggregated Data</li>
	<li>Table Joins</li>
	<li>Using Subqueries</li>
	<li>Exists And Not Exists</li>
	<li>Using Set Operators</li>
	<li>Managing Schema Objects</li>
	<li>Dictionary Views To Manage Schema Objects</li>
	<li>Controlling User Access In Oracle</li>
	<li>Manipulating Large Datasets</li>
	<li>Let&#39;s start and I will take you step by step into the DBA world</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to become an Oracle DBA</li>
	<li>Anyone who plans a career in Oracle Data Administration</li>
	<li>Software developers whom want to increase SQL knwoledge</li>
	<li>Anyone who are studying Oracle 1Z0-071 Exams</li>
	<li>Anyone who are junior Oracle DBA&#39;s</li>
	<li>Anyone who are manage RDBMS and want to immigrate Oracle</li>
</ul>
', 3, 0, N'become-oracle-dba-learn-database-administration-from-scratch', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 00:19:02.457' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:19:02.457' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (13, N'SAP ABAP: Yeni Başlayanlar İçin Uygulamalı ABAP Programlama', N'SAP ABAP programlama kursuna katıl ve ABAP programlama dilini uygulamalı öğren! ABAP dilini adım adım öğreneceksiniz', N'<h4>Course Details</h4>

<p>Herkese selamlar,</p>

<p><strong>SAP ABAP: YENİ BAŞLAYANLAR İ&Ccedil;İN UYGULAMALI ABAP PROGRAMLAMA </strong>kursumuza hoşgeldiniz.</p>

<p>SAP ABAP Programlama dili SAP tarafından geliştirilen ve d&uuml;nyadaki en b&uuml;y&uuml;k kuruluşlar tarafından iş sistemlerini y&uuml;r&uuml;tmek i&ccedil;in kullanılan pop&uuml;ler bir kurumsal programlama dilidir.</p>

<p>Bu kursta; <strong>SAP ABAP ve SAP kurumsal sistemlerini en iyi şekilde nasıl programlayacağınızı uygulamalı &ouml;rneklerle sizlere anlatıyoruz</strong>.&nbsp; &nbsp;</p>

<p><strong><em>Kurs kimlere hitap ediyor?</em></strong></p>

<p>İster programlamada yeni olun, isterse ABAP&#39;ta yeni olun, bu SAP ABAP kursu, &ccedil;ok kısa s&uuml;rede herkesi program geliştirebilir hale getirmeyi planlamaktadır.</p>

<p>En temel seviyeden başlayarak adım adım ilerlediğimiz kursumuz ile SAP ABAP programlamasını anlamak ve kendi ABAP programlarınızı oluşturmaya başlamak i&ccedil;in gereken temel becerileri &ouml;ğrenmiş olacaksınız.</p>

<p>Bu eğitimle yalnızca SAP programlama dilinin nasıl &ccedil;alıştığı konusunda ayrıntılı bir fikir sahibi olmakla kalmayacak aynı zamanda ABAP dili ile ilgili en &ccedil;ok karşılaştıgınız temel sorularınızına da cevaplar bulacaksınız.</p>

<p>Eğitimimiz hem ABAP diline yeni giriş yapacaklar hem de aktif meslek hayatını s&uuml;rd&uuml;ren ve bilgilerini tazelemek isteyen yani t&uuml;m ABAP meraklıları i&ccedil;in harika bir kaynak&ccedil;</p>

<p><strong><em>Uygulamali anlatim</em></strong></p>

<p>SAP ABAP programlama dili ile ilgili T&uuml;rk&ccedil;e dok&uuml;manların sayısının az ve mevcutların da yetersiz olması sebebiyle ABAP programlama dilini sizlere adım adım &ouml;ğretmeyi ama&ccedil;layan bu eğitimin sizlerin başucu eseri olacağına eminiz.</p>

<p>Eğitimimiz ile SAP ABAP dilini kısa s&uuml;rede &ouml;ğrenecek ve hemen kendi kodunuzu yazıp test edebilecek hale geleceksiniz.Bu eğitimde size biryandan ilk g&uuml;nden itibaren kod oluşturabilmeniz i&ccedil;in pratik &ouml;rnekleri ele alırkan&nbsp; bir yandan da her adımın arkasındaki mantığı anlamanız i&ccedil;in eğitimimizde sizleri temel bilgilerle de bulusturduk.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>SAP Genel Bakış,</p>
	</li>
	<li>
	<p>ABAP Geliştirme Ara&ccedil;ları,</p>
	</li>
	<li>
	<p>Sanal Makine Kurulumu&nbsp; ( VM )</p>
	</li>
	<li>
	<p>SAPGUI Kurulumu&nbsp;</p>
	</li>
	<li>
	<p>SAP Sistemine Giriş,</p>
	</li>
	<li>
	<p>Yeni Başlayanlar i&ccedil;in işlem Kodları,</p>
	</li>
	<li>
	<p>ABAP Programlamaya İlk Adım,</p>
	</li>
	<li>
	<p>ABAP&rsquo;ta Temel Veri Tipleri,</p>
	</li>
	<li>
	<p>SAP ABAP &ndash; Operat&ouml;rler,</p>
	</li>
	<li>
	<p>String Fonksiyonları,</p>
	</li>
	<li>
	<p>Karar İfadeleri,</p>
	</li>
	<li>
	<p>D&ouml;ng&uuml; Kontrolleri,</p>
	</li>
	<li>
	<p>D&ouml;ng&uuml; Kontrol İfadeleri,</p>
	</li>
	<li>
	<p>Data Dictionary Nesneleri,</p>
	</li>
	<li>
	<p>Değişmezler ve Sabitler,</p>
	</li>
	<li>
	<p>Mod&uuml;ler Programlama,</p>
	</li>
	<li>
	<p>Se&ccedil;im Ekranı Tasarımı,</p>
	</li>
	<li>
	<p>ABAP Programlama Olayları,</p>
	</li>
	<li>
	<p>İnternal Tablo İşlemleri,</p>
	</li>
	<li>
	<p>Open SQL İfadeleri,</p>
	</li>
	<li>
	<p>Diyalog Programlama,</p>
	</li>
	<li>
	<p>ALV Rapor Programlama,</p>
	</li>
	<li>
	<p>Dok&uuml;mantasyon,</p>
	</li>
	<li>
	<p>Bakım Tablosu Oluşturma,</p>
	</li>
	<li>
	<p>Nesne Y&ouml;nelimli Programlama</p>
	</li>
</ul>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve haydi SAP ABAP kursumuza kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Temel Seviyede Bilgisayar kullanımı</li>
	<li>Minimum 8 GB RAM</li>
	<li>100 GB Boş Disk</li>
	<li>x64 İşlemci</li>
	<li>JRE 8 veya 11 (64-Bit) versiyonu</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi başlayın &ouml;ğrenmeye</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>ABAP dilini ne kadar kolay &ouml;ğrendiğinizi g&ouml;receksiniz</li>
	<li>Uygulamalı bir eğitimin tadını &ccedil;ıkaracaksınız</li>
	<li>Veritabanı programlama &ouml;ğreneceksiniz</li>
	<li>Nesne y&ouml;nelimli programlamayı &ouml;ğreneceksiniz</li>
	<li>SAP ile ilgili genel bilgilere sahip olacaksınız</li>
	<li>ABAP Geliştirme Ara&ccedil;ları</li>
	<li>SAP Sistemine Giriş</li>
	<li>ABAP Programlamaya İlk Adım</li>
	<li>ABAP&rsquo;ta Temel Veri Tipleri</li>
	<li>SAP ABAP &ndash; Operat&ouml;rler</li>
	<li>String Fonksiyonları</li>
	<li>Karar İfadeleri</li>
	<li>D&ouml;ng&uuml; Kontrolleri</li>
	<li>D&ouml;ng&uuml; Kontrol İfadeleri</li>
	<li>Data Dictionary Nesneleri</li>
	<li>Değişmezler ve Sabitler</li>
	<li>Mod&uuml;ler Programlama</li>
	<li>Se&ccedil;im Ekranı Tasarımı</li>
	<li>ABAP Programlama Olayları</li>
	<li>İnternal Tablo İşlemleri</li>
	<li>Open SQL İfadeleri</li>
	<li>Diyalog Programlama</li>
	<li>ALV Rapor Programlama</li>
	<li>Dok&uuml;mantasyon</li>
	<li>Bakım Tablosu Oluşturma</li>
	<li>Nesne Y&ouml;nelimli Programlama</li>
	<li>Sanal Makine kurulumu</li>
	<li>VirtualBox ve Extension Pack Kurulumu</li>
	<li>VirtualBox &uuml;zerine Ubuntu Kurulumu</li>
	<li>SAPGUI kurulumu</li>
	<li>VM &uuml;zerine SAP Uygulamalarının Kurulumu</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>SAP ABAP &ouml;ğrenmek isteyenler</li>
	<li>ABAP becerilerini &ouml;ğrenmek isteyen SAP Mod&uuml;l Danışmanları</li>
	<li>SAP Proje Ekibi &uuml;yeleri</li>
	<li>Bilgilerini genişletmek isteyen SAP BASIS Danışmanları</li>
	<li>SAP BW Danışmaları</li>
	<li>SAP ve ABAP &ccedil;alışmalarına devam etmek isteyen &uuml;niversite &ouml;ğrencileri</li>
	<li>Kısacası ABAP ile ilgilenebilecek herkes</li>
</ul>
', 4, 58, N'sap-abap-yeni-başlayanlar-için-uygulamalı-abap-programlama', 0, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:19:55.427' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:19:55.427' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, N'Learn SAP ABAP: SAP ABAP Programming Language For Beginners', N'This SAP ABAP online course will take you from scratch to advanced level. Learn SAP ABAP with hands-on examples!', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>Learn SAP ABAP: SAP ABAP Programming Language For Beginners </strong>course.</p>

<p>This SAP ABAP online course is <strong>among the awesome </strong>Udemy courses which will teach step by step and follow methodology in introducing concepts and demos ( Learn by doing ) to the students so that they can learn with ease <strong>SAP ABAP</strong> Programming.</p>

<p>SAP ABAP is the popular enterprise programming language developed by SAP and with this online course you will be stepping into the world of SAP ABAP.</p>

<p><strong><em>Learn by doing!</em></strong></p>

<p>First, you will understand the fundamental skills needed to understand SAP ABAP programming and then you will <strong>start creating your own ABAP programs</strong>.</p>

<p>A step by step approach we will help you to track your progress on the go and learn needed skills gradually at your own pace. At the end of this course, <strong>you will both have a knowledge and a practical skill set about SAP ABAP</strong>.</p>

<p><strong><em>In this course you will learn;</em></strong></p>

<ul>
	<li>
	<p>ABAP Development Tools,</p>
	</li>
	<li>
	<p>Log into SAP System,</p>
	</li>
	<li>
	<p>GUI Customization and Navigation,</p>
	</li>
	<li>
	<p>ABAP Editor,</p>
	</li>
	<li>
	<p>Predefined ABAP Data Types,</p>
	</li>
	<li>
	<p>Transaction Codes For Beginners In ABAP,</p>
	</li>
	<li>
	<p>Creating Your First Program,</p>
	</li>
	<li>
	<p>Operators,</p>
	</li>
	<li>
	<p>Loop Controls,</p>
	</li>
	<li>
	<p>Loop Control Statements,</p>
	</li>
	<li>
	<p>Decisions,</p>
	</li>
	<li>
	<p>String Processing,</p>
	</li>
	<li>
	<p>Creating Data Dictionary Objects,</p>
	</li>
	<li>
	<p>Modularization in ABAP,</p>
	</li>
	<li>
	<p>Constants &amp; Literals,</p>
	</li>
	<li>
	<p>Classic Selection Screen Programming,</p>
	</li>
	<li>
	<p>ABAP Programming Events,</p>
	</li>
	<li>
	<p>Processing Statements for Internal Tables,</p>
	</li>
	<li>
	<p>Open SQL Overview,</p>
	</li>
	<li>
	<p>Report Programming,</p>
	</li>
	<li>
	<p>ALV Grid Control,</p>
	</li>
	<li>
	<p>Dialog Programming,</p>
	</li>
	<li>
	<p>Documentation,</p>
	</li>
	<li>
	<p>Create New Maintanance Table,</p>
	</li>
	<li>
	<p>Object-Oriented Programming major Component</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p><strong><em>This course will take you from a beginner to a more experienced level.</em></strong></p>

<p>If you are new to SAP ABAP, or have no idea about what a ABAP programmer does no problem, you will learn anything you need to start SAP ABAP.</p>

<p>If you are working as a ABAP Programmer and you just need a refresher, you are also in the right place. You will learn step by step with hands-on examples.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p><strong><em>SAP ABAP</em> </strong>is used by the biggest organisations in the world to run their business systems. It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, SAP updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No previous knowledge is required!</li>
	<li>Basic Computer Knowledge</li>
	<li>Desire to learn SAP ABAP Programming</li>
	<li>Be able to downoad and install virtual machines</li>
	<li>Be able to use SAP Systems</li>
	<li>We prefered Windows OS , but this is not mandatory. You can prefer to use other Operating Systems</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn SAP ABAP Programming</li>
	<li>Enhance your existing SAP ABAP skills</li>
	<li>Learn ABAP from scratch and become ABAP master</li>
	<li>Further your SAP career</li>
	<li>ABAP Development Tools</li>
	<li>ABAP Editor</li>
	<li>Transaction Codes For Beginners In ABAP</li>
	<li>Creating Data Dictionary Objects</li>
	<li>ABAP Programming Events</li>
	<li>Open SQL Overview</li>
	<li>ALV Grid Control</li>
	<li>Documentation</li>
	<li>Object-Oriented Programming major Component</li>
	<li>Dialog Programming</li>
	<li>Build on your procedural ABAP knowledge</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn SAP ABAP language</li>
	<li>SAP Functional consultants who want to learn fundamentals of ABAP</li>
	<li>Beginners who are trying to get a job in IT industry in SAP</li>
	<li>Anyone who wants to become a seasoned ABAP Programmer</li>
	<li>SAP teams those involve in a SAP implementation project</li>
	<li>SAP ABAP Programmers</li>
</ul>
', 4, 22, N'learn-sap-abap-sap-abap-programming-language-for-beginners', 1, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 00:20:40.090' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:20:40.090' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, N'Oracle Database: Oracle Veritabanı ve SQL''i Uygulamalı Öğren', N'Oracle DBA yani Oracle Veritabanı Yöneticisi online kursuna katılın! Oracle SQL ve Veritabanını uygulamalarla öğrenin!', N'<h4>Course Details</h4>

<p>Herkese selamlar,</p>

<p><strong>Oracle Database Admin ( DBA&nbsp;): Oracle Veritabanı ve SQL&#39;i Uygulamalı &Ouml;ğren</strong> kursumuza hoşgeldiniz.</p>

<p>Oracle Database / Oracle Veritabani uzun s&uuml;redir İlişkisel Veritabanı Y&ouml;netim Sistemleri ( RDBMS ) piyasasında Oracle&#39;ı lider konumda tutuyor.</p>

<p>Bu kursta; <strong>Oracle Database Admin ( Oracle DBA&nbsp;) / Oracle Veritabanı Y&ouml;neticisi olmak</strong> isteyenler i&ccedil;in uygulamalı &ouml;rneklerle Oracle Veritabanı kurulumundan <strong>Oracle SQL</strong>&#39;e kadar &ccedil;ok sayıda konuyu ele aldık.&nbsp; &nbsp;</p>

<p><strong><em>Kurs kimlere hitap ediyor?</em></strong></p>

<p>İster programlamada yeni olun, isterse Oracle Database&#39;de, bu Oracle DBA kursu, &ccedil;ok kısa s&uuml;rede herkese DBA&nbsp;d&uuml;nyasının kapısını aralamayı&nbsp; hedefliyor.</p>

<p>En temel seviyeden başlayarak adım adım ilerlediğimiz kursumuz ile prestijli olduğu kadar, b&uuml;y&uuml;k sorumluluk gerektiren Oracle Veritabanı Y&ouml;neticisi pozisyonuna sizleri hazırlıyor olacağız.</p>

<p>Bu eğitimle d&uuml;nya &ccedil;apında, &ccedil;ok b&uuml;y&uuml;k veri hacmine sahip, anlık işlemler ger&ccedil;ekleştiren, veri kaybı yaşamaması gereken bir &ccedil;ok şirket ve kurumun kullandığı Oracle veritabanı kullanmayı ve Oracle Veritabanın&#39;da becerilerinizi geliştireceksiniz.</p>

<p>Eğitimimiz hem Oracle Veritabanı y&ouml;neticiliğine yeni giriş yapacaklar hem de aktif meslek hayatını s&uuml;rd&uuml;ren ve bilgilerini tazelemek isteyen yani t&uuml;m Oracle Veritabanı meraklıları i&ccedil;in harika bir kaynak.</p>

<p><strong><em>Uygulamali anlatim</em></strong></p>

<p>Oracle Veritabanı programlama dili ile ilgili T&uuml;rk&ccedil;e dok&uuml;manların sayısının az ve mevcutların da yetersiz olması sebebiyle&nbsp; Oracle Veritabanı ve SQL&#39;i sizlere adım adım &ouml;ğretmeyi ama&ccedil;layan bu eğitimin sizlerin başucu eseri olacağına eminiz.</p>

<p>Oracle Veritabani gibi y&uuml;ksek sorumluluk gerektiren bir alanda &ccedil;alışırken hem teorik ve pratik bilgiyi birlikte kullanmayı &ouml;ğrenecek hem de yenilikleri takip etme fırsatını yakalayacaksınız.</p>

<p>Bu eğitimde bir yandan&nbsp; size uygun ve pratik &ouml;rnekleri ele alan bir yaklaşımla konuları anlatırken bir yandan da her adımın arkasındaki mantığı anlamanız i&ccedil;in eğitimimizde sizleri temel bilgilerle de bulusturduk.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>Oracle Veritabanı Yazılımını İndirme</p>
	</li>
	<li>
	<p>Oracle Veritabanı Kurulumunu</p>
	</li>
	<li>
	<p>Oracle DBA olmanın</p>
	</li>
	<li>
	<p>Oracle 18c ve Oracle SQL Temelleri</p>
	</li>
	<li>
	<p>Oracle SQL Developer Yavaşlık Sorununu &Ccedil;&ouml;zmenin Yollarını</p>
	</li>
	<li>
	<p>Oracle LiveSQL</p>
	</li>
	<li>
	<p>Data Definition Language</p>
	</li>
	<li>
	<p>DML (Data Manupulation Language)</p>
	</li>
	<li>
	<p>TCL ( Transaction Control Language)</p>
	</li>
	<li>
	<p>DML ve TCL Kullanımı</p>
	</li>
	<li>
	<p>Verileri Getirme, Sıralama ve Sınırlandırma</p>
	</li>
	<li>
	<p>SQLDeveloper ile Şema Nesnelerini</p>
	</li>
	<li>
	<p>Kullanıcı Erişimini Kontrol Etmeyi</p>
	</li>
	<li>
	<p>B&uuml;y&uuml;k Veri Setleri İle &Ccedil;alışmayı</p>
	</li>
</ul>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Haydi daha fazla zaman kaybetmeyin ve Oracle Database Admin / Oracle Veritabanı ve SQL Temelleri kursumuza kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Temel Seviyede Bilgisayar kullanımı</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Eğitimin tamamı uygulamalı. Hem &ouml;ğrenecek hem de uygulayacaksınız</li>
	<li>&Ouml;rneklerin b&uuml;y&uuml;k b&ouml;l&uuml;m&uuml;n&uuml; Oracle LiveSQL ile yapabilirsiniz (Şema Nesnelerini Y&ouml;netmek Konusu &Ouml;rnekleri Hari&ccedil;)</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi şimdi &ouml;ğrenmeye</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Oracle Veritabanı &ccedil;alışma mantığını</li>
	<li>Oracle Veritabanının &ccedil;alışma mimarisini</li>
	<li>Oracle DBA&#39;in ne iş yapar sorusunun cevabını</li>
	<li>İlişkisel veritabanı kavramı</li>
	<li>Oracle 18c ve SQL Temelleri</li>
	<li>Oracle 12c</li>
	<li>Oracle SQL Developer Yavaşlık Sorununu &Ccedil;&ouml;zmenin Yollarını</li>
	<li>Oracle Veritabanı Yazılımını indirme ve kurmayı</li>
	<li>RDBMS Terimleri</li>
	<li>Oracle LiveSQL</li>
	<li>Data Definition Language</li>
	<li>DML (Data Manupulation Language)</li>
	<li>TCL ( Transaction Control Language)</li>
	<li>DML ve TCL Kullanımı</li>
	<li>Verileri Getirme, Sıralama ve Sınırlandırma</li>
	<li>SQLDeveloper ile Şema Nesnelerini</li>
	<li>Dictionary View&#39;lar ile Şema Nesnelerini</li>
	<li>Kullanıcı Erişimini Kontrol Etmeyi</li>
	<li>B&uuml;y&uuml;k Veri Setleri İle &Ccedil;alışmayı</li>
	<li>Ve &Ccedil;ok Daha Fazlasını bu kursta bulacaksınız</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Veritabanı, Oracle ve SQL Bilgisi Edinmek İsteyenler</li>
	<li>Oracle veritabanı mimarisini &ouml;ğrenmek isteyenler</li>
	<li>SQL bilgisini geliştirmek isteyen yazılım geliştiriciler</li>
	<li>Veritabanı alanında uzmanlaşmak isteyenler</li>
	<li>Oracle Database Admin ( DBA ) yani Oracle Veritabanı Y&ouml;neticisi Olmak İsteyenler</li>
	<li>Yeni Başlayan Oracle Veritabanı Y&ouml;neticileri ( Junior DBA )</li>
	<li>Diğer Veritabanı Y&ouml;netim Sistemlerinde Deneyimi Olup, Oracle DBA&#39;liğe Ge&ccedil;iş Yapmak İsteyenler</li>
	<li>Oracle 1Z0-071 sınavına &ccedil;alışmak isteyenler</li>
</ul>
', 3, 0, N'oracle-database-oracle-veritabanı-ve-sql-i-uygulamalı-öğren', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:21:30.537' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:21:30.537' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (16, N'R Programlama: R Programını R ile Veri Analizi Yaparak Öğren', N'Veri bilimi ve machine learning dünyasına R ile giriş yapın. R''ı uygulamalı öğrenin R programlamada profesyonelleşin!', N'<h4>Course Details</h4>

<p>Herkese merhabalar,</p>

<p><strong>R Programlama: R Programını R ile Veri Analizi Yaparak &Ouml;ğren </strong>kursumuza hoşgeldiniz.</p>

<p>R Programlama kursu, veri analizi alanında uzmanlaşmak isteyenlerin ilk başlangı&ccedil; noktası olabilecek nitelikte bir kurs.</p>

<p>R programını diğer yazılım programlarından farklı kılan en &ouml;nemli &ouml;zellik, <strong>R programının hem yazılım, hem veri tabanı, hem istatistik, hem de veri madenciliği ve sosyal network analizi alanlarında aynı anda &ccedil;ok g&uuml;&ccedil;l&uuml; analiz teknikleri ve g&ouml;rselleştirme imkanları sunmasıdır. </strong></p>

<p><strong><em>Kurs kimlere hitap ediyor?</em></strong></p>

<p>İster programlamada ister R&#39;da yeni olun, R programlama kursumuz, &ccedil;ok kısa s&uuml;rede herkesi R&#39;da etkin hale getirmeyi planlamaktadır.</p>

<p>En temel seviyeden başlayarak adım adım ilerlediğimiz kursumuz ile;</p>

<ul>
	<li>
	<p>R programlama dilini anlayacak ,</p>
	</li>
	<li>
	<p>R&#39;ın temel işleyiş ve fonksiyonları hakkında bilgi sahibi olacak,</p>
	</li>
	<li>
	<p>R&#39;daki paketler vasıtasıyla kendi alanınızda daha fazla uzmanlaşma imkanına sahip olacaksınız.</p>
	</li>
</ul>

<p>Bu eğitimle yalnızca R programlama dilinin nasıl &ccedil;alıştığı konusunda ayrıntılı bir fikir sahibi olmakla kalmayacak aynı zamanda R programlama dili ile ilgili en &ccedil;ok karşılaştıgınız temel sorularınızına da cevaplar bulacaksınız.</p>

<p>Eğitimimiz hem R programlama diline yeni giriş yapacaklar hem de aktif meslek hayatında R programını s&uuml;rd&uuml;ren ve bilgilerini tazelemek isteyen yani t&uuml;m R meraklıları i&ccedil;in harika bir kaynak.</p>

<p>Bu eğitime;</p>

<ul>
	<li>
	<p>Veri analizine merak duyan &ouml;ğrenciler,</p>
	</li>
	<li>
	<p>Nicel &ccedil;alışmalar y&uuml;r&uuml;tmek isteyen akademisyenler,</p>
	</li>
	<li>
	<p>İstatistik&ccedil;iler,</p>
	</li>
	<li>
	<p>B&uuml;y&uuml;k veri yani big data ile uğraşan analistler,</p>
	</li>
	<li>
	<p>Şirketlerindeki karlılığı arttırmak isteyen &ouml;zel şirket y&ouml;neticileri</p>
	</li>
	<li>
	<p>R programlama dilini &ouml;ğrenmek isteyen yazılımcılar ve R&#39;a ilgi duyan herkes katılabilir.&nbsp;</p>
	</li>
</ul>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>R Konsol ve R St&uuml;dyo,</p>
	</li>
	<li>
	<p>Nesnelere Değer Atama ve Aritmetik İşlemler,</p>
	</li>
	<li>
	<p>Değişkenler,</p>
	</li>
	<li>
	<p>Vekt&ouml;rler,</p>
	</li>
	<li>
	<p>Listeler,</p>
	</li>
	<li>
	<p>Matrisler,</p>
	</li>
	<li>
	<p>Dizinler,</p>
	</li>
	<li>
	<p>Fakt&ouml;rler,</p>
	</li>
	<li>
	<p>Data Frame,</p>
	</li>
	<li>
	<p>If ve Else Fonksiyonları,</p>
	</li>
	<li>
	<p>Loop D&ouml;ng&uuml;leri,</p>
	</li>
	<li>
	<p>Fonksiyonlar,</p>
	</li>
	<li>
	<p>R Paketleri</p>
	</li>
	<li>
	<p>Grafikler ve Şemalar,</p>
	</li>
	<li>
	<p>Veri Manip&uuml;lasyonu,</p>
	</li>
	<li>
	<p>Doğrusal Regresyon,</p>
	</li>
	<li>
	<p>&Ccedil;oklu Regresyon,</p>
	</li>
	<li>
	<p>Karar Ağa&ccedil;ları,</p>
	</li>
	<li>
	<p>Ki-Kare Testleri ve daha fazlası</p>
	</li>
</ul>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>R Programını R ile Veri Analizi Yaparak &Ouml;ğren </strong>kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>Temel Seviyede Bilgisayar kullanımı</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi hemen kayıt olun ve &ouml;ğrenmeye başlayın</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>R programlama dilini anlayacak</li>
	<li>R&#39;ın temel işleyiş ve fonksiyonları hakkında bilgi sahibi olacak</li>
	<li>R&#39;daki paketler vasıtasıyla kendi alanınızda daha fazla uzmanlaşma imkanı</li>
	<li>R dilini uygulamalı eğitimimiz ile aktif olarak kullanmayı</li>
	<li>R Konsol ve R St&uuml;dyo</li>
	<li>Nesnelere Değer Atama ve Aritmetik İşlemler</li>
	<li>Değişkenler</li>
	<li>Vekt&ouml;rler</li>
	<li>Listeler</li>
	<li>Matrisler</li>
	<li>Dizinler</li>
	<li>Fakt&ouml;rler</li>
	<li>Data Frame</li>
	<li>If ve Else Fonksiyonları</li>
	<li>Loop D&ouml;ng&uuml;leri</li>
	<li>Fonksiyonlar</li>
	<li>R Paketleri</li>
	<li>Grafikler ve Şemalar</li>
	<li>Veri Manip&uuml;lasyonu</li>
	<li>Doğrusal Regresyon</li>
	<li>&Ccedil;oklu Regresyon</li>
	<li>Karar Ağa&ccedil;ları</li>
	<li>Ki-Kare Testleri ve daha fazlası</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>R programlama dilini &ouml;ğrenmek isteyenler</li>
	<li>Veri analizine merak duyan &ouml;ğrenciler</li>
	<li>Veri bilimi alanında bir kariyer hedefleyenler</li>
	<li>R programlamayı uygulamalı olarak &ouml;ğrenmek isteyenler</li>
	<li>Nicel &ccedil;alışmalar y&uuml;r&uuml;tmek isteyen akademisyenler</li>
	<li>İstatistik&ccedil;iler</li>
	<li>Big Data ile uğraşan analistler</li>
	<li>Şirketlerindeki karlılığı arttırmak isteyen &ouml;zel şirket y&ouml;neticileri</li>
	<li>R programlama dilini &ouml;ğrenmek isteyen yazılımcılar ve R&#39;a ilgi duyan herkes</li>
</ul>
', 5, 32, N'r-programlama-r-programını-r-ile-veri-analizi-yaparak-öğren', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:26:43.087' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:26:43.087' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (17, N'Oracle Database: Oracle 12C R2 RAC Administration', N'Learn Oracle Database, 12C R2 RAC Administration and become a RAC expert with Oracle DBA `s favourite online RAC course', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to &quot;<strong>Oracle RAC: Oracle Database 12C R2 RAC Administration&quot; </strong>online course.</p>

<ul>
	<li>
	<p>Are you junior Oracle DBA?</p>
	</li>
	<li>
	<p>Are you DBA who is managing other RDBMS and want to immigrate Oracle?&nbsp; or</p>
	</li>
	<li>
	<p>Do you want to become an Oracle DBA at an international company?</p>
	</li>
</ul>

<p>If you think so, you are at the right place.</p>

<p>This time I&rsquo;ve designed for you<strong> &quot;Oracle RAC: Oracle Database 12C R2 RAC Administration</strong>&rdquo; straight-forward course for the <strong>Oracle Database 12C Release 2 (12.2). </strong> In the course, you will have a down-to-earth way explanations with <strong>hands-on examples</strong>. With my course you will learn Oracle RAC step-by-step. I made RAC simple and easy with real life examples.</p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals (&nbsp;as a refresher).&nbsp;</p>

<p>In this course <strong><em>you will learn</em></strong>;</p>

<ul>
	<li>
	<p>What is RAC ( Real Application Cluster )</p>
	</li>
	<li>
	<p>Installing Oracle Virtualbox</p>
	</li>
	<li>
	<p>Settinging Up Oracle Enterprise Linux</p>
	</li>
	<li>
	<p>Installing Oracle Software</p>
	</li>
	<li>
	<p>Oracle RAC</p>
	</li>
	<li>
	<p>Creating Virtual Machines</p>
	</li>
	<li>
	<p>Installing Oracle RAC Database to VMs</p>
	</li>
	<li>
	<p>Installing Grid Infrastructure, Database Software and Creating Database</p>
	</li>
	<li>
	<p>Administer Database Instances and Cluster Databases</p>
	</li>
	<li>
	<p>Oracle RAC One Node</p>
	</li>
	<li>
	<p>How to Convert RAC Database to RAC One Node</p>
	</li>
	<li>
	<p>Workload Management</p>
	</li>
	<li>
	<p>Monitoring Performance</p>
	</li>
	<li>
	<p>Design and Deployment Techniques</p>
	</li>
	<li>
	<p>Cloning Oracle RAC</p>
	</li>
	<li>
	<p>Managing backup, and restoring cluster database</p>
	</li>
	<li>
	<p>Add and Delete Node From Cluster</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.</p>

<p><strong><em>This course will take you from a beginner to a more experienced level. </em></strong></p>

<p>If you are a DBA or familiar to the Oracle Database / Oracle SQL or if you want to become an Oracle DBA at an international company or</p>

<p>you are a DBA that manage other RDBMS and want to immigrate Oracle or you are already in the field and active RAC user but&nbsp; you just need a refresher, you are also in the right place. You will learn step by step with hands-on examples.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>Oracle RAC is a unique technology that provides high availability and scalability for all application types. It prevents the server from being a single point of failure. But DBAs also should aware the recent development and it&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Oracle updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>You can use your laptop</li>
	<li>At least 12 GB memory, 120 GB of free disk space and internet connection</li>
	<li>Basic Computer Use Knowledge with (Win7/8/10)</li>
	<li>Basic Oracle Database knowledge</li>
	<li>Desire to learn Oracle RAC</li>
	<li>Familiarity with Linux operating system</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Meet with Oracle RAC</li>
	<li>Install Oracle Virtualbox</li>
	<li>Setting Up Oracle Enterprise Linux</li>
	<li>Install Oracle Software</li>
	<li>Create Virtual Machines</li>
	<li>Install Oracle RAC Database to Virtual Machines</li>
	<li>What is Real Application Cluster?</li>
	<li>Install Grid Infrastructure, Database Software and Create database</li>
	<li>Administer Database Instances and Cluster Databases</li>
	<li>Learn about Oracle RAC One Node</li>
	<li>To convert RAC database to RAC One Node and administer it</li>
	<li>Workload Management</li>
	<li>Monitoring performance</li>
	<li>Design and Deployment Techniques</li>
	<li>Cloning Oracle RAC</li>
	<li>Manage backup, and restore cluster database</li>
	<li>Add and Delete Node from Cluster</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>DBA`s who are looking to sharpen their skills to the expert level</li>
	<li>Anyone who is Oracle Database beginner but wants to become expert</li>
	<li>Anyone who wants to become a DBA</li>
	<li>Anyone who wants to become an Oracle DBA at a big company</li>
	<li>DBAs that manage other RDBMS and want to immigrate Oracle</li>
</ul>
', 3, 0, N'oracle-database-oracle-12c-r2-rac-administration', 0, 1, 0, 1, 0, N'English', CAST(N'2020-05-22 00:27:57.230' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:27:57.230' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (18, N'WordPress For Beginners: Learn to Build WordPress Websites', N'With this WordPress tutorial learn to create WordPress websites from scratch without knowing any programming language', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to <strong>WordPress For Beginners: Learn to Build WordPress Websites</strong> course.</p>

<ul>
	<li>
	<p>Do you want to learn how to create WordPress websites?</p>
	</li>
	<li>
	<p>Do you want to learn WordPress to update existing websites?</p>
	</li>
	<li>
	<p>Do you wan to learn how to use WordPress?</p>
	</li>
	<li>
	<p>Are you a beginner and you do not know anything about coding?</p>
	</li>
</ul>

<p>If your answer is <strong>&ldquo;yes</strong>&rdquo; to above questions and if you <strong>want more</strong>, you are at the right place!</p>

<p>My &quot;WordPress For Beginners: Learn to Build WordPress Websites&quot; course will take you from beginner to advance level.</p>

<p>In this course, we will be working on <strong>4 different WordPress projects</strong>. You will have a chance to learn to create and build 4 different types of Wordpress websites.</p>

<ul>
	<li>
	<p>Blogger Website</p>
	</li>
	<li>
	<p>PhotoART Websites</p>
	</li>
	<li>
	<p>News Website &ldquo; TechnoBlog&rdquo;</p>
	</li>
	<li>
	<p>Business Website</p>
	</li>
</ul>

<p>You will learn Wordpress step-by-step with hands-on demonstrations.</p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>What is WordPress</p>
	</li>
	<li>
	<p>Differences between WordPress Com and WordPress org</p>
	</li>
	<li>
	<p>Installing WordPress</p>
	</li>
	<li>
	<p>How to install WordPress by using XAMPP,</p>
	</li>
	<li>
	<p>How to install WordPress by using MAMP,</p>
	</li>
	<li>
	<p>To create and manage WordPress website,</p>
	</li>
	<li>
	<p>WordPress website defaults,</p>
	</li>
	<li>
	<p>Using WordPress Themes,</p>
	</li>
	<li>
	<p>To create Blog WordPress website,</p>
	</li>
	<li>
	<p>To create PhotoStudio WordPress website,</p>
	</li>
	<li>
	<p>To create News Website,</p>
	</li>
	<li>
	<p>To create Business Website,</p>
	</li>
	<li>
	<p>To create forms by using Contact Form 7,</p>
	</li>
	<li>
	<p>To set WordPress website SEO settings,</p>
	</li>
	<li>
	<p>To backup and restore WordPress Websites</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors expertise.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, WordPress updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge of WordPress is required as everything will be covered in this course</li>
	<li>You don&#39;t need any coding experience at all.</li>
	<li>Basic Computer Use Knowledge</li>
	<li>A Computer with Internet Connection</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>No prior knowledge of Wordpress is required</li>
	<li>Install Wordpress to your computer</li>
	<li>Create websites and blogs with WordPress</li>
	<li>Update and edit existing WordPress websites</li>
	<li>Understand the main features of Wordpress</li>
	<li>Build a functional, beautiful, responsive websites with Wordpress</li>
	<li>Leanr how to use the WordPress dashboard and know what everything does and how to use it</li>
	<li>Learn without any coding background</li>
	<li>Learn to find plugins &amp; themes and how to install them</li>
	<li>Create Blogger website</li>
	<li>Create PhotoArt Website</li>
	<li>Create Business Website</li>
	<li>Create News Website &ndash; TechoBlog</li>
	<li>Learn SEO Settings for a Website</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>This course is for anyone who wants to get started creating websites / blogs</li>
	<li>Anyone who wants to learn WordPress</li>
	<li>Anyone who wants to develop WordPress skills</li>
	<li>Anyone who wants to create Business Websites</li>
	<li>Anyone who wants to create News Websites</li>
	<li>Anyone who wants to create TechnoBlog</li>
	<li>Anyone who wants to create PhotoArt Websites</li>
	<li>Anyone who wants to create Blogger Websites</li>
</ul>
', 4, 0, N'wordpress-for-beginners-learn-to-build-wordpress-websites', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:29:00.300' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:29:00.300' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (19, N'SAP Netweaver: SAP Netweaver ABAP Delevoper Edition Kurulumu', N'Sanal makine kurup Ubuntu üzerinden SAP Netweaver ABAP Developer Edition ile lokal SAP sistemine ücretsiz sahip olun', N'<h4>Course Details</h4>

<p>Herkese Merhabalar,</p>

<p><strong>SAP Netweaver ABAP Delevoper Edition Kurulumu </strong>kursumuza hoşgeldiniz.</p>

<p>Bu kursun sonunda tamamen <strong>&uuml;cretsiz olan kendi LOKAL SAP </strong>sisteminize sahip olacaksınız.</p>

<p>SAP Netweaver kursumuzda temel olarak Ubuntu sanal makinesinde &ccedil;alışan bir <strong>SAP Netweaver 7.50 SP02</strong> s&uuml;r&uuml;m&uuml;n&uuml; nasıl kurabileceğinizi uygulamalı olarak bulacaksınız.</p>

<p>SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml; ile;</p>

<ul>
	<li>
	<p>ABAP programları,</p>
	</li>
	<li>
	<p>WebDynpro uygulamaları,</p>
	</li>
	<li>
	<p>BW geliştirebilme ortamına sahip olacaksınız.</p>
	</li>
</ul>

<p>Kurulumdan sonra ayrıca <strong>SAPUI5 ve FIORI</strong> geliştirmelerinde kullanabileceğiniz Netweaver GATEWAY teknolojisi ile ODATA servisleri oluşturma kabiliyetini de elde etmiş olacaksınız.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>Sanal Makine kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine &Uuml;zerine Ubuntu İşletim Sistemi Kurulumu,</p>
	</li>
	<li>
	<p>Ubuntu İşletim Sistemde SAP Netweaver ABAP Developer Edition Kurulumu,</p>
	</li>
	<li>
	<p>SAPGUI Kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine Ağ Ayarları ve Dosya paylaşımı</p>
	</li>
	<li>
	<p>Sanal Sunucunu&#39;nun Export / Import y&ouml;ntemi ile yedeğinin almayı ve yeni bir sistem oluşturmayı</p>
	</li>
	<li>
	<p>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını yapmayi ve cok daha fazlasını ele aldık.</p>
	</li>
</ul>

<p><strong><em>&Ouml;n Bilgiye Gerek Yok</em></strong></p>

<p>İster SAP&#39;de yeni olun, ister SAP kullaniyor olun <strong>SAP Netweaver ABAP Delevoper Edition </strong>kursumuz ile, &ccedil;ok kısa s&uuml;rede Sanal Makine ile kurulum yapmayi &ouml;ğrenip ABAP programı, WebDynpro, BW geliştitme ortamlarına hızlıca sahip olup zaman kaybetmeden bu sistemler &uuml;zerinde &ccedil;alışmaya başlıyor olabileceksiniz</p>

<p><strong><em>&Uuml;cretsiz Deneme S&uuml;r&uuml;m&uuml;</em></strong></p>

<p>SAP tarafından &uuml;cretsiz olarak sağlanan deneme s&uuml;r&uuml;m&uuml; <strong>3 aylık</strong> olarak sunulmaktadır. 3 aylık s&uuml;r&uuml;m&uuml; &uuml;cretsiz bir şekilde her defasında 3 ay olacak şekilde nasıl uzatabileceğinizi &ouml;ğreniyor olacaksınız.</p>

<p>Ayrıca sistem bağlantısı i&ccedil;in gerekli olan default kullanıcı adı ve şifreleri sizlere eğitim i&ccedil;erisinde de indirilebilir olarak sağladık.&nbsp; Bu eğitimde sisteme giriş yaptıktan sonra Access Key ve yeni kullanıcı oluşturma işlemlerini de &ouml;ğreniyor olacaksınız. Bu arada, SAP servislerini nasıl başlatabileceğinizi ve servisleri nasıl durdurabileceğinizi de uygulamalı olarak &ouml;ğreneceksiniz</p>

<p><strong>T&uuml;m &ouml;ğrenci adaylarının dikkatine;</strong></p>

<p>&ldquo;SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir. IDES sistemi i&ccedil;erisinde bulunan SAP fonksiyonel mod&uuml;lleri olarak tanımladığımız Malzeme Y&ouml;netimi, Finans, Bakım, &Uuml;retim gibi standart fonksiyonel mod&uuml;ller bulunmamaktadır.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve haydi<strong> Netweaver ABAP Delevoper Edition Kurulumu</strong> kursumuza kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>X86_64 bit işlemci</li>
	<li>Sunucu kurulumu i&ccedil;in 100 GB boş disk alanı</li>
	<li>Client kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Virtualbox ve Ubuntu İşletim Sistemi kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Yaklaşık 8 GB RAM</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi başlayın &ouml;ğrenmeye</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Bu kursta Ubuntu sanal makinesinde &ccedil;alışan bir SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml;&#39;n&uuml; nasıl kurabileceğinizi &ouml;ğreneceksiniz</li>
	<li>SAP Nedir?</li>
	<li>SAP&#39;nin avantajları</li>
	<li>Sanallaştırma Teknolojileri Hakkında Genel Bilgi</li>
	<li>Sanal Makine (VirtualBox) kurulumu</li>
	<li>Ubuntu İşletim Sistemi Kurulumu</li>
	<li>SAP Netweaver Kurulumu &Ouml;ncesi Gerekli Ayarlar</li>
	<li>SAP Netweaver Kurulumu</li>
	<li>SAPGUI Kurulumu</li>
	<li>SAP Servislerini Başlatma ve Durdurma</li>
	<li>Sanal Makine &uuml;zerine kurulu sistemin Export/Import işlemleri</li>
	<li>Bu kursun sonunda tamamen &uuml;cretsiz olan kendi LOKAL SAP sisteminize sahip olacaksınız</li>
	<li>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını &ouml;ğreneceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>ABAP programlama i&ccedil;in &uuml;cretsiz SAP sistemini kurmak isteyen herkes</li>
	<li>SAP ABAP Danışmanları</li>
	<li>SAP BASIS Danışmanları</li>
	<li>SAP Danışmanları</li>
	<li>&Ouml;nceden SAP bilgisine gerek yok</li>
	<li>Not: SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir</li>
</ul>
', 4, 45, N'sap-netweaver-sap-netweaver-abap-delevoper-edition-kurulumu', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:29:44.837' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:29:44.837' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (20, N'SAP Netweaver: SAP Netweaver ABAP Delevoper Edition Kurulumu', N'Sanal makine kurup Ubuntu üzerinden SAP Netweaver ABAP Developer Edition ile lokal SAP sistemine ücretsiz sahip olun', N'<h4>Course Details</h4>

<p>Herkese Merhabalar,</p>

<p><strong>SAP Netweaver ABAP Delevoper Edition Kurulumu </strong>kursumuza hoşgeldiniz.</p>

<p>Bu kursun sonunda tamamen <strong>&uuml;cretsiz olan kendi LOKAL SAP </strong>sisteminize sahip olacaksınız.</p>

<p>SAP Netweaver kursumuzda temel olarak Ubuntu sanal makinesinde &ccedil;alışan bir <strong>SAP Netweaver 7.50 SP02</strong> s&uuml;r&uuml;m&uuml;n&uuml; nasıl kurabileceğinizi uygulamalı olarak bulacaksınız.</p>

<p>SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml; ile;</p>

<ul>
	<li>
	<p>ABAP programları,</p>
	</li>
	<li>
	<p>WebDynpro uygulamaları,</p>
	</li>
	<li>
	<p>BW geliştirebilme ortamına sahip olacaksınız.</p>
	</li>
</ul>

<p>Kurulumdan sonra ayrıca <strong>SAPUI5 ve FIORI</strong> geliştirmelerinde kullanabileceğiniz Netweaver GATEWAY teknolojisi ile ODATA servisleri oluşturma kabiliyetini de elde etmiş olacaksınız.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>Sanal Makine kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine &Uuml;zerine Ubuntu İşletim Sistemi Kurulumu,</p>
	</li>
	<li>
	<p>Ubuntu İşletim Sistemde SAP Netweaver ABAP Developer Edition Kurulumu,</p>
	</li>
	<li>
	<p>SAPGUI Kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine Ağ Ayarları ve Dosya paylaşımı</p>
	</li>
	<li>
	<p>Sanal Sunucunu&#39;nun Export / Import y&ouml;ntemi ile yedeğinin almayı ve yeni bir sistem oluşturmayı</p>
	</li>
	<li>
	<p>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını yapmayi ve cok daha fazlasını ele aldık.</p>
	</li>
</ul>

<p><strong><em>&Ouml;n Bilgiye Gerek Yok</em></strong></p>

<p>İster SAP&#39;de yeni olun, ister SAP kullaniyor olun <strong>SAP Netweaver ABAP Delevoper Edition </strong>kursumuz ile, &ccedil;ok kısa s&uuml;rede Sanal Makine ile kurulum yapmayi &ouml;ğrenip ABAP programı, WebDynpro, BW geliştitme ortamlarına hızlıca sahip olup zaman kaybetmeden bu sistemler &uuml;zerinde &ccedil;alışmaya başlıyor olabileceksiniz</p>

<p><strong><em>&Uuml;cretsiz Deneme S&uuml;r&uuml;m&uuml;</em></strong></p>

<p>SAP tarafından &uuml;cretsiz olarak sağlanan deneme s&uuml;r&uuml;m&uuml; <strong>3 aylık</strong> olarak sunulmaktadır. 3 aylık s&uuml;r&uuml;m&uuml; &uuml;cretsiz bir şekilde her defasında 3 ay olacak şekilde nasıl uzatabileceğinizi &ouml;ğreniyor olacaksınız.</p>

<p>Ayrıca sistem bağlantısı i&ccedil;in gerekli olan default kullanıcı adı ve şifreleri sizlere eğitim i&ccedil;erisinde de indirilebilir olarak sağladık.&nbsp; Bu eğitimde sisteme giriş yaptıktan sonra Access Key ve yeni kullanıcı oluşturma işlemlerini de &ouml;ğreniyor olacaksınız. Bu arada, SAP servislerini nasıl başlatabileceğinizi ve servisleri nasıl durdurabileceğinizi de uygulamalı olarak &ouml;ğreneceksiniz</p>

<p><strong>T&uuml;m &ouml;ğrenci adaylarının dikkatine;</strong></p>

<p>&ldquo;SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir. IDES sistemi i&ccedil;erisinde bulunan SAP fonksiyonel mod&uuml;lleri olarak tanımladığımız Malzeme Y&ouml;netimi, Finans, Bakım, &Uuml;retim gibi standart fonksiyonel mod&uuml;ller bulunmamaktadır.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve haydi<strong> Netweaver ABAP Delevoper Edition Kurulumu</strong> kursumuza kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>X86_64 bit işlemci</li>
	<li>Sunucu kurulumu i&ccedil;in 100 GB boş disk alanı</li>
	<li>Client kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Virtualbox ve Ubuntu İşletim Sistemi kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Yaklaşık 8 GB RAM</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi başlayın &ouml;ğrenmeye</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Bu kursta Ubuntu sanal makinesinde &ccedil;alışan bir SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml;&#39;n&uuml; nasıl kurabileceğinizi &ouml;ğreneceksiniz</li>
	<li>SAP Nedir?</li>
	<li>SAP&#39;nin avantajları</li>
	<li>Sanallaştırma Teknolojileri Hakkında Genel Bilgi</li>
	<li>Sanal Makine (VirtualBox) kurulumu</li>
	<li>Ubuntu İşletim Sistemi Kurulumu</li>
	<li>SAP Netweaver Kurulumu &Ouml;ncesi Gerekli Ayarlar</li>
	<li>SAP Netweaver Kurulumu</li>
	<li>SAPGUI Kurulumu</li>
	<li>SAP Servislerini Başlatma ve Durdurma</li>
	<li>Sanal Makine &uuml;zerine kurulu sistemin Export/Import işlemleri</li>
	<li>Bu kursun sonunda tamamen &uuml;cretsiz olan kendi LOKAL SAP sisteminize sahip olacaksınız</li>
	<li>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını &ouml;ğreneceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>ABAP programlama i&ccedil;in &uuml;cretsiz SAP sistemini kurmak isteyen herkes</li>
	<li>SAP ABAP Danışmanları</li>
	<li>SAP BASIS Danışmanları</li>
	<li>SAP Danışmanları</li>
	<li>&Ouml;nceden SAP bilgisine gerek yok</li>
	<li>Not: SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir</li>
</ul>
', 4, 57, N'sap-netweaver-sap-netweaver-abap-delevoper-edition-kurulumu', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:30:46.917' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:30:46.917' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (21, N'SAP Netweaver: SAP Netweaver ABAP Delevoper Edition Kurulumu', N'Sanal makine kurup Ubuntu üzerinden SAP Netweaver ABAP Developer Edition ile lokal SAP sistemine ücretsiz sahip olun', N'<h4>Course Details</h4>

<p>Herkese Merhabalar,</p>

<p><strong>SAP Netweaver ABAP Delevoper Edition Kurulumu </strong>kursumuza hoşgeldiniz.</p>

<p>Bu kursun sonunda tamamen <strong>&uuml;cretsiz olan kendi LOKAL SAP </strong>sisteminize sahip olacaksınız.</p>

<p>SAP Netweaver kursumuzda temel olarak Ubuntu sanal makinesinde &ccedil;alışan bir <strong>SAP Netweaver 7.50 SP02</strong> s&uuml;r&uuml;m&uuml;n&uuml; nasıl kurabileceğinizi uygulamalı olarak bulacaksınız.</p>

<p>SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml; ile;</p>

<ul>
	<li>
	<p>ABAP programları,</p>
	</li>
	<li>
	<p>WebDynpro uygulamaları,</p>
	</li>
	<li>
	<p>BW geliştirebilme ortamına sahip olacaksınız.</p>
	</li>
</ul>

<p>Kurulumdan sonra ayrıca <strong>SAPUI5 ve FIORI</strong> geliştirmelerinde kullanabileceğiniz Netweaver GATEWAY teknolojisi ile ODATA servisleri oluşturma kabiliyetini de elde etmiş olacaksınız.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>Sanal Makine kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine &Uuml;zerine Ubuntu İşletim Sistemi Kurulumu,</p>
	</li>
	<li>
	<p>Ubuntu İşletim Sistemde SAP Netweaver ABAP Developer Edition Kurulumu,</p>
	</li>
	<li>
	<p>SAPGUI Kurulumu,</p>
	</li>
	<li>
	<p>Sanal Makine Ağ Ayarları ve Dosya paylaşımı</p>
	</li>
	<li>
	<p>Sanal Sunucunu&#39;nun Export / Import y&ouml;ntemi ile yedeğinin almayı ve yeni bir sistem oluşturmayı</p>
	</li>
	<li>
	<p>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını yapmayi ve cok daha fazlasını ele aldık.</p>
	</li>
</ul>

<p><strong><em>&Ouml;n Bilgiye Gerek Yok</em></strong></p>

<p>İster SAP&#39;de yeni olun, ister SAP kullaniyor olun <strong>SAP Netweaver ABAP Delevoper Edition </strong>kursumuz ile, &ccedil;ok kısa s&uuml;rede Sanal Makine ile kurulum yapmayi &ouml;ğrenip ABAP programı, WebDynpro, BW geliştitme ortamlarına hızlıca sahip olup zaman kaybetmeden bu sistemler &uuml;zerinde &ccedil;alışmaya başlıyor olabileceksiniz</p>

<p><strong><em>&Uuml;cretsiz Deneme S&uuml;r&uuml;m&uuml;</em></strong></p>

<p>SAP tarafından &uuml;cretsiz olarak sağlanan deneme s&uuml;r&uuml;m&uuml; <strong>3 aylık</strong> olarak sunulmaktadır. 3 aylık s&uuml;r&uuml;m&uuml; &uuml;cretsiz bir şekilde her defasında 3 ay olacak şekilde nasıl uzatabileceğinizi &ouml;ğreniyor olacaksınız.</p>

<p>Ayrıca sistem bağlantısı i&ccedil;in gerekli olan default kullanıcı adı ve şifreleri sizlere eğitim i&ccedil;erisinde de indirilebilir olarak sağladık.&nbsp; Bu eğitimde sisteme giriş yaptıktan sonra Access Key ve yeni kullanıcı oluşturma işlemlerini de &ouml;ğreniyor olacaksınız. Bu arada, SAP servislerini nasıl başlatabileceğinizi ve servisleri nasıl durdurabileceğinizi de uygulamalı olarak &ouml;ğreneceksiniz</p>

<p><strong>T&uuml;m &ouml;ğrenci adaylarının dikkatine;</strong></p>

<p>&ldquo;SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir. IDES sistemi i&ccedil;erisinde bulunan SAP fonksiyonel mod&uuml;lleri olarak tanımladığımız Malzeme Y&ouml;netimi, Finans, Bakım, &Uuml;retim gibi standart fonksiyonel mod&uuml;ller bulunmamaktadır.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve haydi<strong> Netweaver ABAP Delevoper Edition Kurulumu</strong> kursumuza kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>X86_64 bit işlemci</li>
	<li>Sunucu kurulumu i&ccedil;in 100 GB boş disk alanı</li>
	<li>Client kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Virtualbox ve Ubuntu İşletim Sistemi kurulumu i&ccedil;in yaklaşık 2 GB boş disk alanı</li>
	<li>Yaklaşık 8 GB RAM</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi başlayın &ouml;ğrenmeye</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Bu kursta Ubuntu sanal makinesinde &ccedil;alışan bir SAP Netweaver 7.50 SP02 S&uuml;r&uuml;m&uuml;&#39;n&uuml; nasıl kurabileceğinizi &ouml;ğreneceksiniz</li>
	<li>SAP Nedir?</li>
	<li>SAP&#39;nin avantajları</li>
	<li>Sanallaştırma Teknolojileri Hakkında Genel Bilgi</li>
	<li>Sanal Makine (VirtualBox) kurulumu</li>
	<li>Ubuntu İşletim Sistemi Kurulumu</li>
	<li>SAP Netweaver Kurulumu &Ouml;ncesi Gerekli Ayarlar</li>
	<li>SAP Netweaver Kurulumu</li>
	<li>SAPGUI Kurulumu</li>
	<li>SAP Servislerini Başlatma ve Durdurma</li>
	<li>Sanal Makine &uuml;zerine kurulu sistemin Export/Import işlemleri</li>
	<li>Bu kursun sonunda tamamen &uuml;cretsiz olan kendi LOKAL SAP sisteminize sahip olacaksınız</li>
	<li>ODATA servislerini oluşturabilmek i&ccedil;in SAP Gateway yapılandırma ayarlarını &ouml;ğreneceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>ABAP programlama i&ccedil;in &uuml;cretsiz SAP sistemini kurmak isteyen herkes</li>
	<li>SAP ABAP Danışmanları</li>
	<li>SAP BASIS Danışmanları</li>
	<li>SAP Danışmanları</li>
	<li>&Ouml;nceden SAP bilgisine gerek yok</li>
	<li>Not: SAP Netweaver ABAP Delevoper Edition&rdquo; s&uuml;r&uuml;m&uuml; bir IDES sistemi değildir</li>
</ul>
', 4, 0, N'sap-netweaver-sap-netweaver-abap-delevoper-edition-kurulumu', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:32:07.897' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:32:07.897' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (22, N'Etik Hacker: Ağ Temelleri ve Ağ Katmanı Saldırıları Kursu', N'Etik Hacker olma serimizde Ağ Temelleri ve Ağ Katmanı saldırılarını öğreniyoruz. Canlı uygulamarla Etik Hacker olun!', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>&quot;Etik Hacker: Ağ Temelleri ve Ağ Katmanı Saldırıları Kursu&quot;</strong>na hoş geldiniz.</p>

<ul>
	<li>
	<p>Siber g&uuml;venlik d&uuml;nyasına girmek ve beyaz şapkalı Hacker olmak,</p>
	</li>
	<li>
	<p>Siber g&uuml;venliğe sıfırdan başlayarak uygulamalı &ouml;rneklerle Etik Hacker olmayı &ouml;ğrenmek ve&nbsp;</p>
	</li>
	<li>
	<p>Mevcut Etik Hacker becerilerinizi geliştirmek istiyorsanız bu kurs tam size g&ouml;re.</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p>Etik Hacker olma serimizde bu eğitimde Ağ Temelleri ve Ağ Katmanı saldırılarını &ouml;ğreniyor olacağız.&nbsp; &nbsp;<strong>Teorikten pratiğe</strong> gidecek şekilde dizayn ettiğimiz kursta ağ temelleri konusundan başlayarak detaylara ineceğiz.&nbsp; &Ouml;ncelikle ağlar &uuml;zerinden giden verilere bakmaya başlayıp ardından ağ koklama ve ağdan bilgi toplamayı &ouml;ğreneceğiz. Eğitimde <strong>TCPdump ve Wireshark</strong> gibi ara&ccedil;ları kullanacağız.Uygulamalı &ouml;rneklerimizi &ouml;zellikle <strong>Subnetting, ARP Spoofing ve MitM saldırıları ve Şifre Kırma</strong> konularında ger&ccedil;ekleştireceğiz.</p>

<p>İlk b&ouml;l&uuml;mde, &ldquo;Ağ Temelleri&rdquo; konusunu ele alağız. Eğer bu alanda yeni iseniz ilk b&ouml;l&uuml;m sizin i&ccedil;in. Zira uygulamalı &ouml;rnekler ikinci b&ouml;l&uuml;mde başlıyor olacak.<strong> Ağ Temelleri konusunda yeterli bilginiz olduğunu d&uuml;ş&uuml;n&uuml;yor iseniz bu b&ouml;l&uuml;m&uuml; atlayabilirsiniz.</strong></p>

<p>Ağ Temelleri b&ouml;l&uuml;m&uuml;nde, size IP adresleme ve alt ağ oluşturma, ethernet, portlar, protokoller ve OSI modeli de dahil olmak &uuml;zere ağ iletişimi işleminin temel kavramlarını&nbsp; &ouml;ğreniyor olacaksınız.</p>

<p>İkinci b&ouml;l&uuml;mde ( Ağ ve Veri Bağlantısı Katmanı - Katman 2 Saldırıları ) i<strong>bir laboratuvarı nasıl kuracağınızı</strong> ve kendi makinenizde sızma testi yapmak i&ccedil;in gereken yazılımı kurmayı &ouml;ğreneceksiniz. Ardından, <strong>TCPdump ve Wireshark</strong> gibi bazı ara&ccedil;ları kullanacağız ve ağ koklama (sniffing) alanını genişletmek i&ccedil;in bazı saldırılar ve teknikleri g&ouml;receğiz:</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>Ağ Temelleri,</p>
	</li>
	<li>
	<p>Ağ Katmanı Saldırıları,</p>
	</li>
	<li>
	<p>Arp Spoofing / Arp Poisoning,</p>
	</li>
	<li>
	<p>Arp Uygulamaları,</p>
	</li>
	<li>
	<p>&ldquo;Man İn The Middle&rdquo; ( Mitm ),</p>
	</li>
	<li>
	<p>GNS3 &Uuml;zerinde Ağ Kurulumu,</p>
	</li>
	<li>
	<p>GNS3&rsquo;de Kali Kurulumu,</p>
	</li>
	<li>
	<p>Aktif Ağ Cihazları,</p>
	</li>
	<li>
	<p>Network Sniffing,</p>
	</li>
	<li>
	<p>Sniffing Data &amp; Wireshark ile Http Trafiğini Analiz Etme,</p>
	</li>
	<li>
	<p>MITMf&#39;i Ger&ccedil;ek Ağlara Karşı Kullanma,</p>
	</li>
	<li>
	<p>Ağ Cihazlarının Zaafları,</p>
	</li>
	<li>
	<p>Laboratuar Ortamını Uygulamalı Eğitimler İ&ccedil;in Hazırlama,</p>
	</li>
	<li>
	<p>Sızma Testi Ara&ccedil;ları; Ettercap, Wireshark Vb.</p>
	</li>
	<li>
	<p>Mac Flooding,</p>
	</li>
	<li>
	<p>DHCP Starvation &amp; Dhcp Spoofing,</p>
	</li>
	<li>
	<p>Vlan Hopping,</p>
	</li>
	<li>
	<p>Ağ Cihazlarının Sızma Testi,</p>
	</li>
	<li>
	<p>Ağ Cihazı Denetimleri ve &ccedil;ok daha fazlası</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve Etik Hacker: Ağ Temelleri ve Ağ Katmanı Saldırıları kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p><strong>&Ouml;NEMLİ !!!: Bu kurs eğitim ama&ccedil;lı hazırlanmıştır ve &ouml;ğrenilen t&uuml;m bilgiler yasal &ccedil;er&ccedil;eve i&ccedil;erisinde kalarak kullanılmalıdır.</strong></p>

<h4>Requirements</h4>

<ul>
	<li>Minimum 6 GB RAM</li>
	<li>100 GB Boş Harddisk Alanı</li>
	<li>64 bit işlemci</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>Kurs boyunca kullanılacak yazılım ve ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Ağ Temelleri</li>
	<li>Ağ Katmanı Saldırıları</li>
	<li>ARP Spoofing / ARP Poisoning</li>
	<li>ARP Uygulamaları</li>
	<li>&ldquo;Man İn The Middle&rdquo; ( Mitm )</li>
	<li>GNS3 &Uuml;zerinde Ağ Kurulumu</li>
	<li>GNS3&rsquo;te Kali Kurulumu</li>
	<li>Aktif Ağ Cihazları</li>
	<li>Network Sniffing</li>
	<li>Sniffing Data</li>
	<li>Wireshark İle Http Trafiğini Analiz Etme</li>
	<li>MITMf&#39;i Ger&ccedil;ek Ağlara Karşı Kullanma</li>
	<li>Ağ Cihazlarının Zaafları</li>
	<li>Laborotuvar Ortamını Uygulamalı Eğitimler İ&ccedil;in Hazırlama</li>
	<li>Sızma Testi Ara&ccedil;ları; Ettercap, Wireshark ve daha fazlası</li>
	<li>Mac Flooding DHCP Starvation</li>
	<li>DHCP Spoofing</li>
	<li>Vlan Hopping</li>
	<li>Ağ Cihazlarının Sızma Testi</li>
	<li>Ağ Cihazı Denetimleri</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Siber G&uuml;venlik Domain&#39;ine girmek isteyenler</li>
	<li>Sıfırdan başlamak ve daha ileri seviyeye ge&ccedil;mek isteyenler</li>
	<li>Etik Hacking becerilerini bir &uuml;st seviyeye &ccedil;ıkarmak isteyen kişiler</li>
	<li>Siber G&uuml;venlik uzmanı olan kişiler</li>
	<li>Siber G&uuml;venlik alanına ilgi duyanlar</li>
	<li>CISCO sınavlarına katılmak isteyen kişiler</li>
	<li>Ağ G&uuml;venliğini &ouml;ğrenmek isteyenler</li>
	<li>Ağ ve Veri Katmanı saldırılarını &ouml;ğrenmek isteyenler</li>
	<li>The Man in the Middle&quot; (MitM) &ouml;ğrenmek isteyenler</li>
</ul>
', 2, 0, N'etik-hacker-ağ-temelleri-ve-ağ-katmanı-saldırıları-kursu', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 00:40:51.297' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:40:51.297' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (23, N'Scratch Kodlama: Yeni Başlayanlar İçin Uygulamalı Scratch', N'Scratch ile programlamayı sıfırdan öğrenin. Hem keyifli oyunlar geliştirin hem Scratch ile programla öğrenmeye başlayın', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>&quot;Scratch ile Programlama: Yeni Başlayanlar İ&ccedil;in Uygulamalı Scratch&quot; </strong>kursuna hoş geldiniz.</p>

<ul>
	<li>
	<p>Kodlama &ouml;ğrenmek istiyor ancak nasıl başlayacağınıza tam karar veremiyorsanız,</p>
	</li>
	<li>
	<p>&Ccedil;ocuğunuz kodlamaya yeni başlayacak ve &ccedil;ocuğunuza destek olmak istiyorsanız,</p>
	</li>
	<li>
	<p>Scratch&#39;i sıfırdan başlayarak &ouml;ğrenmek istiyorsanız&nbsp; bu kurs tam size g&ouml;re.</p>
	</li>
</ul>

<p>Scratch ile programla kursunda eğitmenden ebeveyne herkese Scratch&#39;i &ouml;ğretmeyi hedefledik. Bu eğitim sayesinde kod &ouml;ğrenmek isteyenler kod &ouml;ğrenecek, aileler kodlamayı anlayıp digitalin d&uuml;nyaya hakim olmaya başladığı şu g&uuml;nlerde &ccedil;ocuklarına Scratch &ouml;ğrenirken destek olabilecek, eğitmenler Scratch bilgilerini geliştirebilecek. Zira bu eğitim<strong> 7&#39;den 77&#39;ye t&uuml;m yaş grupları i&ccedil;in Scratch konularını i&ccedil;eren kilometre taşı niteliğinde</strong>.</p>

<p>Scratch ile programlama eğitimimiz boyunca uygulamalı &ouml;rneklere &ccedil;alıştık.&nbsp; Eğitimimizde birbirinden eğlenceli oyunlar geliştirirken hem Scratch dilini &ouml;ğretmeyi hem de programlama mantığını kavratmayı ama&ccedil;lamadık.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<p>Scratch ile Programlamaya Giriş,</p>

<p>Scratch Edit&ouml;r&uuml;n&uuml; Kullanma,</p>

<p>G&ouml;rsel Bloklar ile Kodlama,</p>

<p>Yazılım Terminolojileri,</p>

<p>Yazılım Geliştirme Aşamaları,</p>

<p>Oyun Geliştirme Mantığı,</p>

<p>Geliştirilen Programları &Ccedil;evrimi&ccedil;i Toplulukla Paylaşmayı, G&ouml;rsel Bloklarla kodlama &ouml;ğrendikten sonra metin tabanlı Phyton, Java gibi programlama dillerine ge&ccedil;iş kolaylığı sağlamayı hedefledik.</p>

<p><strong>Neden kodlama &ouml;ğrenmeliyiz?</strong></p>

<p>D&uuml;nya hızla teknolojik değişimler ge&ccedil;iriyor. Ve t&uuml;m d&uuml;nya artık 7&#39;den 77&#39;ye herkesi kod &ouml;ğrenmeye teşvik ediyor. Kapsam o kadar geniş ki d&uuml;nya&rsquo;da bir&ccedil;ok &uuml;lkede 5-18 yaş arası &ccedil;ocuklar ve gen&ccedil;ler i&ccedil;in kodlama zorunlu eğitim m&uuml;fredatına girmeye başladı.</p>

<ul>
	<li>
	<p><strong>İngiltere</strong>, 5-16 yaş aralığındaki &ccedil;ocuk ve gen&ccedil;lere kodlamayı &ouml;ğretmeyi hedefleyen &ldquo;bilgisayar bilimleri&rdquo; dersini m&uuml;fredatına zorunlu olarak koyan ilk &uuml;lke. İlk okul 3.sınıftan itibaren &ccedil;ocuklar Scratch ile tanışıyor.</p>
	</li>
	<li>
	<p><strong>Finlandiya</strong> &ldquo;Gelecek; kodlamayı bilen kişiler &uuml;zerine inşa edilecek&rdquo; anlayışıyla derslerine başladı.</p>
	</li>
	<li>
	<p><strong>Estonya,</strong> 2012 yılında proje kapsamında 7-16 yaş arasındaki &ccedil;ocuklara kodlama sınıfları a&ccedil;tı.</p>
	</li>
	<li>
	<p><strong>&Ccedil;in</strong>, anaokulundan başlayarak &ccedil;ocuklara kodlama eğitimine başladı.</p>
	</li>
</ul>

<p>&nbsp;</p>

<ul>
	<li>
	<p><strong>Kursiyerlerimiz,</strong></p>
	</li>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>Scratch ile Programlama: Yeni Başlayanlar İ&ccedil;in Uygulamalı Scratch</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>İnternete bağlı bir bilgisayar</li>
	<li>Kurs boyunca kullanılacak yazılım ve ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>Şimdi tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Scratch ile Kodlama</li>
	<li>Scratch Edit&ouml;r&uuml;</li>
	<li>G&ouml;rsel Bloklar ile Kodlama</li>
	<li>Kodlama Terminolojileri</li>
	<li>Programlama Mantığı</li>
	<li>Oyun geliştirme Mantığı</li>
	<li>Kendi İkon ve G&ouml;rsellerinizi Hazırlamayı</li>
	<li>Animasyon ve G&ouml;rsel Efekt Oluşturma</li>
	<li>Bu eğitim ile Phyton, Java gibi metin tabanlı programlama dillerini &ccedil;ok daha hızlı ve kolay kavramayı</li>
	<li>Geliştirdiğiniz programları &ccedil;evrimi&ccedil;i toplulukta paylaşmayı ve &ccedil;ok daha fazlasını</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Kendini geliştirmek isteyen Eğitimciler</li>
	<li>Kodlama &ouml;ğrenmek isteyen 7&#39;den 77&#39;ye herkes</li>
	<li>&Ccedil;ocuklarının gelişimine &ouml;nem veren, &ccedil;ocuklarını doğru şekilde y&ouml;nlendirmek ve geleceğe hazırlamak isteyen ve &ccedil;ocuklarına kodlamayı &ouml;ğrenmelerini teşvik etmek isteyen t&uuml;m Ebeveynler</li>
</ul>
', 5, 0, N'scratch-kodlama-yeni-başlayanlar-için-uygulamalı-scratch', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:41:46.020' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:41:46.020' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (24, N'Etik Hacker: Web Uygulamaları ve Uygulamalı Sızma Testi', N'Etik Hacker olma kursu ile Kali''yi kurun, (penetrasyon) sızma testini uygulamalı öğrenin, Etik Hacker olun', N'<h4>Course Details</h4>

<p>Merhaba,</p>

<p><strong>&ldquo;Etik Hacker Olma Kursu:&nbsp; Web Uygulamaları ve Uygulamalı Sızma Testi&rdquo; </strong>kursuna hoş geldiniz.</p>

<p>Bu kurs <strong>yeni başlayanlar</strong> i&ccedil;indir. Bundan dolayı</p>

<ul>
	<li>
	<p>Hackleme,</p>
	</li>
	<li>
	<p>Sızma ( Penetrasyon ) Testi veya Uygulama Geliştirme hakkında &ouml;nceden bilgi sahibi olmanız gerekmez. Etik Hacker kursu ile web sitelerinin nasıl hacklendiğini&nbsp; sıfırdan ve uygulamalı olarak &ouml;ğreneceksiniz.</p>
	</li>
</ul>

<p><strong><em>&Uuml;cretsiz ara&ccedil;lar kullarak &ouml;ğreneceksiniz</em></strong></p>

<p>Eğitimimizin tamamında &uuml;cretsiz platform veara&ccedil;lar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek kalmayacak. Bilgisayarınız ve internetin olması t&uuml;m uygulamaları denemeniz i&ccedil;in yeterli.</p>

<p><strong><em>Etik Hacklemeyi sıfırdan &ouml;ğrenin</em></strong></p>

<p>Bu eğitim ile bir web sitesinin &ldquo;etik olarak&rdquo; nasıl hackleneceğini &ouml;ğrenmeye başlamadan &ouml;nce, bir laboratuvar ortamı oluşturmayı, Kali Linux ve OWASP Broken Web Applications gibi gerekli sanal makineleri kurmayı &ouml;ğreneceksiniz. B&ouml;ylece sanal makineler, ana sistemlerinizi etkilemeden <strong>&ldquo;</strong>g&uuml;venli bir şekilde<strong>&rdquo;</strong> pratik yapmış olacaksınız.</p>

<p>Eğitimde ilerledik&ccedil;e yani etik hacker olmaya hazır olduğunuzda, bilgi toplamayı ve web sitesinde bilinen g&uuml;venlik a&ccedil;ıkları olup olmadığını &ouml;ğrenmek i&ccedil;in arama motorlarını nasıl kullanacağınızı &ouml;ğreneceksiniz. B&ouml;ylece bir web sitesini keşfederken, herhangi bir g&uuml;venlik a&ccedil;ığına neden olup olmadıklarını anlamak i&ccedil;in yapılandırmaları analiz edebilir hale geleceksiniz.</p>

<p>Web uygulamalarını hacklemenin en &ouml;nemli b&ouml;l&uuml;mlerinden biri olan input alanlarını ve uygulamanın &uuml;rettiği outputları nasıl <strong>manip&uuml;le edeceğinizi</strong> bu eğitimde &ouml;ğrenme şansı yakalayacak, en fazla bilinen ve tehlikeli g&uuml;venlik a&ccedil;ıklarını&nbsp; g&ouml;receksiniz.</p>

<p>Yalnızca g&uuml;venlik a&ccedil;ıklarını nasıl bulacağınızı değil, aynı zamanda bu zayıflıkları nasıl kullanacağınızı ve nasıl kırılacağını da &ouml;ğreneceksiniz. Ek olarak, bu zayıflıkların kırılmasını &ouml;nleme y&ouml;ntemleri de &ouml;ğretilecektir.</p>

<p>&nbsp;</p>

<p><strong><em>Hangi konuları &ouml;ğreneceğim?</em></strong></p>

<ul>
	<li>
	<p>Laboratuvar Kurulumu</p>
	</li>
	<li>
	<p>Sanal Platformlar</p>
	</li>
	<li>
	<p>Kali</p>
	</li>
	<li>
	<p>OWASPBWA&#39;ı İndirip ve Y&uuml;kleme</p>
	</li>
	<li>
	<p>Sanal Makineleri Test Etme</p>
	</li>
	<li>
	<p>HTTP Protokol&uuml; ve SSL</p>
	</li>
	<li>
	<p>Burp Suite ile HTTP Trafiğini Durdurma</p>
	</li>
	<li>
	<p>Burp Suite ile HTTPS Trafiğini Durdurma</p>
	</li>
	<li>
	<p>OWASP ZAP (Zed Attack Proxy)</p>
	</li>
	<li>
	<p>Bilgi Toplama ve Yapılandırma Y&ouml;netimi</p>
	</li>
	<li>
	<p>Input - Output Manip&uuml;lasyonu</p>
	</li>
	<li>
	<p>SOP, Javascript ve Input-Output Doğrulaması</p>
	</li>
	<li>
	<p>XSS (Cross Site Scripting)</p>
	</li>
	<li>
	<p>BeEF - The Browser Exploitation Framework</p>
	</li>
	<li>
	<p>SQL Injection</p>
	</li>
	<li>
	<p>Cross Site Request Forgery (CSRF)</p>
	</li>
	<li>
	<p>Shodan</p>
	</li>
	<li>
	<p>Web Arşivi</p>
	</li>
	<li>
	<p>FOCA - Fingerprinting Organisations with Collected Archives</p>
	</li>
	<li>
	<p>The Harvester &amp; Recon-NG</p>
	</li>
	<li>
	<p>Maltego</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><strong>Kursu tamamladığınızda;</strong></p>

<p>&middot; G&uuml;venlik a&ccedil;ıklarının <strong>nedenlerini</strong>,</p>

<p>&middot; G&uuml;venlik a&ccedil;ıklarının nasıl <strong>bulunacağını </strong></p>

<p>&middot; G&uuml;venlik a&ccedil;ıklarından nasıl <strong>yararlanılacağını</strong></p>

<p>&middot; G&uuml;venlik a&ccedil;ıklarını <strong>&ouml;nleyebileceğinizi ve cok daha fazlasını </strong>&ouml;ğreniyor olacaksınız.</p>

<p>&nbsp;</p>

<p><strong>Bu kurs sizi başlangı&ccedil; ??seviyesinden daha ileri bir seviyeye getirir. L&uuml;tfen &ouml;ğrenme arzunuzu kaybetmeyin ve sorularınız varsa benimle temasa ge&ccedil;meyi unutmayın</strong></p>

<p>&nbsp;</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>&quot;Etik Hacker Olma Kursu:&nbsp; Web Uygulamaları ve Uygulamalı Sızma Testi&quot;</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p><strong>&Ouml;NEMLİ !!!: Bu kurs eğitim ama&ccedil;lı hazırlanmıştır ve &ouml;ğrenilen t&uuml;m bilgiler yasal &ccedil;er&ccedil;eve i&ccedil;erisinde kalarak kullanılmalıdır.</strong></p>

<h4>Requirements</h4>

<ul>
	<li>Minimum 6 GB RAM</li>
	<li>100 GB Boş Harddisk Alanı</li>
	<li>64 bit işlemci</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>Kurs boyunca kullanılacak yazılım ve ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in İstek Ve Motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Pratik yapmak i&ccedil;in sanal ortam oluşturmak</li>
	<li>Kali Linux y&uuml;kleme</li>
	<li>Kali Linux ile &ccedil;alışmak</li>
	<li>XSS g&uuml;venlik a&ccedil;ıklarını &ouml;nlemek</li>
	<li>G&uuml;venlik a&ccedil;ığı bulunan web uygulamalarına sahip sanal sistemi kurmak</li>
	<li>HTTP protokol&uuml; HTTPS,</li>
	<li>TLS/SSL Kişisel bir proxy kullanarak HTTP trafiğini ele ge&ccedil;irmek</li>
	<li>Web sitelerindeki hassas bilgiler toplamak</li>
	<li>G&uuml;venlik a&ccedil;ığı veritabanını kullanarak bilinen g&uuml;venlik a&ccedil;ıklarını bulmak</li>
	<li>Arama motorlarını kullanarak bilinen g&uuml;venlik a&ccedil;ıklarını bulmak</li>
	<li>DOM tabanlı XSS a&ccedil;ıklarını keşfetmek</li>
	<li>SQL enjeksiyon a&ccedil;ıklarını keşfetmek, kullanmak ve bunları &ouml;nlemek</li>
	<li>SQL enjeksiyonlarını &ouml;nleme</li>
	<li>Kimlik doğrulama y&ouml;ntemleri ve stratejileri</li>
	<li>Kimlik doğrulama mekanizmalarını atlatmak</li>
	<li>Oturum y&ouml;netimi mekanizması</li>
	<li>Session fixation saldırısı ile kurbanı taklit etmek</li>
	<li>Bilinmeyen kullanıcı adlarını ve şifreleri bulun</li>
	<li>Yetkisiz işlemlere erişmek</li>
	<li>Ayrıcalıkları arttırmak</li>
	<li>Path Traversal saldırısı kullanarak hassas verilere erişmek</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Siber G&uuml;venlik Meraklıları</li>
	<li>Etik Hacker Olmak isteyenler</li>
	<li>Siber G&uuml;venlik alanında kariyer yapmak isteyenler</li>
	<li>T&uuml;m d&uuml;nyada ge&ccedil;erli bir meslek hayali olanlar</li>
	<li>Bir web sitesinin nasıl kırılacağını veya g&uuml;venli hale getirileceğini &ouml;ğrenmek isteyenler</li>
	<li>Sosyal medya ortamlarında verinin nasıl sızdırıldığını merak edenler,</li>
	<li>En g&uuml;venli web sitelerinin bile nasıl saldırıya uğradığını &ouml;ğrenmek isteyenler,</li>
	<li>İnsan fakt&ouml;r&uuml;n&uuml;n siber g&uuml;venlik neden &ouml;nemli olduğunu merak edenler</li>
</ul>
', 2, 0, N'etik-hacker-web-uygulamaları-ve-uygulamalı-sızma-testi', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 00:42:29.660' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:42:29.660' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (25, N'WordPress: Yeni Başlayanlar İçin Uygulamalı WordPress', N'WordPress ile internet sitesi kurmayı kod yazmadan sıfırdan öğrenin,Worpress ile kolayca istediğiniz türde siteler kurun', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>&quot;WordPress: Yeni Başlayanlar İ&ccedil;in Uygulamalı WordPress&quot; </strong>kursuna hoş geldiniz.</p>

<ul>
	<li>
	<p>Kendinize kişisel bir Blog veya Websitesi mi kurmak istiyorsunuz?</p>
	</li>
	<li>
	<p>Şirketinizin Websitesini kendiniz mi tasarlayıp y&ouml;netmek istiyorsunuz?</p>
	</li>
	<li>
	<p>WordPress hakkında genel bir bilgiye sahip olup SEO kurallarına uygun uygulama yapmak mı istiyorsunuz?</p>
	</li>
</ul>

<p>Eğer yukarıdaki soruların t&uuml;m&uuml;n&uuml; ger&ccedil;ekleştirmek istiyor ve WordPress konusunda iyi bir seviyeye gelmek istiyorsanız bu kurs tam size g&ouml;re.</p>

<p>Bu kursta WordPress&#39;in ne olduğunu bilmenize gerek yok, PHP, CSS, MySQL&rsquo;in hakkında en ufak bir fikir sahibi olmamanız hi&ccedil;bir sorun teşkil etmiyor. Kod veya kodlama bilmenize hi&ccedil; gerek yok. &Ccedil;&uuml;nk&uuml; bu eğitimde</p>

<ul>
	<li>
	<p>Web sitesi nedir?</p>
	</li>
	<li>
	<p>Bir Web sitesi kod bilmeden sıfırdan nasıl tasarlanır?,</p>
	</li>
	<li>
	<p>Bir Web sitesi SEO&#39;ya&nbsp; ve kullanışlı bir hale nasıl getirilir adım adım &ouml;ğrenicez.</p>
	</li>
</ul>

<p>T&uuml;m bunları d&uuml;nyanın en pop&uuml;ler İ&ccedil;erik Y&ouml;netim Sistemi Uygulaması WordPress&rsquo;i kullanarak &ouml;ğreneceksiniz.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>&Uuml;cretsiz olarak WordPress kurup uygulamalar yapabileceksiniz</p>
	</li>
	<li>
	<p>Kendinize Blog a&ccedil;abileceksiniz</p>
	</li>
	<li>
	<p>Kurumsal Website yapmayı &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>PhotoArt Websitesi yapmayı &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>Haber Sitesi yapmayı &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>WordPress i&ccedil;in gerekli eklentilerini kurmayı &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>Sitenin Google&#39;da herkes tarafından rahatlıkla bulunabilmesi i&ccedil;in gerekli SEO ayarları yapmayı &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>YOAST SEO ayarlarını yapmayı uygulamalı olarak &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>WordPress ile ilgili gerekli t&uuml;m ayarlarını yapabileceksiniz</p>
	</li>
	<li>
	<p>Sitenize g&ouml;rsel eklemeyi ve bu g&ouml;rselleri d&uuml;zenlemeyi &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>Sitenizin yedeğini alıp ( back up )&nbsp; geri y&uuml;klemeyi ( restore ) &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>Google Analytics ile sitenize gelen ziyaret&ccedil;ilerle ilgili bilgileri g&ouml;r&uuml;nt&uuml;lemeyi &ouml;ğreneceksiniz</p>
	</li>
	<li>
	<p>Facebook, Twitter Instagram gibi Sosyal medya i&ccedil;eriklerini sitenizde g&ouml;sterebileceksiniz</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>WordPress: Yeni Başlayanlar İ&ccedil;in Uygulamalı WordPress</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>Kurs boyunca kullanılacak ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Kod veya kodlama bilmenize gerek yok</li>
	<li>Bilgisayarınız MAC ve Windows olabilir. Her ikisinde de &ccedil;ok rahat &ccedil;alışıyor olabileceksiniz</li>
	<li>İnternet bağlantısı olan bir bilgisayar</li>
	<li>Tecr&uuml;beli olmanıza gerek yok. Daha &ouml;nceden WordPress yada internet sitesi kurma konusunda bilginiz varsa bu sizin i&ccedil;in artı olacaktır ancak tecr&uuml;besi olmayanlar hi&ccedil;bir şey kaybetmiş değil</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>Kısacası simdi tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>&Uuml;cretsiz olarak WordPress kurup uygulamalar yapabileceksiniz</li>
	<li>Hi&ccedil;bir işlem sırasında kod bilmeye gerek duymayacaksınız</li>
	<li>Kendinize Blog a&ccedil;abileceksiniz</li>
	<li>Kurumsal Website yapmayı &ouml;ğreneceksiniz</li>
	<li>PhotoArt Websitesi yapmayı &ouml;ğreneceksiniz</li>
	<li>Haber Sitesi yapmayı &ouml;ğreneceksiniz</li>
	<li>&Ouml;nceden kurulmuş WordPress sitelerinin &uuml;zerinde istediğiniz değişiklikleri yapabileceksiniz</li>
	<li>WordPress i&ccedil;in gerekli eklentilerini kurmayı &ouml;ğreneceksiniz</li>
	<li>Sitenin Google&#39;da herkes tarafından rahatlıkla bulunabilmesi i&ccedil;in gerekli SEO ayarları yapmayı &ouml;ğreneceksiniz</li>
	<li>YOAST SEO ayarlarını yapmayı uygulamalı olarak &ouml;ğreneceksiniz</li>
	<li>WordPress ile ilgili gerekli t&uuml;m ayarlarını yapabileceksiniz</li>
	<li>Sitenize g&ouml;rsel eklemeyi ve bu g&ouml;rselleri d&uuml;zenlemeyi &ouml;ğreneceksiniz</li>
	<li>Sitenizin yedeğini alıp ( back up ) geri y&uuml;klemeyi ( restore ) &ouml;ğreneceksiniz</li>
	<li>Sitenizde iletişim formu kullanmayı &ouml;ğreneceksiniz</li>
	<li>Google Analytics ile sitenize gelen ziyaret&ccedil;ilerle ilgili bilgileri g&ouml;r&uuml;nt&uuml;lemeyi &ouml;ğreneceksiniz</li>
	<li>Facebook, Twitter Instagram gibi Sosyal medya i&ccedil;eriklerini sitenizde g&ouml;sterebileceksiniz</li>
	<li>D&uuml;nyanın en pop&uuml;ler İ&ccedil;erik Y&ouml;netim Sistemi WordPress&#39;i &ouml;ğrenip WordPress&#39;in &ccedil;alışma prensibini anlayacaksınız</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Kendi Blog veya kişisel WebSayfasını oluşturmak isteyenler</li>
	<li>&Ccedil;alıştığı şirketin veya kendi şirketinin Websitesini kendi tasarlayıp y&ouml;netmek isteyenler</li>
	<li>WordPress hakkında bilgi sahibi olup &uuml;zerine yeni ve g&uuml;ncel birikim eklemek isteyenler</li>
	<li>Blog a&ccedil;arak blogger olmak isteyenler</li>
	<li>Daha &ouml;nceden hi&ccedil; internet sitesi kurmamış ve yeni başlayanlar</li>
	<li>Kendi kurumsal sitesini kurmak isteyenler</li>
	<li>Kendi PhotoArt sitesini kurmak isteyenler</li>
	<li>Pop&uuml;ler Temaları &ouml;ğrenmek isteyenler</li>
</ul>
', 4, 0, N'wordpress-yeni-başlayanlar-için-uygulamalı-wordpress', 0, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:43:12.127' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:43:12.127' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (26, N'Data Science with R: Learn Data Manipulation With R', N'Learn data science with R programming, handle with data, manipulate the data and produce meaningful outcomes with R!', N'<h4>Course Details</h4>

<p>Welcome to <strong>Data Science with R: Learn Data Manipulation With R</strong> course.</p>

<p>Data science is an exciting discipline that allows you to turn raw data into understanding, insight, and knowledge. If you want to advance in your career as a data scientist, R is a great place to start your data science journey.</p>

<p>R is not just a programming language, but it is also an interactive environment for doing data science. Moreover, R is a much more flexible language than many of its peers.</p>

<p>Throughout the course you will learn the most important tools in R that will allow you to do data science. By using the tools, you will be easily <strong>handling big data</strong>, <strong>manipulate</strong> it, and <strong>produce</strong> <strong>meaningful</strong> <strong>outcomes</strong>.</p>

<p>In this course, we will examine and manage data structures in R. You will also learn <strong>atomic vectors</strong>, <strong>lists</strong>, <strong>arrays</strong>, <strong>matrices</strong>, <strong>data frames</strong>, <strong>tibbles</strong> and <strong>factors</strong> and you will master on these. So, you will easily create, subset, convert or change any element within a vector or data frame.</p>

<p>Then, we will <strong>transform and manipulate a real data</strong>. For the manipulation, we will use the <strong>tidyverse</strong> package, which involves <strong>dplyr</strong> and other necessary packages.</p>

<p>At the end of course, you will be able to select columns, filter rows, arrange the order, create new variables, group by and summarize your data simultaneously.</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>Examining and Managing Data Structures in R</p>
	</li>
	<li>
	<p>Atomic vectors</p>
	</li>
	<li>
	<p>Lists</p>
	</li>
	<li>
	<p>Arrays</p>
	</li>
	<li>
	<p>Matrices</p>
	</li>
	<li>
	<p>Data frames</p>
	</li>
	<li>
	<p>Tibbles</p>
	</li>
	<li>
	<p>Factors</p>
	</li>
	<li>
	<p>Data Transformation in R</p>
	</li>
	<li>
	<p>Transform and manipulate a deal data</p>
	</li>
	<li>
	<p>Tidyverse and more</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors expertise.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No Previous Knowledge is needed!</li>
	<li>A Windows PC, Mac or Linux Computer</li>
	<li>Be able to download and install all the free software and tools needed to practice</li>
	<li>A strong work ethic, willingness to learn and plenty of excitement about the data mining</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Data Manipulation</li>
	<li>Learn how to handle with big data</li>
	<li>Learn how to manipulate the data</li>
	<li>Learn how to produce meaningful outcomes</li>
	<li>Examine and manage data structures</li>
	<li>Handle wide variety of data science challenges</li>
	<li>Select columns and filter rows</li>
	<li>Arrange the order and create new variables</li>
	<li>Create, subset, convert or change any element within a vector or data frame</li>
	<li>Transform and manipulate an existing and real data</li>
	<li>Use the &ldquo;tidyverse&rdquo; package, which involves &ldquo;dplyr&rdquo;, and other necessary data analysis package</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone interested in data sciences</li>
	<li>Anyone interested in statistical courses</li>
	<li>Statisticians, academic researchers, economists, analysts and business people</li>
	<li>Anyone who want to make inferences based on their financial data</li>
	<li>Professionals working in analytics or related fields</li>
	<li>Anyone who is particularly interested in big data, machine learning and data intelligence</li>
	<li>Specialists in various area who need to develop sophisticated graphical presentations of data</li>
</ul>
', 3, 0, N'data-science-with-r-learn-data-manipulation-with-r', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:44:00.223' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:44:00.223' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (27, N'Android Development: Android App Development From Scratch', N'Learn Java. Learn Android App development with Android Oreo. Use Android Studio like a pro. Become an App Developer!', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to <strong>Android Development: Android App Development From Scratch</strong> course.</p>

<ul>
	<li>
	<p>Do you want to improve your career options by learning Android app Development?</p>
	</li>
	<li>
	<p>Do you want to learn Android Development from Scratch?</p>
	</li>
	<li>
	<p>Do you want to be Android Studio master?</p>
	</li>
	<li>
	<p>Do you want to build your first app?</p>
	</li>
</ul>

<p>If your answer is <strong>&ldquo;yes</strong>&rdquo; to these questions and if you <strong>want more</strong>, you are at the right place!</p>

<p>Android is the most used operating system on the planet. In fact, it&rsquo;s almost omnipresent in the mobile ecosystem and Android Oreo has become the most popular Android version.</p>

<p>My &quot;<strong>Android Development: Android App Development From Scratch</strong>&quot; course will take you from beginner to advance level.</p>

<p>You will learn Android development step-by-step with hands-on demonstrations. In this course we will learn to build and publish 2 major apps. During the lectures we will also be practicing with more than 10 examples.&nbsp;</p>

<p><strong><em>What&rsquo;s important</em></strong></p>

<p>There&rsquo;re a lot of people out there teaching Android 8 who are not developers. We&rsquo;re developers with many years&rsquo; field experience with the Android platform. So you will learn from an expert who has a great knowledge on Android. This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>Java Environment Setup</p>
	</li>
	<li>
	<p>Java Development Environment</p>
	</li>
	<li>
	<p>Java Syntax</p>
	</li>
	<li>
	<p>Java Object Oriented Concept</p>
	</li>
	<li>
	<p>Java Strings</p>
	</li>
	<li>
	<p>Android Environment Setup - Download, install and configure the necessary software</p>
	</li>
	<li>
	<p>Creating New Project</p>
	</li>
	<li>
	<p>Android Studio</p>
	</li>
	<li>
	<p>Android Components</p>
	</li>
	<li>
	<p>Components and Life Cycles</p>
	</li>
	<li>
	<p>Publishing Your App on Google Play and more</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors expertise.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Google updates Android and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required!</li>
	<li>No programming knowledge required!</li>
	<li>A Windows PC, Mac or Linux Computer</li>
	<li>Internet and Basic Computer Knowledge</li>
	<li>Desire to learn Android Application Development</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>Don`t worry. Setup and installation instructions are included for each platform</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Android is the most used operating system on the planet</li>
	<li>Learn Android App Development step by step</li>
	<li>Learn Java</li>
	<li>Learn the most popular Android version ( Oreo )</li>
	<li>Android 8</li>
	<li>Android Studio</li>
	<li>Gradle Build System</li>
	<li>Android Components</li>
	<li>Learn Publishing Android App on Google Play</li>
	<li>Learn Releasing Android App</li>
	<li>We continually update the course, so you&rsquo;ll learn the very latest as Android Oreo ( Android 8 )</li>
	<li>Become a professional Anroid App developer</li>
	<li>No previous experience is required!</li>
	<li>No programming knowledge required!</li>
	<li>Enroll now, start your own App business and work from anywhere in the world</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>A total beginner, with a curious mind and wants to be an app developer</li>
	<li>Anyone who wants to learn to code</li>
	<li>Anyone who wants to become an Android Developer</li>
	<li>Programmers who are interested in building Android apps</li>
	<li>Anyone who wants to create Android Applications</li>
	<li>Anyone who has no previous coding experience but wants to become expert</li>
	<li>Anyone who wants to learn Android 8 ( Android Oreo )</li>
	<li>Anyone who are planning job transformation</li>
	<li>Anyone who would like to work from anywhere in the world</li>
</ul>
', 6, 0, N'android-development-android-app-development-from-scratch', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 00:44:46.683' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:44:46.683' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (28, N'C#: Yeni Başlayanlar İçin Visual Studio ile C# Programlama', N'C# programlamayı sıfırdan öğrenmek, etkin C# Visual Studio ve C# kullanmak için ideal C# programlama kursu', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>&quot;C#: Yeni Başlayanlar İ&ccedil;in Visual Studio ile C# Programlama&quot; </strong>kursuna hoşgeldiniz.</p>

<p>C# becerilerini s&uuml;rekli olarak geliştirmek isteyen b&uuml;y&uuml;k bir Cloud hosting firması i&ccedil;in kod yazıyorsun ya da programlama konusunda kendini geliştirmek isteyen bir &ouml;ğrencisin ve C# programlama &ouml;ğrenmek istiyorsun. Kendine hangi se&ccedil;eneği daha yakın hissediyorsan hisset bu kurs tam sana g&ouml;re.</p>

<p>Bu eğitimde &ccedil;eşitli uygulamalar oluşturmak i&ccedil;in kullanılabilecek &ccedil;apraz bir platform dili olan C# i &ouml;ğretiyor olacağız.&nbsp; C# ile mobil uygulamalar (Windows, Android ve iOS i&ccedil;in), oyunlar geliştirip&nbsp; aynı zamanda masa&uuml;st&uuml; uygulamaları oluşturabilirsiniz.</p>

<p>İşte bu y&uuml;zden C # ile başlamak i&ccedil;in harika bir yerdesin.</p>

<p>C# programlama dilini &ouml;ne &ccedil;ıkaran &ouml;zelliklerden biri de C#&#39;ın Unity geliştiricileri arasında yaygın olarak kullanılan ve en pop&uuml;ler oyun geliştirme dili olması.</p>

<p>C#&#39;ı sıfırdan &ouml;ğrenmeye başlayıp adım adım uygulamalı &ouml;rneklerle &ouml;ğreneceksin. Uygulamalı &ouml;rneklerle &ouml;ğrenirken hangi eylemi neden ve ni&ccedil;in yapıldığının da a&ccedil;ıklamalarını bu eğitimde buluyor olacaksın.</p>

<p><strong><em>C# eğitiminde hangi konuları ele aldık;</em></strong></p>

<ul>
	<li>
	<p>C# ve .NET</p>
	</li>
	<li>
	<p>Visual Studio Kurulumu</p>
	</li>
	<li>
	<p>Mac i&ccedil;in Visual Studio Kurulumu</p>
	</li>
	<li>
	<p>Console Uygulamaları</p>
	</li>
	<li>
	<p>Değişkenler</p>
	</li>
	<li>
	<p>Visual Studio İncelenmesi</p>
	</li>
	<li>
	<p>Tool Box Elemanları</p>
	</li>
	<li>
	<p>If Else Yapısı</p>
	</li>
	<li>
	<p>Switch Case Yapısı</p>
	</li>
	<li>
	<p>While / Do While D&ouml;ng&uuml;leri</p>
	</li>
	<li>
	<p>For / For Each D&ouml;ng&uuml;leri</p>
	</li>
	<li>
	<p>Diziler</p>
	</li>
	<li>
	<p>Metotlar</p>
	</li>
	<li>
	<p>Sınıflar</p>
	</li>
	<li>
	<p>Lıst Sınıfı</p>
	</li>
	<li>
	<p>Random Sınıfı</p>
	</li>
	<li>
	<p>Timer Sınıfı</p>
	</li>
	<li>
	<p>Math Sınıfı</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>C#: Yeni Başlayanlar İ&ccedil;in Visual Studio ile C# Programlama</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Bilgisayarınız MAC ve Windows olabilir. Her ikisinde de &ccedil;ok rahat &ccedil;alışıyor olabileceksiniz</li>
	<li>Kod veya kodlama bilmenize gerek yok</li>
	<li>Kurs boyunca kullanılacak ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Tecr&uuml;beli olmanıza gerek yok</li>
	<li>İnternet bağlantısı olan bir bilgisayar</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>Kısacası simdi tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Kurs boyunca kullanılacak ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Kod veya kodlama bilmenize gerek yok</li>
	<li>Bilgisayarınız MAC ve Windows olabilir. Her ikisinde de &ccedil;ok rahat &ccedil;alışıyor olabileceksiniz</li>
	<li>Uygulamalı &ouml;rneklerle en baştan C# &ouml;ğreneceksiniz</li>
	<li>Her konuyu ger&ccedil;ek hayattan projelerde nasıl kullanacağınızı &ouml;ğreneceksiniz</li>
	<li>Diğer programlama dillerini kısa s&uuml;rede &ouml;ğrenecek altyapıya sahip olacaksınız</li>
	<li>Java, Python gibi dilleri kısa s&uuml;rede &ouml;ğrenebileceksiniz</li>
	<li>Visual Studio&#39;yu etkili şekilde kullanaksanız</li>
	<li>C# ve .NET Visual Studio Kurulumu</li>
	<li>Mac i&ccedil;in Visual Studio Kurulumu</li>
	<li>Console Uygulamaları</li>
	<li>Değişkenler</li>
	<li>Visual Studio İncelenmesi</li>
	<li>Tool Box Elemanları</li>
	<li>Random Sınıfı</li>
	<li>Timer Sınıfı</li>
	<li>Math Sınıfı</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>C# programlama dilini sıfırdan &ouml;ğrenmek isteyenler</li>
	<li>C# etkili tekniklerle &ouml;ğrenmek isteyenler</li>
	<li>Visual Studio`yi etkili kullanmak isteyenler</li>
	<li>C # ile kodlamayı &ouml;ğrenmek isteyenler</li>
	<li>C# &ouml;ğrenip yeni bir meslek dalına ge&ccedil;mek isteyenler</li>
	<li>Oyun geliştirmek isteyenler</li>
</ul>
', 5, 0, N'c-yeni-başlayanlar-için-visual-studio-ile-c-programlama', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 00:45:50.133' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:45:50.133' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (29, N'Android Development Course: Learn Android Oreo From Scratch', N'Learn Android Oreo and become an Android Developer. It has never been easier to learn Android App Development with Oreo', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to <strong>Android Development Course: Learn Android Oreo From Scratch</strong> course.</p>

<ul>
	<li>
	<p><em>Do you want to learn Android App Development with Android 8.0 Oreo?</em></p>
	</li>
	<li>
	<p>Do you want to learn Android Oreo with hands-on examples and building apps?</p>
	</li>
</ul>

<p>If your answer is <strong>&ldquo;yes</strong>&rdquo; , you are at the right place!</p>

<p>My &quot;<strong>Android Development Course: Learn Android Oreo From Scratch</strong>&quot; course will take you from beginner to advance level.</p>

<p>Our passion is carry our experience with right examples to anyone who will enroll this course. In this course you will learn Android app development step-by-step. While doing kind of show and tell in our lectures we are also explaning whys.&nbsp; During the lectures we will be practicing with more than 10 examples and we will be learning to build and publish 2 major apps.</p>

<p><strong><em>What&rsquo;s important</em></strong></p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>Java Environment Setup</p>
	</li>
	<li>
	<p>Java Development Environment</p>
	</li>
	<li>
	<p>Java Syntax</p>
	</li>
	<li>
	<p>Java Object Oriented Concept</p>
	</li>
	<li>
	<p>Java Strings</p>
	</li>
	<li>
	<p>Android Environment Setup - Download, install and configure the necessary software</p>
	</li>
	<li>
	<p>Creating New Project</p>
	</li>
	<li>
	<p>Android Studio</p>
	</li>
	<li>
	<p>Android Components</p>
	</li>
	<li>
	<p>Components and Life Cycles</p>
	</li>
	<li>
	<p>Publishing Your App on Google Play and more</p>
	</li>
</ul>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors expertise.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Google updates Android and it&rsquo;s crucial to stay on top of the latest knowledge. With this course you will always have a chance to follow latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required!</li>
	<li>No coding knowledge required!</li>
	<li>A Windows PC, Mac or Linux Computer</li>
	<li>Desire to learn Android Application Development</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn the most used operating system on the planet</li>
	<li>Learn Android App Development</li>
	<li>Learn the most popular version of Android. Here it is: Android Oreo</li>
	<li>Android 8</li>
	<li>Android Studio</li>
	<li>Learn Publishing Android App on Google Play</li>
	<li>Submit your apps to Google Play</li>
	<li>Start from scratch and become a professional Anroid App developer</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>A total beginner, with a curious mind and wants to be an app developer</li>
	<li>Anyone who wants to learn to code</li>
	<li>Anyone who wants to become an Android Developer</li>
	<li>Programmers who are interested in building Android apps</li>
	<li>Anyone who wants to create Android Applications</li>
	<li>Anyone who has no previous coding experience but wants to become expert</li>
	<li>Anyone who wants to learn Android 8 ( Android Oreo )</li>
	<li>Anyone who would like to work from anywhere in the world</li>
	<li>Anyone planning a job transformation and wants to become a Android developer</li>
</ul>
', 6, 0, N'android-development-course-learn-android-oreo-from-scratch', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:52:46.327' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:52:46.327' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (30, N'SAP Netweaver ABAP Developer Edition Installation', N'Set up a virtual machine and get your local SAP system free with SAP Netweaver ABAP Developer Edition via Ubuntu', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>SAP Netweaver ABAP Developer Editon Installation </strong>course.</p>

<p>At the end of this course you will <strong>have your own LOCAL SAP system which is completely free</strong>. Our SAP Netweaver course teaches how to install SAP Netweaver 7.50 SP02 running on an Ubuntu virtual machine</p>

<p>With SAP Netweaver 7.50 SP02 Version you will have;</p>

<ul>
	<li>
	<p>ABAP programs,</p>
	</li>
	<li>
	<p>WebDynpro applications,</p>
	</li>
	<li>
	<p>BW development environment</p>
	</li>
</ul>

<p>After installation, you will also have the ability to create ODATA services with Netweaver GATEWAY technology, which can be used in SAPUI5 and FIORI developments</p>

<p>This course covers;</p>

<ul>
	<li>
	<p>Virtual Machine installation,</p>
	</li>
	<li>
	<p>Installing Ubuntu Operating System on Virtual Machine,</p>
	</li>
	<li>
	<p>Installation of SAP Netweaver ABAP Developer Edition in Ubuntu Operating System,</p>
	</li>
	<li>
	<p>SAPGUI Installation,</p>
	</li>
	<li>
	<p>Virtual Machine Network Settings and File Sharing</p>
	</li>
	<li>
	<p>To make backup of the Virtual Server with Export / Import method and create a new system</p>
	</li>
	<li>
	<p>In order to create ODATA services, we discussed configuring SAP Gateway configuration and much more</p>
	</li>
</ul>

<p>Whether you&#39;re new to SAP or whether you&#39;re using SAP with our SAP Netweaver ABAP Delevoper Edition course, you&#39;ll be able to learn how to set up with Virtual Machines in a very short time, quickly get ABAP program, WebDynpro, BW development environments and start working on these systems.</p>

<p><strong><em>Free Trial </em></strong></p>

<p>The trial version is provided free of charge by SAP and is offered quarterly. You will be learning how to extend the 3-month version for free for 3 months at a time.&nbsp; In this tutorial, you will learn Access Key and new user creation process after logging into the system. In the meantime, you will also learn how to start and stop SAP services.</p>

<p><strong><em>Attention to all candidates;</em></strong></p>

<p>&ldquo;SAP Netweaver ABAP Delevoper Edition&rdquo; is not an IDES system. There are no standard functional modules such as Material Management, Finance, Maintenance and Production which are defined as SAP functional modules within the IDES system.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our contents are created/produced as <strong>high quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No previous language is required!</li>
	<li>x64 Processor</li>
	<li>8 GB RAM Recommended</li>
	<li>100 GB free disk</li>
	<li>JRE 8 or 11 (64-Bit) version</li>
	<li>Microsoft Windows 7, 8, or 10</li>
	<li>Apple Mac OS X 10.12 and over</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn how to set up SAP Netweaver 7.50 SP02</li>
	<li>Learn how to set up VirtualBox</li>
	<li>Virtual Machine And Ubuntu Operating System Installation</li>
	<li>Sap Netweaver Abap Developer Edition Installation</li>
	<li>Java Runtime Environment Installation</li>
	<li>Abap Developer Edition 7.50 Sp02 Installation</li>
	<li>SAPGUI Installation</li>
	<li>SAP License Renewal</li>
	<li>User Operations and Access Key</li>
	<li>Links Required In The Installation Stage</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to install Free SAP system</li>
	<li>Beginners who are trying to get a job in IT industry in SAP</li>
	<li>SAP teams those involve in a SAP implementation project</li>
	<li>SAP functional consultants who want to learn fundamentals of ABAP</li>
</ul>
', 4, 0, N'sap-netweaver-abap-developer-edition-installation', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:53:28.090' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:53:28.090' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (31, N'C#:Object Oriented Programming in C# with Hands-on Practices', N'Learn Object-Oriented Programming ( OOP ) with C#. C# Intermediate step-by-step guide to classes, interfaces and OOP!', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>C#: Object Oriented Programming in C# with Hands-on Practices</strong> course.</p>

<p>Object-oriented programming is the foundation of many current application development approaches. Interfaces and principles of object-oriented programming is crucial. It does not important whether you want to use C# to build web apps, mobile apps,&nbsp; games or understanding C# classes if you want to succeed with clean coding, agile and design patterns, you have to master OOP.</p>

<p>In this course, we use interactive programming techniques; which means we will be building applications together and furthermore there will be lots of home-works to be done, of course followed by answers. There will be lots of tips and tricks regarding beautiful and efficient coding techniques.</p>

<p>That`s why you are at a great place to start with OOP with C#</p>

<p>All my students will have a chance to learn not only the whats, but also&nbsp;<strong>learn the whys, and hows</strong>.</p>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p><strong>Introduction to Object Oriented Programming</strong></p>
	</li>
	<li>
	<p><strong>Class Structure in Detail</strong></p>
	</li>
	<li>
	<p><strong>Windows Forms Applications</strong></p>
	</li>
	<li>
	<p><strong>System Input Output</strong></p>
	</li>
	<li>
	<p><strong>Class Hierarchies</strong></p>
	</li>
	<li>
	<p><strong>Event Driven Programming </strong></p>
	</li>
	<li>
	<p><strong>Exception Handling</strong></p>
	</li>
	<li>
	<p><strong>Tips and Tricks</strong></p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn OOP.</p>

<p>This course starts with&nbsp;very basics. First, you will learn some terminology. Then the show will start and you will&nbsp; learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the OOP with C# and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Dive in now!</p>

<p>&nbsp;</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>A Windows or Mac for installing all the free software and tools needed to practice</li>
	<li>Visual Studio - You can use any version of Visual Studio</li>
	<li>You will need a computer with access to the internet</li>
	<li>Desire to learn OOP</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Applying the OOP concepts using C#</li>
	<li>How to use Visual Studio efficiently</li>
	<li>What objects, classes, fields, properties, methods and constructors are in detail</li>
	<li>How to use static, partial and nested classes</li>
	<li>How inheritance works</li>
	<li>How you can utilize abstract, sealed, virtual and overridden classes and members to build robust applications</li>
	<li>How to develop Console and Windows Forms Applications</li>
	<li>How to use System Input Output library to utilize file system for your needs</li>
	<li>Layered architecture</li>
	<li>How to use you layered architecture in your projects</li>
	<li>How to delegate methods and use events</li>
	<li>How to handle errors and exceptions in your applications</li>
	<li>What are beautiful coding techniques</li>
	<li>Interactive programming techniques</li>
	<li>How to use coding techniques to make efficient development</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn how to code with C# programming language, regardless of their current level</li>
	<li>Anyone who wants to improve their programming skills</li>
	<li>Anyone who wants to build object oriented and / or windows forms applications</li>
	<li>Anyone who is interested in developing software with a design pattern</li>
	<li>Anyone who wants to understand the elements of full-stack software development</li>
	<li>Anyone who wants to develop .NET applications</li>
	<li>People who are willing to make a career in the corperate world</li>
</ul>
', 5, 0, N'c-object-oriented-programming-in-c-with-hands-on-practices', 1, 0, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 00:54:10.070' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:54:10.070' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (32, N'Python: Yeni Başlayanlar İçin Uygulamalı Python Programlama', N'Python ile programlama öğren. Pyton ile makine öğrenmesi başta olmak üzere Django ve Veri Analizi konularında uzmanlaşın', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p>&quot;<strong>Python: Yeni Başlayanlar İ&ccedil;in Uygulamalı Python Programlama</strong>&quot; kursumuza hoş geldiniz.</p>

<p>Bu kursta sıfırdan Python ve programlamanın temellerini uygulamalı &ouml;rneklerle &ouml;ğreniyor olacağız. Hedefimiz sizi Python`da tecr&uuml;beli hale getirip bir sonraki seviyeye ulaştırmak.</p>

<p><strong>Peki Neden Python? Python &ccedil;&uuml;nk&uuml;</strong></p>

<ul>
	<li>
	<p>Python&#39;ın &ccedil;ok kolay okunabilen bir kod yapısına sahip</p>
	</li>
	<li>
	<p>Python&#39;ın &ccedil;ok kullanışlı ve benzersiz k&uuml;t&uuml;phaneleri var</p>
	</li>
	<li>
	<p>Nesne Tabanlı Programlamaya elverişli</p>
	</li>
	<li>
	<p>Python Web geliştirmeden veri analizine, makine &ouml;ğrenmesinden yapay zekaya kadar olduk&ccedil;a geniş bir kullanım yelpazede kullanılabiliniyor</p>
	</li>
	<li>
	<p>Son yıllarda en &ccedil;ok tercih edilen programlama dillerinden birisi.</p>
	</li>
	<li>
	<p>Ve en &ouml;nemlısı Python kariyer a&ccedil;ısından da &ouml;nemli fırsatlar sunuyor</p>
	</li>
</ul>

<p><strong><em>Python eğitiminde hangi konuları ele aldık;</em></strong></p>

<p>Kurs boyunca programlamanın en temel konularından başlayarak iler seviye programlamaya ge&ccedil;ebilmek ve daha sonra se&ccedil;ebileceğimiz &ccedil;alışma alanlarında devam edebilmemize imkan sağlayacak bir&ccedil;ok konuyu &ouml;ğreneceğiz. İşte bazı konu başlıkları;</p>

<ul>
	<li>
	<p>Değişkenler</p>
	</li>
	<li>
	<p>Sayılar</p>
	</li>
	<li>
	<p>Stringler</p>
	</li>
	<li>
	<p>Koşullu Durumlar</p>
	</li>
	<li>
	<p>D&ouml;ng&uuml;ler</p>
	</li>
	<li>
	<p>Fonksiyonlar</p>
	</li>
	<li>
	<p>Mod&uuml;ller</p>
	</li>
	<li>
	<p>Listeler</p>
	</li>
	<li>
	<p>Demetler</p>
	</li>
	<li>
	<p>S&ouml;zl&uuml;kler</p>
	</li>
	<li>
	<p>İstisnalar</p>
	</li>
	<li>
	<p>Dosyalar</p>
	</li>
	<li>
	<p>K&uuml;meler</p>
	</li>
	<li>
	<p>Nesne Tabanlı Programlama</p>
	</li>
	<li>
	<p>16 farklı alıştırma</p>
	</li>
	<li>
	<p>1 final projesi</p>
	</li>
</ul>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve &quot;<strong>Python: Yeni Başlayanlar İ&ccedil;in Uygulamalı Python Programlama&quot;</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>Bilgisayarınız MAC ve Windows olabilir. Her ikisinde de &ccedil;ok rahat &ccedil;alışıyor olabileceksiniz</li>
	<li>Herhangi bir kodlama bilgisine ihtiya&ccedil; yoktur</li>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>Kodlama yapabilmek i&ccedil;in bir bilgisayar</li>
	<li>Python &ouml;ğrenmek i&ccedil;in istek ve motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Kodlama i&ccedil;in gerekli ortamın kurulması</li>
	<li>Python`i sıfırdan ve uygulumalı &ouml;rneklerle &ouml;ğrenin</li>
	<li>Anaconda Distribution kullanımı</li>
	<li>PyCharm kullanımı</li>
	<li>Jupyter Notebook kullanımı</li>
	<li>Değişken kavramı</li>
	<li>Pythonda yer alan veri tipleri</li>
	<li>Veri Tipi d&ouml;n&uuml;ş&uuml;mleri</li>
	<li>Operat&ouml;rler Veri Tipi</li>
	<li>Metotları Koşullu İfadelerin kullanımı</li>
	<li>D&ouml;ng&uuml;lerin işlevi</li>
	<li>Kontrol İfadeleri</li>
	<li>Kendi fonksiyonunu oluşturma ve &ccedil;ağırma</li>
	<li>Mod&uuml;l kavramı ve i&ccedil;eriği</li>
	<li>Listeler ve Liste &Uuml;rete&ccedil;leri</li>
	<li>Demet kavramı ve kullanımı</li>
	<li>S&ouml;zl&uuml;k yapısı ve kullanımı</li>
	<li>Kalıtım ve &Ouml;zel Metotların kullanımı</li>
	<li>Hata yakalama ve fırlatma</li>
	<li>Temel Dosya işlemleri</li>
	<li>K&uuml;me ve Frozenset</li>
	<li>Nesne Tabanlı Programlama mantığı</li>
	<li>Ve &ccedil;ok daha fazlasını burada bulacaksınız</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Programlamaya yeni başlayanlar</li>
	<li>Python &ouml;ğrenmek isteyenler</li>
	<li>Programlamayla daha &ouml;nce tanışmamış olup, sıfırdan Python programlama &ouml;ğrenmek isteyenler</li>
	<li>Django , Web Geliştirme , Veri Analizi (Pandas , Numpy, Matplotlib), Selenium kullanmak isteyenler</li>
</ul>
', 5, 0, N'python-yeni-başlayanlar-için-uygulamalı-python-programlama', 1, 0, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 00:55:00.513' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:55:00.513' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (33, N'React: Learn React JS From Scratch with Hands-On Projects', N'This is the best way to learn React JS. Start learning from scratch, dive in React JS and become React Developer', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>React: Learn React JS From Scratch with Hands-On Projects</strong> course.</p>

<p><strong>React</strong> is one of the best choices for building modern web applications. If you are new to React or maybe you&#39;ve been struggling to learn and truly understand what&rsquo;s going on then this course is the best way for you to learn <strong>React JS.</strong></p>

<p>In this course, we will take you through everything you need to know to master web development using <strong>ReactJS</strong> by providing a powerfull knowledge through a mixture of diagrams and the creation of a simple application.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p>You don&rsquo;t need to have previous knowledge about React. <strong>This course will take you from a beginner to a more advanced level with hands-on examples. </strong></p>

<p>You will be confident in using <strong>React JS</strong>, and if you ever get stuck, we will be there to help.</p>

<p><strong><em>Learn by doing!</em></strong></p>

<p>So we have made this course as simple as possible in order to take you through step by step so you can feel confident and get a truly good understanding of how to utilize ReactJS.&nbsp; In this course, we will be teaching React by creating various projects.</p>

<p>Here is the list of <strong>what you&rsquo;ll learn </strong>by the end of course,</p>

<ul>
	<li>
	<p><em>We will start with local installation and react basics. After that, we will create 5 projects.</em></p>
	</li>
	<li>
	<p><em>Project 1 &ndash; Learn, create react app and Jsx with &lsquo;first-app&rsquo;</em></p>
	</li>
	<li>
	<p><em>Project 2 &ndash; Learn React props system with &lsquo;blog-posts&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 3 &ndash; Learn react components, state, lifecycle methods, async operations and much more... with &lsquo;hemisphere&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 4 &ndash; Handling event handlers, fetching data from an outside api and showing list of records with &lsquo;image-list&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 5 - Routing with React Router and using React Portals to render children outside the DOM hierarchy with &lsquo;react-router&rsquo; app</em></p>
	</li>
</ul>

<p><strong>At the end of the course</strong></p>

<p>By the end of the course, you will be able to build amazing React single page web applications.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better React developer. You will always have up-to-date content for this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the class!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required!</li>
	<li>A Windows PC, Mac or Linux Computer</li>
	<li>JavaScript + HTML + CSS fundamentals are absolutely required but you don&rsquo;t need to be an expert</li>
	<li>Es6 knowledge would be beneficial but not required</li>
	<li>Desire to learn React</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn React JS</li>
	<li>This course is the best way to learn React JS</li>
	<li>Dive in React JS</li>
	<li>Become React Developer</li>
	<li>Learn how to build single page applications with React JS</li>
	<li>Learn components, props, states and component life cycle methods in React JS</li>
	<li>Create reusable React Components</li>
	<li>Learn modern JavaScript, ES6</li>
	<li>Learn to connect to an external API</li>
	<li>User Inputs, Forms and Events in React</li>
	<li>Routing with React Router</li>
	<li>Using React Portals to render Children Outside the DOM Hierarchy</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Beginner who wants to be React developer</li>
	<li>Anyone who wants to become an React Developer</li>
	<li>Anyone who wants to build amazing React single page web applications</li>
	<li>Anyone who wants to learn React JS</li>
	<li>This course is perfect for someone who has little knowledge of HTML, CSS and JavaScript. We are not saying that you need to be expert of JavaScript but little concepts like Loops and functions should be familiar to you. If you know ES6 that&rsquo;s great, if not, don&rsquo;t worry, ES6 is also covered in this course.</li>
	<li>Students who want to learn how to build fast single page web apps</li>
	<li>Anyone interested in learning an extremely popular technology used by leading tech companies like Facebook, Instagram and Netflix</li>
	<li>Students who want to take their web development skills to the next level and learn a future-proof technology</li>
	<li>Also, if you are looking to move in React-Native App development, it would be great for starting with React Js. Once you are familiar with concepts like JSX, props and states, same concepts are applied in React Native too. And moving into React Native would be so easy</li>
	<li>Anyone planning a job transformation and wants to become a React developer</li>
</ul>
', 6, 0, N'react-learn-react-js-from-scratch-with-hands-on-projects', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:55:42.317' AS DateTime), 1, 1, CAST(N'2020-05-22 00:56:20.277' AS DateTime), 1, CAST(N'2020-05-22 00:56:20.277' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (34, N'React: Learn React JS From Scratch with Hands-On Projects', N'This is the best way to learn React JS. Start learning from scratch, dive in React JS and become React Developer', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>React: Learn React JS From Scratch with Hands-On Projects</strong> course.</p>

<p><strong>React</strong> is one of the best choices for building modern web applications. If you are new to React or maybe you&#39;ve been struggling to learn and truly understand what&rsquo;s going on then this course is the best way for you to learn <strong>React JS.</strong></p>

<p>In this course, we will take you through everything you need to know to master web development using <strong>ReactJS</strong> by providing a powerfull knowledge through a mixture of diagrams and the creation of a simple application.</p>

<p><strong><em>No Previous Knowledge is needed!</em></strong></p>

<p>You don&rsquo;t need to have previous knowledge about React. <strong>This course will take you from a beginner to a more advanced level with hands-on examples. </strong></p>

<p>You will be confident in using <strong>React JS</strong>, and if you ever get stuck, we will be there to help.</p>

<p><strong><em>Learn by doing!</em></strong></p>

<p>So we have made this course as simple as possible in order to take you through step by step so you can feel confident and get a truly good understanding of how to utilize ReactJS.&nbsp; In this course, we will be teaching React by creating various projects.</p>

<p>Here is the list of <strong>what you&rsquo;ll learn </strong>by the end of course,</p>

<ul>
	<li>
	<p><em>We will start with local installation and react basics. After that, we will create 5 projects.</em></p>
	</li>
	<li>
	<p><em>Project 1 &ndash; Learn, create react app and Jsx with &lsquo;first-app&rsquo;</em></p>
	</li>
	<li>
	<p><em>Project 2 &ndash; Learn React props system with &lsquo;blog-posts&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 3 &ndash; Learn react components, state, lifecycle methods, async operations and much more... with &lsquo;hemisphere&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 4 &ndash; Handling event handlers, fetching data from an outside api and showing list of records with &lsquo;image-list&rsquo; app</em></p>
	</li>
	<li>
	<p><em>Project 5 - Routing with React Router and using React Portals to render children outside the DOM hierarchy with &lsquo;react-router&rsquo; app</em></p>
	</li>
</ul>

<p><strong>At the end of the course</strong></p>

<p>By the end of the course, you will be able to build amazing React single page web applications.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better React developer. You will always have up-to-date content for this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the class!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required!</li>
	<li>A Windows PC, Mac or Linux Computer</li>
	<li>JavaScript + HTML + CSS fundamentals are absolutely required but you don&rsquo;t need to be an expert</li>
	<li>Es6 knowledge would be beneficial but not required</li>
	<li>Desire to learn React</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn React JS</li>
	<li>This course is the best way to learn React JS</li>
	<li>Dive in React JS</li>
	<li>Become React Developer</li>
	<li>Learn how to build single page applications with React JS</li>
	<li>Learn components, props, states and component life cycle methods in React JS</li>
	<li>Create reusable React Components</li>
	<li>Learn modern JavaScript, ES6</li>
	<li>Learn to connect to an external API</li>
	<li>User Inputs, Forms and Events in React</li>
	<li>Routing with React Router</li>
	<li>Using React Portals to render Children Outside the DOM Hierarchy</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Beginner who wants to be React developer</li>
	<li>Anyone who wants to become an React Developer</li>
	<li>Anyone who wants to build amazing React single page web applications</li>
	<li>Anyone who wants to learn React JS</li>
	<li>This course is perfect for someone who has little knowledge of HTML, CSS and JavaScript. We are not saying that you need to be expert of JavaScript but little concepts like Loops and functions should be familiar to you. If you know ES6 that&rsquo;s great, if not, don&rsquo;t worry, ES6 is also covered in this course.</li>
	<li>Students who want to learn how to build fast single page web apps</li>
	<li>Anyone interested in learning an extremely popular technology used by leading tech companies like Facebook, Instagram and Netflix</li>
	<li>Students who want to take their web development skills to the next level and learn a future-proof technology</li>
	<li>Also, if you are looking to move in React-Native App development, it would be great for starting with React Js. Once you are familiar with concepts like JSX, props and states, same concepts are applied in React Native too. And moving into React Native would be so easy</li>
	<li>Anyone planning a job transformation and wants to become a React developer</li>
</ul>
', 6, 0, N'react-learn-react-js-from-scratch-with-hands-on-projects', 1, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 00:57:50.460' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:57:50.460' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (35, N'React Native: Learn React Native With Hands-On Practices', N'Learn React Native from scratch. Use React Native to build iOS and Android Apps and dive deeper into React Native', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>React Native: Learn React Native With Hands-On Practices</strong> course.</p>

<p>React-Native is a library developed by the React team and it is widely used to create mobile applications for both<strong> Android and IOS</strong>. You do not need to learn Java, Android, Swift, Objective-C or anything of that.&nbsp; <strong>React and JavaScript is all you need </strong>to create awesome mobile apps that work on both Android and iOS.</p>

<p>This course is for beginners. We will take you from beginner to advance level.&nbsp; You will learn <strong>React</strong> development <strong>step-by-step with hands-on demonstrations</strong>. To be able to benefit from this course, all you need is a basic understanding of JavaScript.</p>

<p>In the course, we are going to tell you what dependencies you need to install and how in detail, to be able to create mobile apps on both MAC and Windows. We are going to use free tools and platforms so you don&#39;t have to buy any tool or app. You are going to learn how to run an Android and iOS simulator on your MAC or Windows computer.</p>

<p>Later on the course, we are going to learn the basics of React.&nbsp; JSX, &#39;props system&#39; and &#39;state system&#39; are going to be crystal clear for you at the end of the course.</p>

<p>We&#39;ll be creating nice-looking reusable components. So you will be able to use this reusable component on your own future projects.On</p>

<p>In this course, I explained all the complex topics in very detail but by making them simpler which I believe will help you a lot. I used some diagrams to tell some important topics and created a nice looking mobile application.</p>

<p><strong>At the end of the course;</strong></p>

<ul>
	<li>
	<p>Basics of React and React-Native libraries,</p>
	</li>
	<li>
	<p>How to send an HTTP request from a mobile application,</p>
	</li>
	<li>
	<p>How to use the flex-box system,</p>
	</li>
	<li>
	<p>How to create reusable components,</p>
	</li>
	<li>
	<p>To reach another app on the device from our app and</p>
	</li>
	<li>
	<p>Creating your own mobile app is going to be clear for you.</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn OOP.</p>

<p>This course starts with&nbsp;very basics. First, you will learn some terminology. Then the show will start and you will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the OOP with C# and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Dive in now!</p>

<p>&nbsp;</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior React and React-Native knowledge</li>
	<li>JavaScript + HTML + CSS fundamentals are absolutely required but you don&#39;t need to be an expert</li>
	<li>Basic ES6 knowledge would be beneficial but not required</li>
	<li>Desire to learn React Native</li>
	<li>Computer with access to the internet</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Set up our virtual environment</li>
	<li>Install React-Native dependencies for MAC and Windows</li>
	<li>Run Android and IOS simulator</li>
	<li>JSX syntax and expressions</li>
	<li>ES6 syntax</li>
	<li>See the content on the simulator</li>
	<li>Styling with React-Native and flex-box rules</li>
	<li>Send an HTTP request to a remote API</li>
	<li>State ve Props systems</li>
	<li>Reusable components</li>
	<li>Reach another app on the phone from the React-Native app</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Programmers who want to learn React and React-Native</li>
	<li>Someone who has basic HTML, CSS and JavaScript knowledge and wants to learn how to create complex applications</li>
	<li>Anyone who wants to create mobile applications for both Android and IOS</li>
	<li>People who are willing to make a career in the application world</li>
</ul>
', 6, 0, N'react-native-learn-react-native-with-hands-on-practices', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 00:58:40.347' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:58:40.347' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (36, N'Spring & Hibernate: Learn Spring Hibernate From Scratch', N'Use Hibernate in Spring Boot, learn details of Spring Boot Framework and create a restful web service in Spring', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>Spring &amp; Hibernate: Learn Spring Hibernate From Scratch </strong>course.</p>

<p><strong>Spring Hibernate</strong> has long been cornerstones of the Spring Framework as Hibernate is the most popular object-relational mapping Spring Framework and the most used JPA providers.</p>

<p>In our course, we concentrate on how to create a restful web service in Spring and Hibernate Frameworks. Our course also covers how to configure Java Spring MVC web applications using Web XML and Java configuration.</p>

<p><strong>This course will take you from a beginner to a more advanced level with hands-on examples. </strong></p>

<p><strong>Spring</strong> and Hibernate is a very big demand for Java development field and in particularly restful web service. So this course is the best course to learn basics to create a restful web service in combination with <strong>Spring and Hibernate Framework</strong>.</p>

<p>This course is for anyone. If you are a beginner, this course will take you from scratch to an advanced level. If you are someone from the field and you just need a refresher, you are also in the right place.</p>

<p>At the end of this course<strong>,</strong> you will be able to create a restful web service in Maven using Spring and Hibernate Frameworks.</p>

<p>Every section in the course is loaded with real-world examples. You will also work on assignments at the end of each section.</p>

<p>After taking this class, developers will be able to build faster, more flexible and easier to maintain application persistence layers with Spring data JPA using Hibernate.</p>

<p>Here is the list of <strong>what you&rsquo;ll learn by the end of course,</strong></p>

<ul>
	<li>
	<p>You will learn details of the Spring Boot Framework</p>
	</li>
	<li>
	<p>You will gain an intermediate level of expertise in Spring Boot</p>
	</li>
	<li>
	<p>You will learn theoretical details of the Framework</p>
	</li>
	<li>
	<p>You can create an enterprise web application with Hibernate</p>
	</li>
</ul>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge. You will always have up-to-date content to this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the class!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Basic Java knowledge is required</li>
	<li>Basic HTML knowledge is helpful</li>
	<li>Knowledge of Spring Framework and Spring Boot</li>
	<li>Be able to download and install all the free software and tools needed to practice</li>
	<li>Desire to learn Spring Hibernate</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn Spring &amp; Hibernate</li>
	<li>Awesome course for Spring Hibernate Beginners</li>
	<li>Create Development Environment including JDK and IDE</li>
	<li>Learn further details of Spring Boot Framework</li>
	<li>Manage file uploading and downloading processes in Spring Boot environment.</li>
	<li>Hands-on Spring Hibernate Projects</li>
	<li>Learn Spring Hibernate with Eclipse based integrated Development Environment which is Spring Source Tool Suite</li>
	<li>Handle dependencies with Apache Maven</li>
	<li>Learn how to design and develop restful web services with Spring Boot Hibernate</li>
	<li>Learn how to activate security in Spring Boot</li>
	<li>Design Authentication Policies</li>
	<li>Use Hibernate in Spring Boot</li>
	<li>Activate Hibernate</li>
	<li>Send e-mail within Spring Boot</li>
	<li>Manage file uploading and downloading processes in Spring Boot environment</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework Developers</li>
	<li>Anyone wants to learn how to design and develop restful web services with Spring Boot Hibernate</li>
	<li>Anyone wants to explore major features of Spring Boot Hibernate</li>
	<li>Programmers who want to develop production-ready enterprise applications</li>
</ul>
', 4, 0, N'spring-hibernate-learn-spring-hibernate-from-scratch', 0, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 00:59:26.593' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 00:59:26.593' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (37, N'C# in 6 Hours: C# For Complete Beginners Learn C# by Coding', N'Master the most popular game development language C# Fundamentals with Visual Studio and master C# in 6 hours', N'<h4>Course Details</h4>

<p>Hello,</p>

<p>Welcome to<strong> C# in 6 Hours: C# For Complete Beginners Learn C#</strong> <strong>by Coding</strong> course</p>

<p>Do you want to<strong> learn C# </strong>but have<strong> no experience </strong>at all. &nbsp;Our C# fundamentals for beginners course is the perfect place for you to start. In this course, we designed C# .NET (pronounced&nbsp;C- <em>see&nbsp; #-sharp</em> ) course to give you everything you need to become productive with <strong>C#.</strong></p>

<p><strong>Code with C# today!</strong></p>

<p>Enroll and <strong>master fundamentals of C# and programming with .NET framework</strong>, because you&#39;ll have lots of options waiting in front of you. Either choose to build mobile apps or you can change job and work as a web developer. We want you to know that when you know the fundamentals well, switching to different technology stacks is easier.</p>

<p>That`s why you are at a great place to start with C#.&nbsp;</p>

<p>All my students will have a chance to learn not only the whats but also&nbsp;<strong>learn the whys and hows</strong>.</p>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p>C# Programming and Features of C#</p>
	</li>
	<li>
	<p>Visual Studio IDE</p>
	</li>
	<li>
	<p>Console Application</p>
	</li>
	<li>
	<p>Variables</p>
	</li>
	<li>
	<p>Primitive Types and Non-Primitive Types</p>
	</li>
	<li>
	<p>Flow Control Expressions</p>
	</li>
	<li>
	<p>Arrays and Lists</p>
	</li>
	<li>
	<p>Error Handling and Debugging</p>
	</li>
	<li>
	<p>Functions</p>
	</li>
	<li>
	<p>Reading File</p>
	</li>
	<li>
	<p>Writing to File</p>
	</li>
	<li>
	<p>DateTime</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn it and the&nbsp;<strong>C#</strong> is easy to understand&nbsp;for the beginners.&nbsp;</p>

<p>This course starts with&nbsp;very basics. First, you will learn how to install the tools, some terminology. Then the show will start and you will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the C# language and valuable insights on how things work under the hood and you&#39;ll also be very confident in the basics of coding and game development, and hungry to learn more.&nbsp;The good news is since&nbsp;the <strong>Free and popular tools are used</strong> you don&rsquo;t need to buy any tool or application.</p>

<p>&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge of C# is required</li>
	<li>Free software and tools used during the course</li>
	<li>Desire to learn C#</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Fundamentals of C#</li>
	<li>Fundamentals of C# and .NET Framework</li>
	<li>Learn C# by coding</li>
	<li>Installation of Visual Studio</li>
	<li>Conditional statements</li>
	<li>Create and usage of Arrays</li>
	<li>Create and usage of Methods</li>
	<li>Work with Primitive Types and Expressions</li>
	<li>Debug C# applications</li>
	<li>Work with classes, structs, arrays</li>
	<li>Why you should learn C#</li>
	<li>C# for anyone</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Newbies or students looking for a refresher on the basics of C# and .NET</li>
	<li>People who wants to learn C#</li>
	<li>People who wants to read and write C# code</li>
	<li>People who wants to learn Visual Studio</li>
	<li>People who want to learn game development &amp; design</li>
	<li>People who want to develop Windows form applications</li>
	<li>Anyone who want to learn programming with c# and .NET</li>
	<li>People who wants develop their own game</li>
	<li>People who want to learn Xamarin</li>
	<li>People who want to learn C# Unity</li>
</ul>
', 5, 0, N'c-in-6-hours-c-for-complete-beginners-learn-c-by-coding', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:00:29.883' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:00:29.883' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (38, N'Android Mobil Uygulama: Yeni Başlayanlar İçin Android Kursu', N'Android mobil uygulama kursu ile Android için uygulama yazmayı sıfırdan öğreneceksiniz. Android 8.0 Oreo`da uzman olun', N'<h4>Course Details</h4>

<p>Merhaba,</p>

<p><strong>Android Mobil Uygulama: Yeni Başlayanlar İ&ccedil;in Android </strong>Kursumuza hoşgeldiniz.</p>

<p>Android Mobil Uygulama kursumuz sizi başlangı&ccedil; ??seviyesinden ileri seviyeye g&ouml;t&uuml;recek. Bu kurs ile doğru adımlarla Android mobil uygulama d&uuml;nyasına girmiş olacaksınız. Paylaşmak bizim tutkumuz. Hedefimiz bu derse kayıt olan herkese doğru &ouml;rneklerle tecr&uuml;bemizi taşımak ve Android d&uuml;nyasının kapısını aralamanıza yardımcı olmak.</p>

<p>Anroid uygulama kursumuzda adım adım Android uygulaması geliştirmeyi &ouml;ğreneceksiniz. Dersler boyunca <strong>10&#39;dan fazla &ouml;rnek</strong>le pratik yapacağız ve<strong> 2 b&uuml;y&uuml;k uygulama</strong> <strong>geliştirmeyi </strong>aynı zamanda<strong> yayınlamayı </strong>&ouml;ğreneceğiz.</p>

<p><strong><em>Yeni Başlayanlar i&ccedil;in </em></strong></p>

<p>Android Mobil Uygulama kursumuz yeni başlayanlar i&ccedil;in adeta bir başucu eser niteliğinde. Kursumuz ayrıca farklı domainlerden Android&#39;e ge&ccedil;mek isteyenler ya da bir s&uuml;re aktif olarak Android uygulaması geliştiren ve bilgilerini tazelemek isteyenler herkes i&ccedil;in faydalı bir kaynak olacaktır.</p>

<p><strong>Android Mobil Uygulama: Yeni Başlayanlar İ&ccedil;in Android kursunda neler &ouml;ğreneceksiniz;</strong></p>

<ul>
	<li>
	<p><em>Android Ortam Kurulumu - Gerekli yazılımı indirin, y&uuml;kleyin ve yapılandırın</em></p>
	</li>
	<li>
	<p><em>Android ile Yeni&nbsp; Bir Proje Oluşturmayı</em></p>
	</li>
	<li>
	<p><em>Android Studio</em></p>
	</li>
	<li>
	<p><em>Android Bileşenleri</em></p>
	</li>
	<li>
	<p><em>Bileşenler ve Yaşam D&ouml;ng&uuml;leri</em></p>
	</li>
	<li>
	<p><em>Uygulamanızı Google Play&#39;de yayınlama ve &ccedil;ok daha fazlasını</em></p>
	</li>
</ul>

<p><strong>Neden bizim Android Uyguluma kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, Google Android&#39;i g&uuml;ncelliyor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p>Android Kursumuza katıldığınızda;</p>

<p><em>? Kursa &Ouml;m&uuml;r Boyu Erişim</em></p>

<p><em>? Soru ve Cevap b&ouml;l&uuml;m&uuml;nde Hızlı ve Kolay Destek</em></p>

<p><em>? Udemy Tamamlama Sertifikası İndirme şansını elde etmiş olacaksınız.</em></p>

<p>Haydi şimdi <strong>Android Mobil Uygulama: Yeni Başlayanlar İ&ccedil;in Android </strong>Kursumuza kayıt olun.</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>Android Programlamayı &ouml;ğrenmek i&ccedil;in istek ve motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Android Mobil Uygulama</li>
	<li>Android O yani Android 8.0 Oreo &ouml;ğrenmek isteyenler i&ccedil;in m&uuml;kemmel bir se&ccedil;im</li>
	<li>Android&#39;i sıfırdan &ouml;ğreneceksiniz</li>
	<li>Android Ortam Kurulumu</li>
	<li>Android i&ccedil;in gerekli yazılımı indirin, y&uuml;kleyin ve yapılandırın</li>
	<li>Android ile Yeni&nbsp; Bir Proje Oluşturun</li>
	<li>Android Studio`da profesyonelleşin</li>
	<li>Uygulamanızı Google Play&#39;de yayınlamayı &ouml;ğrenin</li>
	<li>Android uygulamalarını yazabilir hale geleceksiniz</li>
	<li>10&#39;dan fazla &ouml;rnekle pratik yapacağız</li>
	<li>Kurs s&uuml;resince 2 b&uuml;y&uuml;k uygulama geliştirmeyi aynı zamanda yayınlamayı &ouml;ğreneceğiz</li>
	<li>Android Mobil Uygulama geliştirmeyi &ouml;ğrenmek istiyorsanız bu kursa mutlaka katılın</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Android Oreo &ouml;ğrenmek isteyenler</li>
	<li>Android&#39;de uygulama geliştirmek isteyenler</li>
	<li>Android Developer kariyeri planlayanlar</li>
	<li>Android developer olarak d&uuml;nyanın farklı yerlerine online olarak uzaktan iş yapmak isteyenler</li>
	<li>T&uuml;rkiye&#39;den d&uuml;nyadaki bir &ccedil;ok farklı &uuml;lkeye dolar bazında iş yapabilme fırsatını yakalamak isteyenler</li>
	<li>Android Mobil Uygulama yaparak ek gelir elde etmek isteyenler</li>
</ul>
', 6, 0, N'android-mobil-uygulama-yeni-başlayanlar-için-android-kursu', 0, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:01:14.970' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:01:14.970' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (39, N'Etik Hacker Olma: Sosyal Mühendislik ve Malware Saldırıları', N'Etik Hacker Olma serimizde Malware Saldırını öğreniyoruz. PDF`e nasıl Malware eklenir ya da Phis', N'<h4>Course Details</h4>

<p><strong>Etik Hacker Olma: Sosyal M&uuml;hendislik ve Malware Saldırıları</strong> kursuna hoş geldiniz.</p>

<p>Sosyal M&uuml;hendisliği kullanarak Windows, Mac OS X, Linux ve Android&#39;i nasıl hackleyeceğinizi ve kendinizi k&ouml;t&uuml; niyetli hackerlardan nasıl koruyacağınızı bu kurs ile &ouml;ğreneceksiniz.</p>

<p>Phishing, Malware saldırıları, Hackerlar...</p>

<p>Yeni online d&uuml;nya hayatımızı kolaylaştırığ renk kattığı gibi aynı zamanda &ccedil;ok b&uuml;y&uuml;k bir tehlikeyi de beraberinde getiriyor. Hassas bilgilerimiz i&ccedil;in mobil cihazlarımıza ya da bilgisayarlarımıza g&uuml;veniyoruz. Ancak bilgilerimiz sadece basit bir parola ile korunuyor hatta &ccedil;oğumuz bir&ccedil;ok cihazda ve uygulamada aynı parolayı kullanıyoruz.</p>

<p><strong>Tehlikenin farkında mısınız?</strong></p>

<p>Bir hizmet hacklense veya bir hacker şifrelerimizin sadece bir tanesine erişebiliyorsa, t&uuml;m hesaplarımıza, kimliğimize, &ouml;zel ve hassas bilgilerimize <strong>ulaşabilir, &ccedil;alabilir, silebilir ve bizim i&ccedil;in şantaj olarak kullanabilir</strong>.</p>

<p>Hackerlar hassas bilgilerimize <strong>phishing, mobil veri toplama, sosyal m&uuml;hendislik</strong> gibi y&ouml;ntemler ve saldırılarla cihazlarımıza <strong>malware, truva atı</strong> koyarak erişebilirler.</p>

<p>Platformların sayısındaki artışla, hackerların bilgimize ulaştığı ve ele ge&ccedil;irdiği muazzam miktarda kaynak olabilir. Ayrıca Google&rsquo;a &quot;facebook hesabı nasıl hacklenir?&quot; veya &quot;Bir telefon kamerası nasıl hacklenir?&quot; yazarsanız, durumun ciddiyetini g&ouml;steren binlerce kaynak bulunabilir. Hackerlar ayrıca hassas bilgilerinize bir keşif aşaması olan bilgi toplayarak da ulaşabilirler<strong>. </strong></p>

<p>İşte <strong>Etik Hacker Olma: Sosyal M&uuml;hendislik ve Malware Saldırıları</strong> isimli bu kursta sosyal m&uuml;hendisliğin t&uuml;m y&ouml;nlerini farklı teknik ve ara&ccedil;larla ele alacağız. Terminoloji ile başlayıp ve ardından adım adım uygulamalarla konuyu daha detaylı &ouml;ğreneceğiz. Kursun sonunda, sosyal m&uuml;hendislikle ilgili gerekli bilgileri kolayca anlayacak, kendiniz ve kurumunuz i&ccedil;in <strong>gerekli &ouml;nlemleri</strong> alacaksınız.</p>

<p><strong><em>&Uuml;cretsiz ara&ccedil;lar kullarak &ouml;ğreneceksiniz</em></strong></p>

<p>Bu kurs sizi başlangı&ccedil; ??seviyelerinden alıp ileri seviyeye getirmeyi hedefliyor. Sosyal M&uuml;hendisliği uygulamalı &ouml;rneklerle &ouml;ğrenirken hangi eylemin neden ve ni&ccedil;in yapıldığının a&ccedil;ıklamalarını da bu eğitimde buluyor olacaksın.</p>

<p><strong><em>Sıfırdan &ouml;ğrenin</em></strong></p>

<p>Bu kurs ile kodlama bilmenize ya da sosyal m&uuml;hendislik, tersine m&uuml;hendislik, Malware, Metasploit Framework, Phishing, Mobil veri toplama veya bilgi g&uuml;venliği bilgisine sahip olmanıza gerek yok.</p>

<p>Bu kursta &uuml;cretsiz ara&ccedil; ve platform kullanmanın &ouml;nemini g&ouml;stermeye &ccedil;alıştım, bu y&uuml;zden herhangi bir ara&ccedil; veya uygulama satın almanıza gerek olmayacak.</p>

<p>Kursa kaydolarak &ouml;m&uuml;r boyu t&uuml;m kaynaklara erişebilecek, video pratik yapacak ve istediğiniz zaman ilgili konular hakkında sorular sorabileceksiniz.</p>

<p><strong>Kursu tamamladığınızda;</strong></p>

<ul>
	<li>
	<p>Sosyal M&uuml;hendisliğin Terminolojisini,</p>
	</li>
	<li>
	<p>Malware oluşturma ve dağıtmayı,</p>
	</li>
	<li>
	<p>OSINT (open source intelligence) toplamayı ve sistemlere sızmak i&ccedil;in kullanmayı,</p>
	</li>
	<li>
	<p>Empire Project, MSFvenom, Veil ve TheFatRat kullanmayı,</p>
	</li>
	<li>
	<p>Phishing e-mailini tanımlamayı,</p>
	</li>
	<li>
	<p>Mobil veri toplama y&ouml;ntemlerini,</p>
	</li>
	<li>
	<p>Onları nasıl <strong>&ouml;nleyebileceğinizi,</strong></p>
	</li>
	<li>
	<p>Ve daha &ccedil;ok fazlasını biliyor olacaksınız.</p>
	</li>
</ul>

<p>Kursta net ve sade bilgileri bulacaksınız. Eğitimi hazırlarken, &ouml;zellikle <strong>gereksiz konuşma</strong> ve <strong>beklemekten</strong> (bazı b&ouml;l&uuml;mlerde hızlandırmalarla) ka&ccedil;ınıyoruz.</p>

<p><strong>Bu kurs sizi başlangı&ccedil; ??seviyesinden daha ileri bir seviyeye getirir. L&uuml;tfen &ouml;ğrenme arzunuzu kaybetmeyin ve sorularınız varsa bizimle temasa ge&ccedil;meyi ihmal etmeyin.</strong></p>

<p><strong>&Ouml;NEMLİ !!!: Bu kurs eğitim ama&ccedil;lı hazırlanmıştır ve &ouml;ğrenilen t&uuml;m bilgiler yasal &ccedil;er&ccedil;eve i&ccedil;erisinde kalarak kullanılmalıdır</strong></p>

<h4>Requirements</h4>

<ul>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Minimum 6 GB RAM</li>
	<li>80 GB Boş Harddisk alanı</li>
	<li>64 bit işlemci</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in Merak, İstek ve Motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Etik Hacker Olma</li>
	<li>Kali Linux Y&uuml;kleme</li>
	<li>Sanal Makine Kullanma</li>
	<li>Sosyal M&uuml;hendislik Saldırı Tekniklerini, Aşamaları ve Terminolojileri</li>
	<li>Sosyal m&uuml;hendislik konusuna hakim olacaksınız</li>
	<li>Malware Yazılımlarını Docx ve Firefox Eklentilerine Yerleştirme</li>
	<li>PDF dosyasına nasıl malware yerleştirilir</li>
	<li>Sosyal M&uuml;hendislik Ara&ccedil; Takımının &Ccedil;alışma Mekanizması</li>
	<li>Msfvenom, Veil, Fatrat, Empire Project Kullanılarak Tespit Edilemeyen Malware&rsquo;in Nasıl Oluşturulduğunu &Ouml;ğrenin</li>
	<li>Java G&uuml;venlik A&ccedil;ıklarını Kullanma</li>
	<li>T&uuml;m Y&ouml;nleriyle Phishing Saldırısı</li>
	<li>Phishing T&uuml;rleri</li>
	<li>Phishing &Ouml;nlemleri</li>
	<li>Mobil Veri Toplama Ama&ccedil;ları, Y&ouml;ntemleri ve &Ouml;nlemleri</li>
	<li>Phishing Y&ouml;ntemleri</li>
	<li>Mobil Veri Toplamaya Karşı Alınabilecek &Ouml;nlemler</li>
	<li>Google ve Sosyal Medya &Uuml;zerinden Veri Toplanması</li>
	<li>FOCA, Web Archieve, The Harvester &amp; Recon-NG&#39;nin Nasıl Kullanılacağını &Ouml;ğrenin</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Etik Hacker Olmak isteyenler</li>
	<li>Beyaz Şapkalı Hacker olmak isteyenler,</li>
	<li>Sosyal m&uuml;hendislik ara&ccedil; ve tekniklerini &ouml;ğrenmek isteyenler,</li>
	<li>Malware&rsquo;in nasıl oluşturulduğunu ve dağıtıldığını merak edenler,</li>
	<li>Phishing ve Mobil Veri Toplama konularında bilgi sahibi olmak isteyenler,</li>
	<li>Saldırıya uğramaktan korkan ve online hesaplarını g&uuml;vence altına almak isteyenler,</li>
</ul>
', 2, 0, N'etik-hacker-olma-sosyal-mühendislik-ve-malware-saldırıları', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:01:53.257' AS DateTime), 1, 1, CAST(N'2020-05-22 01:03:57.267' AS DateTime), 1, CAST(N'2020-05-22 01:03:57.267' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (40, N'Etik Hacker Olma: Sosyal Mühendislik ve Malware Saldırıları', N'Etik Hacker Olma serimizde Malware Saldırını öğreniyoruz. PDF`e nasıl Malware eklenir ya da Phis', N'<h4>Course Details</h4>

<p><strong>Etik Hacker Olma: Sosyal M&uuml;hendislik ve Malware Saldırıları</strong> kursuna hoş geldiniz.</p>

<p>Sosyal M&uuml;hendisliği kullanarak Windows, Mac OS X, Linux ve Android&#39;i nasıl hackleyeceğinizi ve kendinizi k&ouml;t&uuml; niyetli hackerlardan nasıl koruyacağınızı bu kurs ile &ouml;ğreneceksiniz.</p>

<p>Phishing, Malware saldırıları, Hackerlar...</p>

<p>Yeni online d&uuml;nya hayatımızı kolaylaştırığ renk kattığı gibi aynı zamanda &ccedil;ok b&uuml;y&uuml;k bir tehlikeyi de beraberinde getiriyor. Hassas bilgilerimiz i&ccedil;in mobil cihazlarımıza ya da bilgisayarlarımıza g&uuml;veniyoruz. Ancak bilgilerimiz sadece basit bir parola ile korunuyor hatta &ccedil;oğumuz bir&ccedil;ok cihazda ve uygulamada aynı parolayı kullanıyoruz.</p>

<p><strong>Tehlikenin farkında mısınız?</strong></p>

<p>Bir hizmet hacklense veya bir hacker şifrelerimizin sadece bir tanesine erişebiliyorsa, t&uuml;m hesaplarımıza, kimliğimize, &ouml;zel ve hassas bilgilerimize <strong>ulaşabilir, &ccedil;alabilir, silebilir ve bizim i&ccedil;in şantaj olarak kullanabilir</strong>.</p>

<p>Hackerlar hassas bilgilerimize <strong>phishing, mobil veri toplama, sosyal m&uuml;hendislik</strong> gibi y&ouml;ntemler ve saldırılarla cihazlarımıza <strong>malware, truva atı</strong> koyarak erişebilirler.</p>

<p>Platformların sayısındaki artışla, hackerların bilgimize ulaştığı ve ele ge&ccedil;irdiği muazzam miktarda kaynak olabilir. Ayrıca Google&rsquo;a &quot;facebook hesabı nasıl hacklenir?&quot; veya &quot;Bir telefon kamerası nasıl hacklenir?&quot; yazarsanız, durumun ciddiyetini g&ouml;steren binlerce kaynak bulunabilir. Hackerlar ayrıca hassas bilgilerinize bir keşif aşaması olan bilgi toplayarak da ulaşabilirler<strong>. </strong></p>

<p>İşte <strong>Etik Hacker Olma: Sosyal M&uuml;hendislik ve Malware Saldırıları</strong> isimli bu kursta sosyal m&uuml;hendisliğin t&uuml;m y&ouml;nlerini farklı teknik ve ara&ccedil;larla ele alacağız. Terminoloji ile başlayıp ve ardından adım adım uygulamalarla konuyu daha detaylı &ouml;ğreneceğiz. Kursun sonunda, sosyal m&uuml;hendislikle ilgili gerekli bilgileri kolayca anlayacak, kendiniz ve kurumunuz i&ccedil;in <strong>gerekli &ouml;nlemleri</strong> alacaksınız.</p>

<p><strong><em>&Uuml;cretsiz ara&ccedil;lar kullarak &ouml;ğreneceksiniz</em></strong></p>

<p>Bu kurs sizi başlangı&ccedil; ??seviyelerinden alıp ileri seviyeye getirmeyi hedefliyor. Sosyal M&uuml;hendisliği uygulamalı &ouml;rneklerle &ouml;ğrenirken hangi eylemin neden ve ni&ccedil;in yapıldığının a&ccedil;ıklamalarını da bu eğitimde buluyor olacaksın.</p>

<p><strong><em>Sıfırdan &ouml;ğrenin</em></strong></p>

<p>Bu kurs ile kodlama bilmenize ya da sosyal m&uuml;hendislik, tersine m&uuml;hendislik, Malware, Metasploit Framework, Phishing, Mobil veri toplama veya bilgi g&uuml;venliği bilgisine sahip olmanıza gerek yok.</p>

<p>Bu kursta &uuml;cretsiz ara&ccedil; ve platform kullanmanın &ouml;nemini g&ouml;stermeye &ccedil;alıştım, bu y&uuml;zden herhangi bir ara&ccedil; veya uygulama satın almanıza gerek olmayacak.</p>

<p>Kursa kaydolarak &ouml;m&uuml;r boyu t&uuml;m kaynaklara erişebilecek, video pratik yapacak ve istediğiniz zaman ilgili konular hakkında sorular sorabileceksiniz.</p>

<p><strong>Kursu tamamladığınızda;</strong></p>

<ul>
	<li>
	<p>Sosyal M&uuml;hendisliğin Terminolojisini,</p>
	</li>
	<li>
	<p>Malware oluşturma ve dağıtmayı,</p>
	</li>
	<li>
	<p>OSINT (open source intelligence) toplamayı ve sistemlere sızmak i&ccedil;in kullanmayı,</p>
	</li>
	<li>
	<p>Empire Project, MSFvenom, Veil ve TheFatRat kullanmayı,</p>
	</li>
	<li>
	<p>Phishing e-mailini tanımlamayı,</p>
	</li>
	<li>
	<p>Mobil veri toplama y&ouml;ntemlerini,</p>
	</li>
	<li>
	<p>Onları nasıl <strong>&ouml;nleyebileceğinizi,</strong></p>
	</li>
	<li>
	<p>Ve daha &ccedil;ok fazlasını biliyor olacaksınız.</p>
	</li>
</ul>

<p>Kursta net ve sade bilgileri bulacaksınız. Eğitimi hazırlarken, &ouml;zellikle <strong>gereksiz konuşma</strong> ve <strong>beklemekten</strong> (bazı b&ouml;l&uuml;mlerde hızlandırmalarla) ka&ccedil;ınıyoruz.</p>

<p><strong>Bu kurs sizi başlangı&ccedil; ??seviyesinden daha ileri bir seviyeye getirir. L&uuml;tfen &ouml;ğrenme arzunuzu kaybetmeyin ve sorularınız varsa bizimle temasa ge&ccedil;meyi ihmal etmeyin.</strong></p>

<p><strong>&Ouml;NEMLİ !!!: Bu kurs eğitim ama&ccedil;lı hazırlanmıştır ve &ouml;ğrenilen t&uuml;m bilgiler yasal &ccedil;er&ccedil;eve i&ccedil;erisinde kalarak kullanılmalıdır</strong></p>

<h4>Requirements</h4>

<ul>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Minimum 6 GB RAM</li>
	<li>80 GB Boş Harddisk alanı</li>
	<li>64 bit işlemci</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in Merak, İstek ve Motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Etik Hacker Olma</li>
	<li>Kali Linux Y&uuml;kleme</li>
	<li>Sanal Makine Kullanma</li>
	<li>Sosyal M&uuml;hendislik Saldırı Tekniklerini, Aşamaları ve Terminolojileri</li>
	<li>Sosyal m&uuml;hendislik konusuna hakim olacaksınız</li>
	<li>Malware Yazılımlarını Docx ve Firefox Eklentilerine Yerleştirme</li>
	<li>PDF dosyasına nasıl malware yerleştirilir</li>
	<li>Sosyal M&uuml;hendislik Ara&ccedil; Takımının &Ccedil;alışma Mekanizması</li>
	<li>Msfvenom, Veil, Fatrat, Empire Project Kullanılarak Tespit Edilemeyen Malware&rsquo;in Nasıl Oluşturulduğunu &Ouml;ğrenin</li>
	<li>Java G&uuml;venlik A&ccedil;ıklarını Kullanma</li>
	<li>T&uuml;m Y&ouml;nleriyle Phishing Saldırısı</li>
	<li>Phishing T&uuml;rleri</li>
	<li>Phishing &Ouml;nlemleri</li>
	<li>Mobil Veri Toplama Ama&ccedil;ları, Y&ouml;ntemleri ve &Ouml;nlemleri</li>
	<li>Phishing Y&ouml;ntemleri</li>
	<li>Mobil Veri Toplamaya Karşı Alınabilecek &Ouml;nlemler</li>
	<li>Google ve Sosyal Medya &Uuml;zerinden Veri Toplanması</li>
	<li>FOCA, Web Archieve, The Harvester &amp; Recon-NG&#39;nin Nasıl Kullanılacağını &Ouml;ğrenin</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Etik Hacker Olmak isteyenler</li>
	<li>Beyaz Şapkalı Hacker olmak isteyenler,</li>
	<li>Sosyal m&uuml;hendislik ara&ccedil; ve tekniklerini &ouml;ğrenmek isteyenler,</li>
	<li>Malware&rsquo;in nasıl oluşturulduğunu ve dağıtıldığını merak edenler,</li>
	<li>Phishing ve Mobil Veri Toplama konularında bilgi sahibi olmak isteyenler,</li>
	<li>Saldırıya uğramaktan korkan ve online hesaplarını g&uuml;vence altına almak isteyenler,</li>
</ul>
', 2, 0, N'etik-hacker-olma-sosyal-mühendislik-ve-malware-saldırıları', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:05:02.027' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:05:02.027' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (41, N'React Native: React Native IOS & Android Uygulama Geliştirme', N'React Native ile sıfırdan IOS & Android uygulama geliştirin uygulamalı örneklerle React Native master olun, fark yaratın', N'<h4>Course Details</h4>

<p>Merhabalar</p>

<p>React Native: React Native IOS &amp; Android Uygulama Geliştirme kursuna hoşgeldiniz.</p>

<p>React-Native, React ekibi tarafından piyasaya s&uuml;r&uuml;len ve şu anda hem Android hem de IOS uygulamalar oluşturmak i&ccedil;in yaygın bir şekilde kullanılan bir k&uuml;t&uuml;phanedir. IOS ve Android gibi mobil uygulamalar i&ccedil;in gerekli olan native geliştiricileri, JavaScript ile kullanıcı ara y&uuml;z&uuml; oluşturmak i&ccedil;in kullanılan en iyi k&uuml;t&uuml;phanelerden biri olan React ile birleştirir.</p>

<p><strong><em>Sıfırdan &ouml;ğrenin</em></strong></p>

<p>Bu kurs ile Java ve Kotlin gibi dilleri &ouml;ğrenmeden native uygulama geliştirebilirsiniz. Bu kurs sizi başlangı&ccedil; ??seviyelerinden alıp ileri seviyeye getirmeyi hedefliyor. React Native kursumuz ile hem Android hem de IOS işletim sistemine sahip telefonlar i&ccedil;in uygulama geliştirmeyi adım adım &ouml;ğrenip uygulayabileceksiniz. Uygulamalı &ouml;rneklerle &ouml;ğrenirken hangi eylemin neden ve ni&ccedil;in yapıldığının a&ccedil;ıklamalarını da bu eğitimde buluyor olacaksınız.</p>

<p><strong><em>React Native&#39;i &uuml;cretsiz ara&ccedil;lar kullarak &ouml;ğreneceksiniz</em></strong></p>

<p>Bu kursta &uuml;cretsiz ara&ccedil; ve platform kullanmanın &ouml;nemini g&ouml;stermeye &ccedil;alıştım, bu y&uuml;zden herhangi bir ara&ccedil; veya uygulama satın almanıza gerek olmayacak. Kursumuzda hem MAC hem de Windows bilgisayarlarda mobil uygulama yapabilmek i&ccedil;in gerekli kurulumları detaylı bir şekilde anlatarak başlayacağız. MAC ya da Windows bilgisayarınız da nasıl Android veya Iphone sim&uuml;lat&ouml;r &ccedil;alıştırabileceğinizi &ouml;ğreneceksiniz. Daha sonra React k&uuml;t&uuml;phanesinin temel &ouml;zelliklerini &ouml;ğreneceğiz. JSX, &#39;props sistemi&#39; ve &#39;state sistemi&#39; kursumuzun sonunda sizler i&ccedil;in &ccedil;ok net olacak. Kursumuz boyunca g&uuml;zel g&ouml;r&uuml;n&uuml;ml&uuml; reusable (tekrar kullanılabilir) komponentler oluşturacağız. Bu komponentleri sizler de kendi mobil uygulamalarınızı geliştirirken doğrudan kullanabiliyor olacaksınız.</p>

<p>Kurs boyunca size karmaşık gelebilecek t&uuml;m konuları olabildiğince basit ve detaylı bir şekilde anlatmaya dikkat ettim. Anlatılanları daha iyi anlayabilmeniz i&ccedil;in bazı şemalar kullandım ve aynı zamanda kursumuz boyunca şık bir mobil uygulama oluşturduk.</p>

<p><strong>Kursu tamamladığınızda;</strong></p>

<ul>
	<li>
	<p><em>React ve React Native k&uuml;t&uuml;phanelerinin temellerini,</em></p>
	</li>
	<li>
	<p><em>Bir mobil uygulamadan nasıl bir HTTP isteği g&ouml;nderebileceğinizi,</em></p>
	</li>
	<li>
	<p><em>Flex-box sistemini nasıl kullanacağınızı,</em></p>
	</li>
	<li>
	<p><em>Nasıl reusable komponentler yapabileceğinizi,</em></p>
	</li>
	<li>
	<p><em>Cihazlardaki başka bir uygulamayı kendi uygulamanız ile nasıl a&ccedil;abileceğinizi biliyor olacak ve</em></p>
	</li>
	<li>
	<p><em>Kendi mobil uygulamanızı yapabiliyor olacaksınız</em></p>
	</li>
</ul>

<p><strong>Neden bizim React Native kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, React Native kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>React Native IOS &amp; Android Uygulama Geliştirme</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>JavaScript + HTML + CSS hakkında temel bilgi sahibi olunmalı</li>
	<li>Temel ES6 bilgisi faydalı olur ancak şart değil</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi hemen kayıt olun ve &ouml;ğrenmeye başlayın</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>React Native</li>
	<li>React Native`de gerekli kurulumları</li>
	<li>React Native kullanarak native iOS ve Android mobil uygulama yapabileceksiniz</li>
	<li>Windows i&ccedil;in React Native Kurulumu</li>
	<li>Mac i&ccedil;in React Native Kurulumu</li>
	<li>Bilgisayarda Android ve Iphone sim&uuml;lat&ouml;r&uuml; nasıl &ccedil;alıştırılır</li>
	<li>JSX syntax ve a&ccedil;ıklamaları</li>
	<li>ES6 syntax</li>
	<li>React Native i&ccedil;eriği sim&uuml;lat&ouml;rde g&ouml;r&uuml;nt&uuml;leme</li>
	<li>React Native ile şekil vermek ve flexbox sistemini anlayacaksınız</li>
	<li>Uzaktaki bir API&#39;a HTTP isteği g&ouml;ndermeyi &ouml;ğreneceksiniz</li>
	<li>Uygulama i&ccedil;inden mobil cihazdaki farklı bir uygulamayı a&ccedil;mayı &ouml;ğreneceksiniz</li>
	<li>Hem Android hem de IOS işletim sistemine sahip telefonlar i&ccedil;in uygulama geliştirmeyi adım adım &ouml;ğrenip uygulayabileceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>React Native &ouml;ğrenmek isteyenler</li>
	<li>React ve React-Native k&uuml;t&uuml;phanelerini &ouml;ğrenmek isteyenler</li>
	<li>Hem Android hem de IOS işletim sistemine sahip telefonlar i&ccedil;in uygulama geliştirmek isteyenler</li>
	<li>React Native ile Java ve Kotlin gibi dilleri &ouml;ğrenmeden native uygulama geliştirebilirsiniz</li>
	<li>Programlama &ouml;ğrenmek isteyenler</li>
</ul>
', 6, 0, N'react-native-react-native-ios-android-uygulama-geliştirme', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:05:49.263' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:05:49.263' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (42, N'React JS: Yeni Başlayanlar İçin React JS Kursu', N'React JS''i sıfırdan öğrenin React JS ile web geliştirmede uzman olun. React’in temellerini bu React JS kursu ile öğrenin', N'<h4>Course Details</h4>

<p>Merhabalar</p>

<p><strong>React JS: Yeni Başlayanlar İ&ccedil;in React JS </strong>kursuna hoşgeldiniz.</p>

<p>React, Facebook&#39;un web geliştirme ekibi tarafından 2013 yılında javascript k&uuml;t&uuml;phanesi olarak piyasaya s&uuml;r&uuml;ld&uuml; ve şimdi modern web uygulamaları oluşturmak i&ccedil;in en iyi se&ccedil;eneklerden birisi.</p>

<p>Eğer React &ouml;ğrenmeye yeni başlıyorsanız ya da React&rsquo;i anlamakta zorlanıyorsanız, bu kurs tam size g&ouml;re.</p>

<p><strong><em>Sıfırdan &ouml;ğrenin!</em></strong></p>

<p>Bu kurs sizi başlangı&ccedil; ??seviyelerinden alıp ileri seviyeye getirmeyi hedefliyor. Yeni başlayanlar i&ccedil;in React JS kursumuzda g&ouml;rsel diyagramlarla ve basit web uygulamalarıyla, React JS ile web geliştirme konusunda bilmeniz gereken konuları sizlere anlatmaya &ccedil;alıştık. Eğitim s&uuml;resince React JS&#39;i nasıl kullanacağınızı &ouml;ğrenebilmeniz ve kullanırken kendinizi g&uuml;vende hissedebilmeniz i&ccedil;in kursu m&uuml;mk&uuml;n olduğunca kolaydan zora olacak bir şekilde oluşturdum.</p>

<p><strong><em>React JS kursunda neler &ouml;ğreneceksiniz?</em></strong></p>

<p>Bu kursta React&rsquo;i &ccedil;eşitli projeler oluşturarak &ouml;ğreneceğiz.&nbsp; Bu projeler, HTML,CSS ve Javascript&rsquo;i temel seviyede bilen ve React&rsquo;in temellerini &ouml;ğrenmek isteyen herkes i&ccedil;in tasarlanmıştır.</p>

<p>İlk &ouml;nce React&rsquo;in kurulumu ve React k&uuml;t&uuml;phanesi ile ilgili bilmemiz gereken kavramları &ouml;ğreneceğiz ve ardından 5 proje oluşturacağız</p>

<ul>
	<li>
	<p><em>First-App uygulaması ile create-react-app ile tanışacağız ve jsx &ouml;ğrenmeye başlayacağız.</em></p>
	</li>
	<li>
	<p><em>Blog-posts uygulaması ile React&rsquo;in en &ouml;nemli konularından props&rsquo;u &ouml;ğreneceğiz.</em></p>
	</li>
	<li>
	<p><em>Hemisphere&rsquo; uygulaması ile component, state, lifecycle method ve asenkron işlemler gibi daha bir&ccedil;ok konuyu&nbsp; bur kursta &ouml;ğreneceğiz</em></p>
	</li>
	<li>
	<p><em>Image-list uygulaması ile Api&rsquo;dan veri &ccedil;ekmeyi ve event handlers&rsquo;lar yardımı ile gelen verileri browser ekranında listelemeyi &ouml;ğreneceğiz.</em></p>
	</li>
	<li>
	<p><em>React-router&rsquo; uygulaması ile &ccedil;ok sayfalı web uygulaması oluşturmayı&nbsp; ve &ccedil;ok daha fazlasını &ouml;ğreneceğiz.</em></p>
	</li>
</ul>

<p><strong>Neden bizim React JS kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, React JS de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>React JS: Yeni Başlayanlar İ&ccedil;in React JS</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>HTML, CSS ve JavaScript hakkında temel bilgi</li>
	<li>JavaScript konusunda uzman olmanız gerekmiyor ancak D&ouml;ng&uuml;ler ve Fonksiyonlar gibi temel kavramları bilmeniz gerekiyor</li>
	<li>Es6 bilmeniz yararlı olur ancak bilmek zorunda değilsiniz, Es6 bu kurs kapsamındadır</li>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi hemen kayıt olun ve &ouml;ğrenmeye başlayın</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>React JS</li>
	<li>React JS`de gerekli kurulumları</li>
	<li>React JS temel konularını</li>
	<li>React JS ile uygulama oluşturma adımlarını</li>
	<li>React K&uuml;t&uuml;phanesi</li>
	<li>React JS ile single page application oluşturmayı</li>
	<li>JSX ile browser&#39;da i&ccedil;erik oluşturmayı</li>
	<li>React&rsquo;in en &ouml;nemli konuları olan Component, Props, State ve Component life cycle metotlarını</li>
	<li>React ile tekrar kullanılabilir Component yapısı oluşturmayı</li>
	<li>Javascript&rsquo;ın &ccedil;ekirdeğini oluşturan ecmaScript&rsquo;in yeni &ouml;zelliklerini</li>
	<li>Input form ve event&rsquo;ler ile kullanıcı isteklerini y&ouml;netmeyi</li>
	<li>React Router ile &ccedil;ok sayfalı web uygulaması yapmayı</li>
	<li>React Portals yardımıyla hızlı ve kolay bir şekilde modal oluşturmayı</li>
	<li>Facebook, Instagram ve Netflix gibi &ouml;nde gelen teknoloji şirketleri tarafından kullanılan son derece pop&uuml;ler bir teknolojiyi &ouml;ğrenmekle ilgilenen herkes bu kursa katılmalı</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>React K&uuml;t&uuml;phanesine Giriş Yapmak İsteyenler</li>
	<li>React JS &ouml;ğrenmek isteyenler</li>
	<li>React JS&#39;de kariyer yapmak isteyenler</li>
	<li>Web geliştirme becerilerini bir &uuml;st seviyeye &ccedil;ıkarmak ve geleceğe y&ouml;nelik bir teknoloji &ouml;ğrenmek isteyen &ouml;ğrenciler</li>
	<li>Facebook, Instagram ve Netflix gibi &ouml;nde gelen teknoloji şirketleri tarafından kullanılan son derece pop&uuml;ler bir teknolojiyi &ouml;ğrenmekle ilgilenen herkes i&ccedil;in</li>
</ul>
', 4, 0, N'react-js-yeni-başlayanlar-için-react-js-kursu', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:06:42.383' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:06:42.383' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (43, N'Oracle Database: Data Guard Administration for Oracle 12C R2', N'Learn Oracle Database Data Guard Administration for Oracle 12C R2, manage Data Guard environment and become Oracle DBA', N'<h4>Course Details</h4>

<p>Hello there,</p>

<ul>
	<li>
	<p>Do you want to learn <strong>Oracle Database Data Guard Administration for Oracle 12C R2</strong>?</p>
	</li>
	<li>
	<p>Do you want to manage the <strong>Data Guard</strong> environment?</p>
	</li>
	<li>
	<p>Do you want to learn the practical side of <strong>Oracle Data Guard Administration</strong>?</p>
	</li>
	<li>
	<p>Do you want to become seasoned <strong>DBA</strong>?</p>
	</li>
</ul>

<p>Then you are exactly in the right place.</p>

<p>In the course, you will have a down-to-earth way explanations with <strong>hands-on examples on </strong>Oracle Database Data Guard Administration. During the course, we focus more on the practical side of Oracle Data Guard administration. All my students will have a chance to learn not only the whats but also&nbsp;<strong>learn the whys and hows.</strong></p>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p>What is Dataguard</p>
	</li>
	<li>
	<p>Installing Oracle Virtualbox</p>
	</li>
	<li>
	<p>Setting Up Oracle Enterprise Linux</p>
	</li>
	<li>
	<p>Installing Oracle Software</p>
	</li>
	<li>
	<p>Creating Virtual Machines</p>
	</li>
	<li>
	<p>Cloning Virtual Machines</p>
	</li>
	<li>
	<p>Installing Database Software and Creating Database</p>
	</li>
	<li>
	<p>Creating Physical Standby Database</p>
	</li>
	<li>
	<p>Managing Physical Standby Database</p>
	</li>
	<li>
	<p>Basic usage of Data Guard Broker Utility</p>
	</li>
	<li>
	<p>Creating and managing snapshot databases</p>
	</li>
	<li>
	<p>Switchover and failover operations on physical standby database via both SQLPlus and Data Guard Broker</p>
	</li>
	<li>
	<p>Creating Far Sync Instance</p>
	</li>
	<li>
	<p>Configuring primary and standby databases for far sync instance</p>
	</li>
	<li>
	<p>Creating Logical Standby database</p>
	</li>
	<li>
	<p>Managing Logical Standby database</p>
	</li>
	<li>
	<p>Switchover and failover operations on logical standby database via both SQLPlus and Data Guard Broker</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals (&nbsp;as a refresher).&nbsp;</p>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s instructors expert.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>Oracle RAC is a unique technology that provides high availability and scalability for all application types. It prevents the server from being a single point of failure. But DBAs also should aware of the recent development and it&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Oracle updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course, you will always have a chance to follow the latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our content are created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Cours</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>For exercises a computer with minumum 12 GB memory</li>
	<li>Basic Computer Use Knowledge with (Win7/8/10)</li>
	<li>120 GB of free disk space</li>
	<li>Basic Database knowledge</li>
	<li>Familiarity with Linux operating system</li>
	<li>Internet connection</li>
	<li>Desire to learn Data Guard Administration for Oracle 12C R2</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Oracle Data Guard</li>
	<li>Oracle Data Guard Adminstration</li>
	<li>Data Guard Administration for Oracle 12C R2</li>
	<li>Installing Oracle Virtualbox</li>
	<li>Setting Up Oracle Enterprise Linux</li>
	<li>Installing Oracle Virtualbox</li>
	<li>Setting Up Oracle Enterprise Linux</li>
	<li>Installing Oracle Software</li>
	<li>Creating Virtual Machines</li>
	<li>Cloning Virtual Machines</li>
	<li>Installing Database Software and Creating Database</li>
	<li>Creating Physical Standby Database</li>
	<li>Managing Physical Standby Database</li>
	<li>Basic Usage of Data Guard Broker Utility</li>
	<li>Creating and Managing Snapshot Databases</li>
	<li>Switchover and Failover Operations on Physical Standby Database via both SQLPlus and Data Guard Broker</li>
	<li>Creating Far Sync Instance</li>
	<li>Configuring Primary and Standby Databases for far sync Instance</li>
	<li>Creating Logical Standby Database</li>
	<li>Managing Logical Standby Database</li>
	<li>Switchover &amp; Failover Operations on Logical Standby Database via both SQLPlus and Data Guard Broker</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who is Oracle Database beginner but wants to become expert</li>
	<li>DBA`s who are looking to sharpen their skills to the expert level</li>
	<li>DBA`s that manage other RDBMS and want to immigrate Oracle</li>
	<li>Anyone who wants to become seasoned DBA</li>
	<li>Anyone who wants to become an Oracle DBA at a big company</li>
</ul>
', 3, 0, N'oracle-database-data-guard-administration-for-oracle-12c-r2', 0, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 01:14:43.187' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:14:43.187' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (44, N'SAP FIORI: Yeni Başlayanlar İçin SAP Fiori Kursu', N'SAP FIORI kursu ile SAPUI5 sayfaları geliştirip SAP ABAP gibi sistemlerde FIORI üzerinden işlem yapmayı öğrenin', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>SAP FIORI: Yeni Başlayanlar İ&ccedil;in SAP Fiori</strong> kursuna hoşgeldiniz.</p>

<p>SAP&rsquo;nin yeni aray&uuml;zleri olarak tanımlayabileceğimiz Fiori bizlere yeni bir kullanıcı deneyimi sunmaktadır. SAP Fiori ekranını SAP S/4HANA&rsquo;daki d&ouml;n&uuml;ş&uuml;mle başlattığı basitleştirme kavramı ile birlikte karmaşık aray&uuml;zleri basitleştirmek, ve eğitim maliyetlerini minimize etmek i&ccedil;in kullanıma sundu.</p>

<p>B&ouml;ylece bizler bu ekranlar sayesinde işyerimize veya bilgisayarımıza bağlı kalmadan işlerimizi cep telefonlarımızdan veya tabletlerimizden yapabiliyor ve her t&uuml;rl&uuml; platformdan işlem kodlarımıza ve verilerimize erişebiliyoruz.</p>

<p>İşte bu kursta sizlere SAP sistemine girmeden, FIORI sayfasından SAP işlemlerinizi nasıl yapabileceğinizi &ouml;ğreteceğiz.</p>

<p><strong><em>Sıfırdan &ouml;ğreneceksiniz!</em></strong></p>

<p>Bu kurs sizi başlangı&ccedil; ??seviyelerinden alıp ileri seviyeye getirmeyi hedefliyor. <strong>Yeni başlayanlar</strong> i&ccedil;in dizayn ettiğimiz kursumuza hem MAC hem de Windows bilgisayarlar da FIORI sayfaları geliştirmek i&ccedil;in gerekli kurulumları detaylı bir şekilde anlatarak başlayacağız. Kurs s&uuml;resince <strong>&uuml;cretsiz ara&ccedil;lar</strong> ve platformlar kullanılarak sizlerin herhangi bir ara&ccedil; veya uygulama satın almanıza gerek bırakmadık .</p>

<p><strong><em>SAP&nbsp;Fiori kursunda neler &ouml;ğreneceksiniz?</em></strong></p>

<p>SAP Fiori kursu boyunca size karmaşık gelebilecek t&uuml;m konuları olabildiğince basit ve detaylı bir şekilde anlatmaya dikkat ettik. Anlatılanları daha iyi anlayabilmeniz i&ccedil;in g&ouml;rsellere &ouml;zellikle dikkat edildi. Kullanılan şemalar ve &ouml;rneklerle herkesin anlayabileceği bir formatta tasarladık kursu.</p>

<ul>
	<li>
	<p>SAPUI5 sayfasında tasarım nesnelerini kullanarak sayfa tasarımının nasıl yapıldığını,</p>
	</li>
	<li>
	<p>FIORI sayfasında SAP Odata verilerini kullanabilmemiz i&ccedil;in SAP sisteminde tablo, table type, structure ve Netweaver Gateway Servisi oluşturmayı,</p>
	</li>
	<li>
	<p>Oluşturduğumuz Gateway Service Implementation ( READ, CREATE, UPDATE, DELETE ) larını kullanıma hazırlamayı,</p>
	</li>
	<li>
	<p>SAPUI5 geliştirme ara&ccedil;larından SAP ile FIORI arasındaki bağlantının nasıl yapıldığını ve SAP sistemine girmeden, FIORI sayfasından SAP işlemlerinizi nasıl yapabileceğinizi &ouml;ğrenmiş olacağız.</p>
	</li>
</ul>

<p><strong>Kursu tamamladığınızda;</strong></p>

<ul>
	<li>
	<p>Tasarım nesnelerini kullanarak nasıl bir SAPUI5 sayfa tasarımı yapabileceğinizi,</p>
	</li>
	<li>
	<p>SAP sisteminde GateWay Servislerinin nasıl oluşturulduğunu,</p>
	</li>
	<li>
	<p>Gateway Implementationların nasıl kullanılacağını,</p>
	</li>
	<li>
	<p>SAPUI5 sayfasında, SAP sisteminde oluşturduğunuz tablo verilerini nasıl g&ouml;stereceğinizi,</p>
	</li>
	<li>
	<p>Sayfanıza gelen Odata verilerini nasıl y&ouml;neteceğinizi,</p>
	</li>
	<li>
	<p>Ve en <strong>&ouml;nemlisi</strong>&nbsp; Input parametre ile g&ouml;nderilen kısıt bazlı (filtre) verilerin SAPUI5 sayfanızda nasıl g&ouml;stereceğinizi &ouml;ğrenmiş olacaksınız.</p>
	</li>
</ul>

<p><strong>Neden bizim SAP Fiori kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, SAP de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>SAP Fiori</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p><strong>Bu kurs sizi başlangı&ccedil; ??seviyesinden daha ileri bir seviyeye getirir. L&uuml;tfen &ouml;ğrenme arzunuzu kaybetmeyin ve sorularınız varsa bizimle temasa ge&ccedil;meyi unutmayın</strong></p>

<h4>Requirements</h4>

<ul>
	<li>Bu kurs SAP FIORI&#39;ye yeni başlayanlar i&ccedil;indir. Bu kursa katılmadan &ouml;nce sadece temel seviyede JavaScript ve SAP ABAP bilgisi sahibi olmanız yeterlidir</li>
	<li>Eğitim s&uuml;resince &uuml;cretsiz ara&ccedil;lar ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek kalmayacak</li>
	<li>Hem MAC hem de Windows bilgisayarlarlarda FIORI sayfaları geliştirmek i&ccedil;in gerekli kurulumları detaylı bir şekilde anlatacağız</li>
	<li>Microsoft Windows 7, 8, 10 veya Apple Mac OS X 10.12 ve &Uuml;zeri</li>
	<li>Minimum 6 GB RAM</li>
	<li>100 GB Boş Disk</li>
	<li>x32 ya da x64 İşlemci</li>
	<li>JRE 8 veya 11 (64-Bit) versiyonu</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi SAP FIORI &ouml;ğrenmeye başlayın</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>SAPUI5 ın geliştirme ara&ccedil;ları olan Eclipse ve WEB IDE nin kurulumunu yapmayı</li>
	<li>SAPUI5 sayfalarında tasarım nesnelerini kullanmayı</li>
	<li>SAPUI5 sayfalarında Fragment ve Dialog kullanmayı</li>
	<li>SAPUI5 sayfalarında Tablo Modlarını kullanmayı</li>
	<li>SAPUI5 da Sayfalar Arasında ge&ccedil;iş yapmayı</li>
	<li>SAPUI5 Sayfasında Chart (VizFrame) S&uuml;tun Grafiği oluşturmayı</li>
	<li>SAPUI5 sayfasında SplitApp oluşturmayı</li>
	<li>SAPUI5 sayfasındaki tablo verileri i&ccedil;in filtre kullanmak</li>
	<li>OData verileri İ&ccedil;in SAP Sisteminde Table, Table Type ve Structure oluşturmayı</li>
	<li>SAP sisteminde GateWay Service Oluşturmayı</li>
	<li>OData Service Implementation larında kod yazmayı</li>
	<li>SAPUI5 sayfasına OData Verilerini getirmek</li>
	<li>SAPUI5 sayfasındaki Input Nesnelerinde OData Verilerini g&ouml;stermeyi</li>
	<li>SAPUI5 sayfasında OData Verilerini UPDATE yapmayı</li>
	<li>SAPUI5 Sayfasında OData Verilerini CREATE yapmayı</li>
	<li>SAPUI5 Sayfasında OData Verilerini DELETE yapmayı</li>
	<li>OData Verini Excel Olarak indirmeyi</li>
	<li>SAP GateWay OData serviste RFC kullanmayı</li>
	<li>OData Parametre giriş ile RFC kullanmayı</li>
	<li>OData Verisinden Search Help(F4) kullanmayı</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>FIORI hakkında genel bilgi &ouml;ğrenmek isteyenler</li>
	<li>SAPUI5 sayfaları geliştirmek isteyenler</li>
	<li>HTML, CSS, JavaScript ve SAP ABAP hakkında temel bilgi sahibi olup nasıl karmaşık uygulamalar yapılabileceğini &ouml;ğrenmek isteyenler</li>
	<li>SAP Proje Ekibi &uuml;yeleri</li>
	<li>SAP ve FIORI &ccedil;alışmalarına devam etmek isteyen &uuml;niversite &ouml;ğrencileri</li>
	<li>SAP FIORI &ouml;ğrenmek isteyen herkes</li>
</ul>
', 4, 0, N'sap-fiori-yeni-başlayanlar-için-sap-fiori-kursu', 0, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:15:31.017' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:15:31.017' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (45, N'Python Django: Learn Django Core From Scratch', N'Learn core concepts behind the Django Framework written in Python and use Django with my Django with Python course', N'<h4>Course Details</h4>

<p>Hello,</p>

<p>Welcome to <strong>Python Django: Learn Django Core From Scratch</strong> course.</p>

<p>This course is for beginners. We will take you from beginner to advance level.&nbsp; You will learn <strong>Django</strong> development <strong>step-by-step with hands-on demonstrations</strong>. To be able to benefit from this course, all you need is a basic understanding of Python.</p>

<p>In this course, we are going to start to understand what <strong>Python and Django</strong> framework is.</p>

<p>Then we will continue with setting up the development languages and frameworks like Python, PostgreSQL, Visual Studio code, Postgres App and PgAdmin. If you are not familiar with these languages and frameworks, don&rsquo;t worry you will learn and use these throughout this course.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>If you don&rsquo;t have experience with Python or you are totally new, we will start with the basics of Python. Before starting Django we will simply comprehend Python Package Managing ( PIP ) tools and virtual environments. Finally, we are going to start Django models, databases, URLs, views, migrations, authentication, cache and so on</p>

<p><strong>Django</strong> is an interesting framework for developers because it provides the infrastructure required for database-driven websites that have user authentication, content administration, contact forms and more. Instead of creating all of these features from scratch, you can use the Django framework that is already built so you can focus your time on developing your web app instead.</p>

<p><strong><em>Why would you want to take this course?</em></strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s instructors expert.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Python &amp; Django updates its system, and it&rsquo;s crucial to stay on top of the latest knowledge. With this course, you will always have a chance to follow the latest trends.</p>

<p><strong><em>Video and Audio Production Quality</em></strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<p>&middot; Seeing clearly</p>

<p>&middot; Hearing clearly</p>

<p>&middot; Moving through the course without distractions</p>

<p><strong><em>You&#39;ll also get:</em></strong></p>

<p>? Lifetime Access to The Cours</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p><strong>Dive in now!</strong></p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you on the other side!</p>

<h4>Requirements</h4>

<ul>
	<li>Desire to learn Python Django</li>
	<li>A computer with an internet connection</li>
	<li>Free software and tools used during the course</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn Django</li>
	<li>Learn how to setting up Python, PostgreSQL, Visual Studio Code, Postgres App, PgAdmin on Mac</li>
	<li>Understand how to use Python and Django Framework</li>
	<li>Learn Python Package Managing ( PIP ) Tool and Virtual Environments</li>
	<li>Learn modeling your domain and code classes with Django</li>
	<li>Basic Commands for Mac</li>
	<li>How to use PyPI</li>
	<li>Learn Python Virtual Environment</li>
	<li>Understand Django basics like Models, HTTP, Processes</li>
	<li>Learn Django Templates basics and configurations</li>
	<li>Learn Django Migrations</li>
	<li>Learn how to do Django Migrations with codes</li>
	<li>Learn signing methods from Django web site</li>
	<li>Simple Mail transfer protocol: STMP</li>
	<li>Send and receive Django Signals</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>For those who want a great start guide to Django</li>
	<li>Python developers want to enter Web Development with Django</li>
	<li>People who want to learn Django</li>
</ul>
', 5, 0, N'python-django-learn-django-core-from-scratch', 1, 0, 0, 0, 0, N'English', CAST(N'2020-05-22 01:16:21.653' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:16:21.653' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (46, N'Spring Boot ve Hibernate: Yeni Başlayanlar İçin Hibernate', N'Spring ve Hibernate kullanarak web uygulamaları geliştirin, Spring Boot Framework detaylarını uygulayarak öğrenin', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>Spring Boot ve Hibernate: Yeni Başlayanlar İ&ccedil;in Hibernate </strong>kursuna hoşgeldiniz.</p>

<p>Spring Boot Spring geliştiriciler tarafından oluşturulmuş &uuml;st d&uuml;zey bir Framework&rsquo;t&uuml;r. Spring Boot&rsquo;un sahip olduğu yetenekler sayesinde &ccedil;ok daha hızlı ve kolay bir şekilde web uygulamalar geliştirebiliriz. Bu kursta size Spring ve Hibernate d&uuml;nyasının kapılarını aralamaya &ccedil;alışacağız.</p>

<p><strong><em>Sıfırdan &ouml;ğreneceksiniz!</em></strong></p>

<p>Hibernate Java d&uuml;nyasında en &ccedil;ok talep g&ouml;ren Object Relational Mapping (ORM) Framework&rsquo;t&uuml;r. Hibernate sayesinde Java ile &ccedil;ok fazla SQL bilgisine sahip olmadan veri iletişimi sağlayarak web uygulamaları hazırlanabilir.</p>

<p>Kursumuzda sizlerle Spring Boot ve Hibernate Frameworkler&rsquo;i kullanarak restful web servisleri nasıl hazırlayacağımızı&nbsp; &ouml;ğreneceğiz. Ayrıcaweb XML ve Java konfig&uuml;rayonları kullanarak nasıl web uygulamaları yapılandıracağımızın detaylarına bakacağız.</p>

<p><strong>Hibernate kursunda</strong> <strong><em>neler &ouml;ğreneceksiniz?</em></strong></p>

<ul>
	<li>
	<p><em>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamı hazırlamayı,</em></p>
	</li>
	<li>
	<p><em>Eclips temelli olan Spring Source Tool kurulumunu,</em></p>
	</li>
	<li>
	<p><em>Pom.xml &uuml;zerinden Maven Apache ile web uygulamaları geliştirmeyi,</em></p>
	</li>
	<li>
	<p><em>Jar dosyalarını hazırlayıp kullanmayı,</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile Security yapılandırmalarını,</em></p>
	</li>
	<li>
	<p><em>Form Tabanlı ve HTTP Basic kimliklendirme y&ouml;ntemlerini,</em></p>
	</li>
	<li>
	<p><em>Remember Me &ouml;zelliğini yapılandırmayı ve kullanmayı,</em></p>
	</li>
	<li>
	<p><em>Database&rsquo;de kullanıcı bilgilerinin nasıl y&ouml;netileceğini</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile Transaction Y&ouml;netimini,</em></p>
	</li>
	<li>
	<p><em>E-mail yeteneklerini &ouml;ğrenip uygulamalı olarak mail g&ouml;ndermeyi,</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile zamanlanmış işler yapmayı,</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile dosya y&ouml;netimi hakkında konuşup upload ve download işlemlerini ger&ccedil;ekleştirmeyi ve &ccedil;ok daha fazlasını</em></p>
	</li>
</ul>

<p><strong>Kursu tamamladığınızda;</strong></p>

<p>Spring ve Hibernate Framework kullanarak hızlı ve kolay bir şekilde web uygulamaları geliştirebilecek seviyede olacaksınız. Sizlerle teorik olarak konuştuğumuz her b&ouml;l&uuml;m&uuml; uygulamalı olarak &ouml;rnekler geliştireceğiz ve rahatlıkla kurumsal projeler hazırlayabilecek duruma geleceksiniz.</p>

<p><strong>Neden bizim Hibernate kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, Spring`de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>Spring Hibernate</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>Spring Boot ve Spring Framework hakkında bilgi sahibi olmak</li>
	<li>Temel Java Bilgisine sahip olmak</li>
	<li>Temel Html Bilgisine sahip olmak</li>
	<li>Ayrıca SQL ve Database bilgisine sahip olmak faydalı olacaktır</li>
	<li>Eğitim s&uuml;resince &uuml;cretsiz ara&ccedil;lar ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek kalmayacak</li>
	<li>Spring Boot Framework&#39;&uuml; &ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi Spring Hibernate &ouml;ğrenmeye başlayın</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Spring Boot Framework</li>
	<li>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamımızı hazırlamayı</li>
	<li>Eclips temelli olan Spring Source Tool kurulumunu</li>
	<li>Pom xml &uuml;zerinden Maven Apache ile web uygulamaları geliştirmeyi</li>
	<li>&Ouml;rnek Projemizin Jar dosyalarını nasıl hazırlayıp kullancağımızı</li>
	<li>Spring Boot ile Security yapılandırmalarını yapıp, Form Tabanlı ve HTTP Basic kimliklendirme y&ouml;ntemlerini</li>
	<li>Remember Me &ouml;zelliğini yapılandırmayı ve kullanmayı</li>
	<li>Database&rsquo;de kullanıcı bilgilerinin nasıl y&ouml;netileceğini</li>
	<li>JPA/Hibernate temellerini &ouml;ğrenip projeler geliştireceğiz</li>
	<li>Spring Boot ile Transaction Y&ouml;netimi &uuml;zerine konuşacağız</li>
	<li>Lazy Loading &uuml;zerine bilgiler vereceğiz</li>
	<li>E-mail yeteneklerini &ouml;ğrenip uygulamalı olarak mail g&ouml;ndermeyi test edeceğiz</li>
	<li>Spring Boot ile zamanlanmış işler yapmayı &ouml;ğreneceğiz</li>
	<li>Spring Boot ile dosya y&ouml;netimi hakkında konuşup upload ve download işlemlerini ger&ccedil;ekleştireceğiz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework uygulama geliştiricileri</li>
	<li>Spring Boot Hibernate ile web uygulamalrı hazırlamak isteyenler</li>
	<li>Kurumsal uygulamalar hazırlayıp geliştirmek isteyenler</li>
	<li>Spring Boot Hibernate &Ouml;ğrenmek isteyenler</li>
</ul>
', 4, 0, N'spring-boot-ve-hibernate-yeni-başlayanlar-için-hibernate', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:17:17.817' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:17:17.817' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (47, N'Redux with React: Learn Redux with Modern React', N'Learn Redux, React Router and React Portals with my React Redux course. Master with Redux and create React app', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>Redux with React: Learn Redux with Modern React</strong> course.</p>

<p><strong>React</strong> is one of the best choices for building modern web applications. If you are new to React Redux or maybe you&#39;ve been struggling to learn and truly understand what&rsquo;s going on then this course is the best way for you to learn <strong>Redux.</strong></p>

<p>In this course, we will take you through everything you need to know about Redux. You will find the most simple and easiest form of<strong> React-Router, React-Portal and Redux</strong>.</p>

<p>In particular, Redux is a library that is said to be difficult to understand and implement for most developers. I attribute this problem to the fact that we are not very familiar with the Redux terms we need to know about Redux, and the other issue is, most of the time, the topic is not sequentially explained.</p>

<p>In this course, I explained the theoretical knowledge about Redux in the most basic and simple form on the &lsquo;code pen&rsquo; tool, before proceeding to React. I explained the general steps and how Redux functions by providing a powerfull knowledge through a mixture of diagrams and the creation of a simple application.</p>

<p>I have tried to make sure that you get familiar with Redux and get used to it quickly, by repeating the important concepts of Redux, such as Actions, Reducers, Dispatch, Store, Provider, Middleware, Redux-thunk, because learning something very quickly is depends on repetition.</p>

<p>If you have difficulty understanding Redux, this course is just for you.</p>

<p><strong><em>Hands-On</em></strong></p>

<p>This course will take you from a beginner to a more advanced level with hands-on examples.&nbsp; You will be confident in using <strong>Redux</strong>, and if you ever get stuck, we will be there to help.</p>

<p>Here is the list of <strong>what you&rsquo;ll learn </strong>by the end of course,</p>

<ul>
	<li>
	<p><em>React Router</em></p>
	</li>
	<li>
	<p><em>Link and Navlink</em></p>
	</li>
	<li>
	<p><em>Programmitic Redirects</em></p>
	</li>
	<li>
	<p><em>Route Parameters</em></p>
	</li>
	<li>
	<p><em>React Router Switch Tag</em></p>
	</li>
	<li>
	<p><em>React Portals</em></p>
	</li>
	<li>
	<p><em>Why React Portals?</em></p>
	</li>
	<li>
	<p><em>Creating Modal With React Portals</em></p>
	</li>
	<li>
	<p><em>Redux Stores</em></p>
	</li>
	<li>
	<p><em>Redux Actions</em></p>
	</li>
	<li>
	<p><em>Redux Reducers</em></p>
	</li>
	<li>
	<p><em>Store Subscriptions</em></p>
	</li>
	<li>
	<p><em>Setting up Redux</em></p>
	</li>
	<li>
	<p><em>Mapping State to PropsCard </em></p>
	</li>
	<li>
	<p><em>PageMap Dispatch to Props</em></p>
	</li>
	<li>
	<p><em>Action Creators</em></p>
	</li>
	<li>
	<p><em>Redux Thunk</em></p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better React developer. You will always have up-to-date content for this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the class!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>This course is ideal for people who have a basic knowledge of HTML, CSS, JavaScript and React JS</li>
	<li>Desire to learn Redux</li>
	<li>Computer with access to the internet</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>If you want to to learn Redux, React-Router and React-Portals, you are in the right place</li>
	<li>If you want to learn today&#39;s most popular front-end architectures, do not wait. This course is for you!</li>
	<li>Learn the most popular React-Router, React-Portal and Redux libraries used with React JS</li>
	<li>Learn how to create multi-page web applications with React-Router</li>
	<li>Learn the easy and safe way to create modals with React Portals</li>
	<li>Learn how to manage the data of our application with the Redux library</li>
	<li>Learn how to easily access the data we hold globally from our components</li>
	<li>Learn how to manipulate the data stored in the Redux store by creating actions</li>
	<li>This course is ideal for people who have a basic knowledge of HTML, CSS, JavaScript and React JS</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Developers who want to take their development skills to the next level and learn a future-proof technology</li>
	<li>Anyone interested in learning an extremely popular technology used by leading tech companies like Facebook, Instagram and Netflix</li>
	<li>Anyone who wants to learn Redux, React-Router and React-Portals</li>
	<li>Anyone who wants to learn today&#39;s most popular front-end architectures</li>
	<li>Students who want to take their Web development skills to the next level</li>
</ul>
', 6, 0, N'redux-with-react-learn-redux-with-modern-react', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 01:18:14.520' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:18:14.520' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (48, N'Android Uygulama:Oreo ve Pie ile Android Uygulama Geliştirme', N'Web entegrasyonlu Android uygulama geliştirip Fragment, Architectural Room ve Firebase online veritabanında uzmanlaşın', N'<h4>Course Details</h4>

<p>Merhaba,</p>

<p><strong>Android Uygulama: Oreo ve Pie ile Android Uygulama Geliştirme </strong>kursumuza hoşgeldiniz</p>

<p>&Ouml;ncelikle şunu bilmenizi isterim ki bu kurs orta seviye bir<strong> Android uygulama </strong>geliştirme kursu. Yani bu kursa sıfırdan başlamayacağız. Bu kursta programlama dili olarak java kullanacağız. Dolayısıyla daha &ouml;nceden Java programlama dilini biliyor olmanız gerekli. Yine bu kurs i&ccedil;in temel Android bilgisine sahip olmalısınız. &Ccedil;&uuml;nk&uuml; bu kursta ileri seviye konular &ouml;ğrenerek, bu bilgilerinizle <strong>Android Developer</strong> olarak iş bulabileceksiniz.</p>

<p>Paylaşmak bizim tutkumuz. Hedefimiz bu derse kayıt olan herkese doğru &ouml;rneklerle tecr&uuml;bemizi taşımak ve Android d&uuml;nyasının kapısını aralamanıza yardımcı olmak istiyoruz. Sizde bu kursta &ouml;ğrendiğiniz bilgilerle basit Android uygulamaları değil, b&uuml;y&uuml;k &ouml;l&ccedil;ekli, <strong>Web entegrasyonlu</strong> harika uygulamalar geliştirebileceksiniz.</p>

<p><strong><em>Android Uygulama: Oreo ve Pie ile Android Uygulama Geliştirme kursunda neler &ouml;ğreneceksiniz?</em></strong></p>

<p>Bu kursta fragmentlar, <strong>architectural room veritabanı, notifikasyon, firebase realtime veritabanı, retrofit k&uuml;t&uuml;phanesi ile rest api</strong> kullanımı gibi &ccedil;ok &ouml;nemli konuları ele alacağız. Kurs s&uuml;resince b&uuml;t&uuml;n konuları uygulamalı olarak &ouml;ğreneceksiniz. Ayrıca 2 adet b&uuml;y&uuml;k &ouml;l&ccedil;ekli, web entegrasyonlu, online veritabanı kullanılan harika uygulamalar geliştireceksiniz.</p>

<ul>
	<li>
	<p>Ekranlar Arasında Veri G&ouml;nderimi</p>
	</li>
	<li>
	<p>Fragmentler</p>
	</li>
	<li>
	<p>Fragment İşlemleri</p>
	</li>
	<li>
	<p>Mimari Oda Veritabanı</p>
	</li>
	<li>
	<p>SQLite Veritabanı</p>
	</li>
	<li>
	<p>Room Veritabanı</p>
	</li>
	<li>
	<p>Repository Komponentini Oluşturma</p>
	</li>
	<li>
	<p>Veri Tabanına Yeni Veri Ekleme</p>
	</li>
	<li>
	<p>Veri Tabanından Veri Silme</p>
	</li>
	<li>
	<p>Veri Tabanındaki Verileri G&uuml;ncelleme ve&nbsp; &ccedil;ok daha fazlası</p>
	</li>
</ul>

<p><strong>Neden bizim Android Uygulama kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, Google Android&#39;i g&uuml;ncelliyor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p>Android Kursumuza katıldığınızda;</p>

<p><em>? Kursa &Ouml;m&uuml;r Boyu Erişim</em></p>

<p><em>? Soru ve Cevap b&ouml;l&uuml;m&uuml;nde Hızlı ve Kolay Destek</em></p>

<p><em>? Udemy Tamamlama Sertifikası İndirme şansını elde etmiş olacaksınız.</em></p>

<p>Haydi şimdi <strong>Android Uygulama:Oreo ve Pie ile Android Uygulama Geliştirme </strong>kursumuza kayıt olun.</p>

<p>Android d&uuml;nyasına yelken a&ccedil;maya hazırsanız bekliyoruz.</p>

<h4>Requirements</h4>

<ul>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>Java Virtual Machine Kurulumu</li>
	<li>Android Studio Kurulumu</li>
	<li>&Ouml;ğrenme arzusu</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi Android d&uuml;nyasını beraber keşfedelim</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Android`in ileri seviyelerini &ouml;ğrenmek istiyorsanız bu kurs tam size g&ouml;re</li>
	<li>Android Uygulama Geliştiricisi olarak kariyer planlıyorsanız bu kurs tam size g&ouml;re</li>
	<li>Web entegrasyonlu, online veri tabanı kullanılan ileri seviye Android Uygulamaları Geliştirmek istiyorsanız bu kursa kesinlikle katılmalısınız</li>
	<li>Kursta programlama dili olarak Java kullanılacaktır</li>
	<li>Eğitimde en yeni Android teknolojileri ve yazılım metodolojileri kullanılacaktır</li>
	<li>Android Programlamayı &ouml;ğrenmek i&ccedil;in istek ve motivasyon</li>
	<li>Ekranlar Arasında Veri G&ouml;nderimi</li>
	<li>Fragmentler</li>
	<li>Fragment İşlemleri</li>
	<li>Mimari Oda Veritabanı</li>
	<li>SQLite Veritabanı</li>
	<li>Room Veritabanı</li>
	<li>Repository Komponentini Oluşturma</li>
	<li>Veri Tabanına Yeni Veri Ekleme</li>
	<li>Veri Tabanından Veri Silme</li>
	<li>Veri Tabanındaki Verileri G&uuml;ncelleme</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Android&#39;de uygulama geliştirmek isteyenler</li>
	<li>Android Developer kariyeri planlayanlar</li>
	<li>Android Developer olarak d&uuml;nyanın farklı yerlerine online olarak uzaktan iş yapmak isteyenler</li>
	<li>Android`in ileri seviyelerini &ouml;ğrenmek isteyenler</li>
	<li>Android Uygulama Geliştiricisi olarak kariyer planlayan ve yazılım şirketlerinde bu alanda iş bulmak istiyorsanız bu kurs tam size g&ouml;re</li>
	<li>Web entegrasyonlu, online veri tabanı kullanılan ileri seviye Android Uygulamaları Geliştirmek istiyorsanız bu kursu alabilirsiniz</li>
</ul>
', 6, 0, N'android-uygulama-oreo-ve-pie-ile-android-uygulama-geliştirme', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:18:57.257' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:18:57.257' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (49, N'C# OOP Kamp: Nesne Tabanlı Programlamayı Sıfırdan Öğrenin', N'C# OOP sıfırdan öğrenmek, etkin C# Visual Studio ve C# kullanmak için en ideal C# OOP kursu. C# uygulamalarla öğrenin!', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>C# OOP Kamp: Nesne Tabanlı Programlamayı Sıfırdan &Ouml;ğreninm </strong>kursuna hoşgeldiniz.</p>

<ul>
	<li>
	<p>C# becerilerini s&uuml;rekli olarak geliştirmek isteyen b&uuml;y&uuml;k bir Cloud hosting firması i&ccedil;in kod yazıyor,</p>
	</li>
	<li>
	<p>Programlama konusunda kendini geliştirmek isteyen bir &ouml;ğrenci ya da</p>
	</li>
	<li>
	<p>Bilişim sekt&ouml;r&uuml;ne adım atmayı planlayan tutkulu birisin ve C# programlama &ouml;ğrenmek istiyorsun.</p>
	</li>
</ul>

<p>T&uuml;m bu konulara ilgin varsa ve daha fazlası i&ccedil;in bir C# kursu arıyorsan bu kurs tam sana g&ouml;re.</p>

<p>Bu eğitimle C#programlayı sıfırdan &ouml;ğrenip ardından C# Nesne Tabanlı Programlama&#39;da ( OOP ) konusunda uzmanlaşacaksın.</p>

<p><strong>C# OOP Kamp: Nesne Tabanlı Programlama kursunda hangi konuları ele aldık;</strong></p>

<ul>
	<li>
	<p><em>Nasıl Bir Altyapı Oluşturmanız Gerektiğini,</em></p>
	</li>
	<li>
	<p><em>SOLID Prensiplerini</em></p>
	</li>
	<li>
	<p><em>Pattern&#39;leri Yani Tasarım Kalıplarını Projelerinize Nasıl Uygulayabileceğinizi,</em></p>
	</li>
	<li>
	<p><em>Projenizi Katmanlara Ayırarak Nasıl Y&ouml;netilebilir Hale Getirilebileceğini,</em></p>
	</li>
	<li>
	<p><em>Projelerinize Y&ouml;netim Mod&uuml;l&uuml; Ekleyerek Yetkilendirme İşlemlerini Nasıl Y&ouml;netebileceğinizi,</em></p>
	</li>
	<li>
	<p><em>Entity Framework ile Database İşlemlerini,</em></p>
	</li>
	<li>
	<p><em>LINQ ile Sorgulama İşlemlerini,</em></p>
	</li>
	<li>
	<p><em>OOP - Nesne Tabanlı Programlama Mantığını</em></p>
	</li>
	<li>
	<p><em>Kod Tekrarı Yapmadan Nasıl Proje Geliştirilebileceğini,</em></p>
	</li>
	<li>
	<p><em>Belirli Standartlara G&ouml;re Kod Yazmayı ve Benzeri Konuları En Detaylı Şekilde &Ouml;ğrenmiş Olacaksınız.</em></p>
	</li>
	<li>
	<p><em>Projelerimizde her adım &ouml;nceden belirleneceğinden daha başlamadan yapmamız gereken her şey netleşmiş olacak ve b&ouml;ylece yapacağımız kodlamanın t&uuml;m mantığı sorunsuz bir şekilde aktarılacaktır.</em></p>
	</li>
	<li>
	<p><em>Bu C# OOP eğitimimizi tamamladığınızda&nbsp; C# programlama dilinde orta seviyenin &uuml;st&uuml;nde bir yazılımcı d&uuml;zeyinde bilgi sahibi olacaksınız.</em></p>
	</li>
</ul>

<p><strong>Neden bizim C# OOP Nesne Tabanlı Programlama kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p>C# OOP Kamp: Nesne Tabanlı Programlama Kursumuza katıldığınızda;</p>

<p><em>? Kursa &Ouml;m&uuml;r Boyu Erişim</em></p>

<p><em>? Soru ve Cevap b&ouml;l&uuml;m&uuml;nde Hızlı ve Kolay Destek</em></p>

<p><em>? Udemy Tamamlama Sertifikası İndirme şansını elde etmiş olacaksınız.</em></p>

<p>Haydi şimdi <strong>C# OOP Kamp: Nesne Tabanlı Programlamayı Sıfırdan &Ouml;ğrenin </strong>kursumuza kayıt olun.</p>

<p><strong>C# OOP Nesne Tabanlı Programlama</strong> d&uuml;nyasına yelken a&ccedil;maya hazırsanız bekliyoruz.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Daha &ouml;nceden C# bilmenize gerek yok &ccedil;&uuml;nk&uuml; en başından &ouml;ğreneceksiniz</li>
	<li>Bilgisayarınız MAC ve Windows olabilir. Her ikisinde de &ccedil;ok rahat &ccedil;alışıyor olabileceksiniz</li>
	<li>Kod veya kodlama bilmenize gerek yok</li>
	<li>Bilgisayarınız, İnternet bağlantısı ve Siz!</li>
	<li>Ve elbette eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>C# ile Nesne Tabanlı Programlama ( OOP )</li>
	<li>Nesne Tabanlı Programlama&#39;nın (Object Oriented Programming) inceliklerini</li>
	<li>Her konuyu ger&ccedil;ek projelerde nasıl kullanacağınızı &ouml;ğreneceksiniz</li>
	<li>Kurs boyunca kullanılacak ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Java, Python gibi dilleri &ccedil;ok kısa s&uuml;rede &ouml;ğrenecek altyapıya sahip olacaksınız</li>
	<li>Katmanlı mimari ve LINQ teknolojisiyle Profesyonel Bir Projenin Nasıl geliştirileceğini</li>
	<li>Profesyonel Otomasyon uygulamaları geliştirebilmeyi</li>
	<li>Personel takip sistemleri algoritması kurabilmeyi</li>
	<li>Stok takip sistemleri algoritması kurabilmeyi</li>
	<li>Facade Tasarım Deseninin Ger&ccedil;ek bir uygulamada nasıl Kullanıldığını</li>
	<li>Katmanlı mimarileri SOLID prensipler ve Tasarım Desenleri(Design Pattern) &ouml;ğreneceksiniz</li>
	<li>Encapsulation</li>
	<li>Enum Kullanımı</li>
	<li>Delegate Kullanımı</li>
	<li>Exception Handling (Hata Yakalama)</li>
	<li>Dosya İşlemleri</li>
	<li>Katmanlı Mimari</li>
	<li>MsSQL Kullanımı</li>
	<li>Katmanlı Mimari LINQ ve Trigger Kullanımıyla Personel Takip Otomasyonu</li>
	<li>Proje Formlarının Tasarımı</li>
	<li>Ekleme ve Listeleme işlemleri</li>
	<li>G&uuml;ncelleme İşlemleri</li>
	<li>Silme İşlemleri (Trigger Kullanımı)</li>
	<li>SOLID Prensipleri ve Design Patternler</li>
	<li>Facade Design Pattern &amp; Ado . Net ile Stok Takip Otomasyonu</li>
	<li>Form Tasarımları</li>
	<li>G&uuml;ncelleme İşlemleri</li>
	<li>Silme İşlemleri</li>
	<li>Katmanlı mimariyi</li>
	<li>Solid Prensiplerini</li>
	<li>Abstract Factory , Observer ve Facade Design Patternleri</li>
	<li>Ado. Net Kullanımını</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>C# ile Nesne Tabanlı Programlamada etkili tekniklerle &ouml;ğrenmek isteyenler</li>
	<li>C# &ouml;ğrenip yeni bir meslek dalına ge&ccedil;mek isteyenler</li>
	<li>Java, Python gibi dilleri &ccedil;ok kısa s&uuml;rede &ouml;ğrenecek altyapıya sahip olmak isteyenler</li>
	<li>Xamarin&#39;in temellerini anlamak isteyenler</li>
	<li>Personel takip ya da stok takip gibi otomasyon uygulamalarında en uygun algoritma yapısını oluşturmak isteyenler</li>
</ul>
', 5, 0, N'c-oop-kamp-nesne-tabanlı-programlamayı-sıfırdan-öğrenin', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:20:20.890' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:20:20.890' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (50, N'Python: Learn Python with Real Python Hands-On Examples', N'Python programming with hands-on Python Examples. This Python course is to the-point Python course your are looking for', N'<h4>Course Details</h4>

<p>Welcome to my &quot;<strong>Python: Learn Python with Real Python Hands-On Examples</strong>&quot; course.</p>

<p>Do you want to learn one of the employer&rsquo;s most request skills? If you think so, you are at the right place.</p>

<p>We&#39;ve designed for you<strong> &quot;</strong>Python: Learn Python with Real Python Hands-On Examples&rdquo; straight-forward course for the Python programming language<strong>. </strong></p>

<p>In the course, you will have a down-to-earth way explanations with <strong>hands-on projects</strong>. With my course, you will learn Python Programming step-by-step. I made Python 3 programming simple and easy with exercises, challenges and lots of real-life examples.</p>

<p><strong>This Python course is for everyone!</strong></p>

<p>My <strong>&quot;</strong>Python: Learn Python with Real Python Hands-On Examples<strong>&quot;</strong>&nbsp; is for everyone! If you don&rsquo;t have any <strong>previous experience,&nbsp;<em>not a problem</em></strong><em>!</em>&nbsp; This course is expertly designed to teach everyone from complete beginners, right through to professionals (&nbsp;as a refresher).&nbsp; &nbsp;</p>

<p><strong>Why Python?</strong></p>

<p>Python is a general-purpose, high-level and multi-purpose programming language. The best thing about the Python is, it supports a lot of today&rsquo;s technology including vast libraries for twitter, data mining, scientific calculations, designing, back-end server for websites, engineering simulations, artificial learning, augmented reality and what not! Also, it supports all kinds of App development.&nbsp;&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong></p>

<p>Python doesn&#39;t need any prior knowledge to learn it and the <strong>Python code is easy to understand </strong>for the beginners.</p>

<p><strong>What you will learn?</strong></p>

<p>In this course, we will start from the very beginning and go all the way to programming with hands-on examples . We will first learn how to&nbsp;<strong>set up a lab and install needed software</strong>&nbsp;on your machine.&nbsp; Then during the course, you will learn the fundamentals of Python development like</p>

<ul>
	<li>
	<p>Variables, Data types, Numbers, Strings</p>
	</li>
	<li>
	<p>Conditionals and Loops</p>
	</li>
	<li>
	<p>Functions and modules</p>
	</li>
	<li>
	<p>Lists, Dictionaries and Tuples</p>
	</li>
	<li>
	<p>File operations</p>
	</li>
	<li>
	<p>Object-Oriented Programming</p>
	</li>
</ul>

<p>With my up-to-date course, you will have a chance to keep yourself <strong>up-to-date</strong>&nbsp;and&nbsp;<strong>equip yourself</strong>&nbsp;with a range of&nbsp; Python programming skills. I am also happy to tell you that I will be constantly available to support your learning and answer questions.&nbsp;</p>

<p>Do not forget ! Python has the second largest number of job postings relative to all other languages. So it will earn you a lot of money and will bring a great change in your resume.&nbsp;</p>

<p>Here is the list of&nbsp;<strong>&nbsp;what you&rsquo;ll learn by the end of course,</strong>&nbsp; &nbsp;&nbsp;</p>

<ul>
	<li>
	<p>Python Setup</p>
	</li>
	<li>
	<p>Python IDLE</p>
	</li>
	<li>
	<p>Programming</p>
	</li>
	<li>
	<p>Variables and Data Types</p>
	</li>
	<li>
	<p>Numbers</p>
	</li>
	<li>
	<p>Strings</p>
	</li>
	<li>
	<p>Conditionals</p>
	</li>
	<li>
	<p>Functions and Modules</p>
	</li>
	<li>
	<p>Modules and Packages</p>
	</li>
	<li>
	<p>Lists</p>
	</li>
	<li>
	<p>Tuples</p>
	</li>
	<li>
	<p>Dictionaries</p>
	</li>
	<li>
	<p>Sets</p>
	</li>
	<li>
	<p>Files</p>
	</li>
	<li>
	<p>Object-Oriented Programming</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers&#39; expertise.&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>A working computer (Windows, Mac, or Linux)</li>
	<li>No prior knowledge of Python is required</li>
	<li>Motivation to learn the the second largest number of job postings relative program language among all others</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>No prior Python knowledge is required!</li>
	<li>Start learning from scratch and learn about every Python 3 topic with hands-on examples</li>
	<li>Learn to use Python professionally</li>
	<li>Learn to use Python 3</li>
	<li>Learn to use Object Oriented Programming</li>
	<li>Free software and tools used during the course</li>
	<li>You will be able to work with Python functions, namespaces and modules</li>
	<li>Apply the Python knowledge you get from this course in coding exercises, real-life scenarios</li>
	<li>Build a portfolio with your Python skills</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to start learning Python</li>
	<li>Anyone who plans a career as aPython developer</li>
	<li>Anyone who needs a complete guide on how to start and continue their career with Python</li>
</ul>
', 5, 0, N'python-learn-python-with-real-python-hands-on-examples', 1, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 01:21:06.220' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:21:06.220' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (51, N'React Redux: Redux Bootcamp İle React Redux''u Öğrenin', N'React JS ile birlikte kullanılan en popüler React-Router, React-Portal ve Redux kütüphaneleri bu React Redux kursunda', N'<h4>Course Details</h4>

<p>Merhaba,</p>

<p><strong>React Redux: Redux Bootcamp İle React Redux&#39;u &Ouml;ğrenin </strong>kursumuza hoşgeldiniz</p>

<p>React JS ile birlikte kullanılan en pop&uuml;ler, <strong>React-Router, React-Portal ve Redux </strong>k&uuml;t&uuml;phanelerini en basit ve yalın haliyle bu kursta bulabilirsiniz.</p>

<p>&Ouml;zellikle Redux &ccedil;oğu developer icin anlaması ve uygulaması zor bir k&uuml;t&uuml;phanedir. Biz bu sorunu Redux ile ilgili bilmemiz gereken Redux terimlerine &ccedil;ok fazla alışkın olmamıza ve &ccedil;oğu zaman konunun sıralı bir şekilde anlatılmamasına bağlıyorum.</p>

<p>Bu kursta Redux ile ilgili teorik bilgiyi React uygulamasına ge&ccedil;meden, <strong>Code Pen</strong> &uuml;zerinde en temel ve sade haliyle ele aldık. Genel işleyişi ve arka planda g&ouml;rmediğimiz bir &ccedil;ok fonksiyonun nasıl &ccedil;alıştığını b&ouml;ylece anlatmaya &ccedil;alıştık.</p>

<p>React uygulamamıza ge&ccedil;tiğimiz de her adımın sırasıyla ve a&ccedil;ıklayarak diyagramlarla a&ccedil;ıklandığını g&ouml;receksiniz.</p>

<p>Redux ile ilgili,<strong> Action, Reducer, Dispatch, Store, Provider, Middleware, Redux-Thunk</strong> gibi Redux&rsquo;in &ouml;nemli kavramlarını sık sık tekrarlayarak akılda hızlıca yer etmesini ve &ccedil;abucak alışmanızı sağlamaya &ccedil;alıştık, &ccedil;&uuml;nk&uuml; unutmayalım ki bir şeyin akılda yer etmesi ve &ccedil;abuk &ouml;ğrenilmesi &ccedil;ok tekrara bağlıdır.</p>

<p>Eğer Redux&rsquo;ı anlamakta zorlanıyorsanız, bu kurs tam size g&ouml;re.</p>

<p><strong>Neden bizim React Redux kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p>Android Kursumuza katıldığınızda;</p>

<p><em>? Kursa &Ouml;m&uuml;r Boyu Erişim</em></p>

<p><em>? Soru ve Cevap b&ouml;l&uuml;m&uuml;nde Hızlı ve Kolay Destek</em></p>

<p><em>? Udemy Tamamlama Sertifikası İndirme şansını elde etmiş olacaksınız.</em></p>

<p>Haydi şimdi <strong>React Redux: Redux Bootcamp İle React Redux&#39;u &Ouml;ğrenin </strong>kursumuza kayıt olun.</p>

<p>React Redux d&uuml;nyasına yelken a&ccedil;maya hazırsanız bekliyoruz.</p>

<h4>Requirements</h4>

<ul>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Kurs boyunca kullanılacak olan programlar &uuml;cretsizdir</li>
	<li>HTML, CSS ve JavaScript, React hakkında temel seviyede bilgiye sahip olan kişiler i&ccedil;in idealdir</li>
	<li>Ve en &ouml;nemlisi &lsquo;G&uuml;&ccedil;l&uuml; &Ouml;ğrenme Arzusu&rsquo;</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi React Redux d&uuml;nyasını beraber keşfedelim</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>React JS ile birlikte kullanılan en pop&uuml;ler, React-Router, React-Portal ve Redux K&uuml;t&uuml;phanelerini</li>
	<li>React-Router ile &ccedil;ok sayfalı web uygulamalarını kolay bir şekilde oluşturabilmeyi</li>
	<li>React JS ile birlikte kullanılan en pop&uuml;ler, React-Router, React-Portal ve Redux k&uuml;t&uuml;phanelerini en basit ve yalın haliyle bu kursta bulabilirsiniz</li>
	<li>React Portals ile modal oluşturmanın kolay ve g&uuml;venli yollarını</li>
	<li>React uygulamalarımızda uygulamamızın verilerini Redux k&uuml;t&uuml;phanesi ile nasıl y&ouml;netebileceğimizi,</li>
	<li>React uygulamalarımızda Global State de tuttuğumuz verilere componentlarımızdan kolayca nasıl ulaşabileceğimizi</li>
	<li>React uygulamalarımızda Redux Store&#39;da depoladığımız verileri action&rsquo;lar oluşturarak manip&uuml;le etmeyi</li>
	<li>Redux Thunk ile Asynchronous işlemleri ger&ccedil;ekleştirmeyi</li>
	<li>En b&uuml;y&uuml;k ve gelişmiş React uygulamalarını Redux k&uuml;t&uuml;phanesini kullanarak kolay bir şekilde inşa etmeyi</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Redux &ouml;ğrenmek isteyenler,</li>
	<li>G&uuml;n&uuml;m&uuml;z&uuml;n en pop&uuml;ler front-end mimarilerini &ouml;ğrenmek isteyenler</li>
	<li>Web geliştirme becerilerini bir &uuml;st seviyeye &ccedil;ıkarmak ve geleceğe y&ouml;nelik bir teknoloji &ouml;ğrenmek isteyen &ouml;ğrenciler i&ccedil;in</li>
	<li>React kariyeri planlayor ve yazılım şirketlerinde bu alanda iş bulmak istiyorsanız bu kurs tam size g&ouml;re</li>
</ul>
', 5, 0, N'react-redux-redux-bootcamp-ile-react-redux-u-öğrenin', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:21:58.983' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:21:58.983' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (52, N'JavaScript: Sıfırdan Javascript Kursu ile JavaScript Öğrenin', N'JavaScript ile React, Angular, Node gibi JavaScript librarylerini öğrenip Javascript ile bu teknolojilere giriş yapın', N'<h4>Course Details</h4>

<p>Merhaba,</p>

<p><strong>JavaScript: Sıfırdan Javascript Kursu le JavaScript &Ouml;ğrenin </strong>kursumuza hoşgeldiniz</p>

<p>JavaScript internet uygulamalarına dair bir numaralı programlama dili. Bu kursta JavaScript temellerini anlatılırken nasıl problem &ccedil;&ouml;zmeniz gerektiği konusunda da bilgilendirileceksiniz. Detayları adım adım ele aldıgımız JavaScript kursunda her konuya dair hazırlanan code quizler ile &ouml;ğrendiklerinizi de test edebileceksiniz.</p>

<p>Javascript kursumuzun en &ouml;nemli &ouml;zelliği JavaScript hakkındaki en temel konuların detaylı şekilde ele alınması ve &ouml;ğrencilerin teoride &ouml;ğrendiklerini pratiğe d&ouml;kebilmelerine de yardımcı olması.</p>

<p>Kursumuzda bir JavaScript kodunun sadece nasıl &ccedil;alıştığını değil neden &ccedil;alıştığını da burada bulacaksınız. &Ccedil;&uuml;nk&uuml; g&uuml;n&uuml;m&uuml;z JavaScript d&uuml;nyasında bir kodu yazmanın yanında bu konu nasıl debug edeceğinizi bilmeniz ve yazılan her JavaScript kodunu da okuyabilmeniz gerekmektedir.</p>

<p>Bu Javascript kursunda &ouml;ğrendiklerinizi hem MAC hem de Windows bilgisayarlar &uuml;zerinde test edebileceksiniz. <strong>&Uuml;cretsiz ara&ccedil;lar</strong> ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek yoktur.</p>

<p>Kurs boyunca size karmaşık gelebilecek t&uuml;m konuları olabildiğince basit ve detaylı bir şekilde anlatmaya dikkat ettik. Anlatılanları daha iyi anlayabilmeniz i&ccedil;in bazı şemalar kullandık.</p>

<p><strong>Kursu tamamladığınızda;</strong></p>

<ul>
	<li>
	<p>Değişkenler &uuml;zerinde nasıl işlem yapabileceğinizi,</p>
	</li>
	<li>
	<p>Boolean mantığını,</p>
	</li>
	<li>
	<p>Nasıl conditional statement oluşturulabileceğini,</p>
	</li>
	<li>
	<p>Loops&#39;lar ile nasıl işlemler yapabileceğinizi,</p>
	</li>
	<li>
	<p>Bir function&#39;ın nasıl oluşturulduğunu ve neden arguments&#39;lara ihtiya&ccedil; duyduğunu,</p>
	</li>
	<li>
	<p>Temel Data structure&#39;lar olan Array ve Object&#39;lerin nasıl oluşturulduğunu,</p>
	</li>
	<li>
	<p>DOM Manipulation nasıl yapıldığını ve &ccedil;ok daha fazlasını &ouml;ğreneceksiniz.</p>
	</li>
</ul>

<p><strong>Neden bizim Javascript kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor ve en son bilgilerden haberdar olmak &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p>Android Kursumuza katıldığınızda;</p>

<p><em>? Kursa &Ouml;m&uuml;r Boyu Erişim</em></p>

<p><em>? Soru ve Cevap b&ouml;l&uuml;m&uuml;nde Hızlı ve Kolay Destek</em></p>

<p><em>? Udemy Tamamlama Sertifikası İndirme şansını elde etmiş olacaksınız.</em></p>

<p>Haydi şimdi <strong>JavaScript: Sıfırdan Javascript Kursu le JavaScript &Ouml;ğrenin </strong>kursumuza kayıt olun.</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>HTML + CSS hakkında temel bilgi sahibi olunmalı</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>&Ccedil;alışan bir bilgisayarınızın ve internet bağlantınızın olması yeterli</li>
	<li>Ve en &ouml;nemlisi &lsquo;G&uuml;&ccedil;l&uuml; &Ouml;ğrenme Arzusu&rsquo;</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi JavaScript d&uuml;nyasını beraber keşfedelim</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Sıfırdan Javascript Kursu İle JavaScript &Ouml;ğrenin</li>
	<li>JS Dosyası HTML i&ccedil;ine nasıl dahil edilir?</li>
	<li>Değişkenler nedir, neden kullanılır?</li>
	<li>Boolean Mantığı nedir?</li>
	<li>Conditional Statements (If else, Switch Case, Ternary Operator) nedir, nasıl kullanılır?</li>
	<li>Loops (for loops, while loops, continue ve break statements) nedir, nasıl kullanılır?</li>
	<li>Functions nasıl yazılır?</li>
	<li>Function Decleration ve Function Expression arasındaki farklar nelerdir?</li>
	<li>Arrays nasıl oluşturulur?</li>
	<li>Array methodları (Push, Pop, Shift, Unshift...)</li>
	<li>Array Iteration</li>
	<li>Objects nasıl oluşturulur, nasıl update edilir?</li>
	<li>Object methodları</li>
	<li>DOM nedir, DOM Manipulation nasıl yapılır</li>
	<li>Code quizler ile &ouml;ğrendiklerinizi test edeceksiniz</li>
	<li>Bu kursta JavaScript`e dair aklınızda bir&ccedil;ok soruya yanıt bulacaksınız</li>
	<li>Bu kurs ile React, Angular ya da Node gibi en populer JavaScript librarylerini &ouml;ğrenebileceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>D&uuml;nyanın en pop&uuml;ler programlama dili olan JavaScript&#39;in temellerini &ouml;ğrenmek isteyenler</li>
	<li>React, Angular ya da Node gibi en populer JavaScript librarylerini &ouml;ğrenmek isteyenler</li>
	<li>Bir programlama dili &ouml;ğrenmek isteyenler</li>
	<li>Kendi web uygulamalarını geliştirmek isteyenler</li>
	<li>Javascript`te &ouml;ğrendiklerini kursumuz i&ccedil;indeki code quizler ile test edebilme imk&acirc;nına sahip olmak isteyenler</li>
</ul>
', 4, 0, N'javascript-sıfırdan-javascript-kursu-ile-javascript-öğrenin', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:23:28.993' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:23:28.993' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (53, N'Complete NMAP: Learn Ethical Hacking with NMAP', N'Learn Nmap and Advanced Scanning Techniques with Nmap. Become Ethical Hacker and Cyber Security expert with Nmap course', N'<h4>Course Details</h4>

<p>Welcome to the <strong>&quot;Complete NMAP: Learn Ethical Hacking with NMAP&quot;&nbsp;</strong>course.</p>

<p>The Penetration test consists of 3 basic steps. These are target identification, gathering information about the target and attack.</p>

<p>Information about a target can be collected in two ways.</p>

<ul>
	<li>
	<p>First; passive information collection</p>
	</li>
	<li>
	<p>Second; active information collection</p>
	</li>
</ul>

<p>In this course, we will learn how to use, <strong>Nmap, an active information collection</strong> tool and in this case which is the second step.</p>

<p>On my complete<strong> Nmap</strong> course, you`ll discover the&nbsp;<strong>secrets of ethical hacking</strong>&nbsp;and network discovery, using <strong>Nmap</strong>.&nbsp;You&rsquo;ll learn all the details of Nmap, which is the most known and de facto network scanning tool. After downloading and installing&nbsp;<strong>Nmap</strong> by hands-on lessons, you will be able to use it as an IP&nbsp;port scanner, open port tester and checking for devices&#39;&nbsp;operating systems and other features.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong></p>

<p>Our complete Nmap course starts at&nbsp;<strong>beginner levels</strong>&nbsp;so you don&rsquo;t need to have previous knowledge of network scanning, finding vulnerabilities in devices, using Nmap.</p>

<p><strong>Free Tools</strong></p>

<p>In this course I&nbsp;used <strong>free tools</strong>&nbsp;and platforms, so you don&rsquo;t need to buy any tool or application.</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>What is the TCP/IP model and how does it work</p>
	</li>
	<li>
	<p>What is OSI model? How does it work</p>
	</li>
	<li>
	<p>What is Port? What is the TCP/UDP port</p>
	</li>
	<li>
	<p>How to scan TCP or UDP services</p>
	</li>
	<li>
	<p>How active services are detected</p>
	</li>
	<li>
	<p>How to scan without getting caught in IPS &amp; IDS systems</p>
	</li>
	<li>
	<p>How to interpret Nmap outputs</p>
	</li>
	<li>
	<p>Nmap scripting (NSE) and more</p>
	</li>
</ul>

<p>By registering the course you will have lifetime access the all resources, practice videos and will be able to ask questions about related topics whenever you want.</p>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned developers&#39; expertise.&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Let`s dive in now my <strong>Complete NMAP: Learn Ethical Hacking with NMAP </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Minimum 8 GB RAM</li>
	<li>100 GB Free Harddisk space</li>
	<li>64-bit processor</li>
	<li>Microsoft Windows 7, 8, 10 or Apple Mac OS X 10.12 and later versions</li>
	<li>A computer for installing all the free software and tools needed to practice</li>
	<li>A strong work ethic, willingness to learn, and plenty of excitement about the back door of the digital world</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn Ethical Hacking with NMAP</li>
	<li>Learn how to use Nmap</li>
	<li>Learn Nmap Basic and Advanced Scanning Techniques</li>
	<li>Learn about network scan types</li>
	<li>Learn about script scanning</li>
	<li>You will learn Nmap Discovery and Advanced Port Scanning Options</li>
	<li>With Nmap, you will learn to identify the operating system and running service versions of the target system</li>
	<li>You will learn options for bypassing firewall, IPS &amp; IDS systems with Nmap</li>
	<li>What is TCP/IP model</li>
	<li>What is OSI model</li>
	<li>What is Port ? What is TCP/UDP port ?</li>
	<li>How to scan TCP or UDP services?</li>
	<li>How active servers are detected</li>
	<li>How to scan without getting caught in IPS &amp; IDS systems</li>
	<li>How to interpret Nmap outputs</li>
	<li>How to scan with NSE script</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn network scan techniques by using Nmap</li>
	<li>Anyone who to learn script scanning in a network</li>
	<li>People who are willing to make a career in Cyber Security</li>
	<li>Cyber Security Consultants who support / will support organizations for creating a more secure environment</li>
	<li>Anyone who wants to be a White Hat Hacker</li>
	<li>Those who want to start from scratch and move forward</li>
	<li>People who want to take their hacking skills to the next level</li>
	<li>Cyber security experts</li>
</ul>
', 2, 0, N'complete-nmap-learn-ethical-hacking-with-nmap', 1, 0, 1, 0, 0, N'English', CAST(N'2020-05-22 01:24:46.687' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:24:46.687' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (54, N'Spring Framework: Spring Boot and Spring Hibernate', N'Learn Spring Boot, Rest, Database, Maven, Hibernate and all other details of Spring Boot. Become Spring Framework master', N'<h4>Course Details</h4>

<p>Welcome to my &quot;<strong>Spring Framework: Spring Boot and Spring Hibernate</strong>&quot; course.</p>

<p>Basically Spring Boot is a project which is built on the top of the Spring Framework by the pivotal team. It provides a much simpler, faster and compact way to set up, configure and run both simple and web-based applications.</p>

<p>Hibernate is the most popular object-relational mapping Framework and the most used JPA providers. Hibernate maps our Java classes to database tables. It offers component mapping, inheritance mapping and supports various associations among objects.</p>

<p>We designed this course for anyone who wants to create a restful web service in Spring and Hibernate Frameworks. Furthermore, the course will also show you how to configure Java Spring MVC web applications using Web XML and Java configuration. This course explores major features of Spring Boot such as Spring Boot Starters, Auto Configuration, Beans, Actuator and more. Spring and Hibernate is a very big demand for the Java development field and in particularly restful web service. So our course is the best course to learn basic things to create a restful web service in combination with Spring and Hibernate Framework. This course is not for experts in this field but at the end of this course, you will be able to create a restful web service in maven using Spring and Hibernate Frameworks.</p>

<p>Spring Data JPA makes it super easy to use its powerful features of Hibernate by removing all the configuration and use of low-level APIs.</p>

<p>Every section in the course is loaded with hands-on examples. You will also work on assignments at the end of each section.</p>

<p>After taking this class, developers will be able to build faster, more flexible and easier to maintain application persistence layers with Spring data JPA using Hibernate.</p>

<p><strong>At The End of The Course;</strong></p>

<ul>
	<li>
	<p>You will have learned details of the Spring Boot Framework.</p>
	</li>
	<li>
	<p>You will gain an intermediate level of expertise in Spring Boot.</p>
	</li>
	<li>
	<p>You will have learned the theoretical details of the Framework.</p>
	</li>
	<li>
	<p>You can create an enterprise web application with Hibernate.</p>
	</li>
	<li>
	<p>We hope you might get the pleasure to take advantage of it in your projects. It really makes your life simpler.</p>
	</li>
</ul>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, and it&rsquo;s crucial to stay on top of the latest knowledge for being a better specialist. You will always have up-to-date content for this course at <strong>no extra charge</strong>.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our content is created/produced as <strong>high-quality video/audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now!</p>

<p>We offer <strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Basic Java knowledge is required</li>
	<li>Basic HTML knowledge is helpful</li>
	<li>Knowledge of SQL and Databases is helpful</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>We will create our Development Environment first of all including JDK and IDE</li>
	<li>We will be learning with Eclipse based integrated Development Environment which is Spring Source Tool Suite</li>
	<li>Learn to handle dependencies with Apache Maven over Pom xml file and Spring Boot parent project with other starters</li>
	<li>Spring Boots Development Tools</li>
	<li>Spring Boot and Web MVC</li>
	<li>YAML and Java Based Configuration</li>
	<li>Rest Services</li>
	<li>Test Rest Methods Programmaticaly</li>
	<li>Working with JSP Technology</li>
	<li>JDBC Query Basics</li>
	<li>How to create Executable Jar files of our concept project and how to run it</li>
	<li>How to activate security in Spring Boot, design Authentication Policies and look at managing user data in Database</li>
	<li>Use Hibernate in Spring Boot, activate Hibernate, create Pojo and convert them entities and learn some basic queries</li>
	<li>Sending email within Spring Boot</li>
	<li>Create scheduled jobs</li>
	<li>Manage file uploading and downloading processes in Spring Boot environment</li>
	<li>Learn further details of Spring Boot Framework</li>
	<li>Learn to use testing features of Spring Boot</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework Developers</li>
	<li>Java Developers who wish to create quality software</li>
	<li>Anyone wants to learn Spring Boot step by step with a hands-on approach</li>
	<li>Anyone wants to learn how to design and develop restful web services with Spring Boot Hibernate</li>
	<li>Anyone wants to learn how to design and develop restful web services with Spring Boot Hibernate</li>
	<li>Programmers who want to develop production-ready enterprise applications</li>
</ul>
', 4, 0, N'spring-framework-spring-boot-and-spring-hibernate', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:25:33.133' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:25:33.133' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (55, N'Xamarin: Build Native Cross Platform Apps with C# Codes', N'Use your C# skills, learn to build native mobile apps with Xamarin for Android, iOS and Windows', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to the <strong>Xamarin: Build Native Cross-Platform Apps with C# Codes</strong> course.</p>

<p>The best course is right in front of your eyes. This is the most complete course that teaches you how to <strong>build Native Cross-Platform Apps with C# Codes.</strong></p>

<p>We believe building apps shouldn&#39;t be painful. That&#39;s why we created this Xamarin course.</p>

<p><strong>Xamarin is a framework that allows us to create native apps for Android, IOS and Windows using C# programming </strong>language which means <strong>you only code once</strong> then the rest will be sorted as Xamarin will build your app for each platform. It is that simple.</p>

<p>In this Xamarin with C# codes course, we will develop cross-platform apps with Xamarin Forms. You do not need to learn Java, Kotlin, Objective-C, Swift or anything of that. <strong>Just know C#</strong>. But knowing C# Object-Oriented Programming will be a plus.</p>

<p><strong>No prior knowledge is needed!</strong></p>

<p>This Xamarin course starts at&nbsp;<strong>beginner levels</strong>&nbsp;so you don&rsquo;t need to have previous knowledge except for C# experience.<br />
<strong>Free Tools</strong></p>

<p>In this course<strong> Free tools</strong>&nbsp;and platforms used, so you don&rsquo;t need to buy any tool or application.</p>

<p><strong>In this course, you will learn:</strong></p>

<ul>
	<li>
	<p>Installing Visual Studio and Xamarin libraries</p>
	</li>
	<li>
	<p>Creating a custom Emulator</p>
	</li>
	<li>
	<p>Running project on the Emulator</p>
	</li>
	<li>
	<p>Developing native mobile apps for Android, iOS and UWP</p>
	</li>
	<li>
	<p>Building user-interfaces with XAML and C# code</p>
	</li>
	<li>
	<p>Using Xamarin Forms Previewer</p>
	</li>
	<li>
	<p>Managing NuGet packages</p>
	</li>
	<li>
	<p>Creating pages and navigation between them</p>
	</li>
	<li>
	<p>Adding and using elements</p>
	</li>
	<li>
	<p>Designing with Layouts</p>
	</li>
	<li>
	<p>TableView and Cells</p>
	</li>
	<li>
	<p>Displaying popups</p>
	</li>
	<li>
	<p>ListView and data binding basic</p>
	</li>
	<li>
	<p>Getting platform-specific functions with Dependency Service</p>
	</li>
	<li>
	<p>Using native controls with Custom Renderers</p>
	</li>
</ul>

<p>By registering the course you will have lifetime access the all resources, practice videos and will be able to ask questions about related topics whenever you want.</p>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned developers&#39; expertise.&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Let&#39;s dive in now my <strong>Xamarin: Build Native Cross-Platform Apps with C# Codes </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Having C# experience will be enough</li>
	<li>If you know C# Object Oriented Programming, it will be a huge advantage for you</li>
	<li>A computer for installing all the free software and tools needed to practice</li>
	<li>Microsoft Windows 7, 8, 10 or Apple Mac OS X 10.12 and later versions</li>
	<li>A strong work ethic, willingness to learn, and plenty of excitement about the back door of the digital world</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Having C# experience will be enough</li>
	<li>Build Native Cross-Platform Apps with Xamarin</li>
	<li>Create native apps for Android, IOS and Windows using C# programming language</li>
	<li>Build Native Cross-Platform Apps with Xamarin Forms</li>
	<li>Use free tools and platforms for Xamarin and Visual Studio</li>
	<li>Build Native Cross-Platform Apps with C# Codes</li>
	<li>Build user-interfaces with XAML and C# code</li>
	<li>Use Xamarin Forms Previewer</li>
	<li>Learn to get platform-specific functions with Dependency Service</li>
	<li>Test projects on the Android Emulator</li>
	<li>Test projects on the iOS Simulator</li>
	<li>This course will teach you Xamarin from scratch</li>
	<li>You do not need to learn Java, Kotlin, Objective-C, Swift or anything of that</li>
	<li>If you know C# Object Oriented Programming, it will be a huge advantage for you.</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Passion for learning to build Native Cross-Platform Apps with C# Codes</li>
	<li>Developers who want to utilize their existing C# skills to build native mobile apps</li>
	<li>Anyone who wants learn to build native mobile apps with Xamarin for Android, iOS and Windows</li>
	<li>Those who wants to start learning Xamarin from scratch and move forward</li>
	<li>Entrepreneurs who want to start building Cross-Platform Apps with Xamarin</li>
</ul>
', 6, 0, N'xamarin-build-native-cross-platform-apps-with-c-codes', 0, 1, 0, 0, 0, N'English', CAST(N'2020-05-22 01:26:31.400' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:26:31.400' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (56, N'Spring Boot: Spring Boot''u En Baştan Anlatıyoruz', N'Spring Boot kullanarak dinamik Java web uygulamaları geliştirmeyi uygulamalı Spring Boot kursumuzda en baştan ele aldık', N'<h4>Course Details</h4>

<p>Merhabalar,</p>

<p><strong>Spring Boot: Spring Boot&#39;u En Baştan Anlatıyoruz </strong>isimli kursumuza hoşgeldiniz.</p>

<p>Spring Boot Spring geliştiriciler tarafından oluşturulmuş &uuml;st d&uuml;zey bi Framework&rsquo;t&uuml;r. Spring Boot&rsquo;un sahip olduğu yetenekler sayesinde &ccedil;ok daha hızlı ve kolay bir şekilde web uygulamalar geliştirebiliriz.</p>

<p><strong><em>En baştan &ouml;ğreneceksiniz!</em></strong></p>

<p>Kursumuzda sizlerle Spring Boot Framework&rsquo;&uuml; kullanarak restful web servislerini nasıl hazırlayacağımızı &ouml;ğreneceğiz. Ayrıca web xml ve java konfig&uuml;rayonları kullanarak nasıl web uygulamaları yapılandıracağımızı &ouml;ğreneceğiz.</p>

<p>Kursumuzu tamamladıktan sonra Spring Framework kullanarak hızlı ve kolay bir şekilde web uygulamaları geliştirebilecek seviyede olacaksınız. Sizlerle teorik olarak konuştuğumuz her b&ouml;l&uuml;m i&ccedil;in uygulamalı olarak &ouml;rnekler geliştireceğiz ve her b&ouml;l&uuml;m&uuml;n sonunda rahatlıkla kurumsal projeler hazırlayabilecek duruma geleceksiniz.</p>

<p><strong>Spring Boot kursunda</strong> <strong><em>neler &ouml;ğreneceksiniz?</em></strong></p>

<ul>
	<li>
	<p>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamımızı hazırlamayı</p>
	</li>
	<li>
	<p>Eclips temelli olan Spring Source Tool kurulumunu yapmayı,</p>
	</li>
	<li>
	<p>Pom.xml &uuml;zerinden Maven Apache ile web uygulamaları geliştirmeyi</p>
	</li>
	<li>
	<p>&Ouml;rnek Projemizin Jar dosyalarını nasıl hazırlayıp kullanmayı,</p>
	</li>
	<li>
	<p>Konfig&uuml;rasyon ayarlarının nasıl yapılacağını.</p>
	</li>
	<li>
	<p>YAML ve Java tabanlı konfig&uuml;rasyonu uygulamalı olarak ele alacağız.</p>
	</li>
	<li>
	<p>Katmanlı Mimari yapısını</p>
	</li>
	<li>
	<p>Maven ile entegrasyonu</p>
	</li>
	<li>
	<p>Spring Boot ve veri erişimi hakkında bilgiler verip Jdbc ile veri iletişimi konusunu</p>
	</li>
	<li>
	<p>JSP ile nasıl &ccedil;alışılacağını</p>
	</li>
	<li>
	<p>Rest Servisleri ile nasıl &ccedil;alışacağımızı &ouml;ğrenip uygulamalı &ouml;rneklerini yapacağız</p>
	</li>
	<li>
	<p>Ve Spring Framework hakkında daha bir&ccedil;ok detaylı bilgi paylaşacağız.</p>
	</li>
</ul>

<p><strong>Neden bizim Spring Boot kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, Spring`de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>Spring Boot</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>Bu eğitimde &uuml;cretsiz ara&ccedil;lar ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek yok.</li>
	<li>Spring Boot Framework&#39;&uuml; &ouml;ğrenme arzunuz konuyu daha iyi anlamanızı sağlar</li>
	<li>Temel Java Bilgisine sahip olmak</li>
	<li>Temel Html Bilgisine sahip olmak</li>
	<li>Spring Boot eğitimimiz i&ccedil;in SQL ve Database bilgisine sahip olmanız yararlı olacaktır</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Spring Boot&#39;u en baştan &ouml;ğreneceksiniz</li>
	<li>Spring Boot Framework hakkında &ccedil;ok detaylı bilgiye ulaşacaksınız</li>
	<li>Spring Boot kursumuzda Eclips temelli olan Spring Source Tool kurulumunu yapacağız</li>
	<li>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamımızı hazırlayacağız</li>
	<li>Pom xml &uuml;zerinden Maven Apache ile web uygulamaları geliştireceğiz</li>
	<li>&Ouml;rnek Projemizin Jar dosyalarını nasıl hazırlayıp kullancağımızı &ouml;ğreneceğiz</li>
	<li>Konfig&uuml;rasyon ayarlarının nasıl yapılacağını &ouml;ğreneceğiz.</li>
	<li>YAML ve Java tabanlı konfig&uuml;rasyonu uygulamalı olarak ele alacağız.</li>
	<li>Maven ile entegrasyonu &ouml;ğreneceğiz</li>
	<li>Spring Boot ve veri erişimi hakkında bilgiler verip Jdbc ile veri iletişimi konusu işlenecek</li>
	<li>JSP ile nasıl &ccedil;alışılacağını &ouml;ğreneceğiz</li>
	<li>Rest Servisleri ile nasıl &ccedil;alışacağımızı &ouml;ğrenip uygulamalı &ouml;rneklerini yapacağız</li>
	<li>Ve Spring Framework hakkında &ccedil;ok daha fazlasını bu Spring Boot eğitimimizde bulabileceksiniz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework uygulama geliştiricileri</li>
	<li>Spring Boot ile web uygulamaları hazırlamak isteyenler</li>
	<li>Kurumsal uygulamalar hazırlayıp geliştirmek isteyenler</li>
	<li>Spring Boot &ouml;ğrenmek isteyenler</li>
	<li>Kurumsal Java teknolojileri ile dinamik web uygulamaları geliştirmek isteyenler</li>
	<li>Spring Boot&#39;u projelerinde daha verimli ve bilin&ccedil;li kullanmak isteyenler</li>
</ul>
', 4, 0, N'spring-boot-spring-boot-u-en-baştan-anlatıyoruz', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:27:09.057' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:27:09.057' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (57, N'Spring Framework: Spring Boot ve Spring Hibernate Öğrenin', N'Spring Boot, Rest, Database, Maven, Hibernate ve Spring Boot''un tüm özelliklerini öğrenin. Spring Framework''te ustalaşın', N'<h4>Course Details</h4>

<p><strong>Spring Framework: Spring Boot ve Spring Hibernate &Ouml;ğrenin</strong> kursuna hoşgeldiniz.</p>

<p>Spring Boot Spring geliştiriciler tarafından oluşturulmuş &uuml;st d&uuml;zey bir Framework&rsquo;t&uuml;r. Spring Boot&rsquo;un sahip olduğu yetenekler sayesinde &ccedil;ok daha hızlı ve kolay bir şekilde web uygulamalar geliştirebileceksiniz. Bu kursta sizlerle Spring Boot ve&nbsp; Spring Hibernate d&uuml;nyasının kapılarını aralamaya &ccedil;alışacağız.</p>

<p><strong><em>En baştan &ouml;ğreneceksiniz!</em></strong></p>

<p>Spring Framework kursumuzda sizlerle Spring Boot Framework&rsquo;&uuml; kullanarak Restful web servislerini nasıl hazırlayacağımızı &ouml;ğreneceğiz. Ayrıca Web XML ve Java konfig&uuml;rayonları kullanarak nasıl web uygulamaları yapılandıracağımızı &ouml;ğreneceğiz.</p>

<p>Hibernate ise Java d&uuml;nyasında en &ccedil;ok talep g&ouml;ren Object Relational Mapping (ORM) Framework&rsquo;t&uuml;r. Hibernate sayesinde Java ile &ccedil;ok fazla SQL bilgisine sahip olmadan veri iletişimi sağlayarak web uygulamaları hazırlanabilir hale geleceksiniz.</p>

<p><strong>Spring Framework: Spring Boot ve Spring Hibernate kursunda</strong> <strong><em>neler &ouml;ğreneceksiniz?</em></strong></p>

<ul>
	<li>
	<p>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamımızı hazırlamayı</p>
	</li>
	<li>
	<p>Eclips temelli olan Spring Source Tool kurulumunu yapmayı,</p>
	</li>
	<li>
	<p>Pom.xml &uuml;zerinden Maven Apache ile web uygulamaları geliştirmeyi</p>
	</li>
	<li>
	<p><em>Jar dosyalarını hazırlayıp kullanmayı,</em></p>
	</li>
	<li>
	<p>Konfig&uuml;rasyon ayarlarının nasıl yapılacağını.</p>
	</li>
	<li>
	<p>YAML ve Java tabanlı konfig&uuml;rasyonu uygulamalı olarak ele alacağız.</p>
	</li>
	<li>
	<p>Katmanlı Mimari yapısını</p>
	</li>
	<li>
	<p>Maven ile entegrasyonu</p>
	</li>
	<li>
	<p>Spring Boot ve veri erişimi hakkında bilgiler verip Jdbc ile veri iletişimi konusunu</p>
	</li>
	<li>
	<p>JSP ile nasıl &ccedil;alışılacağını</p>
	</li>
	<li>
	<p>Rest Servisleri ile nasıl &ccedil;alışacağımızı &ouml;ğrenip uygulamalı &ouml;rneklerini yapacağız</p>
	</li>
	<li>
	<p><em>Spring Boot ile Security yapılandırmalarını,</em></p>
	</li>
	<li>
	<p><em>Form Tabanlı ve HTTP Basic kimliklendirme y&ouml;ntemlerini,</em></p>
	</li>
	<li>
	<p><em>Remember Me &ouml;zelliğini yapılandırmayı ve kullanmayı,</em></p>
	</li>
	<li>
	<p><em>Database&rsquo;de kullanıcı bilgilerinin nasıl y&ouml;netileceğini</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile Transaction Y&ouml;netimini,</em></p>
	</li>
	<li>
	<p><em>E-mail yeteneklerini &ouml;ğrenip uygulamalı olarak mail g&ouml;ndermeyi,</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile zamanlanmış işler yapmayı,</em></p>
	</li>
	<li>
	<p><em>Spring Boot ile dosya y&ouml;netimi hakkında konuşup upload ve download işlemlerini ger&ccedil;ekleştirmeyi ve &ccedil;ok daha fazlasını &ouml;ğrenme imkanı elde edeceksiniz.</em></p>
	</li>
</ul>

<p><strong>Neden bizim Spring Boot kursumuza katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, Spring`de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>Spring Framework: Spring Boot ve Spring Hibernate</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Eğitim s&uuml;resince &uuml;cretsiz ara&ccedil;lar ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek yok.</li>
	<li>Spring Boot Framework&#39;&uuml; &ouml;ğrenme arzunuz konuyu daha iyi anlamanızı sağlar</li>
	<li>Temel Java Bilgisine sahip olmak</li>
	<li>Temel Html Bilgisine sahip olmak</li>
	<li>SQL ve Database bilgisine sahip olmanız yararlı olacaktır</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Spring Boot Framework hakkında &ccedil;ok detaylı bilgiye ulaşacaksınız</li>
	<li>Spring Boot&#39;u en baştan &ouml;ğreneceksiniz</li>
	<li>Eclips temelli olan Spring Source Tool kurulumunu yapmayı</li>
	<li>JDK ve IDE i&ccedil;eren &ccedil;alışma ortamı hazırlamayı</li>
	<li>Jar dosyalarını hazırlayıp kullanmayı</li>
	<li>Spring Boot ile Security yapılandırmalarını</li>
	<li>Konfig&uuml;rasyon ayarlarının nasıl yapılacağını</li>
	<li>YAML ve Java tabanlı konfig&uuml;rasyonu uygulamalı olarak yapmayı</li>
	<li>Maven ile entegrasyonu</li>
	<li>Rest Servisleri ile nasıl &ccedil;alışacağımızı</li>
	<li>Spring Boot ile Security yapılandırmalarını</li>
	<li>Remember Me &ouml;zelliğini yapılandırmayı ve kullanmayı</li>
	<li>Database&rsquo;de kullanıcı bilgilerinin nasıl y&ouml;netileceğini</li>
	<li>Spring Boot ile Transaction Y&ouml;netimini</li>
	<li>E-mail yeteneklerini &ouml;ğrenip uygulamalı olarak mail g&ouml;ndermeyi</li>
	<li>Spring Boot ile zamanlanmış işler yapmayı</li>
	<li>Spring Boot ile dosya y&ouml;netimi hakkında konuşup upload ve download işlemlerini ger&ccedil;ekleştirmeyi</li>
	<li>Ve Spring Framework , Spring Boot, Spring Hibernate hakkında &ccedil;ok daha fazlasını bu kursta bulabileceksiniz</li>
	<li>Soru sormaktan &ccedil;ekinmeyin. Spring eğitimimiz s&uuml;resince m&uuml;mk&uuml;n olduğu kadar sizlere yardımcı olmaya &ccedil;alışacağız</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Spring Framework uygulama geliştiricileri</li>
	<li>Spring Boot ile web uygulamaları hazırlamak isteyenler</li>
	<li>Kurumsal uygulamalar hazırlayıp geliştirmek isteyenler</li>
	<li>Spring Boot &ouml;ğrenmek isteyenler</li>
	<li>Spring Boot Hibernate ile web uygulamaları hazırlamak isteyenler</li>
	<li>Spring Boot&#39;u projelerinde daha verimli ve bilin&ccedil;li kullanmak isteyenler</li>
</ul>
', 4, 30, N'spring-framework-spring-boot-ve-spring-hibernate-öğrenin', 0, 1, 0, 0, 0, N'Turkish', CAST(N'2020-05-22 01:27:53.333' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:27:53.333' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (58, N'C# OOP Concepts: Apply C# OOP Concepts On Real C# Projects', N'Here is your reference guide for C# OOP classes, interfaces and object-oriented programming with C#', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>C# OOP Concepts: Apply C# Object Oriented Programming Concepts On Real C# Projects</strong> course.</p>

<p>Do you want to use C# to build web apps, mobile apps,&nbsp; games or understanding C# classes</p>

<p>or</p>

<p>Do you want to succeed with clean coding, agile and design patterns?</p>

<p>If your answer is Yes then you have to master C# Object Oriented Programming. And you are definitely at the right place.</p>

<p>Object-oriented programming is the foundation of many current application development approaches. Interfaces and principles of object-oriented programming are crucial. During my C# OOP course, you will learn everything, from A to Z, about OOP on real C# projects.</p>

<p>In this course, we use interactive programming techniques; which means we will be building applications together and furthermore there will be lots of work to be done, of course, followed by answers. You will also learn tips and tricks regarding beautiful and efficient coding techniques.</p>

<p>That`s why you are at a great place to start with OOP with C#</p>

<p><strong>What you will learn?</strong></p>

<ul>
	<li>
	<p>Applying the OOP concepts using C#</p>
	</li>
	<li>
	<p>How to apply each subject on real projects</p>
	</li>
	<li>
	<p>You will have an infrastructure to learn programming languages like Java or Python in a very short time</p>
	</li>
	<li>
	<p>N- tier Architecture</p>
	</li>
	<li>
	<p>How to make a professional project with 3 tier architecture and LINQ</p>
	</li>
	<li>
	<p>Solid Principles</p>
	</li>
	<li>
	<p>Using of Abstract Factory , Observer and Facade Design Patterns</p>
	</li>
	<li>
	<p>Using of Entity Framework</p>
	</li>
	<li>
	<p>Using of N- tier architecture, design patterns, and Entity framework together</p>
	</li>
	<li>
	<p>How to develop professional apps</p>
	</li>
	<li>
	<p>How to Create Personnel Tracking systems algorithm</p>
	</li>
	<li>
	<p>How to Create Stock Tracking systems algorithm</p>
	</li>
	<li>
	<p>How to use facade design pattern on a real app</p>
	</li>
	<li>
	<p>Using basic SQL commands</p>
	</li>
	<li>
	<p>Using Folder and File Operations</p>
	</li>
	<li>
	<p>How to Delegate methods and use events</p>
	</li>
	<li>
	<p>How to Handled errors and exceptions in your apps</p>
	</li>
	<li>
	<p>How to use coding techniques to make efficient development</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p>This course starts with&nbsp;very basics.&nbsp; You will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the OOP with C# and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Are you ready to dive in now to my <strong>C# OOP Concepts: Apply C# OOP Concepts On Real C# Projects </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>Desire to learn C# OOP</li>
	<li>A Windows or Mac for installing all the free software and tools needed to practice</li>
	<li>Basic C# Knowledge</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Apply the OOP concepts using C#</li>
	<li>How to apply each subject on real C# projects</li>
	<li>You will have an infrastructure to learn programming languages like Java or Python in a very short time</li>
	<li>What objects, classes, fields, properties, methods and constructors are in detail</li>
	<li>N- tier Architecture</li>
	<li>How to make a professional project with 3 tier architecture and LINQ</li>
	<li>Solid Principles</li>
	<li>Using of Abstract Factory , Observer and Facade Design Patterns</li>
	<li>Using of Entity Framework</li>
	<li>Using of N- tier Architecture , Design Patterns and Entity framework together</li>
	<li>How to develop professional apps</li>
	<li>How to Create Personnel Tracking systems algorithm</li>
	<li>How to Create Stock Tracking systems algorithm</li>
	<li>How to use facade design pattern on a real app</li>
	<li>Using of basic SQL commands</li>
	<li>Using Folder and File Operations</li>
	<li>How to Delegate methods and use events</li>
	<li>How to Handled errors and exceptions in your apps</li>
	<li>How to use coding techniques to make efficient development</li>
	<li>Beautiful coding techniques</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn how to code with C# programming language, regardless of their current level</li>
	<li>Anyone who wants to improve their programming skills</li>
	<li>Anyone who wants to build object oriented and / or windows forms applications</li>
	<li>Anyone who is interested in developing software with a design pattern</li>
	<li>Anyone who wants to understand the elements of full-stack software development</li>
	<li>Anyone who wants to develop .NET applications</li>
	<li>People who are willing to make a career in the corperate world</li>
</ul>
', 5, 0, N'c-oop-concepts-apply-c-oop-concepts-on-real-c-projects', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:28:39.357' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:28:39.357' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (59, N'Scratch Programlama: Ebeveynler ve Çocuklar İçin Scratch', N'Birbirinden eğlenceli oyunlar ile hem Scratch ile kodlamayı öğrenin hem de Scratch ile yazılım mantığını keşfedin.', N'<h4>Course Details</h4>

<p><strong>Scratch Programlama: Ebeveynler ve &Ccedil;ocuklar İ&ccedil;in Scratch</strong> kursuna hoş geldiniz.</p>

<p>Scratch ile programla kursunda &ccedil;ocuklardan ebeveyne herkese Scratch&#39;i &ouml;ğretmeyi hedefledik. Hedefimiz herkesin digital d&uuml;nyayı anlaması. Scratch ile programlamayı &ouml;ğretmek istiyoruz &ccedil;&uuml;nk&uuml; t&uuml;m d&uuml;nya &uuml;lkeleri artık 7&#39;den 77&#39;ye vatandaşlarınını kod &ouml;ğrenmeye teşvik ediyor.</p>

<p>Kapsam o kadar geniş ki d&uuml;nya&rsquo;da bir&ccedil;ok &uuml;lkede 5-18 yaş arası &ccedil;ocuklar ve gen&ccedil;ler i&ccedil;in kodlama zorunlu eğitim m&uuml;fredatına girmeye başladı. İşte onlardan bazıları...</p>

<ul>
	<li>
	<p><strong>İngiltere</strong>, 5-16 yaş aralığındaki &ccedil;ocuk ve gen&ccedil;lere kodlamayı &ouml;ğretmeyi hedefleyen &ldquo;bilgisayar bilimleri&rdquo; dersini m&uuml;fredatına zorunlu olarak koyan ilk &uuml;lke. İlk okul 3.sınıftan itibaren &ccedil;ocuklar Scratch ile tanışıyor.</p>
	</li>
	<li>
	<p><strong>Finlandiya</strong> &ldquo;Gelecek; kodlamayı bilen kişiler &uuml;zerine inşa edilecek&rdquo; anlayışıyla derslerine başladı.</p>
	</li>
	<li>
	<p><strong>Estonya,</strong> 2012 yılında proje kapsamında 7-16 yaş arasındaki &ccedil;ocuklara kodlama sınıfları a&ccedil;tı.</p>
	</li>
	<li>
	<p><strong>&Ccedil;in</strong>, anaokulundan başlayarak &ccedil;ocuklara kodlama eğitimine başladı.</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p>Bu eğitim sayesinde kod &ouml;ğrenmek isteyenler kod &ouml;ğrenecek, aileler kodlamayı anlayıp digitalin d&uuml;nyaya hakim olmaya başladığı şu g&uuml;nlerde &ccedil;ocuklarına Scratch &ouml;ğrenirken destek olabilecek, eğitmenler Scratch bilgilerini geliştirebilecek. Zira bu eğitim<strong> 7&#39;den 77&#39;ye t&uuml;m yaş grupları i&ccedil;in Scratch konularını i&ccedil;eren kilometre taşı niteliğinde</strong>.</p>

<p>Scratch ile programlama eğitimimiz boyunca uygulamalı &ouml;rneklere &ccedil;alıştık.&nbsp; Eğitimimizde birbirinden eğlenceli oyunlar geliştirirken hem Scratch dilini &ouml;ğretmeyi hem de programlama mantığını kavratmayı ama&ccedil;lamadık.</p>

<p><strong><em>Eğitimde hangi konuları ele aldık;</em></strong></p>

<p>Scratch ile Programlamaya Giriş,</p>

<p>Scratch Edit&ouml;r&uuml;n&uuml; Kullanma,</p>

<p>G&ouml;rsel Bloklar ile Kodlama,</p>

<p>Yazılım Terminolojileri,</p>

<p>Yazılım Geliştirme Aşamaları,</p>

<p>Oyun Geliştirme Mantığı,</p>

<p>Geliştirilen Programları &Ccedil;evrimi&ccedil;i Toplulukla Paylaşmayı, G&ouml;rsel Bloklarla kodlama &ouml;ğrendikten sonra metin tabanlı Phyton, Java gibi programlama dillerine ge&ccedil;iş kolaylığı sağlamayı hedefledik.</p>

<p>&nbsp;</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>Scratch ile Programlama: Yeni Başlayanlar İ&ccedil;in Uygulamalı Scratch</strong> kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>İnternete bağlı bir bilgisayar</li>
	<li>Kurs boyunca kullanılacak yazılım ve ara&ccedil;lar &uuml;cretsizdir</li>
	<li>Eğitimi başarılı bir şekilde tamamlamak i&ccedil;in istek ve motivasyon</li>
	<li>Şimdi tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Kodlama &ouml;ğrenmek isteyen ancak nereden nasıl başlayacağına tam karar verememiş kişiler i&ccedil;in hazırlanmış nitelikli bir eğitimdir</li>
	<li>Kodlamaya yeni başlayacak &ccedil;ocuklara, &ccedil;ocuklarını teşvik edici ve yol g&ouml;sterici ebeveynlere hitap eden başlangı&ccedil; seviyesindeki Scratch konularını i&ccedil;eren kilometre taşı niteliği taşımaktadır.</li>
	<li>Karşılaşılan problemleri &ccedil;&ouml;zerken d&uuml;ş&uuml;nmeyi, hazır balık yerine balık tutmayı &ouml;ğrenmek isteyenler i&ccedil;in g&uuml;zel bir fırsat sunmaktadır.</li>
	<li>Birbirinden eğlenceli oyunlar geliştirirken hem Scratch dilini &ouml;ğretmeyi hem de programlama mantığını kavratmayı ama&ccedil;lamaktadır.</li>
	<li>Scratch ile Kodlama</li>
	<li>Scratch Edit&ouml;r&uuml;</li>
	<li>G&ouml;rsel Bloklar ile Kodlama</li>
	<li>Kodlama Terminolojileri</li>
	<li>Programlama Mantığı</li>
	<li>Oyun geliştirme Mantığı</li>
	<li>Kendi İkon ve G&ouml;rsellerinizi Hazırlamayı</li>
	<li>Animasyon ve G&ouml;rsel Efekt Oluşturma</li>
	<li>Bu eğitim ile Phyton, Java gibi metin tabanlı programlama dillerini &ccedil;ok daha hızlı ve kolay kavramayı</li>
	<li>Geliştirdiğiniz programları &ccedil;evrimi&ccedil;i toplulukta paylaşmayı ve &ccedil;ok daha fazlasını</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Kodlamaya doğru ve nitelikli bir başlangı&ccedil; yapmak isteyen herkes i&ccedil;in&hellip;</li>
	<li>Kodlama &ouml;ğrenmek isteyen 7&#39;den 77&#39;ye herkes</li>
	<li>&Ccedil;ocuklarının gelişimine &ouml;nem veren, onları doğru şekilde y&ouml;nlendirmek, geleceğe hazırlamak isteyen ve bu nedenle kodlamayı &ouml;ğrenmelerini teşvik etmek isteyen Ebeveynler i&ccedil;in</li>
</ul>
', 5, 0, N'scratch-programlama-ebeveynler-ve-çocuklar-için-scratch', 1, 0, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:32:17.913' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:32:17.913' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (60, N'React JS Hooks: Modern React JS Hooks ve Context', N'React JS React Hooks kursu ile React''in modern yüzü Hooks ve Context kullanarak Web uygulamaları geliştirmeyi öğrenin', N'<h4>Course Details</h4>

<p><strong>React JS Hooks: Modern React JS Hooks ve Context </strong>kursuna hoşgeldiniz.</p>

<p>Bu kursta React&rsquo;in modern y&uuml;z&uuml; React Hooks ve Context ile web uygulaması geliştirmeyi &ouml;ğreneceksiniz.</p>

<p>Eğer React Hooks ve Context yapısını &ouml;ğrenmeye yeni başlıyorsanız ya da bu konuları anlamakta zorlanıyorsanız, bu kurs tam size g&ouml;re.</p>

<p>React Hooks ve Context yapılarını detaylı &ouml;rnekler ve uygulamalarla, a&ccedil;ıklayıcı diyagramlarla her d&uuml;zeyde &ouml;ğrencinin anlayacağı şekilde oluşturduk.</p>

<p>React Hooks kursumuzda &ouml;ncelikle, konunun ne oldugunun daha iyi anlaşılması i&ccedil;in Context Api&rsquo;nin ne olduğunu ve nasıl kullanıldığını, daha sonra Hooks yapısını ele aldık. Son olarak Context Api ve Hooks&rsquo;u birlikte kullanıldığımızda bizlere sağladığı kolaylıkları inceledik. &Ccedil;&uuml;nk&uuml; &ouml;ğrenmede, eğitimin i&ccedil;eriği kadar, konunun sunulma sırasının da &ccedil;ok &ouml;nemli olduğunu d&uuml;ş&uuml;n&uuml;yoruz.</p>

<p><strong>React Hooks kursunda</strong> <strong><em>neler &ouml;ğreneceksiniz?</em></strong></p>

<ul>
	<li>
	<p>Class Component ile Context oluşturmayı,</p>
	</li>
	<li>
	<p>Consumer ile Context&#39;e erişimi</p>
	</li>
	<li>
	<p>Context Type ile Context&rsquo;e erişimi</p>
	</li>
	<li>
	<p>Context&rsquo;de bulunan verileri manip&uuml;le etmeyi</p>
	</li>
	<li>
	<p>useState, useEffect, useReducer, ve useContext Hook&rsquo;larını</p>
	</li>
	<li>
	<p>Reducer, Action ve Dispatch kavramlarını</p>
	</li>
	<li>
	<p>Ve React Hooks hakkında &ccedil;ok daha fazlasını &ouml;ğreneceksiniz</p>
	</li>
</ul>

<p><strong>Neden bizim OAK Academy&#39;nin kurslarına katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, React de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>React JS Hooks: Modern React JS Hooks ve Context </strong>kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<p>&nbsp;</p>

<h4>Requirements</h4>

<ul>
	<li>Eğitim s&uuml;resince &uuml;cretsiz ara&ccedil;lar ve platformlar kullanıldığından herhangi bir ara&ccedil; veya uygulama satın almanıza gerek yok</li>
	<li>Temel seviyede HTML, Css, Javascript bilmeniz gerekiyor</li>
	<li>Temel seviyede React Js bilmeniz gerekiyor</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>React&rsquo;in modern y&uuml;z&uuml; Hooks ve Context ile web uygulaması geliştirmeyi</li>
	<li>Hooks ve Context yapılarını, uygulamalı olarak oluşturmayı,</li>
	<li>Hooks ve Context yapılarını a&ccedil;ıklayacı diyagramlarla</li>
	<li>Context Api&rsquo;nin ne olduğunu ve nasıl kullanıldığını</li>
	<li>Context Api ve Hooks&rsquo;u birlikte kullanmayı</li>
	<li>Class Component ile Context oluşturmayı</li>
	<li>Context Type ile Context&rsquo;e erişimi</li>
	<li>Context&rsquo;de bulunan verileri manip&uuml;le etmeyi</li>
	<li>useState, useEffect, useReducer, ve useContext hook&rsquo;larını</li>
	<li>Reducer, action ve dispatch kavramlarını ve &ccedil;ok daha fazlasını</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz!</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>React Hooks &ouml;ğrenmek isteyenler i&ccedil;in</li>
	<li>React Context API &ouml;ğrenmek isteyenler i&ccedil;in</li>
</ul>
', 5, 0, N'react-js-hooks-modern-react-js-hooks-ve-context', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:33:09.217' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:33:09.217' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (61, N'React JS Redux: React JS Redux''ı En Baştan Anlatıyoruz', N'React JS ile kullanılan en popüler React Router, React Portal ve Redux kütüphanelerini React JS Redux kursumuzla öğren', N'<h4>Course Details</h4>

<p><strong>React JS Redux: React JS Redux&#39;ı En Baştan Anlatıyoruz </strong>isimli kursumuza hoşgeldiniz.</p>

<p>Modern web uygulamaları &ouml;ğrenmek istiyor,&nbsp; React &ouml;ğrenmeye yeni başlıyor ya da React&rsquo;i anlamakta zorlanıyorsanız bu kurs tam size g&ouml;re.</p>

<p>React, Facebook&#39;un web geliştirme ekibi tarafından 2013 yılında javascript k&uuml;t&uuml;phanesi olarak piyasaya s&uuml;r&uuml;ld&uuml; ve herkes tarafından kısa s&uuml;rede modern web uygulamaları oluşturmak i&ccedil;in en iyi se&ccedil;eneklerden birisi olduğu onaylandı.</p>

<p>Bizde bu kursta sizlere en baştan başlayarak g&ouml;rsel diyagramlarla ve ger&ccedil;ek hayattan uygulamalar web uygulamalarıyla, React JS ve Redux ile web geliştirme konusunda bilmeniz gereken her şeyi sizlere &ouml;ğretiyoruz.</p>

<p>Bu kursu hazırlarken meslek transformasyonu yaşayan &ouml;ğrencilerimizin tecr&uuml;belerinden ve geri beslemelerinden istifade ettik. Eğer sizde React JS&#39;i anlamaya &ccedil;alışıyor ve React JS ile birlikte kullanılan en pop&uuml;ler, React Router, React Portal ve Redux k&uuml;t&uuml;phanelerini en iyi şekilde &ouml;ğrenmek istiyorsanız bu kurs tam da aradığınız React JS Redux kursu.</p>

<p>Redux, &ccedil;oğu developerın anlamakta g&uuml;&ccedil;l&uuml;k &ccedil;ektiği bir k&uuml;t&uuml;phane biz de bu kursta Redux&rsquo;ın, genel işleyişinı ve arka planda g&ouml;rmediğimiz bir&ccedil;ok fonksiyonun nasıl &ccedil;alıştığını en temel ve sade haliyle anlatmaya &ccedil;alıştık. &Ccedil;&uuml;nk&uuml; &ouml;ğrenmede, g&uuml;&ccedil;l&uuml; bir eğitimin i&ccedil;eriği kadar, konunun sunulma sırasının da &ccedil;ok &ouml;nemli olduğunu d&uuml;ş&uuml;n&uuml;yoruz.</p>

<p><strong>React JS Redux kursunda</strong> <strong><em>neler &ouml;ğreneceksiniz?</em></strong></p>

<ul>
	<li>
	<p>React JS ile single page application oluşturmayı,</p>
	</li>
	<li>
	<p>React&rsquo;in en &ouml;nemli konuları olan Component, Props, State ve Component Life Cycle metotlarını,</p>
	</li>
	<li>
	<p>Api a istek atmayı, Api&#39;dan veri &ccedil;ekmeyi ve verileri browser ekranında kullanıcıya g&ouml;stermeyi,</p>
	</li>
	<li>
	<p>Input form ve event&rsquo;ler ile kullanıcı isteklerini y&ouml;netmeyi,</p>
	</li>
	<li>
	<p>React Router ile &ccedil;ok sayfalı web uygulaması yapmayı,</p>
	</li>
	<li>
	<p>React Portals yardımıyla hızlı ve kolay bir şekilde modal oluşturmayı,</p>
	</li>
	<li>
	<p>React uygulamalarımızda, uygulamamızın verilerini Redux k&uuml;t&uuml;phanesi ile nasıl y&ouml;netebileceğimizi, global state de tuttuğumuz verilere componentlarımız&rsquo;dan kolayca nasıl ulaşabileceğimizi ve Redux store da depoladığımız verileri action&rsquo;lar oluşturarak nasıl manip&uuml;le edeceğimizi,</p>
	</li>
	<li>
	<p>Redux Thunk ile Asynchronous işlemleri ger&ccedil;ekleştirmeyi,</p>
	</li>
	<li>
	<p>En b&uuml;y&uuml;k ve gelişmiş React uygulamalarını Redux k&uuml;t&uuml;phanesini kullanarak kolay bir şekilde inşa etmesini &ouml;ğreneceğiz.</p>
	</li>
</ul>

<p><strong>Neden bizim OAK Academy&#39;nin kurslarına katılmalısınız?</strong></p>

<p>Bu konuda cevabımız basit: Kursumuzun kalitesi.</p>

<p>Kaydolduğunuzda, OAK Akademi&#39;nin deneyimli eğitmenlerinin konuya hakimiyetini ve aynı zamanda tecr&uuml;belerini aktarmadaki uzmanlıklarını hissedeceksiniz.</p>

<p><strong>G&uuml;ncel İ&ccedil;erik</strong></p>

<p>Teknolojinin hızlı bir şekilde nasıl geliştiği sır değil. Her g&uuml;n yeni ara&ccedil;lar piyasaya s&uuml;r&uuml;l&uuml;yor, React de kendini g&uuml;ncelliyor ve en son bilgilerden haberdar olmak sekt&ouml;rde &ccedil;ok &ouml;nemli. Bu kursla her zaman en yeni trendleri takip etme şansına sahip olacaksın.</p>

<p><strong>Video ve &Uuml;retim Kalitesi Kalitesi</strong></p>

<p>T&uuml;m i&ccedil;eriklerimizı size en iyi &ouml;ğrenme deneyimini sunmak i&ccedil;in y&uuml;ksek kaliteli video / ses olarak &uuml;retiyoruz.</p>

<p><strong>Kursiyerlerimiz,</strong></p>

<ul>
	<li>
	<p>Soru&amp;Cevap b&ouml;l&uuml;m&uuml;nde hızlı cevaplar alabilecek,</p>
	</li>
	<li>
	<p>Kursu bitiren t&uuml;m kursiyerlerimiz kurs bitirme sertifikalarını Udemy&#39;den indirebilecek</p>
	</li>
</ul>

<p>Daha fazla zaman kaybetmeyin ve <strong>React JS Redux: React JS Redux&#39;ı En Baştan Anlatıyoruz </strong>kursumuza siz de kayıt olun!</p>

<p>Kursta g&ouml;r&uuml;şmek &uuml;zere!</p>

<h4>Requirements</h4>

<ul>
	<li>React Redux kursumuz HTML, CSS ve JavaScript hakkında temel seviyede bilgiye sahip olan kişiler i&ccedil;in idealdir.</li>
	<li>JavaScript konusunda uzman olmanız gerekmiyor ancak kurstan faydalanabilmeniz i&ccedil;in D&ouml;ng&uuml;ler ve Fonksiyonlar gibi temel kavramları bilmeniz gerekmektedir.</li>
	<li>Es6 bilmeniz yararlı olur ancak bilmek zorunda değilsiniz, Es6 bu kurs kapsamındadır.</li>
	<li>Ve en &ouml;nemlisi &lsquo;G&uuml;&ccedil;l&uuml; &Ouml;ğrenme Arzusu&rsquo;</li>
	<li>Tek ihtiyacınız olan bilgisayarınız ve sizsiniz! Haydi şimdi React Redux d&uuml;nyasını beraber keşfedelim</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Eğer React &ouml;ğrenmeye yeni başlıyorsanız ya da React&rsquo;i anlamakta zorlanıyorsanız, bu kurs tam size g&ouml;re</li>
	<li>React Redux kursumuzda g&ouml;rsel diyagramlarla ve basit web uygulamalarıyla, React JS ve Redux ile web geliştirme konusunda uzman olmanız gereken her şeyi &ouml;ğreneceksiniz.</li>
	<li>React JS ile birlikte kullanılan en pop&uuml;ler, React Router, React Portal ve Redux k&uuml;t&uuml;phanelerini en basit ve yalın haliyle bu kursta bulabilirsiniz</li>
	<li>React Redux kursumuzda Redux&rsquo;ın, genel işleyişinı ve arka planda g&ouml;rmediğimiz bir&ccedil;ok fonksiyonun nasıl &ccedil;alıştığını en temel ve sade haliyle ele aldık</li>
	<li>React JS ile single page application oluşturmayı,</li>
	<li>React&rsquo;in en &ouml;nemli konuları olan Component, Props, State ve Component Life Cycle metotlarını,</li>
	<li>API&#39; a istek atmayı, API&#39;dan veri &ccedil;ekmeyi ve verileri Browser ekranında kullanıcıya g&ouml;stermeyi,</li>
	<li>Input form ve event&rsquo;ler ile kullanıcı isteklerini y&ouml;netmeyi,</li>
	<li>React Router ile &ccedil;ok sayfalı web uygulaması yapmayı,</li>
	<li>React Portals yardımıyla hızlı ve kolay bir şekilde modal oluşturmayı,</li>
	<li>React uygulamalarımızda, uygulamamızın verilerini Redux k&uuml;t&uuml;phanesi ile nasıl y&ouml;netebileceğimizi,</li>
	<li>React uygulamalarımızda global state de tuttuğumuz verilere componentlarımız&rsquo;dan kolayca nasıl ulaşabileceğimizi,</li>
	<li>React uygulamalarımızda Redux Store&#39;da depoladığımız verileri Action&#39;lar oluşturarak nasıl manip&uuml;le edeceğimizi ve &ccedil;ok daha fazlasını &ouml;ğreneceğiz</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>React ve Redux &ouml;ğrenmek isteyenler</li>
	<li>Redux k&uuml;t&uuml;phanesini detaylı sekilde &ouml;ğrenmek isteyenler</li>
	<li>G&uuml;n&uuml;m&uuml;z&uuml;n en pop&uuml;ler front-end mimarilerini &ouml;ğrenmek isteyen herkes</li>
	<li>Web geliştirme becerilerini bir &uuml;st seviyeye &ccedil;ıkarmak ve geleceğe y&ouml;nelik bir teknoloji &ouml;ğrenmek isteyen &ouml;ğrenciler i&ccedil;in</li>
	<li>React kariyeri planlayor ve yazılım şirketlerinde bu alanda iş bulmak istiyorsanız bu React Redux kursu tam size g&ouml;re</li>
</ul>
', 5, 0, N'react-js-redux-react-js-redux-ı-en-baştan-anlatıyoruz', 1, 1, 1, 0, 0, N'Turkish', CAST(N'2020-05-22 01:34:04.523' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:34:04.523' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (62, N'HTML For Everyone: Real World Coding in HTML', N'Learn web development essential HTML from scratch. With this HTML course you don''t need previous knowledge on HTML', N'<h4>Course Details</h4>

<p>Welcome to <strong>HTML For Everyone: Real World Coding in HTML </strong>course.</p>

<p>HTML stands for HyperText Markup Language. It allows the user to create and structure sections, paragraphs, headings, links, and blockquotes for web pages and applications. HTML is the biggest markup language used to display web pages on the Internet. In other words, web pages are composed of HTML, which is used to display text, images or other resources through a web browser.</p>

<p>HTML is the basic building block of the web and actually isn&rsquo;t a technical programming language. It is responsible for the structure of the website.</p>

<p><strong>In this course,</strong></p>

<ul>
	<li>
	<p>You will learn to create static HTML sites</p>
	</li>
	<li>
	<p>You will learn to create a beautiful, responsive landing page for anyone</p>
	</li>
	<li>
	<p>You will learn to use basic tags which are used commonly</p>
	</li>
	<li>
	<p>You will be able to prepare lists in different formats</p>
	</li>
	<li>
	<p>You will learn the difference in usage between block-level and inline elements in HTML</p>
	</li>
	<li>
	<p>By learning the use of the HTML table, you will be able to create different designs of your own</p>
	</li>
	<li>
	<p>You will be able to create commonly used user login and registration pages by learning the form structure.</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p>This course starts with&nbsp;very basics.&nbsp; You will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the HTML and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>&nbsp;</p>

<p>Are you ready to dive in now to my <strong>HTML For Everyone: Real World Coding in HTML </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No programming experience needed</li>
	<li>A computer with access to the Internet</li>
	<li>You will learn HTML with hands-on examples by doing from scratch</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>You will have a basic understanding of HTML</li>
	<li>Learn to create static HTML sites</li>
	<li>Learn to create a beautiful, responsive landing page</li>
	<li>Learn to use basic tags which are used commonly</li>
	<li>Prepare lists in different formats</li>
	<li>Learn the difference in usage between block level and inline elements in HTML</li>
	<li>By learning the use of HTML table you will be able to create different designs of your own</li>
	<li>You will be able to create commonly used user login and registration pages by learning the form structure</li>
	<li>You will have beautiful coded and useful HTML examples</li>
	<li>Learn HTML by doing</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to improve their programming skills</li>
	<li>People who are willing to make a career in the corperate world</li>
	<li>People who wants to learn HTML, the first step in web development</li>
	<li>People who wants to build their own website bu using HTML</li>
</ul>
', 4, 0, N'html-for-everyone-real-world-coding-in-html', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:34:44.960' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:34:44.960' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (63, N'POO en C#: aplica conceptos de POO en C# en proyectos reales', N'Tu guía para aprender POO en C# implementando clases, interfaces y programación orientada a objeto utilizando C#', N'<h2>POO en C#: aplica conceptos de POO en C# en proyectos reales</h2>

<p>Tu gu&iacute;a para aprender POO en C# implementando clases, interfaces y programaci&oacute;n orientada a objeto utilizando C#</p>

<ul>
	<li>Description</li>
	<li>Curriculum</li>
	<li>Instructors</li>
	<li>Reviews</li>
</ul>

<h4>Course Details</h4>

<p>Muy buenas estudiante y bienvenido a <strong>Programaci&oacute;n Orientada a Objetos en C#: aplica conceptos de POO en C# en proyectos reales</strong>.</p>

<p>&iquest;Quieres usar C# para crear tus propias aplicaciones web, aplicaciones para tel&eacute;fonos m&oacute;viles, videojuegos con Unity o entender las clases de C# o quieres tener &eacute;xito con una programaci&oacute;n limpia, estructurada, &aacute;gil y utilizando los patrones de dise&ntilde;o m&aacute;s avanzados?</p>

<p>Si tu respuesta es S&iacute;, entonces tienes que dominar la Programaci&oacute;n Orientada a Objetos en C#. Y definitivamente est&aacute;s en el sitio correcto pues este curso est&aacute; dise&ntilde;ado especialmente para cumplir este objetivo.</p>

<p>La programaci&oacute;n orientada a los objetos es la base de muchos de los enfoques actuales del desarrollo de aplicaciones. Las interfaces y los principios de la programaci&oacute;n dirigida a objetos son cruciales. Durante nuestro curso de C# POO, aprender&aacute;s todo, de la A a la Z, sobre Programaci&oacute;n Orientada a Objetos en proyectos reales utilizando el lenguaje de programaci&oacute;n .Net o C#.</p>

<p>En este curso, utilizamos t&eacute;cnicas de programaci&oacute;n interactiva; lo que significa que construiremos aplicaciones juntos y adem&aacute;s habr&aacute; mucho trabajo por hacer, por supuesto,&nbsp; seguido de dudas que hallar&aacute;n sus respuestas en el foro del curso. Tambi&eacute;n aprender&aacute;s consejos y trucos profesionales sobre bellas y eficientes t&eacute;cnicas de codificaci&oacute;n.</p>

<p>Por eso est&aacute;s en un buen lugar para empezar a utilizar la Programaci&oacute;n Orientada a Objetos con C#.</p>

<p><strong>&iquest;Por qu&eacute; tienes que tomar este curso?</strong></p>

<p>Nuestra respuesta es simple: La calidad de la ense&ntilde;anza.</p>

<p>Cuando te inscribas, aprender&aacute;s desde mi propia experiencia y la del material creado por los expertos de OAK&nbsp;Academy.</p>

<p>Este curso comienza con lo m&aacute;s b&aacute;sico. Aprender&aacute;s todo con pr&aacute;cticas reales. Tambi&eacute;n te ense&ntilde;ar&eacute; las mejores pr&aacute;cticas y shortcuts a utilizar en Visual Studio.</p>

<p><strong>Paso a paso, simple y f&aacute;cil con los ejercicios pr&aacute;cticos.</strong></p>

<p>Al final del curso, tendr&aacute;s un entendimiento s&oacute;lido del rogramaci&oacute;n Orientada a Objetos con C# y ansias de seguir aprendiendo.</p>

<p><strong>Calidad de producci&oacute;n de v&iacute;deo y audio</strong></p>

<p>Todos nuestros v&iacute;deos est&aacute;n creados y producidos en v&iacute;deo y audio de alta calidad para proporcionarte la mejor experiencia de aprendizaje. Con ello podr&aacute;s</p>

<ul>
	<li>
	<p>Ver el material en alta definici&oacute;n.</p>
	</li>
	<li>
	<p>Escuchar al instructor con claridad.</p>
	</li>
	<li>
	<p>Avanzar a trav&eacute;s del curso sin distracciones.</p>
	</li>
</ul>

<p><strong>Tambi&eacute;n obtendr&aacute;s:</strong></p>

<ul>
	<li>
	<p>Acceso de por vida al curso.</p>
	</li>
	<li>
	<p>Soporte r&aacute;pido y amigable en el foro de preguntas y respuestas del curso.</p>
	</li>
	<li>
	<p>Certificado de finalizaci&oacute;n de Udemy listo para ser descargado.</p>
	</li>
</ul>

<p>&iquest;Est&aacute;s listo para sumergirte ahora en mis Conceptos C# Programaci&oacute;n Orientada a Objetos: Aplicar los conceptos de programaci&oacute;n orientada a objetos de C# en el curso de proyectos reales de C#?</p>

<p>Te ofrecemos apoyo total, respondiendo a cualquier pregunta.</p>

<p>&iexcl;Nos vemos en el curso!</p>

<h4>Requirements</h4>

<ul>
	<li>Ganas de aprender POO, programaci&oacute;n orientada a objetos y C#</li>
	<li>Un ordenador con Windows o Mac para poder instalar todo el software gratuito y herramientas necesarias para seguir el curso</li>
	<li>Conocimiento b&aacute;sico de programaci&oacute;n en C#</li>
	<li>Nada m&aacute;s! Seremos solo tu, tu ordenador y tus ganas de empezar ahora mismo!</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Aplicar los conceptos de POO en C#</li>
	<li>Aprender la infraestructura necesaria para aprender a programar en lenguajes como Java o Python en poco tiempo</li>
	<li>Arquitectura N-Tier o multi capa</li>
	<li>Principios de programaci&oacute;n SOLID</li>
	<li>Utilizar la librer&iacute;a Entity</li>
	<li>Desarrollo de apps profesionales</li>
	<li>C&oacute;mo crear un programa de gesti&oacute;n del sistema de manejo de mercanc&iacute;as en un almac&eacute;n</li>
	<li>Uso b&aacute;sico de comandos SQL</li>
	<li>Uso de m&eacute;todos delegados y de eventos</li>
	<li>C&oacute;mo utilizar t&eacute;cnicas de programaci&oacute;n para crear c&oacute;digo eficiente</li>
	<li>C&oacute;mo aplicar todos los conceptos a proyectos reales en C#</li>
	<li>Descubrir en detalle qu&eacute; son y como funcionan objetos, clases, campos, propiedades, m&eacute;todos y constructores</li>
	<li>C&oacute;mo crear un proyecto profesional con arquitecturas 3 tier y LINQ</li>
	<li>Utilizar correctamente los patrones de dise&ntilde;o de la Factor&iacute;a Abstracta, el Observador y la Fachada</li>
	<li>Utilizar la arquitectura N- tier, Patrones de dise&ntilde;o y la librer&iacute;a Entity combinados</li>
	<li>C&oacute;mo crear un sistema de tracking de personal profesional</li>
	<li>C&oacute;mo aplicar el patr&oacute;n de dise&ntilde;o de la fachada en una aplicaci&oacute;n real</li>
	<li>Utilizar operaciones de fichero y carpetas</li>
	<li>C&oacute;mo gestionar errores y excepciones en tus aplicaciones to Handled errors and exceptions in your apps</li>
	<li>T&eacute;cnicas de programaci&oacute;n profesionales</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Cualquiera que quiera aprender a programar con el lenguaje de programaci&oacute;n C #, independientemente de su nivel actual</li>
	<li>Cualquiera que quiera mejorar sus habilidades de programaci&oacute;n</li>
	<li>Cualquiera que quiera crear aplicaciones orientadas a objetos y / o formularios de Windows, videojuegos con Unity o similar</li>
	<li>Cualquiera que est&eacute; interesado en desarrollar software con un patr&oacute;n de dise&ntilde;o robusto</li>
	<li>Cualquiera que quiera comprender los elementos del desarrollo de software full-stack</li>
	<li>Cualquiera que quiera desarrollar aplicaciones .NET</li>
	<li>Personas que est&aacute;n dispuestas a hacer una carrera en el mundo empresarial y emprendedor.</li>
</ul>
', 5, 48, N'poo-en-c-aplica-conceptos-de-poo-en-c-en-proyectos-reales', 1, 1, 1, 0, 0, N'Spanish', CAST(N'2020-05-22 01:35:35.597' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-06-01 19:50:52.540' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (64, N'Aprende a programar en C# en 6 horas: C# para principiantes', N'Domina las bases del lenguaje de desarrollo de videojuegos más popular C# con Visual Studio y domina C# en solo 6 horas', N'<h4>Course Details</h4>

<p>Hola, todos y bienvenidos a nuestro curso <strong>Aprende a programar en C# en 6 horas: C# para principiantes</strong></p>

<p>&iquest;Quieres aprender el C# pero no tienes ninguna experiencia en progroamaci&oacute;n? Nuestro curso de fundamentos de C# para principiantes es el lugar perfecto para que empieces. En este curso, dise&ntilde;amos el curso de C# .NET para darte todo lo que necesitas para que seas muy productivo con el C#.</p>

<p>Aprende a programar con C# hoy mismo.</p>

<p>Inscr&iacute;bete y domina los fundamentos del C# y la programaci&oacute;n con la librer&iacute;a .NET, porque tendr&aacute;s muchas opciones de trabajo disponibles en LinkedIn. Puedes elegir entre crear aplicaciones para m&oacute;viles o cambiar de trabajo y dedicarte a la programaci&oacute;n web. Queremos que sepas que cuando conoces bien los fundamentos, es m&aacute;s f&aacute;cil cambiar de tecnolog&iacute;a. Por eso est&aacute;s en un buen lugar para empezar desde cero con C#.</p>

<p>Todos mis alumnos tendr&aacute;n la oportunidad de aprender no s&oacute;lo lo qu&eacute; de programaci&oacute;n, sino tambi&eacute;n el por qu&eacute; y el c&oacute;mo.</p>

<p><strong>&iquest;Qu&eacute; aprender&aacute;s?</strong></p>

<ul>
	<li>
	<p>Programaci&oacute;n y funciones de C#.</p>
	</li>
	<li>
	<p>C&oacute;mo utilizar el IDE de Visual Studio.</p>
	</li>
	<li>
	<p>Crear aplicaciones de la consola.</p>
	</li>
	<li>
	<p>Variables.</p>
	</li>
	<li>
	<p>Tipos primitivos y tipos no primitivos.</p>
	</li>
	<li>
	<p>Expresiones de control de flujo.</p>
	</li>
	<li>
	<p>Arrays y listas.</p>
	</li>
	<li>
	<p>Manejo de errores y depuraci&oacute;n.</p>
	</li>
	<li>
	<p>Funciones.</p>
	</li>
	<li>
	<p>Lectura de Archivos.</p>
	</li>
	<li>
	<p>Escritura de Archivos.</p>
	</li>
	<li>
	<p>Uso de fechas con DateTime</p>
	</li>
</ul>

<p><strong>&iquest;Por qu&eacute; deber&iacute;as tomar este curso?</strong></p>

<p><strong>Nuestra respuesta es simple:</strong> La calidad de la ense&ntilde;anza. Cuando te inscribas, sentir&aacute;s la experiencia de los desarrolladores creadores del curso. No se necesitan conocimientos previos. No se necesita ning&uacute;n conocimiento previo para aprenderlo y C# es f&aacute;cil de entender para los principiantes.</p>

<p>Este curso comienza con lo m&aacute;s b&aacute;sico. Primero, aprender&aacute;s a instalar las herramientas junto con algo de terminolog&iacute;a esencial. Luego comenzar&aacute;s a programar y aprender&aacute;s todo con pr&aacute;cticas y ejercicios detallados. Tambi&eacute;n te ense&ntilde;ar&eacute; las mejores pr&aacute;cticas y los atajos.</p>

<p>Paso a paso, sencillo y f&aacute;cil de entender con ejercicios pr&aacute;cticos.</p>

<p>Al final del curso, tendr&aacute;s una firme comprensi&oacute;n del lenguaje C# y valiosos conocimientos sobre c&oacute;mo funcionan las cosas en un programa inform&aacute;tico y tambi&eacute;n tendr&aacute;s mucha confianza en los fundamentos de la programaci&oacute;n y el desarrollo de videojuegos, y estar&aacute;s impaciente por aprender m&aacute;s (por ejemplo con un curso de Unity). La buena noticia es que durante el curso utilizaremos herramientas gratuitas y populares,&nbsp; y que por tanto no es necesario comprar ninguna herramienta o aplicaci&oacute;n.</p>

<p><strong>Calidad de producci&oacute;n de v&iacute;deo y audio.</strong></p>

<p>Todos nuestros videos son creados/producidos con la m&aacute;s alta calidad para proporcionarte la mejor experiencia de aprendizaje.</p>

<p><strong>Podr&aacute;s:</strong></p>

<ul>
	<li>
	<p>Ver los videos claramente.</p>
	</li>
	<li>
	<p>Escuchar las explicaciones claramente.</p>
	</li>
	<li>
	<p>Moverte a trav&eacute;s del curso sin distracciones pues tienes todo el material desde el inicio.</p>
	</li>
</ul>

<p><strong>Tambi&eacute;n tendr&aacute;s:</strong></p>

<ul>
	<li>
	<p>Acceso de por vida al curso.</p>
	</li>
	<li>
	<p>Soporte r&aacute;pido y cordial en el foro de preguntas y respuestas. Ofrecemos apoyo total, respondiendo a cualquier pregunta del curso.</p>
	</li>
	<li>
	<p>Certificado de finalizaci&oacute;n de Udemy listo para ser descargado cuando termines el curso.</p>
	</li>
</ul>

<p>&iexcl;Vamos a empezar!</p>

<p>&iexcl;Nos vemos en el curso!</p>

<h4>Requirements</h4>

<ul>
	<li>No se requieren conocimientos previos de programaci&oacute;n o de C#.</li>
	<li>El software libre y las herramientas utilizadas durante el curso.</li>
	<li>Ganas de aprender a programar en C#.</li>
	<li>Nada m&aacute;s, solamente te necesitas a ti mismo, tu ordenador y tus deseos de empezar hoy mismo.</li>
	<li>Acceso de por vida, actualizaciones de los cursos, acceso al foro, nuevos contenidos, en cualquier momento, en cualquier lugar, y desde cualquier dispositivo.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Fundamentos de C#.</li>
	<li>Fundamentos de C# y librer&iacute;a de trabajo NET.</li>
	<li>Aprende a programar en C#.</li>
	<li>Instalaci&oacute;n de Visual Studio.</li>
	<li>Declaraciones condicionales.</li>
	<li>Creaci&oacute;n y uso de los Arrays.</li>
	<li>Creaci&oacute;n y uso de m&eacute;todos.</li>
	<li>Trabajar con tipos y expresiones primitivas.</li>
	<li>Depurar o debuguear las aplicaciones creadas en C#.</li>
	<li>Trabaja con clases, estructuras, Arrays.</li>
	<li>Por qu&eacute; deber&iacute;as aprender el C#.</li>
	<li>C# para todos.</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Principiantes o estudiantes que buscan una actualizaci&oacute;n en los fundamentos de C# y .NET.</li>
	<li>La gente que quiere aprender a programar</li>
	<li>La gente que quiere aprender el lenguaje C#.</li>
	<li>La gente que quiere aprender a utilizar Visual Studio</li>
	<li>La gente que quiere aprender las bases de desarrollo y dise&ntilde;o de juegos.</li>
	<li>La gente que quiere desarrollar aplicaciones de formularios de ventana.</li>
	<li>Cualquiera que quiera aprender a programar con C# y .NET.</li>
	<li>La gente que quiere desarrollar su propio juego.</li>
	<li>La gente que quiere aprender Xamarin.</li>
	<li>La gente que quiere aprender C# para utilizar Unity.</li>
</ul>
', 5, 5, N'aprende-a-programar-en-c-en-6-horas-c-para-principiantes', 1, 1, 1, 0, 0, N'Spanish', CAST(N'2020-05-22 01:36:19.630' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:36:19.630' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (65, N'React Native: Aprende React Native con ejercicios prácticos', N'Aprende React Native desde cero. Usa React Native para construir aplicaciones iOS y Android y profundiza en React Native', N'<h4>Course Details</h4>

<p>Hola a todos,</p>

<p>Bienvenidos a <strong>React Native: Aprende React Native con ejercicios pr&aacute;cticos</strong>.</p>

<p>React-Native es una librer&iacute;a desarrollada por el equipo de React y es ampliamente utilizada para crear aplicaciones m&oacute;viles tanto para Android como para IOS. No necesitas aprender Java, Android, Swift, Objective-C ni nada de eso. React y JavaScript es todo lo que necesitas para crear incre&iacute;bles aplicaciones m&oacute;viles que funcionen tanto en Android como en iOS.</p>

<p>Este curso es para principiantes, para los que empez&aacute;is de cero. Te llevaremos desde el nivel de principiante hasta el avanzado. Aprender&aacute;s el desarrollo de React paso a paso con ejemplos pr&aacute;cticos. Para que puedas beneficiarte de este curso, todo lo que necesitas es una idea b&aacute;sica de JavaScript, como la que vimos en el curso de HTML5.</p>

<p>En el curso, te diremos a detalle qu&eacute; dependencias necesitas instalar y c&oacute;mo, para poder crear aplicaciones m&oacute;viles tanto en Mac como en Windows. Vamos a utilizar herramientas y plataformas gratuitas para que no tengas que comprar ninguna herramienta o aplicaci&oacute;n. Vas a aprender a ejecutar un simulador de Android y iOS en tu ordenador Mac o Windows.</p>

<p>M&aacute;s tarde en el curso, vamos a aprender los fundamentos de React, JSX, y el sistema de Props y States ser&aacute;n muy f&aacute;ciles de entender y saber aplicar para todos al final del curso.</p>

<p>Vamos a crear componentes atractivos reutilizables en diversas aplicaciones, as&iacute; que podr&aacute;s tenerlos y usarlos en tus propios proyectos en el futuro.</p>

<p>En este curso, vamos a explicar todos los temas complejos con mucho detalle, pero haci&eacute;ndolos m&aacute;s sencillos, lo cual te van a ayudar mucho a seguir creciendo como programador. Usaremos algunos diagramas para contar algunos temas importantes y crearemos una aplicaci&oacute;n m&oacute;vil atractiva y funcional.</p>

<p><strong>Al final del curso aprender&aacute;s;</strong></p>

<ul>
	<li>
	<p>Los fundamentos de las bibliotecas React y React-Native.</p>
	</li>
	<li>
	<p>C&oacute;mo enviar solicitudes HTTP desde una aplicaci&oacute;n m&oacute;vil.</p>
	</li>
	<li>
	<p>C&oacute;mo usar el sistema de Flexbox.</p>
	</li>
	<li>
	<p>C&oacute;mo crear componentes reutilizables.</p>
	</li>
	<li>
	<p>Acceder a otra aplicaci&oacute;n del dispositivo desde nuestra aplicaci&oacute;n.</p>
	</li>
	<li>
	<p>Crear tu propia aplicaci&oacute;n para el m&oacute;vil, ser&aacute; f&aacute;cil para ti.</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>&iquest;Por qu&eacute; te gustar&iacute;a hacer este curso?</strong></p>

<ul>
	<li>
	<p>Nuestra respuesta es simple: la calidad de la ense&ntilde;anza.</p>
	</li>
	<li>
	<p>Cuando te inscribas, sentir&aacute;s la experiencia de los instructores de OAK Academy.</p>
	</li>
	<li>
	<p>Cuando te inscribas, yo mismo, Juan Gabriel Gomila, y el equipo de OAK Academy, te vamos a entregar el mejor material utilizando las mejores t&eacute;cnicas de ense&ntilde;anza online para que aprendas todos los trucos de React Native.</p>
	</li>
	<li>
	<p>No se necesitan conocimientos previos para aprender React Native.</p>
	</li>
	<li>
	<p>Este curso comienza con lo m&aacute;s b&aacute;sico. Primero, aprender&aacute;s algo de terminolog&iacute;a. Luego comenzaremos la programaci&oacute;n y aprender&aacute;s todo con actividades pr&aacute;cticas. Tambi&eacute;n te ense&ntilde;aremos las mejores t&eacute;cnicas y los atajos.</p>
	</li>
</ul>

<p><strong>Paso a paso, simple y f&aacute;cil con los mejores ejercicios pr&aacute;cticos:</strong></p>

<p>Al final del curso, tendr&aacute;s un firme entendimiento de React Native, y querr&aacute;s aprender a&uacute;n m&aacute;s.</p>

<p><strong>Calidad de producci&oacute;n de video y audio:</strong></p>

<p>Todos nuestros videos son creados/producidos con video y audio de alta calidad para ofrecerte la mejor experiencia de aprendizaje.</p>

<p><strong>Estar&aacute;s:</strong></p>

<ul>
	<li>
	<p>Viendo claramente</p>
	</li>
	<li>
	<p>Escuchando claramente</p>
	</li>
	<li>
	<p>Movi&eacute;ndote a trav&eacute;s del curso sin distracciones</p>
	</li>
</ul>

<p><strong>Tambi&eacute;n recibir&aacute;s:</strong></p>

<ul>
	<li>
	<p>Acceso de por vida al curso</p>
	</li>
	<li>
	<p>Soporte r&aacute;pido y agradable en la secci&oacute;n de preguntas y respuestas</p>
	</li>
	<li>
	<p>Certificado de finalizaci&oacute;n de Udemy listo para ser descargado</p>
	</li>
</ul>

<p><br />
&iexcl;Entra ahora!</p>

<p>Ofrecemos apoyo total, respondiendo a cualquier pregunta del curso.</p>

<p>&iexcl;Nos vemos en el curso!</p>

<h4>Requirements</h4>

<ul>
	<li>No necesitas conocimientos previos de React y React-Native</li>
	<li>Los fundamentos de JavaScript + HTML + CSS que se explican en el curso de HTML5 son absolutamente necesarios, pero no es necesario que seas expertos</li>
	<li>El conocimiento b&aacute;sico de ES6 ser&aacute; un punto a favor pero no es indispensable.</li>
	<li>Deseos de aprender React-Native</li>
	<li>Ganas de querer realizar apps para iOS y Android h&iacute;bridas para programar una vez y desplegar en ambos sistemas operativos m&oacute;viles</li>
	<li>Ordenador con acceso a Internet</li>
	<li>Nada m&aacute;s. S&oacute;lo t&uacute;, tu ordenador y tus ganas de empezar hoy mismo este curso.</li>
	<li>Acceso de por vida. Disfrutaras de actualizaciones del curso, nuevo contenido, en cualquier momento, en cualquier lugar, en cualquier dispositivo.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Establecer el entorno de trabajo virtual</li>
	<li>Instalar las dependencias de React-Native para Mac y Windows</li>
	<li>Ejecutar el emulador de Android y IOS</li>
	<li>Sintaxis y expresiones JSX</li>
	<li>Sintaxis ES6</li>
	<li>Ver el contenido del emulador</li>
	<li>Estilizar las componentes con React-Native y reglas de Flexbox</li>
	<li>Enviar solicitudes HTTP a una API remota</li>
	<li>State y sistemas de Props</li>
	<li>Reutilizaci&oacute;n de componentes</li>
	<li>Abrir otra aplicaci&oacute;n en el tel&eacute;fono m&oacute;vil desde la aplicaci&oacute;n creada en React-Native</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Programadores que deseen aprender React y React-Native.</li>
	<li>Alguien que tiene conocimientos b&aacute;sicos de HTML, CSS y JavaScript y quiere aprender a crear aplicaciones complejas.</li>
	<li>Cualquiera que quiera crear aplicaciones m&oacute;viles tanto para Android como para IOS.</li>
	<li>Las personas que est&aacute;n dispuestas a hacer una carrera en el mundo de las aplicaciones.</li>
</ul>
', 6, 1, N'react-native-aprende-react-native-con-ejercicios-prácticos', 1, 1, 1, 0, 0, N'Spanish', CAST(N'2020-05-22 01:37:00.717' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:37:00.717' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (66, N'React Native Router: Build Mobile Apps With React and Expo', N'Learn React, React Native and React Router to build native IOS and Android apps with Expo project in this React course', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to <strong>React Native Router: Build Mobile Apps With React and Expo</strong> course.</p>

<p>React-Native is a library developed by the React team and it is widely used to create mobile applications for both Android and IOS. It combines the native developers which we need to create mobile apps with React which is one of the best JavaScript libraries to create a user interface.</p>

<p>In this React course, we are going to tell you what dependencies you need to install and how in detail, to be able to create mobile apps on both MAC and Windows. We are going to use free tools and platforms so you don&#39;t have to buy any tool or app. You are going to learn how to run an Android and IOS simulator on your MAC or Windows computer. Besides with <strong>Expo app</strong>, you will be able to run your apps on your own mobile device as well.</p>

<p>We are going to learn the basics of <strong>React and React Navigation.&nbsp; JSX, &#39;props system&#39;, and &#39;state system</strong>&#39; are also going to be crystal clear for you at the end of the course.</p>

<p>We will create nice looking reusable components. You are going to be able to use these reusable components in your own future projects. You are going to go to different screens from the app with react-navigation.</p>

<p>We tried to tell all the complex topics in detail and in a simple way in this course. We used some diagrams to tell some important topics and created a nice-looking mobile application. We showed two<strong> different ways to create a mobile app</strong>, react native-cli and expo-cli.</p>

<p><strong>At the end of the course you will learn;</strong></p>

<ul>
	<li>
	<p>Basics of React, React-Native, React-Navigation libraries,</p>
	</li>
	<li>
	<p>How to send an HTTP request from a mobile application,</p>
	</li>
	<li>
	<p>How to use the flex-box system,</p>
	</li>
	<li>
	<p>How to create reusable components,</p>
	</li>
	<li>
	<p>To reach another app on the device from our app,</p>
	</li>
	<li>
	<p>How to see different screens on the app,</p>
	</li>
	<li>
	<p>How to transfer data between different screens and</p>
	</li>
	<li>
	<p>Creating your own mobile app both with react-native-cli and expo-cli is going to be clear for you.</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn React Native</p>

<p>This course starts with&nbsp;very basics. First, you will learn some terminology. Then the show will start and you will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the React Native and React Native Router and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now <strong>React Native Router: Build Mobile Apps With React and Expo </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior React and React-Native knowledge needed</li>
	<li>JavaScript + HTML + CSS fundamentals are absolutely required but you don&#39;t need to be an expert</li>
	<li>Basic ES6 knowledge would be beneficial but not required</li>
	<li>Desire to learn React Native</li>
	<li>Computer with access to the internet</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Learn React Native Router</li>
	<li>Set up our virtual environment to be able to practice</li>
	<li>Install React-Native dependencies for both MAC and Windows</li>
	<li>Run Android and IOS simulator on computer</li>
	<li>Expo installation</li>
	<li>Run Expo App on Mobile Device</li>
	<li>JSX syntax and expressions</li>
	<li>ES6 syntax</li>
	<li>See the content on the simulator</li>
	<li>Styling with React-Native and flex-box rules</li>
	<li>Send an HTTP request to a remote API</li>
	<li>State and Props systems</li>
	<li>Reusable components</li>
	<li>Reach another app on the phone from the React-Native app</li>
	<li>React Navigation Library</li>
	<li>Route Between Different Screens</li>
	<li>Data Transfer Between Different Screens with React Navigation</li>
	<li>No prior React and React-Native knowledge required</li>
	<li>To enroll React Native Router course JavaScript + HTML + CSS fundamentals are absolutely required but you don&#39;t need to be an expert</li>
	<li>Basics of React, React-Native, React-Navigation libraries</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Programmers who want to learn React, React-Native and React-Navigation</li>
	<li>Someone who has basic HTML, CSS and JavaScript knowledge and wants to learn how to create complex applications</li>
	<li>Anyone who wants to create mobile applications for both Android and IOS</li>
	<li>Anyone who wants to create mobile applications with both react-native-cli and expo-cli</li>
	<li>People who are willing to make a career in the application world</li>
</ul>
', 6, 6, N'react-native-router-build-mobile-apps-with-react-and-expo', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:37:47.497' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:37:47.497' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (67, N'React JS: Aprende React JS desde cero con ejemplos prácticos', N'La mejor manera de aprender React JS. Aprende desde cero, sumérgete dentro de React JS y conviértete en un desarrollador', N'<h4>Course Details</h4>

<p>Muy buenas y bienvenidos al curso <strong>React JS: Aprende React JS desde cero con ejemplos pr&aacute;cticos.</strong></p>

<p>React es una de las mejores opciones para construir aplicaciones web modernas. Si eres nuevo en React o tal vez has estado batallando para aprender y entender verdaderamente c&oacute;mo funciona este mundo, entonces este curso es la mejor manera de aprender React JS.</p>

<p>En este curso, te llevaremos a trav&eacute;s de todo lo que necesitas saber para dominar el desarrollo web usando ReactJS mediante el suministro de un poderoso conocimiento a trav&eacute;s de una mezcla de diagramas explicados y la creaci&oacute;n de una aplicaci&oacute;n completa.</p>

<p>&iexcl;No se necesita ning&uacute;n conocimiento previo!</p>

<p>No es necesario tener conocimientos previos sobre React. Este curso te llevar&aacute; desde un nivel de principiante a uno m&aacute;s avanzado con ejemplos pr&aacute;cticos.</p>

<p>Te sentir&aacute;s seguro al usar React JS, y si alguna vez te quedas atascado, estaremos ah&iacute; para ayudarte.</p>

<p>&iexcl;Aprende haciendo!</p>

<p>As&iacute; que hemos hecho este curso tan simple como sea posible con el fin de llevarte paso a paso para que puedas sentirte con confianza y obtener una comprensi&oacute;n realmente buena de c&oacute;mo utilizar ReactJS. En este curso, te ense&ntilde;aremos React creando varios proyectos.</p>

<p><strong>Aqu&iacute; est&aacute; la lista de lo que aprender&aacute;s al final del curso</strong>:</p>

<p>Empezaremos con la instalaci&oacute;n local y la base de React. Despu&eacute;s de eso, crearemos 5 proyectos.</p>

<ul>
	<li>
	<p>Proyecto 1 - Aprender a crear una aplicaci&oacute;n de React y JSX con <em>&quot;first-app&quot;</em>.</p>
	</li>
	<li>
	<p>Proyecto 2 - Aprender el sistema de props de React con la aplicaci&oacute;n <em>&quot;blog-posts&quot;</em>.</p>
	</li>
	<li>
	<p>Proyecto 3 - Aprender las componentes de React, estados, m&eacute;todos de ciclo de vida, operaciones de sincronizaci&oacute;n y mucho m&aacute;s con la aplicaci&oacute;n <em>&quot;Hemisphere&quot;</em>.</p>
	</li>
	<li>
	<p>Proyecto 4 - Manejar los controladores de eventos, obtener datos de una API externa y mostrar la lista de registros con la aplicaci&oacute;n <em>&quot;image-list&quot;</em>.</p>
	</li>
	<li>
	<p>Proyecto 5 - C&oacute;mo utilizar&nbsp; React Router y usar React Portals para extraer las componentes hijo de la jerarqu&iacute;a DOM con la aplicaci&oacute;n &quot;react-router&quot;.</p>
	</li>
</ul>

<p><strong>Al finalizar el curso:</strong></p>

<p>Al finalizar el curso, podr&aacute;s construir incre&iacute;bles aplicaciones web de una sola p&aacute;gina con React.</p>

<p><strong>Contenido actualizado:</strong></p>

<p>No es un secreto c&oacute;mo la tecnolog&iacute;a avanza a un paso acelerado. Cada d&iacute;a se lanzan nuevas herramientas, y es crucial estar al tanto de los &uacute;ltimos conocimientos para ser un mejor desarrollador de React.</p>

<p><strong>Calidad de producci&oacute;n de video y audio:</strong></p>

<p>Todo nuestro contenido es creado/producido con video y audio de alta calidad para ofrecerte la mejor experiencia de aprendizaje.</p>

<p><strong>Estar&aacute;s:</strong></p>

<ul>
	<li>
	<p>Viendo claramente</p>
	</li>
	<li>
	<p>Escuchando claramente</p>
	</li>
	<li>
	<p>Movi&eacute;ndote a trav&eacute;s del curso sin distracciones.</p>
	</li>
</ul>

<p><strong>Tambi&eacute;n recibir&aacute;s:</strong></p>

<ul>
	<li>
	<p>Acceso de por vida al curso</p>
	</li>
	<li>
	<p>Soporte en la secci&oacute;n de preguntas y respuestas y en la comunidad de Discord</p>
	</li>
	<li>
	<p>Certificado de finalizaci&oacute;n de Udemy listo para ser descargado</p>
	</li>
	<li>
	<p>Acceso al c&oacute;digo fuente desde el minuto cero en Github</p>
	</li>
</ul>

<p>&iquest;A qu&eacute; esperas para apuntarte?</p>

<p>&iexcl;Nos vemos en el curso!</p>

<h4>Requirements</h4>

<ul>
	<li>No requieres conocimientos previos de React, empezamos desde cero.</li>
	<li>Un ordenador con sistema operativo Windows, Mac o Linux.</li>
	<li>Conocimientos b&aacute;sicos de JavaScript + HTML + CSS son absolutamente necesarios pero no necesitas ser un experto.</li>
	<li>Conocimientos de Es6 te ser&aacute;n &uacute;tiles pero no son necesarios.</li>
	<li>Ganas de aprender React.</li>
	<li>Nada m&aacute;s. Solamente t&uacute;, tu ordenador y tus ganas de empezar hoy.</li>
	<li>Es recomendable haber cursado el curso de HTML, CSS y Javascript de Juan Gabriel Gomila para tener una buena base inicial</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Aprende React JS desde cero.</li>
	<li>Este curso es la mejor manera de Aprender React JS.</li>
	<li>Sumergete en React JS.</li>
	<li>Conviertete en un desarrollador de React.</li>
	<li>Aprende como construir aplicaciones de una sola p&aacute;gina en React JS.</li>
	<li>Aprende los componentes, props, estados y m&eacute;todos del ciclo de vida de los componentes en React JS.</li>
	<li>Crea componentes reusables con React.</li>
	<li>Aprende el JavaScript moderno, adaptado al est&aacute;ndar ES6.</li>
	<li>Aprende a conectarte a una API externa a trav&eacute;s de llamadas AJAX con la librer&iacute;a Axios</li>
	<li>Entrada de datos, formularios y event handling en React.</li>
	<li>Routing con React Router.</li>
	<li>El uso de los React Portals para renderizar componentes hijo fuera de la jerarqu&iacute;a del DOM.</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Principiantes que quieran ser desarrolladores de React.</li>
	<li>Cualquiera que quiera convertirse en desarrollador de React.</li>
	<li>Cualquiera que quiera construir incre&iacute;bles aplicaciones de una sola p&aacute;gina en React.</li>
	<li>Cualquiera que quiera aprender React JS.</li>
	<li>Este curso es perfecto para cualquiera que tenga alg&uacute;n conocimiento de HTML, CSS y JavaScript. No estamos diciendo que debas ser un experto en JavaScript pero conceptos sencillos como bucles y funciones te ser&aacute;n muy &uacute;tiles. Si sabes ES6, ser&aacute; mejor, si no, no te preocupes que ES6 se abordar&aacute; en este curso.</li>
	<li>Estudiantes que quieran aprender c&oacute;mo construir r&aacute;pidamente aplicaciones web de una sola p&aacute;gina.</li>
	<li>Cualquiera que est&eacute; interesado en aprender una tecnolog&iacute;a extremadamente popular utilizada por las compa&ntilde;&iacute;as de tecnolog&iacute;a l&iacute;deres como Facebook, Instagram y Netflix.</li>
	<li>Estudiantes que quieran llevar sus habilidades como desarrolladores al siguiente nivel y aprender una tecnolog&iacute;a de futuro muy buscada en los perfiles de LinkedIn.</li>
	<li>Tambi&eacute;n, si est&aacute;s buscando avanzar en el desarrollo de aplicaciones en React-Native, te ir&aacute; muy bien empezar con React JS. Una vez que est&eacute;s familiarizado con conceptos como JSX, props y estados, estos conceptos tambi&eacute;n son aplicables a React Native, por lo que te ser&aacute; todav&iacute;a m&aacute;s f&aacute;cil aprender.</li>
	<li>Cualquiera que se encuentre planificando cambiar de empleo y quiera convertirse en desarrollador React.</li>
	<li>Desarrolladores que quieran aprender a conectarse a una API externa y procesar datos de las mismas utilizando llamadas AJAX</li>
</ul>
', 5, 0, N'react-js-aprende-react-js-desde-cero-con-ejemplos-prácticos', 1, 1, 1, 0, 0, N'Spanish', CAST(N'2020-05-22 01:38:35.953' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:38:35.953' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (68, N'MS SQL Server: Learn MS SQL Server from Scratch', N'This SQL MS SQL course will teach you how to create your own database with SQL query and manage your database with SQL', N'<h4>Course Details</h4>

<p>Hello Everyone!</p>

<p>Welcome to <strong>MS SQL Server: Learn MS SQL Server from Scratch</strong> course</p>

<p>SQL is the standard language for Relation Database System. All relational database management systems like <strong>SQL Server, MySQL, MS Access, Oracle, Sybase</strong>, and others use SQL as the standard database language. SQL is used to communicate with a database.</p>

<p>In this SQL - MS SQL course, you will make an excellent introduction to SQL with MS Management Studio which allows to manage database and retrieve data from the database with a graphical interface.</p>

<p>We are going to start to learn from the basics and step by step we will be building our knowledge on SQL MS SQL.</p>

<p>Everyone, who is at the beginner level, can take this course. And this course will get you further. This course is a hands-on course. First, you will learn some theory and then you will have a chance to apply what you learn.</p>

<p><strong>In this SQL MS SQL course you will learn;</strong></p>

<ul>
	<li>
	<p>How to install and setup these requirements.</p>
	</li>
	<li>
	<p>You will learn the basics of SQL such as data, database, DBMS or SSMS, SQL, tables, and so on.</p>
	</li>
	<li>
	<p>Database normalization,</p>
	</li>
	<li>
	<p>Manipulating data,</p>
	</li>
	<li>
	<p>Retrieving data from the database with different scenarios,</p>
	</li>
	<li>
	<p>You will also learn SQL transactions and transaction commands,</p>
	</li>
	<li>
	<p>Schema and schema objects and</p>
	</li>
	<li>
	<p>User privileges, permission commands, and roles.</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>At the end of this course you will be able to;</strong></p>

<ul>
	<li>
	<p>create your own database for your projects with SQL query or with SSMS graphically and tables</p>
	</li>
	<li>
	<p>manipulate data,</p>
	</li>
	<li>
	<p>retrieve data from the database with a query like; select, where, alias, restrict and data sorting, grouping data, having clause, case function, convert and cast functions, set operators, multiple tables, subqueries, DateTime functions and so on</p>
	</li>
	<li>
	<p>In conclusion, you will create and manage your own database.</p>
	</li>
</ul>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong>&nbsp;</p>

<p>It doesn&#39;t need any prior knowledge to learn MS SQL</p>

<p>This course starts with&nbsp;very basics. First, you will learn some terminology. Then the show will start and you will learn everything with <strong>hands-on practices.&nbsp; </strong>I&#39;ll also teach you<strong>&nbsp;the best practices&nbsp;and shortcuts</strong>.</p>

<p><strong>Step-by-Step Way, Simple and Easy With Exercises </strong></p>

<p>By the end of the course, you&rsquo;ll have a firm understanding of the React Native and React Native Router and hungry to learn more.</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<ul>
	<li>
	<p>Lifetime Access to The Course</p>
	</li>
	<li>
	<p>Fast &amp; Friendly Support in the Q&amp;A section</p>
	</li>
	<li>
	<p>Udemy Certificate of Completion Ready for Download</p>
	</li>
</ul>

<p>Dive in now <strong>MS SQL Server: Learn MS SQL Server from Scratch </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No Pre-Requisites - I will explain everything</li>
	<li>No Prior Database OR SQL experience is required.</li>
	<li>Computer with access to the internet</li>
	<li>LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>No Prior Database OR SQL experience is required</li>
	<li>Start learning from scratch and learn about every MS SQL Server topic with examples</li>
	<li>Learn SQL basics with SSMS (SQL Server Management Studio)</li>
	<li>U?se SQL commands to filter, sort and manipulate strings, dates numerical data from different sources</li>
	<li>Retrieving data from database with different scenarios</li>
	<li>You will also learn SQL transactions and transaction commands</li>
	<li>How to create your own function</li>
	<li>User privileges, permission commands and roles</li>
	<li>Learn how to create, alter and drop tables</li>
	<li>Learn how to create, alter and drop database</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to start learning SQL Server Basics</li>
	<li>Anyone who wants to better understand how databases work</li>
	<li>Anyone who plans a career in Microsoft SQL Server database</li>
</ul>
', 3, 8, N'ms-sql-server-learn-ms-sql-server-from-scratch', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:39:20.990' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:39:20.990' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (69, N'HTML CSS: Code and Design Websites With HTML and CSS', N'Learn HTML and CSS to build responsive real world websites with HTML5 and CSS3 and become a modern web designer', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to the <strong>HTML CSS: Code and Design Websites With HTML and CSS</strong>&nbsp; course.</p>

<p>This course will be your gateway to learn web design with HTML5, and CSS3 with a step-by-step approach.&nbsp; We can assure you that only this course will enough for you to learn HTML and CSS from scratch to intermediate.</p>

<p>HTML stands for HyperText Markup Language, which is the biggest markup language used to display web pages on the Internet. In other words, web pages are composed of HTML, which is used to display text, images, or other resources through a web browser.</p>

<p>HTML is the basic building block of the web and actually isn&rsquo;t a technical programming language. It is responsible for the structure of the website.</p>

<p>In this course, we will start with HTML, which is the basis of web development and then we will continue to learn CSS.</p>

<p>This course will take you<strong> from a beginner to a more experienced level. </strong>You will learn <strong>HTML5 and CSS3</strong> step by step with <strong>hands-on</strong> examples.</p>

<p><strong>In this course you will learn;</strong></p>

<p>To create static HTML sites,</p>

<p>To create a beautiful, responsive landing page for anyone,</p>

<p>You will learn to use basic tags which are used commonly,</p>

<p>You will be able to prepare lists in different formats,</p>

<p>The difference in usage between block-level and inline elements in HTML,</p>

<p>The uses of HTML table, and by learning this you will be able to create different designs of your own,</p>

<p>To able to create commonly used user login and registration pages by learning the form structure,</p>

<p>And improve your knowledge step by step by learning the basics of CSS</p>

<p>To place pages in the easiest way by talking about all layout models in CSS.</p>

<p>To prepare web pages with Grid CSS and Flexbox features.</p>

<p>&nbsp;</p>

<p><strong>No prior knowledge is needed!</strong></p>

<p>You will learn <strong>HTML5 and CSS3</strong> step by step with <strong>hands-on</strong> examples from scratch</p>

<p>&nbsp;</p>

<p><strong>Why would you want to take this course?</strong>&nbsp;</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy`s seasoned instructors&#39; expertise.&nbsp;</p>

<p><strong>Video and Audio Production Quality</strong></p>

<p>All our videos are created/produced as <strong>high-quality video and audio</strong> to provide you the best learning experience.</p>

<p>You will be,</p>

<ul>
	<li>
	<p>Seeing clearly</p>
	</li>
	<li>
	<p>Hearing clearly</p>
	</li>
	<li>
	<p>Moving through the course without distractions</p>

	<p>&nbsp;</p>
	</li>
</ul>

<p><strong>You&#39;ll also get:</strong></p>

<ul>
	<li>
	<p>Lifetime Access to The Course</p>
	</li>
	<li>
	<p>Fast &amp; Friendly Support in the Q&amp;A section</p>
	</li>
	<li>
	<p>Udemy Certificate of Completion Ready for Download</p>
	</li>
</ul>

<p>Dive in now <strong>HTML CSS: Code and Design Websites With HTML adn CSS </strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior HTML or CSS knowledge needed</li>
	<li>This course will take you from scratch to he advanced level</li>
	<li>Desire to learn HTML and CSS</li>
	<li>Computer with access to the internet</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>HTML &amp; CSS</li>
	<li>You will have a basic understanding of HTML</li>
	<li>Learn to create static HTML sites</li>
	<li>We will improve our knowledge step by step by learning the basics of CSS</li>
	<li>We will learn to place pages in the easiest way by talking about all layout models in CSS</li>
	<li>Create a beautiful, responsive landing page for any one</li>
	<li>It will be much easier to prepare web pages with Grid CSS and Flexbox features</li>
	<li>You will learn to use basic tags which are used commonly</li>
	<li>You will be able to prepare lists in different formats</li>
	<li>Learn the difference in usage between block level and inline elements in HTML</li>
	<li>By learning the use of HTML table, you will be able to create different designs of your own</li>
	<li>You will be able to create commonly used user login and registration pages by learning the form structure.</li>
	<li>In the developing world, we will talk about all the details about web design compatible with different screens.</li>
	<li>As with all of our courses, you will learn by doing too many hands-on examples.</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>If you want to learn HTML 5 and CSS 3 the first step in web development, completely and easily, you are at the right place.</li>
	<li>It&#39;s perfect for complete beginners with zero experience.</li>
	<li>If you want to building your own website, you should enroll</li>
	<li>People who are willing to make a career in the Web Development</li>
</ul>
', 4, 6, N'html-css-code-and-design-websites-with-html-and-css', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:40:01.427' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:40:01.427' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (70, N'Python for Data Science: Learn Data Science From Scratch', N'Data Science with Python. Use NumPy, Pandas, Matplotlib with hands-on projects and learn Python for Data Science with us', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Ready for the <strong>Data Science</strong> career?</p>

<ul>
	<li>
	<p>Are you curious about Data Science and looking to start your self-learning journey into the world of data with Python?</p>
	</li>
	<li>
	<p>Are you an experienced developer looking for a landing in Data Science!</p>
	</li>
</ul>

<p>In both cases, you are at the right place!</p>

<p>Welcome to <strong>Python for Data Science: Learn Data Science From Scratch</strong> course</p>

<p>Python is the most popular programming language for the data science process in recent years and also do not forget that data scientist has been ranked the number one job on several job search sites!&nbsp; With Python skills, you will encounter many businesses that use Python and its libraries for data science. Almost all companies working on machine learning and data science use Python&rsquo;s Pandas library. Thanks to the large libraries provided, The number of companies and enterprises using Python is increasing day by day. The world we are in is experiencing the age of informatics. <strong>Python and its Pandas library will be the right choice for you </strong> to take part in this world and create your own opportunities,</p>

<p>In this course, we will open the door of the <strong>Data Science</strong> world and will move deeper.&nbsp; You will learn the fundamentals of <strong>Python</strong> and its beautiful libraries such as <strong>Numpy, Pandas, and Matplotlib</strong> step by step.</p>

<p>Throughout the course, we will teach you how to <strong>use the Python to analyze data, create beautiful visualization</strong>s, and use powerful machine learning algorithms and we will also do a variety of exercises to reinforce what we have learned in this <strong>Python for Data Science</strong> course.</p>

<p>&nbsp;</p>

<p><strong>In this course you will learn;</strong></p>

<ul>
	<li>
	<p>How to use Anaconda and Jupyter notebook,</p>
	</li>
	<li>
	<p>Fundamentals of Python such as</p>
	</li>
	<li>
	<p>Datatypes in Python,</p>
	</li>
	<li>
	<p>Lots of datatype operators, methods and how to use them,</p>
	</li>
	<li>
	<p>Conditional concept, if statements</p>
	</li>
	<li>
	<p>The logic of Loops and control statements</p>
	</li>
	<li>
	<p>Functions and how to use them</p>
	</li>
	<li>
	<p>How to use modules and create your own modules</p>
	</li>
	<li>
	<p>Data science and Data literacy concepts</p>
	</li>
	<li>
	<p>Fundamentals of Numpy for Data manipulation such as</p>
	</li>
	<li>
	<p>Numpy arrays and their features</p>
	</li>
	<li>
	<p>How to do indexing and slicing on Arrays</p>
	</li>
	<li>
	<p>Lots of stuff about Pandas for data manipulation such as</p>
	</li>
	<li>
	<p>Pandas series and their features</p>
	</li>
	<li>
	<p>Dataframes and their features</p>
	</li>
	<li>
	<p>Hierarchical indexing concept and theory</p>
	</li>
	<li>
	<p>Groupby operations</p>
	</li>
	<li>
	<p>The logic of Data Munging</p>
	</li>
	<li>
	<p>How to deal effectively with missing data effectively</p>
	</li>
	<li>
	<p>Combining the Data Frames</p>
	</li>
	<li>
	<p>How to work with Dataset files</p>
	</li>
	<li>
	<p>And also you will learn fundamentals thing about Matplotlib library such as</p>
	</li>
	<li>
	<p><strong>Pyplot, Pylab and Matplotlb concepts</strong></p>
	</li>
	<li>
	<p>What Figure, Subplot and Axes are</p>
	</li>
	<li>
	<p>How to do figure and plot customization</p>
	</li>
</ul>

<p>And we will do many exercises.&nbsp; Finally, we will also have <strong>4 different final projects</strong> covering all of these subjects.</p>

<p><strong>Why would you want to take this course?</strong></p>

<p>We have prepared this course in the simplest way for beginners and have prepared many different exercises to help them understand better.</p>

<p><strong>No prior knowledge is needed!</strong></p>

<p>In this course, you need no previous knowledge about Python, Pandas or Data Science.</p>

<p><strong>This course will take you from a beginner to a more experienced level.</strong></p>

<p>If you are new to data science or have no idea about what data science does no problem, you will learn anything you need to start data science.</p>

<p>If you are a software developer or familiar with other programming languages and you want to start a new world, you are also in the right place. You will learn step by step with hands-on examples.</p>

<p>&nbsp;</p>

<p><strong>You&#39;ll also get:</strong></p>

<ul>
	<li>
	<p>Lifetime Access to The Course</p>
	</li>
	<li>
	<p>Fast &amp; Friendly Support in the Q&amp;A section</p>
	</li>
	<li>
	<p>Udemy Certificate of Completion Ready for Download</p>
	</li>
</ul>

<p>Dive in now Python for Data Science: Learn Data Science From Scratch course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>No prior knowledge is required</li>
	<li>Free software and tools used during the course</li>
	<li>Basic computer knowledge</li>
	<li>Desire to learn data science</li>
	<li>Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>Fundamentals of Pandas Library</li>
	<li>Installation of Anaconda and how to use</li>
	<li>Using Jupyter notebook</li>
	<li>Learn Fundamentals of Python for effectively using Data Science</li>
	<li>Numpy arrays</li>
	<li>Series and Features</li>
	<li>Combining Dataframes, Data Munging and how to deal with Missing Data</li>
	<li>How to use Matplotlib library and start to journey in Data Visualization</li>
	<li>Also, why you should learn Python and Pandas Library</li>
	<li>Learn Data Science with Python</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>Anyone who wants to learn data science,</li>
	<li>Anyone who plans a career in data scientist,</li>
	<li>Software developer whom want to learn data science,</li>
</ul>
', 5, 14, N'python-for-data-science-learn-data-science-from-scratch', 1, 1, 1, 0, 0, N'English', CAST(N'2020-05-22 01:40:41.500' AS DateTime), 1, 0, NULL, 1, CAST(N'2020-05-22 01:40:41.500' AS DateTime))
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[PostImage] ON 

INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 1, N'0f756c1f-8388-4c5d-980e-8d4f150b50af2363036_0e62_2.jpg', CAST(N'2020-05-14 17:15:22.403' AS DateTime), 0, NULL, 1, CAST(N'2020-05-14 17:15:22.403' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 2, N'd0b10e40-aac1-4902-b743-57ebe7e625b23_reactnavieandroid&ios.jpg', CAST(N'2020-05-14 17:17:25.627' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.170' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.170' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, 2, N'85dc8662-b84b-4bc3-8918-ff009cd756a62554879_46c0_3.jpg', CAST(N'2020-05-14 17:17:25.627' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.170' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.170' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 3, N'2d00b9b6-20d9-4cc4-b85b-49dcd80af766u1.jpg', CAST(N'2020-05-14 17:18:37.950' AS DateTime), 0, NULL, 1, CAST(N'2020-05-14 17:18:37.950' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 3, N'a034121b-c847-4e13-88e2-e8ee54f63cbfu2.jpg', CAST(N'2020-05-14 17:18:37.950' AS DateTime), 0, NULL, 1, CAST(N'2020-05-14 17:18:37.950' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (11, 3, N'3a5a6396-724a-4740-99d0-e35beb5f56d6Ads1.png', CAST(N'2020-05-17 00:30:53.720' AS DateTime), 1, CAST(N'2020-05-18 12:34:07.827' AS DateTime), 1, CAST(N'2020-05-18 12:34:07.827' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (12, 3, N'c0b4bc47-d293-4509-bf48-a6f9cafb3ae9Ads2.png', CAST(N'2020-05-17 00:30:53.720' AS DateTime), 1, CAST(N'2020-05-18 12:34:23.893' AS DateTime), 1, CAST(N'2020-05-18 12:34:23.893' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (13, 4, N'239d4079-d4f2-4c0d-80a3-a2e3a3ff02501.png', CAST(N'2020-05-21 11:39:59.767' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.003' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.003' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, 5, N'95fdbdc7-eb4d-4bd8-907a-d097557f169f3.png', CAST(N'2020-05-21 11:40:24.197' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.013' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.013' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, 6, N'8331d78e-de88-4258-9a88-c001c5f2df021.jpg', CAST(N'2020-05-22 00:12:48.967' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:12:48.967' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (16, 6, N'a6d09c6a-d703-4a63-97cb-62ddb862ef151-1.jpg', CAST(N'2020-05-22 00:12:48.967' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:12:48.967' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (17, 7, N'bb450e02-38c1-4f7c-a0fa-4f32e75bb8062.jpeg', CAST(N'2020-05-22 00:13:51.967' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:13:51.967' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (18, 7, N'58794c6d-bbf3-4e79-b462-29d972ac08972.jpg', CAST(N'2020-05-22 00:13:51.967' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:13:51.967' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (19, 8, N'277c4cc0-cb9c-49e4-b025-da0ac37bf3703.jpg', CAST(N'2020-05-22 00:15:13.773' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:15:13.773' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (20, 8, N'60227057-6d65-45a2-8c17-5577b16aead23-2.jpg', CAST(N'2020-05-22 00:15:13.773' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:15:13.773' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (21, 9, N'848a27ee-2e92-48d0-b09e-0cd349d61e454.jpg', CAST(N'2020-05-22 00:16:04.203' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:16:04.203' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (22, 9, N'2a091d20-b7c3-4969-a922-ff75bcd60f214-2.jpeg', CAST(N'2020-05-22 00:16:04.203' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:16:04.203' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (23, 10, N'f1c17f8c-3e6c-455a-97ae-5d2bc1f2f1895.jpg', CAST(N'2020-05-22 00:17:02.857' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:17:02.857' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (24, 10, N'569f43c1-49b2-4d3a-bfdf-b9fe51c845805-2.jpeg', CAST(N'2020-05-22 00:17:02.857' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:17:02.857' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (25, 11, N'07cf4922-ec2d-4385-95c1-a38f4fc6eee36.jpg', CAST(N'2020-05-22 00:18:11.003' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:18:11.003' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (26, 11, N'eff0fd18-734b-4540-b300-715094d12c5e6-2.jpeg', CAST(N'2020-05-22 00:18:11.003' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:18:11.003' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (27, 12, N'5d107a35-0cb3-4404-9212-b3f96d2529547.jpg', CAST(N'2020-05-22 00:19:02.470' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:02.470' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (28, 12, N'7c02cfb3-6b59-43fa-94b0-b9ad20c5c7f67-2.jpg', CAST(N'2020-05-22 00:19:02.470' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:02.470' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (29, 13, N'f2c9d892-c8e7-4cc4-b922-6f11fe7ce9a68.jpg', CAST(N'2020-05-22 00:19:55.437' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:55.437' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (30, 13, N'76d8a0a9-61b5-444b-b117-bafccfd0cc608-2.jpg', CAST(N'2020-05-22 00:19:55.437' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:55.437' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (31, 14, N'2ef0b891-31c2-4112-8e72-4f402e6986039.jpg', CAST(N'2020-05-22 00:20:40.100' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:20:40.100' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (32, 14, N'86d7b61f-b24e-4312-af6a-b662ad006e539-2.jpg', CAST(N'2020-05-22 00:20:40.100' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:20:40.100' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (33, 15, N'708bb050-7152-4ec6-92bf-3c934cbc5da810.jpg', CAST(N'2020-05-22 00:21:30.547' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:21:30.547' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (34, 16, N'6d8c72ad-d5e0-40e0-8189-93a07f5895d911.jpg', CAST(N'2020-05-22 00:26:43.107' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:26:43.107' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (35, 17, N'00e874d6-24df-4fa3-8b11-886a48c72f1b12.jpg', CAST(N'2020-05-22 00:27:57.267' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:27:57.267' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (36, 18, N'61179d92-a1c2-4a8b-a32d-42d425f6307413.jpg', CAST(N'2020-05-22 00:29:00.317' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:00.317' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (37, 19, N'341f768d-84a0-4189-ba2c-869c04b13b9914.jpg', CAST(N'2020-05-22 00:29:44.850' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:44.850' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (38, 20, N'b3fbc057-d0fb-463a-86af-16b1e451cd3014.jpg', CAST(N'2020-05-22 00:30:46.933' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:30:46.933' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (39, 21, N'def64ce3-7298-4aa0-9c05-93fa6bdb9a7514.jpg', CAST(N'2020-05-22 00:32:07.917' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:32:07.917' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (40, 22, N'74ac56cd-2fdf-4928-8e75-23abbd44e75115.jpg', CAST(N'2020-05-22 00:40:51.320' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:40:51.320' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (41, 22, N'5402bd73-9742-4a04-a9d1-89925b2921d015-22.jpg', CAST(N'2020-05-22 00:40:51.320' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:40:51.320' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (42, 23, N'ffc5771c-1a1f-4495-9eba-85bb359e1a4816.jpg', CAST(N'2020-05-22 00:41:46.027' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:41:46.027' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (43, 24, N'91d983f8-1a9e-4843-99ed-29d41386717317.jpg', CAST(N'2020-05-22 00:42:29.683' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:42:29.683' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (44, 25, N'ff4be1db-3111-4bab-a23e-49ec8101f42e18.jpg', CAST(N'2020-05-22 00:43:12.140' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:43:12.140' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (45, 26, N'cca7ef1e-6f5b-4645-a0db-8a2a966817d719.jpg', CAST(N'2020-05-22 00:44:00.243' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:00.243' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (46, 27, N'edcbbf35-43ff-4131-889f-5d9ce477321a20.jpg', CAST(N'2020-05-22 00:44:46.707' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:46.707' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (47, 28, N'2c126668-ff82-459d-b66b-ec522e174b3521.jpg', CAST(N'2020-05-22 00:45:50.140' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:45:50.140' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (48, 29, N'c80e425c-7fc9-4788-bd6b-fdfdfc21ca5620.jpg', CAST(N'2020-05-22 00:52:46.337' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:52:46.337' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (49, 30, N'2f954391-9018-4f21-ac41-12f46a31113e22.jpg', CAST(N'2020-05-22 00:53:28.107' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:53:28.107' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (50, 31, N'91fbaf59-d1d7-4a84-adfc-1c392db742ae23.jpg', CAST(N'2020-05-22 00:54:10.087' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:54:10.087' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (51, 32, N'199421c3-553f-427f-9381-cc6b990ae1d124.jpg', CAST(N'2020-05-22 00:55:00.523' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:55:00.523' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (52, 33, N'7f4498b5-9241-4d6e-aae0-e4ebd00d5c6425.jpg', CAST(N'2020-05-22 00:55:42.330' AS DateTime), 1, CAST(N'2020-05-22 00:56:20.330' AS DateTime), 1, CAST(N'2020-05-22 00:56:20.330' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (53, 34, N'21c3138e-c87b-44ad-a9e5-a60d499972ea25.jpg', CAST(N'2020-05-22 00:57:50.473' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:57:50.473' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (54, 35, N'f8ee3a1b-2c85-49a1-a797-d535e37335d026.jpg', CAST(N'2020-05-22 00:58:40.363' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.363' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (55, 36, N'640b4ad4-fcbe-4c8d-8bf1-ae50bffc8ca727.jpg', CAST(N'2020-05-22 00:59:26.600' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:59:26.600' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (56, 37, N'ac8eb2f3-522e-41ec-8da3-2d6ff90a3b4e28.jpg', CAST(N'2020-05-22 01:00:29.917' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:00:29.917' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (57, 37, N'cf348be9-688f-4faf-9e6b-677ad9db4ec928-2.jpg', CAST(N'2020-05-22 01:00:29.917' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:00:29.917' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (58, 38, N'37828db0-cfd5-44bc-9570-3dd96c2f2db129.jpg', CAST(N'2020-05-22 01:01:14.983' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:01:14.983' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (59, 39, N'82b4ed7c-628a-45b8-887e-95f361e9c9f430.jpg', CAST(N'2020-05-22 01:01:53.270' AS DateTime), 1, CAST(N'2020-05-22 01:03:57.307' AS DateTime), 1, CAST(N'2020-05-22 01:03:57.307' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (60, 40, N'b206ca1a-4796-4829-8285-614666bedc5530.jpg', CAST(N'2020-05-22 01:05:02.040' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:02.040' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (61, 41, N'461f412c-9261-4714-b16e-566f42c2ac9a31.jpg', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (62, 42, N'1c13259c-e402-4d6b-81e2-5a319792848132.jpg', CAST(N'2020-05-22 01:06:42.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:06:42.390' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (63, 43, N'00444a34-f912-42d4-b965-e3aa9a03bfff33.jpg', CAST(N'2020-05-22 01:14:43.193' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:14:43.193' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (64, 44, N'b24adb37-3938-45ed-a3b4-6d266fcd706034.jpg', CAST(N'2020-05-22 01:15:31.033' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:15:31.033' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (65, 45, N'c7caf02f-db91-444a-a51d-80b20d460dc339.jpg', CAST(N'2020-05-22 01:16:21.660' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:16:21.660' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (66, 46, N'b340a279-7d2a-486d-9361-47bd4a4d7d0a35.jpg', CAST(N'2020-05-22 01:17:17.833' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:17:17.833' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (67, 46, N'228772a2-5e57-4e63-9216-b4d9b7acd7be35-2.jpg', CAST(N'2020-05-22 01:17:17.833' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:17:17.833' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (68, 47, N'397a4fe6-feea-45bf-b3f7-6d9b57b4cbec36.jpg', CAST(N'2020-05-22 01:18:14.530' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:14.530' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (69, 48, N'a1e88a13-ba1f-49c5-b686-22dfd2228bdd37.jpg', CAST(N'2020-05-22 01:18:57.273' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:57.273' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (70, 49, N'fa544ae7-16e1-4629-aa4e-16369e0478e538.jpg', CAST(N'2020-05-22 01:20:20.900' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:20:20.900' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (71, 49, N'1fe384d3-037c-4ff4-98e4-5516fd8a8a5938-2.jpg', CAST(N'2020-05-22 01:20:20.900' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:20:20.900' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (72, 50, N'5ba9f7b9-29f5-411e-990b-c92b2f96520b39.jpg', CAST(N'2020-05-22 01:21:06.240' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:06.240' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (73, 51, N'f1b17a5b-7d50-4ea5-a075-2ca46feee3cb40.jpg', CAST(N'2020-05-22 01:21:58.990' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:58.990' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (74, 52, N'f706cdfb-569f-44ed-a2d4-d3137fb8b5b441.jpg', CAST(N'2020-05-22 01:23:29.007' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:23:29.007' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (75, 53, N'd22c9ae6-2b11-408d-8731-df5fb63ebabd42.jpg', CAST(N'2020-05-22 01:24:46.713' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:24:46.713' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (76, 54, N'87343be9-dcdb-439a-b222-db16982c543143.jpg', CAST(N'2020-05-22 01:25:33.200' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:25:33.200' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (77, 55, N'd709b662-581f-4da4-a09e-088eb72db39344.jpg', CAST(N'2020-05-22 01:26:31.417' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:26:31.417' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (78, 56, N'945f64dd-d6a3-4413-89a2-c047d5200afd45.jpg', CAST(N'2020-05-22 01:27:09.130' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:09.130' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (79, 57, N'6a32278f-b62f-4d5a-91c8-ee782ac6f47e46.jpg', CAST(N'2020-05-22 01:27:53.347' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:53.347' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (80, 58, N'fc9dc710-531b-4155-9a33-a885758d5ad247.jpg', CAST(N'2020-05-22 01:28:39.370' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:28:39.370' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (81, 58, N'320e3961-e3b1-44d6-83a8-0ac2c7a45e3247-2.jpg', CAST(N'2020-05-22 01:28:39.370' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:28:39.370' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (82, 59, N'18fa687f-bceb-4ca2-aa78-b65cb31dd91648.jpg', CAST(N'2020-05-22 01:32:17.933' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:32:17.933' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (83, 60, N'c4d20e85-26f8-49e2-ac42-05b0edb5aeb649.jpg', CAST(N'2020-05-22 01:33:09.233' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:33:09.233' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (84, 61, N'52aad720-0911-4168-ab4c-b2169a92df9e50.jpg', CAST(N'2020-05-22 01:34:04.567' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:04.567' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (85, 62, N'df59dd3a-85fb-49be-82b9-e9e1555bb87e51.jpg', CAST(N'2020-05-22 01:34:44.980' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:44.980' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (86, 63, N'7ef7a7d5-077b-4b30-94c0-5e3ae161668052.jpg', CAST(N'2020-05-22 01:35:35.613' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:35:35.613' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (87, 64, N'03d451fd-d159-4eb9-a591-fa8d33d63ab153.jpg', CAST(N'2020-05-22 01:36:19.643' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:36:19.643' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (88, 64, N'84175c95-d54c-4371-9f4e-9fa62ab28f8553-2.jpg', CAST(N'2020-05-22 01:36:19.643' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:36:19.643' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (89, 65, N'd0030fbc-762f-4637-80f4-58a774093b7054.jpg', CAST(N'2020-05-22 01:37:00.747' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.747' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (90, 66, N'cdecdec1-c09c-4373-ac4e-aee1036aedd955.jpg', CAST(N'2020-05-22 01:37:47.517' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.517' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (91, 66, N'38ec0c45-2924-4f1c-ab61-c94a66a742f855-2.jpg', CAST(N'2020-05-22 01:37:47.517' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.517' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (92, 67, N'25388b3c-b29c-4399-abb8-ffdfe41cbb5856.jpg', CAST(N'2020-05-22 01:38:35.977' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:38:35.977' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (93, 68, N'52e144f5-d6c8-4ba0-9a9e-5b1f8fbcdb4757.jpg', CAST(N'2020-05-22 01:39:21.010' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:39:21.010' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (94, 69, N'20aeabce-cd16-4f20-9efd-f84a22e9699658.jpg', CAST(N'2020-05-22 01:40:01.453' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:01.453' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (95, 70, N'2b2a63b1-a027-4290-9002-195be51a633859.jpg', CAST(N'2020-05-22 01:40:41.533' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:41.533' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (96, 63, N'2ed51c6e-5c7e-485a-9edd-9dcb8c9841ed53.jpg', CAST(N'2020-06-01 19:50:52.570' AS DateTime), 0, NULL, 1, CAST(N'2020-06-01 19:50:52.570' AS DateTime))
SET IDENTITY_INSERT [dbo].[PostImage] OFF
SET IDENTITY_INSERT [dbo].[PostTag] ON 

INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 1, N'Java', CAST(N'2020-05-14 17:15:22.420' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 1, N'Programming', CAST(N'2020-05-14 17:15:22.420' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, 1, N'Core', CAST(N'2020-05-14 17:15:22.420' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 1, N'Core Java', CAST(N'2020-05-14 17:15:22.420' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime), 1, CAST(N'2020-05-16 18:51:40.937' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 2, N'react', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, 2, N'native', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, 2, N'mobile', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, 2, N'programming', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, 2, N'IOS', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (10, 2, N'Android', CAST(N'2020-05-14 17:17:25.637' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (11, 3, N'Unity', CAST(N'2020-05-14 17:18:37.963' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (12, 3, N' Scratch', CAST(N'2020-05-14 17:18:37.963' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (13, 3, N' Game', CAST(N'2020-05-14 17:18:37.963' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime), 1, CAST(N'2020-05-15 15:13:01.387' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, 3, N'Unity', CAST(N'2020-05-15 15:13:01.397' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, 3, N' Scratch', CAST(N'2020-05-15 15:13:01.397' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (16, 3, N' Game', CAST(N'2020-05-15 15:13:01.397' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (17, 3, N'Game programming', CAST(N'2020-05-15 15:13:01.397' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (18, 3, N'', CAST(N'2020-05-15 15:13:01.397' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime), 1, CAST(N'2020-05-15 16:20:53.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (19, 3, N'Unity', CAST(N'2020-05-15 16:20:53.993' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (20, 3, N' Scratch', CAST(N'2020-05-15 16:20:53.993' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (21, 3, N' Game', CAST(N'2020-05-15 16:20:53.993' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (22, 3, N'', CAST(N'2020-05-15 16:20:53.993' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime), 1, CAST(N'2020-05-16 12:59:29.260' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (23, 3, N'Unity', CAST(N'2020-05-16 12:59:29.270' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (24, 3, N' Scratch', CAST(N'2020-05-16 12:59:29.270' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (25, 3, N' Game', CAST(N'2020-05-16 12:59:29.270' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (26, 3, N'', CAST(N'2020-05-16 12:59:29.270' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime), 1, CAST(N'2020-05-16 13:04:51.000' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (27, 3, N'Unity', CAST(N'2020-05-16 13:04:51.010' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (28, 3, N' Scratch', CAST(N'2020-05-16 13:04:51.010' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (29, 3, N' Game', CAST(N'2020-05-16 13:04:51.010' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (30, 3, N'Game programming', CAST(N'2020-05-16 13:04:51.010' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime), 1, CAST(N'2020-05-16 18:47:53.367' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (31, 2, N'react', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (32, 2, N'native', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (33, 2, N'mobile', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (34, 2, N'programming', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (35, 2, N'IOS', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (36, 2, N'Android', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (37, 2, N'IOS&Android', CAST(N'2020-05-16 13:05:27.453' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (38, 3, N'Unity', CAST(N'2020-05-16 18:47:53.370' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (39, 3, N' Scratch', CAST(N'2020-05-16 18:47:53.370' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (40, 3, N' Game', CAST(N'2020-05-16 18:47:53.370' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime), 1, CAST(N'2020-05-16 18:50:43.533' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (41, 3, N'Unity', CAST(N'2020-05-16 18:50:43.540' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (42, 3, N' Scratch', CAST(N'2020-05-16 18:50:43.540' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (43, 3, N' Game', CAST(N'2020-05-16 18:50:43.540' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (44, 3, N'Game programming', CAST(N'2020-05-16 18:50:43.540' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime), 1, CAST(N'2020-05-17 00:30:53.740' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (45, 2, N'react', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (46, 2, N'native', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (47, 2, N'mobile', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (48, 2, N'programming', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (49, 2, N'IOS', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (50, 2, N'Android', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (51, 2, N'IOS&Android', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (52, 2, N'', CAST(N'2020-05-16 18:51:19.107' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (53, 1, N'Java', CAST(N'2020-05-16 18:51:40.940' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (54, 1, N'Programming', CAST(N'2020-05-16 18:51:40.940' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (55, 1, N'Core', CAST(N'2020-05-16 18:51:40.940' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (56, 1, N'Core Java', CAST(N'2020-05-16 18:51:40.940' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (57, 1, N'', CAST(N'2020-05-16 18:51:40.940' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime), 1, CAST(N'2020-05-17 00:32:30.067' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (58, 3, N'Unity', CAST(N'2020-05-17 00:30:53.750' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:30:53.750' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (59, 3, N' Scratch', CAST(N'2020-05-17 00:30:53.750' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:30:53.750' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (60, 3, N' Game', CAST(N'2020-05-17 00:30:53.750' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:30:53.750' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (61, 3, N'Game programming', CAST(N'2020-05-17 00:30:53.750' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:30:53.750' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (62, 3, N'', CAST(N'2020-05-17 00:30:53.750' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:30:53.750' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (63, 2, N'react', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (64, 2, N'native', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (65, 2, N'mobile', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (66, 2, N'programming', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (67, 2, N'IOS', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (68, 2, N'Android', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (69, 2, N'IOS&Android', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (70, 2, N'IOS&Android', CAST(N'2020-05-17 00:31:48.153' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime), 1, CAST(N'2020-05-21 01:52:52.163' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (71, 1, N'Java', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (72, 1, N'Programming', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (73, 1, N'Core', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (74, 1, N'Core Java', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (75, 1, N'', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (76, 1, N'', CAST(N'2020-05-17 00:32:30.073' AS DateTime), 0, NULL, 1, CAST(N'2020-05-17 00:32:30.073' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (77, 4, N'tag', CAST(N'2020-05-21 11:39:59.783' AS DateTime), 1, CAST(N'2020-05-21 11:41:17.980' AS DateTime), 1, CAST(N'2020-05-21 11:41:17.980' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (78, 5, N'tga', CAST(N'2020-05-21 11:40:24.200' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.010' AS DateTime), 1, CAST(N'2020-05-21 11:41:18.010' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (79, 6, N'C#', CAST(N'2020-05-22 00:12:48.983' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:12:48.983' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (80, 6, N'programming', CAST(N'2020-05-22 00:12:48.983' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:12:48.983' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (81, 6, N'', CAST(N'2020-05-22 00:12:48.983' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:12:48.983' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (82, 7, N'Metalspoint', CAST(N'2020-05-22 00:13:51.973' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:13:51.973' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (83, 7, N'Network', CAST(N'2020-05-22 00:13:51.973' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:13:51.973' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (84, 7, N'Security', CAST(N'2020-05-22 00:13:51.973' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:13:51.973' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (85, 8, N'R', CAST(N'2020-05-22 00:15:13.783' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:15:13.783' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (86, 8, N'beginners', CAST(N'2020-05-22 00:15:13.783' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:15:13.783' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (87, 8, N'', CAST(N'2020-05-22 00:15:13.783' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:15:13.783' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (88, 9, N'mobile', CAST(N'2020-05-22 00:16:04.210' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:16:04.210' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (89, 9, N'App', CAST(N'2020-05-22 00:16:04.210' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:16:04.210' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (90, 9, N'Marketing', CAST(N'2020-05-22 00:16:04.210' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:16:04.210' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (91, 10, N'spring', CAST(N'2020-05-22 00:17:02.873' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:17:02.873' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (92, 10, N'boot', CAST(N'2020-05-22 00:17:02.873' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:17:02.873' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (93, 10, N'programming', CAST(N'2020-05-22 00:17:02.873' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:17:02.873' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (94, 11, N'Unity', CAST(N'2020-05-22 00:18:11.020' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:18:11.020' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (95, 11, N'Game', CAST(N'2020-05-22 00:18:11.020' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:18:11.020' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (96, 11, N'C#', CAST(N'2020-05-22 00:18:11.020' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:18:11.020' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (97, 12, N'database', CAST(N'2020-05-22 00:19:02.483' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:02.483' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (98, 12, N'Oracle', CAST(N'2020-05-22 00:19:02.483' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:02.483' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (99, 12, N'Data', CAST(N'2020-05-22 00:19:02.483' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:02.483' AS DateTime))
GO
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (100, 13, N'SAP', CAST(N'2020-05-22 00:19:55.457' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:55.457' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (101, 13, N'ABAP', CAST(N'2020-05-22 00:19:55.457' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:19:55.457' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (102, 14, N'SAP', CAST(N'2020-05-22 00:20:40.117' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:20:40.117' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (103, 14, N'ABAP', CAST(N'2020-05-22 00:20:40.117' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:20:40.117' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (104, 15, N'Oracle', CAST(N'2020-05-22 00:21:30.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:21:30.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (105, 15, N'Database', CAST(N'2020-05-22 00:21:30.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:21:30.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (106, 15, N'Data', CAST(N'2020-05-22 00:21:30.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:21:30.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (107, 16, N'R', CAST(N'2020-05-22 00:26:43.123' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:26:43.123' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (108, 16, N'Veri', CAST(N'2020-05-22 00:26:43.123' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:26:43.123' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (109, 16, N'Bilim', CAST(N'2020-05-22 00:26:43.123' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:26:43.123' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (110, 16, N'Data Science', CAST(N'2020-05-22 00:26:43.123' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:26:43.123' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (111, 17, N'database', CAST(N'2020-05-22 00:27:57.287' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:27:57.287' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (112, 17, N'Oracle', CAST(N'2020-05-22 00:27:57.287' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:27:57.287' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (113, 17, N'Data', CAST(N'2020-05-22 00:27:57.287' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:27:57.287' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (114, 18, N'wordpress', CAST(N'2020-05-22 00:29:00.330' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:00.330' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (115, 18, N'web', CAST(N'2020-05-22 00:29:00.330' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:00.330' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (116, 18, N'template', CAST(N'2020-05-22 00:29:00.330' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:00.330' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (117, 19, N'SAP', CAST(N'2020-05-22 00:29:44.867' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:44.867' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (118, 19, N'ABAP', CAST(N'2020-05-22 00:29:44.867' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:29:44.867' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (119, 20, N'SAP', CAST(N'2020-05-22 00:30:46.957' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:30:46.957' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (120, 20, N'ABAP', CAST(N'2020-05-22 00:30:46.957' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:30:46.957' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (121, 21, N'SAP', CAST(N'2020-05-22 00:32:07.930' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:32:07.930' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (122, 21, N'ABAP', CAST(N'2020-05-22 00:32:07.930' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:32:07.930' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (123, 22, N'etih', CAST(N'2020-05-22 00:40:51.337' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:40:51.337' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (124, 22, N'Hacker', CAST(N'2020-05-22 00:40:51.337' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:40:51.337' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (125, 22, N'sızma', CAST(N'2020-05-22 00:40:51.337' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:40:51.337' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (126, 23, N'scratch', CAST(N'2020-05-22 00:41:46.030' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:41:46.030' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (127, 23, N'programlama', CAST(N'2020-05-22 00:41:46.030' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:41:46.030' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (128, 23, N'sıfırdan', CAST(N'2020-05-22 00:41:46.030' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:41:46.030' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (129, 24, N'etih', CAST(N'2020-05-22 00:42:29.687' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:42:29.687' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (130, 24, N'Hacker', CAST(N'2020-05-22 00:42:29.687' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:42:29.687' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (131, 24, N'sızma', CAST(N'2020-05-22 00:42:29.687' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:42:29.687' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (132, 25, N'wordpress', CAST(N'2020-05-22 00:43:12.153' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:43:12.153' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (133, 25, N'web', CAST(N'2020-05-22 00:43:12.153' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:43:12.153' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (134, 25, N'template', CAST(N'2020-05-22 00:43:12.153' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:43:12.153' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (135, 26, N'database', CAST(N'2020-05-22 00:44:00.257' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:00.257' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (136, 26, N'Oracle', CAST(N'2020-05-22 00:44:00.257' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:00.257' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (137, 26, N'Data', CAST(N'2020-05-22 00:44:00.257' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:00.257' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (138, 27, N'Andorid', CAST(N'2020-05-22 00:44:46.717' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:46.717' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (139, 27, N'mobile', CAST(N'2020-05-22 00:44:46.717' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:44:46.717' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (140, 28, N'C#', CAST(N'2020-05-22 00:45:50.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:45:50.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (141, 28, N'programming', CAST(N'2020-05-22 00:45:50.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:45:50.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (142, 28, N'', CAST(N'2020-05-22 00:45:50.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:45:50.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (143, 29, N'oreo', CAST(N'2020-05-22 00:52:46.343' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:52:46.343' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (144, 29, N'Android', CAST(N'2020-05-22 00:52:46.343' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:52:46.343' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (145, 30, N'SAP', CAST(N'2020-05-22 00:53:28.113' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:53:28.113' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (146, 30, N'ABAP', CAST(N'2020-05-22 00:53:28.113' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:53:28.113' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (147, 31, N'C#', CAST(N'2020-05-22 00:54:10.093' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:54:10.093' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (148, 31, N'programming', CAST(N'2020-05-22 00:54:10.093' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:54:10.093' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (149, 31, N'OOP', CAST(N'2020-05-22 00:54:10.093' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:54:10.093' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (150, 32, N'Python ', CAST(N'2020-05-22 00:55:00.537' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:55:00.537' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (151, 32, N'programming', CAST(N'2020-05-22 00:55:00.537' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:55:00.537' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (152, 32, N'', CAST(N'2020-05-22 00:55:00.537' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:55:00.537' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (153, 34, N'Andoid', CAST(N'2020-05-22 00:57:50.480' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:57:50.480' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (154, 34, N'IOS', CAST(N'2020-05-22 00:57:50.480' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:57:50.480' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (155, 34, N'React', CAST(N'2020-05-22 00:57:50.480' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:57:50.480' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (156, 35, N'react', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (157, 35, N'native', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (158, 35, N'mobile', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (159, 35, N'programming', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (160, 35, N'IOS', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (161, 35, N'Android', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (162, 35, N'IOS&Android', CAST(N'2020-05-22 00:58:40.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:58:40.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (163, 36, N'spring', CAST(N'2020-05-22 00:59:26.607' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:59:26.607' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (164, 36, N'hibernate', CAST(N'2020-05-22 00:59:26.607' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 00:59:26.607' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (165, 37, N'C#', CAST(N'2020-05-22 01:00:29.960' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:00:29.960' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (166, 37, N'programming', CAST(N'2020-05-22 01:00:29.960' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:00:29.960' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (167, 37, N'', CAST(N'2020-05-22 01:00:29.960' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:00:29.960' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (168, 38, N'Andorid', CAST(N'2020-05-22 01:01:14.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:01:14.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (169, 38, N'mobile', CAST(N'2020-05-22 01:01:14.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:01:14.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (170, 40, N'etih', CAST(N'2020-05-22 01:05:02.047' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:02.047' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (171, 40, N'Hacker', CAST(N'2020-05-22 01:05:02.047' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:02.047' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (172, 40, N'sızma', CAST(N'2020-05-22 01:05:02.047' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:02.047' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (173, 41, N'react', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (174, 41, N'native', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (175, 41, N'mobile', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (176, 41, N'programming', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (177, 41, N'IOS', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (178, 41, N'Android', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (179, 41, N'IOS&Android', CAST(N'2020-05-22 01:05:49.297' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:05:49.297' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (180, 42, N'react', CAST(N'2020-05-22 01:06:42.393' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:06:42.393' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (181, 42, N'JS', CAST(N'2020-05-22 01:06:42.393' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:06:42.393' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (182, 42, N'Web', CAST(N'2020-05-22 01:06:42.393' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:06:42.393' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (183, 43, N'database', CAST(N'2020-05-22 01:14:43.200' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:14:43.200' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (184, 43, N'Oracle', CAST(N'2020-05-22 01:14:43.200' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:14:43.200' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (185, 43, N'Data', CAST(N'2020-05-22 01:14:43.200' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:14:43.200' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (186, 44, N'SAP', CAST(N'2020-05-22 01:15:31.043' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:15:31.043' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (187, 44, N'Fiori', CAST(N'2020-05-22 01:15:31.043' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:15:31.043' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (188, 45, N'Python ', CAST(N'2020-05-22 01:16:21.670' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:16:21.670' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (189, 45, N'programming', CAST(N'2020-05-22 01:16:21.670' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:16:21.670' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (190, 45, N'', CAST(N'2020-05-22 01:16:21.670' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:16:21.670' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (191, 46, N'spring', CAST(N'2020-05-22 01:17:17.850' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:17:17.850' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (192, 46, N'boot', CAST(N'2020-05-22 01:17:17.850' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:17:17.850' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (193, 46, N'programming', CAST(N'2020-05-22 01:17:17.850' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:17:17.850' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (194, 47, N'react', CAST(N'2020-05-22 01:18:14.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:14.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (195, 47, N'Redux', CAST(N'2020-05-22 01:18:14.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:14.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (196, 47, N'Web', CAST(N'2020-05-22 01:18:14.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:14.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (197, 48, N'oreo', CAST(N'2020-05-22 01:18:57.287' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:57.287' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (198, 48, N'Android', CAST(N'2020-05-22 01:18:57.287' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:18:57.287' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (199, 49, N'C#', CAST(N'2020-05-22 01:20:20.910' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:20:20.910' AS DateTime))
GO
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (200, 49, N'programming', CAST(N'2020-05-22 01:20:20.910' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:20:20.910' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (201, 49, N'OOP', CAST(N'2020-05-22 01:20:20.910' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:20:20.910' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (202, 50, N'Python ', CAST(N'2020-05-22 01:21:06.250' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:06.250' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (203, 50, N'programming', CAST(N'2020-05-22 01:21:06.250' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:06.250' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (204, 50, N'', CAST(N'2020-05-22 01:21:06.250' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:06.250' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (205, 51, N'react', CAST(N'2020-05-22 01:21:58.997' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:58.997' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (206, 51, N'Redux', CAST(N'2020-05-22 01:21:58.997' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:58.997' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (207, 51, N'Web', CAST(N'2020-05-22 01:21:58.997' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:21:58.997' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (208, 52, N'js', CAST(N'2020-05-22 01:23:29.020' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:23:29.020' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (209, 52, N'javaScript', CAST(N'2020-05-22 01:23:29.020' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:23:29.020' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (210, 53, N'Ethical', CAST(N'2020-05-22 01:24:46.733' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:24:46.733' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (211, 53, N'nmap', CAST(N'2020-05-22 01:24:46.733' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:24:46.733' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (212, 54, N'spring', CAST(N'2020-05-22 01:25:33.213' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:25:33.213' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (213, 54, N'hibernate', CAST(N'2020-05-22 01:25:33.213' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:25:33.213' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (214, 54, N'boot', CAST(N'2020-05-22 01:25:33.213' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:25:33.213' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (215, 55, N'Andorid', CAST(N'2020-05-22 01:26:31.430' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:26:31.430' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (216, 55, N'mobile', CAST(N'2020-05-22 01:26:31.430' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:26:31.430' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (217, 55, N'Xamarin', CAST(N'2020-05-22 01:26:31.430' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:26:31.430' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (218, 55, N'IOS', CAST(N'2020-05-22 01:26:31.430' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:26:31.430' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (219, 56, N'spring', CAST(N'2020-05-22 01:27:09.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:09.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (220, 56, N'boot', CAST(N'2020-05-22 01:27:09.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:09.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (221, 56, N'programming', CAST(N'2020-05-22 01:27:09.150' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:09.150' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (222, 57, N'spring', CAST(N'2020-05-22 01:27:53.360' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:53.360' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (223, 57, N'boot', CAST(N'2020-05-22 01:27:53.360' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:53.360' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (224, 57, N'programming', CAST(N'2020-05-22 01:27:53.360' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:53.360' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (225, 57, N'framework', CAST(N'2020-05-22 01:27:53.360' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:27:53.360' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (226, 58, N'C#', CAST(N'2020-05-22 01:28:39.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:28:39.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (227, 58, N'programming', CAST(N'2020-05-22 01:28:39.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:28:39.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (228, 58, N'OOP', CAST(N'2020-05-22 01:28:39.390' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:28:39.390' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (229, 59, N'scratch', CAST(N'2020-05-22 01:32:17.947' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:32:17.947' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (230, 59, N'programlama', CAST(N'2020-05-22 01:32:17.947' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:32:17.947' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (231, 59, N'sıfırdan', CAST(N'2020-05-22 01:32:17.947' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:32:17.947' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (232, 60, N'react', CAST(N'2020-05-22 01:33:09.243' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:33:09.243' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (233, 60, N'JS', CAST(N'2020-05-22 01:33:09.243' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:33:09.243' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (234, 60, N'Web', CAST(N'2020-05-22 01:33:09.243' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:33:09.243' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (235, 61, N'react', CAST(N'2020-05-22 01:34:04.573' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:04.573' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (236, 61, N'Redux', CAST(N'2020-05-22 01:34:04.573' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:04.573' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (237, 61, N'', CAST(N'2020-05-22 01:34:04.573' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:04.573' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (238, 62, N'html', CAST(N'2020-05-22 01:34:44.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:44.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (239, 62, N'web', CAST(N'2020-05-22 01:34:44.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:34:44.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (240, 63, N'C#', CAST(N'2020-05-22 01:35:35.633' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (241, 63, N'programming', CAST(N'2020-05-22 01:35:35.633' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (242, 63, N'OOP', CAST(N'2020-05-22 01:35:35.633' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime), 1, CAST(N'2020-06-01 19:50:52.590' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (243, 64, N'C#', CAST(N'2020-05-22 01:36:19.667' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:36:19.667' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (244, 64, N'programming', CAST(N'2020-05-22 01:36:19.667' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:36:19.667' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (245, 64, N'', CAST(N'2020-05-22 01:36:19.667' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:36:19.667' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (246, 65, N'react', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (247, 65, N'native', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (248, 65, N'mobile', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (249, 65, N'programming', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (250, 65, N'IOS', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (251, 65, N'Android', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (252, 65, N'IOS&Android', CAST(N'2020-05-22 01:37:00.760' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:00.760' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (253, 66, N'react', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (254, 66, N'native', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (255, 66, N'mobile', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (256, 66, N'programming', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (257, 66, N'IOS', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (258, 66, N'Android', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (259, 66, N'IOS&Android', CAST(N'2020-05-22 01:37:47.540' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:37:47.540' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (260, 67, N'react', CAST(N'2020-05-22 01:38:35.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:38:35.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (261, 67, N'JS', CAST(N'2020-05-22 01:38:35.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:38:35.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (262, 67, N'Web', CAST(N'2020-05-22 01:38:35.993' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:38:35.993' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (263, 68, N'SQL', CAST(N'2020-05-22 01:39:21.023' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:39:21.023' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (264, 68, N'msSQL', CAST(N'2020-05-22 01:39:21.023' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:39:21.023' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (265, 69, N'html', CAST(N'2020-05-22 01:40:01.473' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:01.473' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (266, 69, N'web', CAST(N'2020-05-22 01:40:01.473' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:01.473' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (267, 70, N'Python ', CAST(N'2020-05-22 01:40:41.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:41.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (268, 70, N'programming', CAST(N'2020-05-22 01:40:41.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:41.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (269, 70, N'', CAST(N'2020-05-22 01:40:41.560' AS DateTime), 0, NULL, 1, CAST(N'2020-05-22 01:40:41.560' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (270, 63, N'C#', CAST(N'2020-06-01 19:50:52.597' AS DateTime), 0, NULL, 1, CAST(N'2020-06-01 19:50:52.597' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (271, 63, N'programming', CAST(N'2020-06-01 19:50:52.597' AS DateTime), 0, NULL, 1, CAST(N'2020-06-01 19:50:52.597' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (272, 63, N'OOP', CAST(N'2020-06-01 19:50:52.597' AS DateTime), 0, NULL, 1, CAST(N'2020-06-01 19:50:52.597' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (273, 63, N'', CAST(N'2020-06-01 19:50:52.597' AS DateTime), 0, NULL, 1, CAST(N'2020-06-01 19:50:52.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[PostTag] OFF
SET IDENTITY_INSERT [dbo].[ProcessType] ON 

INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (1, N'Login')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (2, N'Address was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (3, N'Address was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (4, N'Address was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (5, N'Ads was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (6, N'Ads was Updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (7, N'Ads was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (8, N'Category was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (9, N'Category was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (10, N'Category was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (11, N'Icon  fav logo was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (12, N'Icon fav Logo was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (13, N'Icon fav logo was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (14, N'Meta was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (15, N'Meta was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (16, N'Meta was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (17, N'Social media was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (18, N'Social media was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (19, N'Social media was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (20, N'User was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (21, N'User was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (22, N'User was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (23, N'Video was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (24, N'Video was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (25, N'Video was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (26, N'Post was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (27, N'Post was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (28, N'Post was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (29, N'Image was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (30, N'Image was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (31, N'Image was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (32, N'Tag was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (33, N'Tag was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (34, N'Tag was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (35, N'Comment Approved')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (36, N'Comment was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (37, N'Contact was read')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (38, N'Contact was deleted')
SET IDENTITY_INSERT [dbo].[ProcessType] OFF
SET IDENTITY_INSERT [dbo].[SocialMedia] ON 

INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'facebook', N'95fdbe81-a0b9-43d2-833d-6cb098032610facebook2.jpg', N'https://www.facebook.com/oakacademyedu/', CAST(N'2020-05-07 14:33:06.530' AS DateTime), 0, NULL, 1, CAST(N'2020-05-07 16:06:19.387' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Instagram', N'79dec84f-0ff9-4467-8c61-4f8aecfed3a34.jpg', N'https://www.instagram.com/oakacademyedu/', CAST(N'2020-05-07 14:33:28.927' AS DateTime), 0, NULL, 1, CAST(N'2020-05-07 14:33:28.927' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Twitter', N'0943776f-bbb3-455a-a32f-57390f3fe4342.png', N'https://twitter.com/OAKAcademyEDU?s=17', CAST(N'2020-05-07 14:34:07.187' AS DateTime), 0, NULL, 1, CAST(N'2020-05-07 14:34:07.187' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'linkedin', N'2c2cdd65-d211-4591-9040-7575a50b56c1linkedin.jpg', N'https://www.linkedin.com/company/oakacademyedu/about/', CAST(N'2020-05-07 14:35:19.457' AS DateTime), 0, NULL, 1, CAST(N'2020-05-07 14:35:19.457' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'youtube', N'1b57d8af-8904-402c-8222-795674b6f6603.png', N'https://www.youtube.com/channel/UCUXkHOkVtP7UgRia1q4dPzQ', CAST(N'2020-05-07 14:35:37.753' AS DateTime), 0, NULL, 1, CAST(N'2020-05-07 14:35:37.753' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'face2', N'd72263b6-e76a-4cff-8665-1c73c4f129451.png', N'face2', CAST(N'2020-05-18 12:20:07.357' AS DateTime), 1, CAST(N'2020-05-18 12:20:26.893' AS DateTime), 1, CAST(N'2020-05-18 12:20:26.893' AS DateTime))
SET IDENTITY_INSERT [dbo].[SocialMedia] OFF
SET IDENTITY_INSERT [dbo].[T_User] ON 

INSERT [dbo].[T_User] ([ID], [Username], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [isDeleted], [DeletedDate], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'OAK', N'1', N'oak@oak.com', N'OAK Academy ', N'be2408b2-408b-4598-a377-910cbb6b0e6cuser8-128x128.jpg', 1, 0, NULL, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 1, CAST(N'2020-05-09 15:18:44.297' AS DateTime))
INSERT [dbo].[T_User] ([ID], [Username], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [isDeleted], [DeletedDate], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'OAK2', N'2', N'oak@oak.com', N'OAK Academy 2', N'a414efca-ff92-4c53-b094-a16f015a1648avatar5.png', 1, 0, NULL, CAST(N'2020-05-09 00:39:34.960' AS DateTime), 1, CAST(N'2020-05-09 00:39:34.960' AS DateTime))
INSERT [dbo].[T_User] ([ID], [Username], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [isDeleted], [DeletedDate], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'OAK3', N'3', N'oak3@oak.com', N'OAK Academy 3', N'dff46a15-4657-4735-94e4-fbedb7edd5d5user7-128x128.jpg', 1, 0, NULL, CAST(N'2020-05-09 00:40:15.630' AS DateTime), 1, CAST(N'2020-05-09 00:40:15.630' AS DateTime))
INSERT [dbo].[T_User] ([ID], [Username], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [isDeleted], [DeletedDate], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'u1', N'1', N'uer', N'user', N'ba85c993-b0f5-492d-ad06-e6e70ca6177e1.png', 1, 1, CAST(N'2020-05-21 12:11:43.183' AS DateTime), CAST(N'2020-05-21 12:11:36.773' AS DateTime), 1, CAST(N'2020-05-21 12:11:43.183' AS DateTime))
INSERT [dbo].[T_User] ([ID], [Username], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [isDeleted], [DeletedDate], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'new', N'1', N'new', N'new1', N'c5f519e1-e381-4a33-bb38-a3cf077df350index.png', 0, 0, NULL, CAST(N'2020-05-21 13:49:15.470' AS DateTime), 1, CAST(N'2020-05-21 13:49:15.470' AS DateTime))
SET IDENTITY_INSERT [dbo].[T_User] OFF
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/OcPtDp-9ya0" frameborder = "0"  allowfullscreen ></iframe> ', N'C# Tutorial - Timer Using with Examples', N'https://www.youtube.com/watch?v=OcPtDp-9ya0', CAST(N'2020-05-11 03:09:17.813' AS DateTime), 0, 1, CAST(N'2020-05-17 15:07:53.097' AS DateTime), 1, CAST(N'2020-05-17 15:07:53.097' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/WFhXnpyWeIY" frameborder = "0"  allowfullscreen ></iframe> ', N'C# Tutorial - Using Jump Statements (Break-Go to-Continue) in C#', N'https://www.youtube.com/watch?v=WFhXnpyWeIY', CAST(N'2020-05-11 03:09:47.603' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-11 03:09:47.603' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/iZ4AYf6wUI4" frameborder = "0"  allowfullscreen ></ iframe> ', N'C# Tutorial - Random Using With Examples in C#', N'https://www.youtube.com/watch?v=iZ4AYf6wUI4', CAST(N'2020-05-11 03:10:16.447' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-11 03:10:16.447' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/_Woa7qEigmc" frameborder = "0"  allowfullscreen ></iframe> ', N'C# Tutorial - Install Visual Studio On Windows Computer', N'https://www.youtube.com/watch?v=_Woa7qEigmc', CAST(N'2020-05-22 01:42:57.967' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-22 01:42:57.967' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/TVNQHCBboo0" frameborder = "0"  allowfullscreen ></iframe> ', N'Stay at Home, Learn Online!', N'https://www.youtube.com/watch?v=TVNQHCBboo0', CAST(N'2020-05-22 01:43:13.100' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-22 01:43:13.100' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/z33NXzf9cNc" frameborder = "0"  allowfullscreen ></iframe> ', N'Complete NMAP: Learn Ethical Hacking with NMAP', N'https://www.youtube.com/watch?v=z33NXzf9cNc', CAST(N'2020-05-22 01:43:28.817' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-22 01:43:28.817' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'<iframe width = "300" height = "200" src = "https://www.youtube.com/embed/SlPjbY6GqOQ" frameborder = "0"  allowfullscreen ></iframe> ', N'Get 6 Figures Job with OAK Academy', N'https://www.youtube.com/watch?v=SlPjbY6GqOQ', CAST(N'2020-05-22 01:43:44.573' AS DateTime), 0, 0, NULL, 1, CAST(N'2020-05-22 01:43:44.573' AS DateTime))
SET IDENTITY_INSERT [dbo].[Video] OFF
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_T_User]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_T_User]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_T_User]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_T_User]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_T_User]
GO
ALTER TABLE [dbo].[FavLogoTitle]  WITH CHECK ADD  CONSTRAINT [FK_FavLogoTitle_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[FavLogoTitle] CHECK CONSTRAINT [FK_FavLogoTitle_T_User]
GO
ALTER TABLE [dbo].[Log_Table]  WITH CHECK ADD  CONSTRAINT [FK_Log_Table_ProcessType] FOREIGN KEY([ProcessType])
REFERENCES [dbo].[ProcessType] ([ID])
GO
ALTER TABLE [dbo].[Log_Table] CHECK CONSTRAINT [FK_Log_Table_ProcessType]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Category]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_T_User]
GO
ALTER TABLE [dbo].[PostImage]  WITH CHECK ADD  CONSTRAINT [FK_PostImage_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[PostImage] CHECK CONSTRAINT [FK_PostImage_Post]
GO
ALTER TABLE [dbo].[PostImage]  WITH CHECK ADD  CONSTRAINT [FK_PostImage_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[PostImage] CHECK CONSTRAINT [FK_PostImage_T_User]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Post]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_T_User]
GO
ALTER TABLE [dbo].[SocialMedia]  WITH CHECK ADD  CONSTRAINT [FK_SocialMedia_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[SocialMedia] CHECK CONSTRAINT [FK_SocialMedia_T_User]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_T_User]
GO
/****** Object:  Trigger [dbo].[delete_post]    Script Date: 10/06/2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[delete_post] on [dbo].[Post] after update as
begin
declare @PostID int
declare @UserID int
select @PostID=ID from inserted
select @UserID=LastUpdateUserID from inserted
if update(isDeleted)
begin
update PostTag set isDeleted=1,DeletedDate=GETDATE(),LastUpdateUserID=@UserID,LastUpdateDate=GETDATE() where PostID=@PostID
update Comment set isDeleted=1,DeletedDate=GETDATE(),LastUpdateUserID=@UserID,LastUpdateDate=GETDATE() where PostID=@PostID
end
end
