USE [master]
GO
/****** Object:  Database [job]    Script Date: 03/09/2022 12:31:41 ******/
CREATE DATABASE [job] ON  PRIMARY 
( NAME = N'job', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\job.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'job_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\job_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [job] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [job].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [job] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [job] SET ANSI_NULLS OFF
GO
ALTER DATABASE [job] SET ANSI_PADDING OFF
GO
ALTER DATABASE [job] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [job] SET ARITHABORT OFF
GO
ALTER DATABASE [job] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [job] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [job] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [job] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [job] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [job] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [job] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [job] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [job] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [job] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [job] SET  DISABLE_BROKER
GO
ALTER DATABASE [job] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [job] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [job] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [job] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [job] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [job] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [job] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [job] SET  READ_WRITE
GO
ALTER DATABASE [job] SET RECOVERY SIMPLE
GO
ALTER DATABASE [job] SET  MULTI_USER
GO
ALTER DATABASE [job] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [job] SET DB_CHAINING OFF
GO
USE [job]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 03/09/2022 12:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NULL,
	[name] [varchar](500) NULL,
	[email] [varchar](500) NULL,
	[password] [varchar](500) NULL,
	[confirmpass] [varchar](500) NULL,
	[mobno] [varchar](500) NULL,
	[qual] [varchar](500) NULL,
	[dob] [varchar](500) NULL,
	[spec] [varchar](500) NULL,
	[exp] [varchar](500) NULL,
	[lsd] [varchar](500) NULL,
	[expectedsal] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON
INSERT [dbo].[Registration] ([id], [category], [name], [email], [password], [confirmpass], [mobno], [qual], [dob], [spec], [exp], [lsd], [expectedsal]) VALUES (1, N'Candidate', N'Aarti Gade', N'aarti@gmail.com', N'Aarti@123', N'Aarti@123', N'9874563210', N'Bsc IT', N'2021-11-18', N'Information Technology', N'1', N'5000', N'15000')
INSERT [dbo].[Registration] ([id], [category], [name], [email], [password], [confirmpass], [mobno], [qual], [dob], [spec], [exp], [lsd], [expectedsal]) VALUES (2, N'Employeer', N'Kartik Thale', N'kartik@gmail.com', N'Kartik@123', N'Kartik@123', N'9876543212', N'', N'2020-03-24', N'', N'', N'800000', N'')
INSERT [dbo].[Registration] ([id], [category], [name], [email], [password], [confirmpass], [mobno], [qual], [dob], [spec], [exp], [lsd], [expectedsal]) VALUES (3, N'Candidate', N'Varun', N'v@gmail.com', N'Varun@123', N'Varun@123', N'9874563210', N'MSC', N'1998-07-07', N'Chemistry', N'1', N'87459', N'90000')
INSERT [dbo].[Registration] ([id], [category], [name], [email], [password], [confirmpass], [mobno], [qual], [dob], [spec], [exp], [lsd], [expectedsal]) VALUES (4, N'Candidate', N'Tarun', N'T@gmail.com', N'Varun@123', N'Varun@123', N'9874563210', N'MCA', N'1998-07-07', N'CS', N'1', N'87459', N'90000')
SET IDENTITY_INSERT [dbo].[Registration] OFF
/****** Object:  Table [dbo].[feeback]    Script Date: 03/09/2022 12:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feeback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NULL,
	[email] [varchar](500) NULL,
	[msg] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[applyjobs]    Script Date: 03/09/2022 12:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[applyjobs](
	[cid] [varchar](500) NULL,
	[jid] [varchar](500) NULL,
	[empid] [varchar](500) NULL,
	[jobtitle] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[mobno] [varchar](50) NULL,
	[qual] [varchar](50) NULL,
	[specialization] [varchar](50) NULL,
	[experiance] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[applyjobs] ([cid], [jid], [empid], [jobtitle], [name], [emailid], [mobno], [qual], [specialization], [experiance]) VALUES (N'1', N'J', N'2', N'Web Designer', N'Aarti Gade', N'aarti@gmail.com', N'9874563210', N'Bsc IT', N'Information Technology', N'1')
INSERT [dbo].[applyjobs] ([cid], [jid], [empid], [jobtitle], [name], [emailid], [mobno], [qual], [specialization], [experiance]) VALUES (N'3', N'J1', N'2', N'Back End', N'Varun', N'v@gmail.com', N'9874563210', N'MCA', N'Chemistry', N'1')
/****** Object:  Table [dbo].[addjobs]    Script Date: 03/09/2022 12:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addjobs](
	[char] [varchar](500) NULL,
	[no] [int] NULL,
	[jid] [varchar](500) NOT NULL,
	[title] [varchar](500) NULL,
	[cname] [varchar](500) NULL,
	[salary] [varchar](500) NULL,
	[qual] [varchar](500) NULL,
	[spec] [varchar](500) NULL,
	[hire] [varchar](500) NULL,
	[description] [varchar](500) NULL,
	[location] [varchar](50) NULL,
	[jobnature] [varchar](50) NULL,
	[experience] [varchar](50) NULL,
	[empid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[jid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[addjobs] ([char], [no], [jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [jobnature], [experience], [empid]) VALUES (N'J', 0, N'J', N'Web Designer', N'TCS', N'1.05L-2.05L', N'Bsc IT', N'ANY', N'10', N'Highly Skilled Employee Needed', N'PAN INDIA', N'Full Time', N'02', N'2')
INSERT [dbo].[addjobs] ([char], [no], [jid], [title], [cname], [salary], [qual], [spec], [hire], [description], [location], [jobnature], [experience], [empid]) VALUES (N'J', 1, N'J1', N'Back End', N'L&T', N'1.05L-2.05L', N'MCA', N'ANY', N'01', N'NA', N'London', N'Full Time', N'02', N'2')
