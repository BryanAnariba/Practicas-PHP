USE [BuyAndSellDB]
GO
/****** Object:  Table [dbo].[BranchOffice]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchOffice](
	[branchOfficeId] [int] IDENTITY(1,1) NOT NULL,
	[enterpriseId] [int] NULL,
	[branchOfficeName] [varchar](150) NULL,
	[branchOfficeStatus] [char](1) NULL,
	[branchOfficeCreatedAt] [datetime] NULL,
 CONSTRAINT [PK_BranchOffice] PRIMARY KEY CLUSTERED 
(
	[branchOfficeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[categoryName] [varchar](150) NULL,
	[categoryCreatedAt] [datetime] NULL,
	[categoryStatus] [char](1) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[clientId] [int] IDENTITY(1,1) NOT NULL,
	[enterpriseId] [int] NULL,
	[clientName] [varchar](100) NULL,
	[clientRUC] [varchar](50) NULL,
	[clientPhone] [varchar](30) NULL,
	[clientAddress] [varchar](150) NULL,
	[clientEmail] [varchar](80) NULL,
	[clientCreatedAt] [datetime] NULL,
	[clientStatus] [char](1) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[clientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coin]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coin](
	[coinId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[coinName] [varchar](50) NULL,
	[coinCreatedAt] [datetime] NULL,
	[coinStatus] [char](1) NULL,
 CONSTRAINT [PK_Coin] PRIMARY KEY CLUSTERED 
(
	[coinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[companyId] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [varchar](150) NULL,
	[companyCreatedAt] [datetime] NULL,
	[companyStatus] [char](1) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise](
	[enterpriseId] [int] IDENTITY(1,1) NOT NULL,
	[companyId] [int] NULL,
	[enterpriseName] [varchar](150) NULL,
	[enterpriceRUC] [varchar](50) NULL,
	[enterpriseStatus] [char](1) NULL,
	[enterpriseCreatedAt] [datetime] NULL,
 CONSTRAINT [PK_Enterprise] PRIMARY KEY CLUSTERED 
(
	[enterpriseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[categoryId] [int] NULL,
	[unitMeasurementId] [int] NULL,
	[coinId] [int] NULL,
	[productName] [varchar](150) NULL,
	[productDescription] [varchar](150) NULL,
	[productSellPrice] [numeric](18, 2) NULL,
	[productBuyPrice] [numeric](18, 2) NULL,
	[productStock] [int] NULL,
	[productExpirationDate] [datetime] NULL,
	[productImg] [varchar](max) NULL,
	[productCreatedAt] [datetime] NULL,
	[productStatus] [char](1) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[providerId] [int] IDENTITY(1,1) NOT NULL,
	[enterpriseId] [int] NULL,
	[providerRUC] [int] NULL,
	[providerPhone] [varchar](50) NULL,
	[providerAddress] [varchar](150) NULL,
	[providerEmail] [varchar](80) NULL,
	[providerCreatedAt] [datetime] NULL,
	[providerStatus] [char](1) NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[providerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[roleName] [varchar](50) NULL,
	[roleCreatedAt] [datetime] NULL,
	[roleStatus] [char](1) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasurement]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasurement](
	[unitMeasurementId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[unitMeasurementName] [varchar](50) NULL,
	[unitMeasurementCreatedAt] [datetime] NULL,
	[unitMeasurementStatus] [char](1) NULL,
 CONSTRAINT [PK_UnitOfMeasurement] PRIMARY KEY CLUSTERED 
(
	[unitMeasurementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26/12/2022 22:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[branchOfficeId] [int] NULL,
	[roleId] [int] NULL,
	[userEmail] [varchar](80) NULL,
	[userFirstName] [varchar](80) NULL,
	[userLastName] [varchar](80) NULL,
	[userIdentity] [varchar](30) NULL,
	[userPhone] [varchar](30) NULL,
	[userPassword] [varchar](255) NULL,
	[userStatus] [char](1) NULL,
	[userCreatedAt] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BranchOffice]  WITH CHECK ADD  CONSTRAINT [FK_BranchOffice_Enterprise] FOREIGN KEY([enterpriseId])
REFERENCES [dbo].[Enterprise] ([enterpriseId])
GO
ALTER TABLE [dbo].[BranchOffice] CHECK CONSTRAINT [FK_BranchOffice_Enterprise]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_BranchOffice]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Enterprise] FOREIGN KEY([enterpriseId])
REFERENCES [dbo].[Enterprise] ([enterpriseId])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Enterprise]
GO
ALTER TABLE [dbo].[Coin]  WITH CHECK ADD  CONSTRAINT [FK_Coin_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[Coin] CHECK CONSTRAINT [FK_Coin_BranchOffice]
GO
ALTER TABLE [dbo].[Enterprise]  WITH CHECK ADD  CONSTRAINT [FK_Enterprise_Company] FOREIGN KEY([companyId])
REFERENCES [dbo].[Company] ([companyId])
GO
ALTER TABLE [dbo].[Enterprise] CHECK CONSTRAINT [FK_Enterprise_Company]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_BranchOffice]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Coin] FOREIGN KEY([coinId])
REFERENCES [dbo].[Coin] ([coinId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Coin]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_UnitOfMeasurement] FOREIGN KEY([unitMeasurementId])
REFERENCES [dbo].[UnitOfMeasurement] ([unitMeasurementId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_UnitOfMeasurement]
GO
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FK_Provider_Enterprise] FOREIGN KEY([enterpriseId])
REFERENCES [dbo].[Enterprise] ([enterpriseId])
GO
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FK_Provider_Enterprise]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_BranchOffice]
GO
ALTER TABLE [dbo].[UnitOfMeasurement]  WITH CHECK ADD  CONSTRAINT [FK_UnitOfMeasurement_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[UnitOfMeasurement] CHECK CONSTRAINT [FK_UnitOfMeasurement_BranchOffice]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_BranchOffice] FOREIGN KEY([branchOfficeId])
REFERENCES [dbo].[BranchOffice] ([branchOfficeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_BranchOffice]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

-- ADD
ALTER TABLE [DBO].[PROVIDER] ADD providerName VARCHAR(150) NULL;