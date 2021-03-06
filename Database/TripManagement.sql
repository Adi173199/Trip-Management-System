USE [master]
GO
/****** Object:  Database [TravelManagement]    Script Date: 23-02-2021 21:28:21 ******/
CREATE DATABASE [TravelManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TravelManagement.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TravelManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TravelManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TravelManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TravelManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TravelManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TravelManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelManagement] SET  MULTI_USER 
GO
ALTER DATABASE [TravelManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TravelManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TravelManagement]
GO
/****** Object:  Table [dbo].[Traveller]    Script Date: 23-02-2021 21:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traveller](
	[Trid] [int] IDENTITY(1,1) NOT NULL,
	[TravellerName] [nvarchar](50) NULL,
	[TripName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Traveller] PRIMARY KEY CLUSTERED 
(
	[Trid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trip]    Script Date: 23-02-2021 21:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Tname] [nvarchar](50) NULL,
	[Tstartdate] [date] NULL,
	[Ttype] [nvarchar](50) NULL,
	[Tenddate] [date] NULL,
	[Expense] [float] NULL,
	[Persons] [int] NOT NULL,
	[Food] [int] NULL,
	[Hotel] [int] NULL,
	[Travelling] [int] NULL,
	[Other] [int] NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 23-02-2021 21:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [nvarchar](50) NULL,
	[Umobile] [nvarchar](50) NULL,
	[Uemail] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Traveller] ON 

INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (4, N'Adi3100', N'Leh')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (5, N'xyz', N'Kasol')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (6, N'abc123', N'Kashmir')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (7, N'Nikkkhil', N'K2K')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (8, N'VD2606', N'Goa')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (9, N'Smit1005', N'SpitiValley')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (10, N'Test', N'Dubai')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (11, N'Hin', N'Darjelling')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (12, N'Hin1799', N'Darjelling')
INSERT [dbo].[Traveller] ([Trid], [TravellerName], [TripName]) VALUES (13, N'Vaishu', N'Darjelling')
SET IDENTITY_INSERT [dbo].[Traveller] OFF
SET IDENTITY_INSERT [dbo].[Trip] ON 

INSERT [dbo].[Trip] ([Tid], [UserName], [Tname], [Tstartdate], [Ttype], [Tenddate], [Expense], [Persons], [Food], [Hotel], [Travelling], [Other]) VALUES (19, N'Adi3100', N'Leh', CAST(N'2021-02-10' AS Date), N'Group', CAST(N'2021-02-20' AS Date), 39000, 4, 6000, 9000, 18000, 6000)
INSERT [dbo].[Trip] ([Tid], [UserName], [Tname], [Tstartdate], [Ttype], [Tenddate], [Expense], [Persons], [Food], [Hotel], [Travelling], [Other]) VALUES (21, N'abc123', N'Kashmir', CAST(N'2021-02-21' AS Date), N'Group', CAST(N'2021-03-01' AS Date), 38000, 2, 6000, 12000, 15000, 5000)
INSERT [dbo].[Trip] ([Tid], [UserName], [Tname], [Tstartdate], [Ttype], [Tenddate], [Expense], [Persons], [Food], [Hotel], [Travelling], [Other]) VALUES (22, N'Nikkkhil', N'K2K', CAST(N'2021-02-01' AS Date), N'Group', CAST(N'2021-03-01' AS Date), 63000, 2, 12000, 20000, 25000, 6000)
INSERT [dbo].[Trip] ([Tid], [UserName], [Tname], [Tstartdate], [Ttype], [Tenddate], [Expense], [Persons], [Food], [Hotel], [Travelling], [Other]) VALUES (23, N'VD2606', N'Goa', CAST(N'2021-02-27' AS Date), N'Group', CAST(N'2021-03-07' AS Date), 70000, 4, 15000, 30000, 20000, 5000)
INSERT [dbo].[Trip] ([Tid], [UserName], [Tname], [Tstartdate], [Ttype], [Tenddate], [Expense], [Persons], [Food], [Hotel], [Travelling], [Other]) VALUES (24, N'Smit1005', N'SpitiValley', CAST(N'2021-03-08' AS Date), N'Solo', CAST(N'2021-03-18' AS Date), 31000, 1, 5000, 10000, 12000, 4000)
SET IDENTITY_INSERT [dbo].[Trip] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (2, N'Adi3100', N'1234567890', N'adi123@gmail.com', N'1234')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (3, N'xyz', N'987654321', N'xyz@gmailcom', N'0000')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (4, N'abc123', N'111111111', N'abc@gmail.com', N'2222')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (5, N'Nikkkhil', N'901563240', N'nikkhil@gmail.com', N'nik111')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (6, N'VD2606', N'992483654', N'vd2606@gmail.com', N'vd2606')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (7, N'Smit1005', N'9913562411', N'smitsp@yahoo.com', N'smit10')
INSERT [dbo].[User] ([Uid], [Uname], [Umobile], [Uemail], [Password]) VALUES (9, N'Hin', N'6547891230', N'hin@gmail.com', N'1799')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [TravelManagement] SET  READ_WRITE 
GO
