USE [master]
GO
/****** Object:  Database [TeamInfoDB]    Script Date: 8/5/2025 10:27:30 PM ******/
CREATE DATABASE [TeamInfoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeamInfoDB', FILENAME = N'C:\Users\green\TeamInfoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TeamInfoDB_log', FILENAME = N'C:\Users\green\TeamInfoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TeamInfoDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeamInfoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeamInfoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeamInfoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeamInfoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeamInfoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeamInfoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeamInfoDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TeamInfoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeamInfoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeamInfoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeamInfoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeamInfoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeamInfoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeamInfoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeamInfoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeamInfoDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TeamInfoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeamInfoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeamInfoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeamInfoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeamInfoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeamInfoDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TeamInfoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeamInfoDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TeamInfoDB] SET  MULTI_USER 
GO
ALTER DATABASE [TeamInfoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeamInfoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeamInfoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeamInfoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TeamInfoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TeamInfoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TeamInfoDB] SET QUERY_STORE = OFF
GO
USE [TeamInfoDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/5/2025 10:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BreakfastFoods]    Script Date: 8/5/2025 10:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BreakfastFoods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Calories] [int] NOT NULL,
	[Ingredients] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BreakfastFoods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hobbies]    Script Date: 8/5/2025 10:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobbies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SkillLevel] [nvarchar](max) NOT NULL,
	[Frequency] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Hobbies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 8/5/2025 10:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMembers]    Script Date: 8/5/2025 10:27:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMembers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Birthdate] [datetime2](7) NOT NULL,
	[CollegeProgram] [nvarchar](max) NOT NULL,
	[YearInProgram] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TeamMembers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250731202403_InitialCreate', N'9.0.7')
GO
SET IDENTITY_INSERT [dbo].[BreakfastFoods] ON 

INSERT [dbo].[BreakfastFoods] ([Id], [Name], [Category], [Calories], [Ingredients]) VALUES (1, N'Ice Cream', N'Dessert', 450, N'Artificially Flavored Vanilla Reduced Fat Ice Cream')
INSERT [dbo].[BreakfastFoods] ([Id], [Name], [Category], [Calories], [Ingredients]) VALUES (2, N'Pancakes', N'Breakfast', 300, N'Flower Eggs Sugar')
SET IDENTITY_INSERT [dbo].[BreakfastFoods] OFF
GO
SET IDENTITY_INSERT [dbo].[Hobbies] ON 

INSERT [dbo].[Hobbies] ([Id], [Name], [Description], [SkillLevel], [Frequency]) VALUES (1, N'Art', N'Drawing fan art on my ipad', N'drawing for 13+ years', N'every other day')
INSERT [dbo].[Hobbies] ([Id], [Name], [Description], [SkillLevel], [Frequency]) VALUES (2, N'Playing Guitar', N'I like to play the Guitar', N'Not Great', N'A few times a week')
SET IDENTITY_INSERT [dbo].[Hobbies] OFF
GO
SET IDENTITY_INSERT [dbo].[Pets] ON 

INSERT [dbo].[Pets] ([Id], [Name], [Type], [Color], [Age]) VALUES (1, N'Alvin', N'Cat', N'Grey and White', 15)
INSERT [dbo].[Pets] ([Id], [Name], [Type], [Color], [Age]) VALUES (2, N'Winston', N'Dog', N'Grey & White', 10)
SET IDENTITY_INSERT [dbo].[Pets] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamMembers] ON 

INSERT [dbo].[TeamMembers] ([Id], [FullName], [Birthdate], [CollegeProgram], [YearInProgram]) VALUES (1, N'Stanley Reid Thurman', CAST(N'2005-02-02T00:00:00.0000000' AS DateTime2), N'Information Technology', N'Freshman')
INSERT [dbo].[TeamMembers] ([Id], [FullName], [Birthdate], [CollegeProgram], [YearInProgram]) VALUES (2, N'Parker Gebhart', CAST(N'2001-08-29T00:00:00.0000000' AS DateTime2), N'Information Technology', N'Second')
SET IDENTITY_INSERT [dbo].[TeamMembers] OFF
GO
USE [master]
GO
ALTER DATABASE [TeamInfoDB] SET  READ_WRITE 
GO
