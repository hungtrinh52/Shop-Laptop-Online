USE [master]
GO
/****** Object:  Database [ProjectGroupp5]    Script Date: 6/2/2023 9:56:00 PM ******/
CREATE DATABASE [ProjectGroupp5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectGroupp5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NNNQQQ\MSSQL\DATA\ProjectGroupp5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectGroupp5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NNNQQQ\MSSQL\DATA\ProjectGroupp5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectGroupp5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectGroupp5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectGroupp5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectGroupp5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectGroupp5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectGroupp5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectGroupp5] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectGroupp5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectGroupp5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectGroupp5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectGroupp5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectGroupp5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectGroupp5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectGroupp5', N'ON'
GO
ALTER DATABASE [ProjectGroupp5] SET QUERY_STORE = OFF
GO
USE [ProjectGroupp5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[Pass] [varchar](255) NULL,
	[Permission] [int] NULL,
	[Firtname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[email] [varchar](255) NULL,
	[NumberPhone] [varchar](255) NULL,
	[addres] [varchar](255) NULL,
	[AccountImg] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cdID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[DateBuy] [date] NULL,
	[Guarantee] [int] NULL,
	[productID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
	[Name] [nvarchar](40) NULL,
	[Address] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guarantee]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guarantee](
	[AccountID] [int] NOT NULL,
	[ReceivedDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[Progress] [bit] NULL,
	[ProductID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[Evaluate] [int] NULL,
	[Comment] [varchar](255) NULL,
	[Describe] [nvarchar](255) NULL,
	[GuaranteeID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[PersonGuarantee] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[email] [nvarchar](50) NULL,
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewID] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[CreateDate] [date] NULL,
	[CreateBy] [nvarchar](255) NULL,
	[ModifyBy] [nvarchar](255) NULL,
	[ModifyDate] [date] NULL,
	[Title] [nvarchar](255) NULL,
	[Content] [nvarchar](MAX) NULL,
	[NewImages] [nvarchar](255) NULL,
	[NewUrl] [nvarchar](255) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[productID] [int] NULL,
	[productName] [varchar](255) NULL,
	[Seri] [varchar](255) NULL,
	[Status] [int] NULL,
	[quantity] [int] NULL,
	[total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderr]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderr](
	[OrderID] [int] NOT NULL,
	[AccountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Seri] [varchar](255) NOT NULL,
	[ProductID] [int] NULL,
	[price] [float] NULL,
	[CreateDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CreateBy] [nvarchar](255) NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[sell] [int] NULL,
	[Guarantee] [int] NULL,
	[images] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[supplierID] [int] NULL,
	[color] [nvarchar](255) NULL,
	[RAM] [varchar](50) NULL,
	[CPU] [varchar](50) NULL,
	[HardDriver] [varchar](50) NULL,
	[Screen] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Describe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierID] [int] IDENTITY(1,1) NOT NULL,
	[supplierName] [varchar](255) NULL,
	[note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (1, N'ngoc', N'12345', 2, N'Trần', N'Ngọc', N'tranngoc31012002@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (2, N'ngoc1232', N'Ngoc12345$', 1, NULL, NULL, N'tranngoc31012002@gmail.com', N'423523455', N'tha?ch ho`a', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([cdID], [accountID], [productID], [Quantity]) VALUES (8, 2, 30, 1)
INSERT [dbo].[Cart] ([cdID], [accountID], [productID], [Quantity]) VALUES (10, 2, 15, 1)
INSERT [dbo].[Cart] ([cdID], [accountID], [productID], [Quantity]) VALUES (12, 2, 1, 3)
INSERT [dbo].[Cart] ([cdID], [accountID], [productID], [Quantity]) VALUES (13, 2, 31, 3)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'HN334 R4', 29, 124654, CAST(N'2023-05-23' AS Date), CAST(N'2023-05-23' AS Date), N'abc', N'sdsf', 10, 12, N'images/hp-2.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'HP MK123331', 32, 1234555, CAST(N'2023-05-24' AS Date), CAST(N'2023-05-28' AS Date), N'abc', N'sdsf', 5, 42, N'images/dell4.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'NGOC 1111', 33, 1234443, CAST(N'2023-05-23' AS Date), CAST(N'2023-05-24' AS Date), N'abc', N'sdsf', 10, 6, N'images/hp-3.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'QHF23HN45JKRE', 31, 25990000, CAST(N'2023-05-25' AS Date), CAST(N'2023-05-25' AS Date), N'abc', N'abc', 15, 36, N'img/dell2.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'SWP', 1, 123344, CAST(N'2023-05-23' AS Date), CAST(N'2023-05-23' AS Date), N'abc', N'abc', 10, 12, N'images/ss-1.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'TEST 1', 31, 1234567, CAST(N'2023-05-23' AS Date), CAST(N'2023-05-23' AS Date), N'abc', N'abc', 30, 24, N'images/hp-3.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'TEST PID', 15, 12345677, CAST(N'2023-05-24' AS Date), CAST(N'2023-05-24' AS Date), N'abc', N'sdsf', 10, 24, N'images/dell2.jpg')
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [sell], [Guarantee], [images]) VALUES (N'YH7HJ43H233', 34, 30000000, CAST(N'2023-05-25' AS Date), CAST(N'2023-05-25' AS Date), N'abc', N'abc', 15, 30, N'images/hp-1.jpg')
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (1, N'DELL TEST 1222', 1, N'gray', N'24 GB', N'Intel I 12', N'1 TB', N'244 Hz', 6, N'<p>GOOD DĐ</p>')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (15, N'Dell ISS', 1, N'green', N'16', N'Intel AMD R6', N'512 GB', N'244 Hz', 1, N'<p>HGJHGF JGJGFJFG</p>')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (28, N'ngoc swp test', 1, N'gray', N'24', N'Intel Intel i 9', N'1 TB', N'244 hz', 0, N'dgnjfnbjf b fb jgf')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (29, N'ACER NITRO TEST IMG', 1, N'green', N'16', N'Intel AMD R 7', N'256 GB', N'15.6 Inchs', 1, N'hgfg dhgfdhgfd gh')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (30, N'DELL NITRO', 1, N'yellow', N'32 GB', N'Intel Intel I 9', N'512 GB', N'244', 1, N'<p>MDGKJFKDGJF 123</p>')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (31, N'TEST ADD NEW', 2, N'green', N'24', N'AMD R 7', N'256 GB', N'244 Hz', 2, N'NGOC 123')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (32, N'HP MKKK1111', 1, N'blue', N'32 GB', N'Intel AMD R5', N'1 TB', N'244 Hz', 1, N'<p>GOOD qqq</p>

<figure class="easyimage easyimage-side"><img alt="" src="blob:http://localhost:9999/08628b6d-ac19-4111-adcb-d1318d86e4b8" width="200" />
<figcaption></figcaption>
</figure>

<p>&nbsp;</p>')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (33, N'DELL 111222', 1, N'gray', N'24', N'AMD R7', N'512 GB', N'244 HZ', 0, N'<p>NCVBJFDHBJ FJHBF JHGF</p>')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (34, N'HP VITIC', 3, N'gray', N'24', N'AMD R7', N'512 GB', N'244 hz', 1, N'<p>Sản Phẩm bán chạy nhất mùa hè năm 2023</p>')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (1, N'DELL', N'good')
INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (2, N'ACER', N'good')
INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (3, N'HP', N'good')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
/****** Object:  Trigger [dbo].[trg_deleteproduct]    Script Date: 6/2/2023 9:56:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create TRIGGER [dbo].[trg_deleteproduct] on [dbo].[Product] for DELETE AS 
BEGIN 
	UPDATE ProductType
	SET Quantity = Quantity-1 FROM ProductType JOIN deleted ON ProductType.productID = deleted.ProductID
END
GO
ALTER TABLE [dbo].[Product] ENABLE TRIGGER [trg_deleteproduct]
GO
/****** Object:  Trigger [dbo].[trg_insertproduct]    Script Date: 6/2/2023 9:56:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_insertproduct] on [dbo].[Product] AFTER INSERT AS 
BEGIN 
	UPDATE ProductType
	SET Quantity = Quantity+0.5 FROM ProductType JOIN inserted ON ProductType.productID = inserted.ProductID
END
GO
ALTER TABLE [dbo].[Product] ENABLE TRIGGER [trg_insertproduct]
GO
/****** Object:  Trigger [dbo].[trg_updateproduct]    Script Date: 6/2/2023 9:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_updateproduct] on [dbo].[Product] AFTER INSERT AS
BEGIN
UPDATE ProductType
SET Quantity = Quantity-1 FROM ProductType JOIN deleted ON ProductType.productID = deleted.ProductID 
UPDATE ProductType
SET Quantity = Quantity +1 FROM ProductType JOIN inserted ON ProductType.productID = inserted.ProductID
END
GO
ALTER TABLE [dbo].[Product] ENABLE TRIGGER [trg_updateproduct]
GO
USE [master]
GO
ALTER DATABASE [ProjectGroupp5] SET  READ_WRITE 
GO
