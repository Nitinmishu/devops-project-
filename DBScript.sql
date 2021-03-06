USE [master]
GO
/****** Object:  Database [LibraryManagement]    Script Date: 01-12-2021 18:57:51 ******/
CREATE DATABASE [LibraryManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibraryManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LibraryManagement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibraryManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LibraryManagement_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibraryManagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibraryManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibraryManagement] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LibraryManagement]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 01-12-2021 18:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [uniqueidentifier] NOT NULL,
	[BookName] [nvarchar](500) NOT NULL,
	[PublisherName] [nvarchar](500) NOT NULL,
	[PublishedDate] [date] NOT NULL,
	[Version] [varchar](10) NOT NULL,
	[AutherName] [nvarchar](500) NOT NULL,
	[BookPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[FileName] [nvarchar](500) NULL,
	[FileExtention] [varchar](10) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginUser]    Script Date: 01-12-2021 18:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Firstname] [nvarchar](100) NOT NULL,
	[Lastname] [nvarchar](100) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[EmaiId] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_LoginUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Book] ([BookId], [BookName], [PublisherName], [PublishedDate], [Version], [AutherName], [BookPrice], [Quantity], [FileName], [FileExtention]) VALUES (N'5f7e6244-20a4-4b7b-8022-11bc1a7afc11', N'CLAR-Project-Spec-Oct2021', N'NCI', CAST(0xA5220B00 AS Date), N'1.0', N'Author1', 100, 5, N'CLAR-Project-Spec-Oct2021', N'pdf')
INSERT [dbo].[Book] ([BookId], [BookName], [PublisherName], [PublishedDate], [Version], [AutherName], [BookPrice], [Quantity], [FileName], [FileExtention]) VALUES (N'080bf570-1834-4cbc-bc9f-161b34d0e860', N'YCSB-Lab-Mar21', N'YCSB', CAST(0xDF2C0B00 AS Date), N'1.5', N'Author3', 300, 3, N'YCSB-Lab-Mar21', N'pdf')
INSERT [dbo].[Book] ([BookId], [BookName], [PublisherName], [PublishedDate], [Version], [AutherName], [BookPrice], [Quantity], [FileName], [FileExtention]) VALUES (N'c31e4a67-02eb-4dd2-80e0-41944093667e', N'Book 2', N'Published 1', CAST(0x04420B00 AS Date), N'1.0', N'Author 1', 366, 111, NULL, NULL)
INSERT [dbo].[Book] ([BookId], [BookName], [PublisherName], [PublishedDate], [Version], [AutherName], [BookPrice], [Quantity], [FileName], [FileExtention]) VALUES (N'215d1c39-aec7-4681-9cda-591cc6e79efa', N'Book 1', N'Via Com Publishcation', CAST(0x21260B00 AS Date), N'1.0', N'Author 1', 366, 10, NULL, NULL)
INSERT [dbo].[Book] ([BookId], [BookName], [PublisherName], [PublishedDate], [Version], [AutherName], [BookPrice], [Quantity], [FileName], [FileExtention]) VALUES (N'fac0b9ce-e7fc-431e-a6b2-b648687d7bb0', N'Gr.-06library-project-report', N'Library', CAST(0x5F2B0B00 AS Date), N'1.2', N'Author2', 250, 6, N'Gr.-06library-project-report', N'pdf')
INSERT [dbo].[LoginUser] ([UserId], [Username], [Password], [Firstname], [Lastname], [Mobile], [EmaiId], [Address], [IsDelete]) VALUES (N'd020c6e6-21f4-4195-bd30-8604796b0e97', N'aa', N'aa', N'Dinesh', N'Kanojiya', N'9819656341', N'dinesh@asasdsd.com', N'address1', NULL)
INSERT [dbo].[LoginUser] ([UserId], [Username], [Password], [Firstname], [Lastname], [Mobile], [EmaiId], [Address], [IsDelete]) VALUES (N'73032370-e1c5-4658-b98b-bb32a90ff3fa', N'bb', N'bb', N'Manish', N'Kukreja', N'7485963021', N'manish@man.com', N'address2', NULL)
INSERT [dbo].[LoginUser] ([UserId], [Username], [Password], [Firstname], [Lastname], [Mobile], [EmaiId], [Address], [IsDelete]) VALUES (N'710f7c7b-fdd2-44d0-a8ed-52b51a5247c1', N'cc', N'cc', N'Komal', N'Kanojiya', N'3214569875', N'komal@kai.com', N'address2', NULL)
INSERT [dbo].[LoginUser] ([UserId], [Username], [Password], [Firstname], [Lastname], [Mobile], [EmaiId], [Address], [IsDelete]) VALUES (N'9d2db1f5-75d2-4e34-8450-860ab6f1a259', N'dd', N'dd', N'Narendra', N'Khanna', N'74108520963', N'Addres5', N'narendra@nar.com', 1)
INSERT [dbo].[LoginUser] ([UserId], [Username], [Password], [Firstname], [Lastname], [Mobile], [EmaiId], [Address], [IsDelete]) VALUES (N'0d2d73aa-e8ad-489a-96d3-efa057748bb2', N'ee', N'ee', N'Manisha', N'Lavina', N'3265987410', N'dineh@sss.com', N'Address2', NULL)
USE [master]
GO
ALTER DATABASE [LibraryManagement] SET  READ_WRITE 
GO
