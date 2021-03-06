USE [Deals4UIndia]
GO
/****** Object:  Table [dbo].[tblStatastics]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStatastics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStatastics](
	[NumberOfUsers] [int] NOT NULL,
	[NumberOfDeals] [int] NOT NULL,
	[NumberOfActiveDeals] [int] NOT NULL,
	[NumberOfInActiveDeals] [int] NOT NULL,
	[NumberOfVouchers] [int] NOT NULL,
	[NumberOfActiveVouchers] [int] NOT NULL,
	[NumberOfInActiveVouchers] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblProductSource]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProductSource]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProductSource](
	[ProductSourceID] [uniqueidentifier] NOT NULL,
	[ProductSourceName] [varchar](100) NOT NULL,
	[ProductSourceActive] [bit] NOT NULL,
	[ProductSourceCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductSourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ProductSourceName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProductCategories]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProductCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProductCategories](
	[ProductCategoryID] [uniqueidentifier] NOT NULL,
	[ProductCategoryName] [varchar](100) NOT NULL,
	[ProductCategoryActive] [bit] NOT NULL,
	[ProductCategoryCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ProductCategoryName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFlipKartTopOffers]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFlipKartTopOffers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFlipKartTopOffers](
	[OfferID] [int] IDENTITY(1,1) NOT NULL,
	[Availability] [varchar](20) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[UrlOfProduct] [varchar](max) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[ImageUrls] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDealType]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealType](
	[DealTypeID] [uniqueidentifier] NOT NULL,
	[DealTypeName] [varchar](20) NOT NULL,
	[DealTypeActive] [bit] NOT NULL,
	[DealTypeCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DealTypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDealStatus]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealStatus](
	[DealStatusID] [uniqueidentifier] NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
	[StatusCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDealPriceCategories]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealPriceCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealPriceCategories](
	[DealPriceCategoryId] [uniqueidentifier] NOT NULL,
	[StartPrice] [money] NOT NULL,
	[EndPrice] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealPriceCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblBadges]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBadges]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblBadges](
	[BadgeID] [uniqueidentifier] NOT NULL,
	[BadgeName] [varchar](15) NOT NULL,
	[BadgeDegree] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BadgeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblApplicationRoles]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblApplicationRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblApplicationRoles](
	[ApplicationRoleID] [uniqueidentifier] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[RoleCreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblApplicationRoles] PRIMARY KEY CLUSTERED 
(
	[ApplicationRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_tblApplicationRoles] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCouponType]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCouponType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCouponType](
	[CouponTypeID] [uniqueidentifier] NOT NULL,
	[CouponTypeName] [varchar](20) NOT NULL,
	[CouponTypeActive] [bit] NOT NULL,
	[CouponTypeCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CouponTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CouponTypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCountries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCountries](
	[CountryID] [uniqueidentifier] NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[CountryCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_tblCountries] UNIQUE NONCLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVisitorHistory]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVisitorHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVisitorHistory](
	[VisitorHistoryID] [uniqueidentifier] NOT NULL,
	[VisitorIpAddress] [varchar](20) NOT NULL,
	[VisitedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VisitorHistoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStates]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStates](
	[StateID] [uniqueidentifier] NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[CountryID] [uniqueidentifier] NOT NULL,
	[StateCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_tblStates] UNIQUE NONCLUSTERED 
(
	[StateName] ASC,
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCities]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCities](
	[CityID] [uniqueidentifier] NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[StateID] [uniqueidentifier] NOT NULL,
	[CityCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_tblCities] UNIQUE NONCLUSTERED 
(
	[CityName] ASC,
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserDetails]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUserDetails](
	[UserDetailsID] [uniqueidentifier] NOT NULL,
	[Email] [varchar](256) NOT NULL,
	[UserPassword] [varchar](16) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[PostalAddress] [varchar](256) NULL,
	[CountryID] [uniqueidentifier] NOT NULL,
	[StateID] [uniqueidentifier] NOT NULL,
	[CityID] [uniqueidentifier] NOT NULL,
	[PinCode] [varchar](6) NOT NULL,
	[MobileNumber] [varchar](14) NULL,
	[IsOnline] [bit] NOT NULL,
	[IsUserValid] [bit] NOT NULL,
	[LastLogonDate] [datetime] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVouchers]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVouchers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVouchers](
	[VoucherID] [uniqueidentifier] NOT NULL,
	[VoucherCode] [varchar](50) NOT NULL,
	[VoucherInstructions] [varchar](500) NULL,
	[VoucherStatus] [bit] NOT NULL,
	[VoucherStartDate] [date] NULL,
	[VoucherEndDate] [date] NULL,
	[VoucherPostedDate] [date] NULL,
	[DiscountRate] [decimal](18, 0) NOT NULL,
	[MinimumSpend] [int] NULL,
	[VoucherDegree] [int] NOT NULL,
	[ApprovedBy] [uniqueidentifier] NOT NULL,
	[VoucherURL] [varchar](500) NULL,
	[VoucherTags] [varchar](250) NULL,
	[VoucherSourceID] [uniqueidentifier] NOT NULL,
	[ProductCategoryID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserRoles]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUserRoles](
	[UserRoleID] [uniqueidentifier] NOT NULL,
	[UserDetailsID] [uniqueidentifier] NOT NULL,
	[AccessRoleID] [uniqueidentifier] NOT NULL,
	[MappingActive] [bit] NOT NULL,
	[MappingCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblUserProfile]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUserProfile](
	[UserProfileID] [uniqueidentifier] NOT NULL,
	[UserDetailsID] [uniqueidentifier] NOT NULL,
	[BadgeID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblDeals]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDeals]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDeals](
	[DealID] [uniqueidentifier] NOT NULL,
	[UserDetailsID] [uniqueidentifier] NOT NULL,
	[DealURL] [varchar](1000) NULL,
	[DealStatusID] [uniqueidentifier] NOT NULL,
	[DealPrice] [money] NOT NULL,
	[DealTopicName] [varchar](500) NOT NULL,
	[DealDescription] [varchar](max) NOT NULL,
	[DealDegree] [int] NOT NULL,
	[DealPostedDate] [datetime] NOT NULL,
	[DealType] [uniqueidentifier] NOT NULL,
	[DealStartDate] [date] NOT NULL,
	[DealEndDate] [date] NOT NULL,
	[DealSource] [uniqueidentifier] NOT NULL,
	[ProductCategoryID] [uniqueidentifier] NOT NULL,
	[DealPriceCategoryId] [uniqueidentifier] NOT NULL,
	[DealDiscountPercentage] [decimal](18, 0) NOT NULL,
	[DealDiscountPrice] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDealImages]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealImages](
	[DealImageID] [uniqueidentifier] NOT NULL,
	[DealID] [uniqueidentifier] NOT NULL,
	[DealImage] [image] NOT NULL,
	[ImageActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblDealComments]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealComments](
	[DealCommentsID] [uniqueidentifier] NOT NULL,
	[DealID] [uniqueidentifier] NOT NULL,
	[UserDetailsID] [uniqueidentifier] NOT NULL,
	[CommentDescription] [varchar](max) NOT NULL,
	[CommentStatus] [bit] NOT NULL,
	[CommentPostedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealCommentsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDealApprovalDetails]    Script Date: 03/03/2015 00:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDealApprovalDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDealApprovalDetails](
	[DealApprovalID] [uniqueidentifier] NOT NULL,
	[DealID] [uniqueidentifier] NOT NULL,
	[ActionTakenBy] [uniqueidentifier] NOT NULL,
	[DealApproved] [bit] NOT NULL,
	[ActionTakenDate] [datetime] NOT NULL,
	[RejectionReason] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[DealApprovalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__tblProduc__Produ__3B75D760]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblProduc__Produ__3B75D760]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProductSource]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblProduc__Produ__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblProductSource] ADD  DEFAULT ((0)) FOR [ProductSourceActive]
END


End
GO
/****** Object:  Default [DF__tblProduc__Produ__3C69FB99]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblProduc__Produ__3C69FB99]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProductSource]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblProduc__Produ__3C69FB99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblProductSource] ADD  DEFAULT (getdate()) FOR [ProductSourceCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblProduc__Produ__32E0915F]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblProduc__Produ__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProductCategories]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblProduc__Produ__32E0915F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblProductCategories] ADD  DEFAULT ((0)) FOR [ProductCategoryActive]
END


End
GO
/****** Object:  Default [DF__tblProduc__Produ__33D4B598]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblProduc__Produ__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProductCategories]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblProduc__Produ__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblProductCategories] ADD  DEFAULT (getdate()) FOR [ProductCategoryCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblDealTy__DealT__2A4B4B5E]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealTy__DealT__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealTy__DealT__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealType] ADD  DEFAULT ((0)) FOR [DealTypeActive]
END


End
GO
/****** Object:  Default [DF__tblDealTy__DealT__2B3F6F97]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealTy__DealT__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealTy__DealT__2B3F6F97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealType] ADD  DEFAULT (getdate()) FOR [DealTypeCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblDealSt__Statu__7B5B524B]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealSt__Statu__7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealStatus]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealSt__Statu__7B5B524B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealStatus] ADD  DEFAULT (getdate()) FOR [StatusCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblApplic__RoleC__7E6CC920]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblApplic__RoleC__7E6CC920]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblApplicationRoles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblApplic__RoleC__7E6CC920]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblApplicationRoles] ADD  DEFAULT (getdate()) FOR [RoleCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblCoupon__Coupo__21B6055D]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCoupon__Coupo__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCouponType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblCoupon__Coupo__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCouponType] ADD  DEFAULT ((0)) FOR [CouponTypeActive]
END


End
GO
/****** Object:  Default [DF__tblCoupon__Coupo__22AA2996]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCoupon__Coupo__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCouponType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblCoupon__Coupo__22AA2996]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCouponType] ADD  DEFAULT (getdate()) FOR [CouponTypeCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblCountr__Count__03317E3D]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCountr__Count__03317E3D]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCountries]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblCountr__Count__03317E3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCountries] ADD  DEFAULT (getdate()) FOR [CountryCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblVisito__Visit__412EB0B6]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblVisito__Visit__412EB0B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVisitorHistory]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblVisito__Visit__412EB0B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblVisitorHistory] ADD  DEFAULT (getdate()) FOR [VisitedDate]
END


End
GO
/****** Object:  Default [DF__tblStates__State__0EA330E9]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblStates__State__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStates]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblStates__State__0EA330E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblStates] ADD  DEFAULT (getdate()) FOR [StateCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblCities__CityC__145C0A3F]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCities__CityC__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCities]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblCities__CityC__145C0A3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCities] ADD  DEFAULT (getdate()) FOR [CityCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblUserDe__IsOnl__4BAC3F29]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserDe__IsOnl__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblUserDe__IsOnl__4BAC3F29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblUserDetails] ADD  DEFAULT ((0)) FOR [IsOnline]
END


End
GO
/****** Object:  Default [DF__tblUserDe__IsUse__4CA06362]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserDe__IsUse__4CA06362]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblUserDe__IsUse__4CA06362]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblUserDetails] ADD  DEFAULT ((0)) FOR [IsUserValid]
END


End
GO
/****** Object:  Default [DF__tblUserDe__LastL__4D94879B]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserDe__LastL__4D94879B]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblUserDe__LastL__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblUserDetails] ADD  DEFAULT (getdate()) FOR [LastLogonDate]
END


End
GO
/****** Object:  Default [DF__tblUserRo__Mappi__5FB337D6]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserRo__Mappi__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserRoles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblUserRo__Mappi__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblUserRoles] ADD  DEFAULT ((0)) FOR [MappingActive]
END


End
GO
/****** Object:  Default [DF__tblUserRo__Mappi__60A75C0F]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserRo__Mappi__60A75C0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserRoles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblUserRo__Mappi__60A75C0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblUserRoles] ADD  DEFAULT (getdate()) FOR [MappingCreatedDate]
END


End
GO
/****** Object:  Default [DF__tblDeals__DealDi__2645B050]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDeals__DealDi__2645B050]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDeals__DealDi__2645B050]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDeals] ADD  DEFAULT ((0)) FOR [DealDiscountPercentage]
END


End
GO
/****** Object:  Default [DF__tblDeals__DealDi__2739D489]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDeals__DealDi__2739D489]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDeals__DealDi__2739D489]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDeals] ADD  DEFAULT ((0)) FOR [DealDiscountPrice]
END


End
GO
/****** Object:  Default [DF__tblDealIm__Image__0A9D95DB]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealIm__Image__0A9D95DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealImages]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealIm__Image__0A9D95DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealImages] ADD  DEFAULT ((0)) FOR [ImageActive]
END


End
GO
/****** Object:  Default [DF__tblDealCo__Comme__1DB06A4F]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealCo__Comme__1DB06A4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealComments]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealCo__Comme__1DB06A4F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealComments] ADD  DEFAULT (getdate()) FOR [CommentPostedDate]
END


End
GO
/****** Object:  Default [DF__tblDealAp__Actio__114A936A]    Script Date: 03/03/2015 00:09:44 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblDealAp__Actio__114A936A]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealApprovalDetails]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDealAp__Actio__114A936A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDealApprovalDetails] ADD  DEFAULT (getdate()) FOR [ActionTakenDate]
END


End
GO
/****** Object:  ForeignKey [FK__tblStates__Count__0DAF0CB0]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblStates__Count__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStates]'))
ALTER TABLE [dbo].[tblStates]  WITH CHECK ADD  CONSTRAINT [FK__tblStates__Count__0DAF0CB0] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([CountryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblStates__Count__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStates]'))
ALTER TABLE [dbo].[tblStates] CHECK CONSTRAINT [FK__tblStates__Count__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__tblCities__State__1367E606]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblCities__State__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCities]'))
ALTER TABLE [dbo].[tblCities]  WITH CHECK ADD FOREIGN KEY([StateID])
REFERENCES [dbo].[tblStates] ([StateID])
GO
/****** Object:  ForeignKey [FK__tblUserDe__CityI__4AB81AF0]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserDe__CityI__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
ALTER TABLE [dbo].[tblUserDetails]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCities] ([CityID])
GO
/****** Object:  ForeignKey [FK__tblUserDe__Count__48CFD27E]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserDe__Count__48CFD27E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
ALTER TABLE [dbo].[tblUserDetails]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([CountryID])
GO
/****** Object:  ForeignKey [FK__tblUserDe__State__49C3F6B7]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserDe__State__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserDetails]'))
ALTER TABLE [dbo].[tblUserDetails]  WITH CHECK ADD FOREIGN KEY([StateID])
REFERENCES [dbo].[tblStates] ([StateID])
GO
/****** Object:  ForeignKey [FK__tblVouche__Appro__22751F6C]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblVouche__Appro__22751F6C]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVouchers]'))
ALTER TABLE [dbo].[tblVouchers]  WITH CHECK ADD FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblVouche__Produ__245D67DE]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblVouche__Produ__245D67DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVouchers]'))
ALTER TABLE [dbo].[tblVouchers]  WITH CHECK ADD FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[tblProductCategories] ([ProductCategoryID])
GO
/****** Object:  ForeignKey [FK__tblVouche__Vouch__236943A5]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblVouche__Vouch__236943A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVouchers]'))
ALTER TABLE [dbo].[tblVouchers]  WITH CHECK ADD FOREIGN KEY([VoucherSourceID])
REFERENCES [dbo].[tblProductSource] ([ProductSourceID])
GO
/****** Object:  ForeignKey [FK__tblUserRo__Acces__5EBF139D]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserRo__Acces__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserRoles]'))
ALTER TABLE [dbo].[tblUserRoles]  WITH CHECK ADD FOREIGN KEY([AccessRoleID])
REFERENCES [dbo].[tblApplicationRoles] ([ApplicationRoleID])
GO
/****** Object:  ForeignKey [FK__tblUserRo__UserD__5DCAEF64]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserRo__UserD__5DCAEF64]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserRoles]'))
ALTER TABLE [dbo].[tblUserRoles]  WITH CHECK ADD FOREIGN KEY([UserDetailsID])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblUserPr__Badge__73BA3083]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserPr__Badge__73BA3083]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserProfile]'))
ALTER TABLE [dbo].[tblUserProfile]  WITH CHECK ADD FOREIGN KEY([BadgeID])
REFERENCES [dbo].[tblBadges] ([BadgeID])
GO
/****** Object:  ForeignKey [FK__tblUserPr__UserD__72C60C4A]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblUserPr__UserD__72C60C4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserProfile]'))
ALTER TABLE [dbo].[tblUserProfile]  WITH CHECK ADD FOREIGN KEY([UserDetailsID])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblDeals__DealPr__04E4BC85]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__DealPr__04E4BC85]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([DealPriceCategoryId])
REFERENCES [dbo].[tblDealPriceCategories] ([DealPriceCategoryId])
GO
/****** Object:  ForeignKey [FK__tblDeals__DealSo__02FC7413]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__DealSo__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([DealSource])
REFERENCES [dbo].[tblProductSource] ([ProductSourceID])
GO
/****** Object:  ForeignKey [FK__tblDeals__DealSt__01142BA1]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__DealSt__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([DealStatusID])
REFERENCES [dbo].[tblDealStatus] ([DealStatusID])
GO
/****** Object:  ForeignKey [FK__tblDeals__DealTy__02084FDA]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__DealTy__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([DealType])
REFERENCES [dbo].[tblDealType] ([DealTypeID])
GO
/****** Object:  ForeignKey [FK__tblDeals__Produc__03F0984C]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__Produc__03F0984C]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[tblProductCategories] ([ProductCategoryID])
GO
/****** Object:  ForeignKey [FK__tblDeals__UserDe__00200768]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDeals__UserDe__00200768]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeals]'))
ALTER TABLE [dbo].[tblDeals]  WITH CHECK ADD FOREIGN KEY([UserDetailsID])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblDealIm__DealI__09A971A2]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDealIm__DealI__09A971A2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealImages]'))
ALTER TABLE [dbo].[tblDealImages]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[tblDeals] ([DealID])
GO
/****** Object:  ForeignKey [FK__tblDealCo__DealI__1BC821DD]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDealCo__DealI__1BC821DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealComments]'))
ALTER TABLE [dbo].[tblDealComments]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[tblDeals] ([DealID])
GO
/****** Object:  ForeignKey [FK__tblDealCo__UserD__1CBC4616]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDealCo__UserD__1CBC4616]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealComments]'))
ALTER TABLE [dbo].[tblDealComments]  WITH CHECK ADD FOREIGN KEY([UserDetailsID])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblDealAp__Actio__10566F31]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDealAp__Actio__10566F31]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealApprovalDetails]'))
ALTER TABLE [dbo].[tblDealApprovalDetails]  WITH CHECK ADD FOREIGN KEY([ActionTakenBy])
REFERENCES [dbo].[tblUserDetails] ([UserDetailsID])
GO
/****** Object:  ForeignKey [FK__tblDealAp__DealI__0F624AF8]    Script Date: 03/03/2015 00:09:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tblDealAp__DealI__0F624AF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDealApprovalDetails]'))
ALTER TABLE [dbo].[tblDealApprovalDetails]  WITH CHECK ADD FOREIGN KEY([DealID])
REFERENCES [dbo].[tblDeals] ([DealID])
GO
