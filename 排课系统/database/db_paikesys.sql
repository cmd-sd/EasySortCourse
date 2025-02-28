USE [master]
GO
/****** Object:  Database [db_paikesys]    Script Date: 2019/10/31 19:06:28 ******/
CREATE DATABASE [db_paikesys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_paikesys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_paikesys.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_paikesys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_paikesys_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_paikesys] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_paikesys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_paikesys] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_paikesys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_paikesys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_paikesys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_paikesys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_paikesys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_paikesys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_paikesys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_paikesys] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_paikesys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_paikesys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_paikesys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_paikesys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_paikesys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_paikesys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_paikesys] SET RECOVERY FULL 
GO
ALTER DATABASE [db_paikesys] SET  MULTI_USER 
GO
ALTER DATABASE [db_paikesys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_paikesys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_paikesys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_paikesys] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_paikesys', N'ON'
GO
USE [db_paikesys]
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](25) NULL,
	[userpwd] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_courseplan]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_courseplan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseid] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[khtype] [varchar](25) NULL,
	[score] [float] NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetable]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskid] [int] NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetask]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetask](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuhao] [varchar](25) NULL,
	[courseid] [varchar](25) NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[coursexingzhi] [varchar](25) NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[xueshiallz] [int] NULL,
	[xueshijiangshouz] [int] NULL,
	[xueshishiyanz] [int] NULL,
	[zhouci] [varchar](25) NULL,
	[khtype] [varchar](25) NULL,
	[courserongliang] [int] NULL,
	[teachidz] [varchar](25) NULL,
	[teachidf] [varchar](25) NULL,
	[teachids] [varchar](25) NULL,
	[dianjiao] [varchar](10) NULL,
	[shuangyu] [varchar](10) NULL,
	[remark] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_major]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[remark] [text] NULL,
	[nums] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_taboo]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_taboo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL,
	[weeksstart] [varchar](5) NULL,
	[weeksend] [varchar](5) NULL,
	[tabootype] [varchar](1) NULL,
	[teachid] [varchar](25) NULL,
	[shenhe] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_teacher]    Script Date: 2019/10/31 19:06:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teachid] [varchar](25) NULL,
	[name] [varchar](25) NULL,
	[zhicheng] [varchar](25) NULL,
	[xueli] [varchar](25) NULL,
	[pwd] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[t_admin] ON 

INSERT [dbo].[t_admin] ([id], [username], [userpwd]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[t_admin] OFF
SET IDENTITY_INSERT [dbo].[t_courseplan] ON 

INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (1, N'BG0000020X0', N'就业指导', N'考查', 1.5, 24, 24, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (2, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (3, N'BS00705', N'电子工程训练II', N'考查', 3, 48, 0, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (4, N'BS0100025X0', N'生产实习', N'考查', 3, 48, 0, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (5, N'BT0200063X0', N'微波技术与天线', N'考试', 3, 48, 42, 6, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (6, N'BT0200098X0', N'专业外语（通信类）', N'考查', 2, 32, 32, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (7, N'RZ0200022X0', N'宽带接入技术', N'考查', 2, 32, 32, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (8, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', 2, 32, 32, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (9, N'XZ0200001X0', N'DSP原理及应用', N'考查', 2, 32, 16, 16, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (10, N'XZ0200025X0', N'嵌入式系统与应用', N'考查', 2, 32, 16, 16, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (11, N'XZ0200082X0', N'信息论与信道编码', N'考试', 3, 48, 48, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (12, N'XZ0200083X0', N'现代通信网络与技术', N'考试', 3, 48, 42, 6, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (13, N'XZ0201010X0', N'现代光纤通信系统', N'考查', 2, 32, 28, 4, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (14, N'RZ0200016X0', N'电子信息对抗技术', N'考查', 2, 32, 26, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (15, N'RZ0200022X0', N'宽带接入技术', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (16, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (17, N'RZ0200036X0', N'天线技术', N'考查', 2, 32, 28, 4, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (18, N'RZ0200044X0', N'网络编程技术', N'考查', 2, 32, 16, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (19, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (20, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (21, N'RZ0200052X0', N'现代通信技术及标准', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (22, N'RZ0200056X0', N'信息系统集成技术', N'考查', 2, 32, 28, 4, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (23, N'RZ0200091X0', N'光通信网络', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (24, N'RZ0201008X0', N'通信网络仿真', N'考查', 2, 32, 16, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (25, N'XZ0200103X0', N'微波通信技术', N'考查', 2, 32, 28, 4, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (26, N'XZ0201000X0', N'DSP设计基础', N'考查', 2, 32, 16, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (27, N'XZ0201005X0', N'射频电路及CAD技术', N'考试', 3, 48, 38, 4, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (28, N'XZ0201010X0', N'现代光纤通信系统', N'考查', 2, 32, 28, 4, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (29, N'XZ0201011X0', N'现代交换技术', N'考查', 3, 48, 42, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (30, N'XZ0201012X0', N'现代通信网络技术', N'考试', 3, 48, 42, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (31, N'XZ0201013X0', N'现代移动通信系统', N'考试', 3, 48, 42, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (32, N'XZ02Y1000X0', N'信息论与编码', N'考试', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (33, N'XZ02Y100120', N'扩频通信B', N'考试', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (34, N'BG0000020X0', N'就业指导', N'考查', 1.5, 24, 24, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (35, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (36, N'BS00705', N'电子工程训练II', N'考查', 3, 48, 0, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (37, N'BS0100025X0', N'生产实习', N'', 3, 48, 0, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (38, N'BT0200063X0', N'微波技术与天线', N'考试', 3, 48, 42, 6, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (39, N'BT0200102X0', N'专业外语（信息类）', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (40, N'RZ0200004X0', N'RFID技术与应用', N'考查', 2, 32, 26, 6, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (41, N'RZ0200006X0', N'操作系统原理及Linux实现', N'考查', 2, 32, 20, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (42, N'RZ0200019X0', N'光电技术与应用', N'考查', 2, 32, 28, 4, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (43, N'RZ0200022X0', N'宽带接入技术', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (44, N'RZ0200053X0', N'现代通信网络中的交换技术', N'考查', 2, 32, 28, 4, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (45, N'RZ0200069X0', N'测量学', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (46, N'RZ0200090X0', N'惯性导航原理及应用', N'考查', 2, 32, 24, 8, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (47, N'RZ0200120X0', N'GPS系统及其应用', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (48, N'RZ0202019X0', N'可编程ASIC原理及应用', N'考查', 2, 32, 16, 16, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (49, N'RZ0202028X0', N'天线与电波传播', N'考查', 2, 32, 28, 4, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (50, N'RZ0202063X0', N'航天器轨道动力学', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (51, N'XZ0200001X0', N'DSP原理及应用', N'考试', 2, 32, 16, 16, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (52, N'XZ0200089X0', N'信息论基础', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (53, N'XZ0202060X0', N'信息论与信息编码', N'考查', 3, 48, 48, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (54, N'XZ0202061X1', N'嵌入式原理及应用', N'考查', 2, 32, 16, 16, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (55, N'BG0000020X0', N'就业指导', N'考查', 1.5, 24, 24, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (56, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (57, N'BS00705', N'电子工程训练II', N'考查', 3, 48, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (58, N'BS0100025X0', N'生产实习', N'考查', 3, 48, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (59, N'BS0200028X0', N'生产实习', N'考查', 3, 48, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (60, N'BT0203005X2', N'光电子学（双语）', N'考试', 3, 48, 42, 6, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (61, N'BT0203012X0', N'微波技术', N'考查', 2.5, 40, 36, 4, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (62, N'BT0203019X0', N'专业外语（电子科学类）', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (63, N'RZ0200004X0', N'RFID技术与应用', N'考查', 2, 32, 26, 6, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (64, N'RZ0200011X0', N'电磁兼容', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (65, N'RZ0200016X0', N'电子信息对抗技术', N'考查', 2, 32, 26, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (66, N'RZ0200021X0', N'局域网技术', N'考查', 2, 32, 16, 16, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (67, N'RZ0200022X0', N'宽带接入技术', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (68, N'RZ0200025X0', N'嵌入式系统与应用', N'考查', 2, 32, 16, 16, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (69, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (70, N'RZ0200104X0', N'DSP技术', N'考查', 2, 32, 16, 16, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (71, N'RZ0203023X0', N'现代交换技术', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (72, N'XZ0203024X1', N'微带电路', N'考查', 2, 32, 28, 4, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (73, N'XZ0203027X0', N'光电器件及应用', N'考查', 2, 32, 28, 4, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (74, N'BG0204005X0', N'就业指导', N'考查', 1.5, 24, 24, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (75, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (76, N'BS00705', N'电子工程训练II', N'考查', 3, 48, 0, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (77, N'BS0100025X0', N'生产实习', N'考查', 3, 48, 0, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (78, N'BT0206003X0', N'IC设计基础与实践', N'考试', 3.5, 56, 16, 40, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (79, N'BT0206005X0', N'半导体集成电路', N'考试', 4, 64, 64, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (80, N'BT0206019X0', N'专业外语（微电子类）', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (81, N'RZ0200004X0', N'RFID技术与应用', N'考查', 2, 32, 26, 6, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (82, N'RZ0200011X0', N'电磁兼容', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (83, N'RZ0200019X0', N'光电技术与应用', N'考查', 2, 32, 28, 4, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (84, N'RZ0200025X0', N'嵌入式系统与应用', N'考查', 2, 32, 16, 16, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (85, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (86, N'RZ0200075X0', N'微带电路', N'考查', 2, 32, 28, 4, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (87, N'RZ0200104X0', N'DSP技术', N'考查', 2, 32, 16, 16, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (88, N'XZ0206018X0', N'现代模拟集成电路原理及应用', N'考试', 2, 32, 32, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (89, N'BG0000020X0', N'就业指导', N'考查', 1.5, 24, 24, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (90, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (91, N'BS00705', N'电子工程训练II', N'考查', 3, 48, 0, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (92, N'BS0100025X0', N'生产实习', N'考查', 3, 48, 0, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (93, N'BT0205018X0', N'专业外语（信息对抗类）', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (94, N'RZ0200011X0', N'电磁兼容', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (95, N'RZ0200019X0', N'光电技术与应用', N'考查', 2, 32, 28, 4, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (96, N'RZ0200021X0', N'局域网技术', N'考查', 2, 32, 16, 16, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (97, N'RZ0200053X0', N'现代通信网络中的交换技术', N'考查', 2, 32, 28, 4, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (98, N'RZ0205014X0', N'雷达系统', N'考查', 2, 32, 24, 8, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (99, N'XZ0200000X0', N'ARM原理及应用', N'考查', 2, 32, 16, 16, N'信息对抗技术', N'2019')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (100, N'XZ0200001X0', N'DSP原理及应用', N'考试', 2, 32, 16, 16, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (101, N'XZ0205012X0', N'雷达原理与对抗技术', N'考试', 3, 48, 32, 16, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (102, N'BG0000027X0', N'体育4', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (103, N'BG0000175X0', N'毛泽东思想与中国特色社会主义理论体系概论', N'考试', 5.5, 88, 68, 20, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (104, N'BG0000007X0', N'大学英语4', N'考试', 3.5, 56, 56, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (105, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (106, N'BS0000180X0', N'英语强化', N'考查', 1, 16, 0, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (107, N'BS0000266X3', N'数字逻辑实验', N'考查', 1, 16, 0, 16, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (108, N'BS0200038X3', N'通信电子电路实验', N'考查', 1, 16, 0, 16, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (109, N'BS0200086X3', N'信号分析与处理的MATLAB程序设计实验', N'考查', 1.5, 24, 0, 24, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (110, N'BT0200033X1', N'数字信号处理(外文教材)', N'考试', 3.5, 56, 56, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (111, N'BT0200037X0', N'通信电子电路', N'考查', 3.5, 56, 56, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (112, N'BT0200114X0', N'数字逻辑', N'考试', 4, 64, 64, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (113, N'BT0203020X0', N'半导体物理与器件', N'考试', 2, 32, 32, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (114, N'BG0000027X0', N'体育4', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (115, N'BG0000175X0', N'毛泽东思想与中国特色社会主义理论体系概论', N'考试', 5.5, 88, 68, 20, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (116, N'BG0000007X0', N'大学英语4', N'考试', 3.5, 56, 56, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (117, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (118, N'BS0000180X0', N'英语强化', N'考查', 1, 16, 0, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (119, N'BS0000266X3', N'数字逻辑实验', N'考查', 1, 16, 0, 16, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (120, N'BS0200038X3', N'通信电子电路实验', N'考查', 1, 16, 0, 16, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (121, N'BS0200086X3', N'信号分析与处理的MATLAB程序设计实验', N'考查', 1.5, 24, 0, 24, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (122, N'BT0200033X1', N'数字信号处理(外文教材)', N'考试', 3.5, 56, 56, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (123, N'BT0200114X0', N'数字逻辑', N'考试', 4, 64, 64, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (124, N'BT0202047X0', N'通信电子电路', N'考试', 3.5, 56, 56, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (125, N'BT0206008X0', N'固体物理', N'考试', 2, 32, 32, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (126, N'BG0000027X0', N'体育4', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (127, N'BG0000175X0', N'毛泽东思想与中国特色社会主义理论体系概论', N'考试', 5.5, 88, 68, 20, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (128, N'BG0000007X0', N'大学英语4', N'考试', 3.5, 56, 56, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (129, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (130, N'BS0000180X0', N'英语强化', N'考查', 1, 16, 0, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (131, N'BS0000266X3', N'数字逻辑实验', N'考查', 1, 16, 0, 16, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (132, N'BS0200038X3', N'通信电子电路实验', N'考查', 1, 16, 0, 16, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (133, N'BS0200086X3', N'信号分析与处理的MATLAB程序设计实验', N'考查', 1.5, 24, 0, 24, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (134, N'BT0200033X1', N'数字信号处理(外文教材)', N'考试', 3.5, 56, 56, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (135, N'BT0200037X0', N'通信电子电路', N'考查', 3.5, 56, 56, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (136, N'BT0200114X0', N'数字逻辑', N'考试', 4, 64, 64, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (137, N'BG0000027X0', N'体育4', N'考查', 2, 32, 32, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (138, N'BG0000175X0', N'毛泽东思想与中国特色社会主义理论体系概论', N'考试', 5.5, 88, 68, 20, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (139, N'BG0000007X0', N'大学英语4', N'考试', 3.5, 56, 56, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (140, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (141, N'BS0000180X0', N'英语强化', N'考查', 1, 16, 0, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (142, N'BS0000266X3', N'数字逻辑实验', N'考查', 1, 16, 0, 16, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (143, N'BS0200038X3', N'通信电子电路实验', N'考查', 1, 16, 0, 16, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (144, N'BS0200086X3', N'信号分析与处理的MATLAB程序设计实验', N'考查', 1.5, 24, 0, 24, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (145, N'BT0200033X1', N'数字信号处理(外文教材)', N'考试', 3.5, 56, 56, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (146, N'BT0200114X0', N'数字逻辑', N'考试', 4, 64, 64, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (147, N'BT0201006X0', N'随机信号分析基础', N'考查', 1.5, 24, 24, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (148, N'BT0202047X0', N'通信电子电路', N'考试', 3.5, 56, 56, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (149, N'RZ0200081X0', N'数据结构', N'考查', 2, 32, 26, 6, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (150, N'BG0000027X0', N'体育4', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (151, N'BG0000175X0', N'毛泽东思想与中国特色社会主义理论体系概论', N'考试', 5.5, 88, 68, 20, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (152, N'BG0000007X0', N'大学英语4', N'考试', 3.5, 56, 56, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (153, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (154, N'BS0000180X0', N'英语强化', N'考查', 1, 16, 0, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (155, N'BS0000266X3', N'数字逻辑实验', N'考查', 1, 16, 0, 16, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (156, N'BS0200038X3', N'通信电子电路实验', N'考查', 1, 16, 0, 16, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (157, N'BS0200086X3', N'信号分析与处理的MATLAB程序设计实验', N'考查', 1.5, 24, 0, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (158, N'BT0200033X1', N'数字信号处理(外文教材)', N'考试', 3.5, 56, 56, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (159, N'BT0200037X0', N'通信电子电路', N'考查', 3.5, 56, 56, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (160, N'BT0200114X0', N'数字逻辑', N'考试', 4, 64, 64, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (161, N'BT0201006X0', N'随机信号分析基础', N'考查', 1.5, 24, 24, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (162, N'BG0000009X0', N'大学英语2', N'考试', 4, 64, 64, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (163, N'BG0000026X0', N'思想道德修养与法律基础', N'考查', 3, 48, 40, 8, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (164, N'BG0000029X0', N'体育2', N'考查', 2, 32, 32, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (165, N'BJ000000410', N'大学物理A1', N'考试', 4, 64, 64, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (166, N'BJ000001410', N'高等数学A2', N'考试', 5.5, 88, 88, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (167, N'BJ000003420', N'线性代数B', N'考查', 2, 32, 32, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (168, N'BS0000017X0', N'机械工程训练1', N'考查', 2, 32, 0, 32, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (169, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (170, N'BS0000032X0', N'物理实验1', N'考查', 1.5, 24, 0, 24, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (171, N'BS0200014X3', N'电路分析基础实验', N'考查', 1, 16, 0, 16, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (172, N'BT0200012X0', N'电路分析基础', N'考查', 3.5, 56, 56, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (173, N'', N'', N'', 0, 0, 0, 0, N'通信工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (174, N'BG0000009X0', N'大学英语2', N'考试', 4, 64, 64, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (175, N'BG0000026X0', N'思想道德修养与法律基础', N'考查', 3, 48, 40, 8, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (176, N'BG0000029X0', N'体育2', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (177, N'BJ000000410', N'大学物理A1', N'考试', 4, 64, 64, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (178, N'BJ000001410', N'高等数学A2', N'考试', 5.5, 88, 88, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (179, N'BJ000003420', N'线性代数B', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (180, N'BS0000017X0', N'机械工程训练1', N'考查', 2, 32, 0, 32, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (181, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (182, N'BS0000032X0', N'物理实验1', N'考查', 1.5, 24, 0, 24, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (183, N'BS0200014X3', N'电路分析基础实验', N'考查', 1, 16, 0, 16, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (184, N'BT0200012X0', N'电路分析基础', N'考查', 3.5, 56, 56, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (185, N'', N'', N'', 0, 0, 0, 0, N'电子信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (186, N'BG0000009X0', N'大学英语2', N'考试', 4, 64, 64, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (187, N'BG0000026X0', N'思想道德修养与法律基础', N'考查', 3, 48, 40, 8, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (188, N'BG0000029X0', N'体育2', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (189, N'BJ000000410', N'大学物理A1', N'考试', 4, 64, 64, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (190, N'BJ000001410', N'高等数学A2', N'考试', 5.5, 88, 88, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (191, N'BJ000003420', N'线性代数B', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (192, N'BS0000017X0', N'机械工程训练1', N'考查', 2, 32, 0, 32, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (193, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (194, N'BS0000032X0', N'物理实验1', N'考查', 1.5, 24, 0, 24, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (195, N'BS0200014X3', N'电路分析基础实验', N'考查', 1, 16, 0, 16, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (196, N'BT0200012X0', N'电路分析基础', N'考查', 3.5, 56, 56, 0, N'电子科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (197, N'BG0000009X0', N'大学英语2', N'考试', 4, 64, 64, 0, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (198, N'BG0000026X0', N'思想道德修养与法律基础', N'考查', 3, 48, 40, 8, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (199, N'BG0000029X0', N'体育2', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2018')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (200, N'BJ000000410', N'大学物理A1', N'考试', 4, 64, 64, 0, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (201, N'BJ000001410', N'高等数学A2', N'考试', 5.5, 88, 88, 0, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (202, N'BJ000003420', N'线性代数B', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (203, N'BS0000017X0', N'机械工程训练1', N'考查', 2, 32, 0, 32, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (204, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (205, N'BS0000032X0', N'物理实验1', N'考查', 1.5, 24, 0, 24, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (206, N'BS0200014X3', N'电路分析基础实验', N'考查', 1, 16, 0, 16, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (207, N'BT0200012X0', N'电路分析基础', N'考查', 3.5, 56, 56, 0, N'微电子科学与工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (208, N'BG0000009X0', N'大学英语2', N'考试', 4, 64, 64, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (209, N'BG0000026X0', N'思想道德修养与法律基础', N'考查', 3, 48, 40, 8, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (210, N'BG0000029X0', N'体育2', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (211, N'BJ000000410', N'大学物理A1', N'考试', 4, 64, 64, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (212, N'BJ000001410', N'高等数学A2', N'考试', 5.5, 88, 88, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (213, N'BJ000003420', N'线性代数B', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (214, N'BS0000017X0', N'机械工程训练1', N'考查', 2, 32, 0, 32, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (215, N'BS0000025X0', N'社会实践', N'考查', 0.5, 8, 0, 8, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (216, N'BS0000032X0', N'物理实验1', N'考查', 1.5, 24, 0, 24, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (217, N'BS0200014X3', N'电路分析基础实验', N'考查', 1, 16, 0, 16, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (218, N'BT0200012X0', N'电路分析基础', N'考查', 3.5, 56, 56, 0, N'信息对抗技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (219, N'BS0000035X0', N'形势与政策实践', N'考查', 0.5, 8, 0, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (220, N'BS0200058X0', N'专业工程设计', N'考查', 3, 48, 0, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (221, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (222, N'RZ0200036X0', N'天线技术', N'考查', 2, 32, 28, 4, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (223, N'RZ0200044X0', N'网络编程技术', N'考查', 2, 32, 16, 16, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (224, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (225, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (226, N'RZ0200052X0', N'现代通信技术及标准', N'考查', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (227, N'RZ0200056X0', N'信息系统集成技术', N'考查', 2, 32, 28, 4, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (228, N'RZ0200091X0', N'光通信网络', N'考查', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (229, N'XZ0200103X0', N'微波通信技术', N'考查', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (230, N'XZ0201000X0', N'DSP设计基础', N'考查', 2, 32, 16, 16, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (231, N'XZ0201004X2', N'扩频通信（双语教学）', N'考试', 2, 32, 32, 0, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (232, N'XZ0201005X0', N'射频电路及CAD技术', N'考试', 3, 48, 38, 4, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (233, N'XZ0201011X0', N'现代交换技术', N'考查', 3, 48, 42, 6, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (234, N'XZ0201013X0', N'现代移动通信系统', N'考试', 3, 48, 42, 6, N'通信工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (235, N'BS0000035X0', N'形势与政策实践', N'考查', 0.5, 8, 0, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (236, N'BS0202033X0', N'信息系统综合实训', N'考查', 3, 48, 0, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (237, N'BS0202065X0', N'导航系统综合实训', N'考查', 3, 48, 0, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (238, N'RZ0200008X0', N'传感器原理与技术', N'考查', 2, 32, 26, 6, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (239, N'RZ0200022X0', N'宽带接入技术', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (240, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (241, N'RZ0200044X0', N'网络编程技术', N'考查', 2, 32, 16, 16, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (242, N'RZ0200052X0', N'现代通信技术及标准', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (243, N'RZ0200059X0', N'无线通信新技术', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (244, N'RZ0200068X0', N'编码技术', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (245, N'RZ0202066X0', N'卫星通信', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (246, N'XZ0200032X0', N'数字视频技术', N'考查', 2, 32, 26, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (247, N'XZ0200067X0', N'GPS系统原理及应用', N'考查', 3, 48, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (248, N'XZ0200072X0', N'多系统融合技术', N'考查', 3, 48, 24, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (249, N'XZ0201004X2', N'扩频通信（双语教学）', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (250, N'XZ0202021X0', N'模式识别', N'考查', 2, 32, 26, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (251, N'XZ0202032X0', N'信号与系统及处理', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (252, N'XZ0202038X0', N'语音信号处理', N'考查', 2, 32, 26, 6, N'电子信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (253, N'BS0000035X0', N'形势与政策实践', N'考查', 0.5, 8, 0, 0, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (254, N'BS0200058X0', N'专业工程设计', N'考查', 3, 48, 0, 0, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (255, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (256, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (257, N'XZ0200103X0', N'微波通信技术', N'考试', 2, 32, 32, 0, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (258, N'XZ0203001X0', N'电波传播与天线', N'考查', 3, 48, 42, 6, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (259, N'XZ0203006X0', N'光通信技术', N'考试', 3, 48, 42, 6, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (260, N'XZ0203007X0', N'光通信网络与交换', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (261, N'XZ0203010X0', N'微波电路及CAD技术', N'考试', 3, 48, 38, 4, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (262, N'XZ0203021X0', N'现代光电信息处理', N'考试', 2, 32, 28, 4, N'电子科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (263, N'BS0000035X0', N'形势与政策实践', N'考查', 0.5, 8, 0, 0, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (264, N'BS0200058X0', N'专业工程设计', N'考查', 3, 48, 0, 0, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (265, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (266, N'RZ0200036X0', N'天线技术', N'考查', 2, 32, 28, 4, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (267, N'RZ0200052X0', N'现代通信技术及标准', N'考查', 2, 32, 32, 0, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (268, N'RZ0200056X0', N'信息系统集成技术', N'考查', 2, 32, 28, 4, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (269, N'RZ0200064X0', N'射频技术与仿真', N'考查', 2, 32, 16, 0, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (270, N'RZ0206009X0', N'集成电路反向设计基础', N'考查', 1, 16, 0, 16, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (271, N'RZ0206011X0', N'集成电路可测性设计与测试验证', N'考查', 2, 32, 16, 16, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (272, N'XZ0206000X0', N'ASIC设计原理及应用', N'考试', 2, 32, 24, 8, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (273, N'XZ0206004X0', N'VLSI设计基础', N'考试', 2, 32, 28, 4, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (274, N'XZ0206010X2', N'集成电路工艺（双语教学）', N'考试', 2, 32, 32, 0, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (275, N'XZ0206013X0', N'射频集成电路设计', N'考试', 2, 32, 28, 4, N'微电子学', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (276, N'BS0000035X0', N'形势与政策实践', N'考查', 0.5, 8, 0, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (277, N'BS0200058X0', N'专业工程设计', N'考查', 3, 48, 0, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (278, N'RZ0200027X0', N'软件无线电技术概论', N'考查', 2, 32, 26, 6, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (279, N'RZ0200044X0', N'网络编程技术', N'考查', 2, 32, 16, 16, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (280, N'RZ0200064X0', N'射频技术与仿真', N'考查', 2, 32, 16, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (281, N'RZ0205008X0', N'JAVA程序设计', N'考查', 2, 32, 24, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (282, N'RZ0205009X0', N'Android应用与开发', N'考查', 2, 32, 20, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (283, N'RZ0205015X0', N'信息安全技术', N'考查', 3, 48, 42, 6, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (284, N'RZ0205016X0', N'嵌入式LINUX应用与开发', N'考查', 2, 32, 20, 12, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (285, N'RZ0205020X0', N'扩频通信', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (286, N'XZ0200065X0', N'WINDOWS程序设计', N'考查', 2, 32, 26, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (287, N'XZ0200066X0', N'密码算法与设计（双语教学）', N'考查', 2, 32, 24, 0, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (288, N'XZ0205013X0', N'网络对抗技术', N'考试', 3, 48, 32, 16, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (289, N'XZ0205017X0', N'通信对抗技术', N'考试', 2, 32, 26, 6, N'信息对抗技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (290, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (291, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (292, N'BS0200020X0', N'基础工程设计', N'考查', 2, 32, 0, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (293, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', 1, 16, 0, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (294, N'BT0200010X0', N'电磁场', N'考试', 3.5, 56, 54, 2, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (295, N'BT0200046X0', N'微机原理与接口技术1', N'考试', 3.5, 56, 56, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (296, N'BT020006111', N'计算机网络A（外文教材）', N'考试', 3.5, 56, 48, 0, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (297, N'RZ0200002X0', N'EDA技术', N'考查', 2, 32, 8, 24, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (298, N'RZ0200009X0', N'单片机原理及应用', N'考查', 2, 32, 16, 16, N'通信工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (299, N'XZ0201007X0', N'锁相与频率合成', N'考查', 2, 32, 28, 4, N'通信工程', N'2019')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (300, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (301, N'BG0200002X0', N'EDA技术', N'考试', 2, 32, 8, 24, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (302, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (303, N'BS020004013', N'通信原理A实验', N'考查', 1, 16, 0, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (304, N'BT020003910', N'通信原理A', N'考试', 4, 64, 64, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (305, N'BT0200063X0', N'微波技术与天线', N'考查', 3, 48, 42, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (306, N'BT0200096X0', N'计算机通信与网络', N'考试', 3.5, 56, 40, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (307, N'BT0200098X0', N'专业外语（通信类）', N'考查', 2, 32, 32, 0, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (308, N'BT02Y1010X0', N'单片微型计算机与接口技术', N'考试', 3.5, 56, 28, 28, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (309, N'RZ0200004X0', N'RFID技术与应用', N'考查', 2, 32, 26, 6, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (310, N'RZ0200026X0', N'软件技术基础', N'考查', 2, 32, 24, 8, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (311, N'RZ0200095X0', N'FPGA通信设计基础', N'考查', 2, 32, 16, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (312, N'RZ02Y1012X0', N'嵌入式系统', N'考查', 2, 32, 16, 16, N'通信工程(卓越)', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (313, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (314, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (315, N'BS0200020X0', N'基础工程设计', N'考查', 2, 32, 0, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (316, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', 1, 16, 0, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (317, N'BT0200002X0', N'EDA技术', N'考查', 2, 32, 8, 24, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (318, N'BT0200010X0', N'电磁场', N'考试', 3.5, 56, 54, 2, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (319, N'BT0200046X0', N'微机原理与接口技术1', N'考试', 3.5, 56, 56, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (320, N'BT020006111', N'计算机网络A（外文教材）', N'考试', 3.5, 56, 48, 0, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (321, N'RZ0200009X0', N'单片机原理及应用', N'考查', 2, 32, 16, 16, N'电子信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (322, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (323, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (324, N'BS0200020X0', N'基础工程设计', N'考查', 2, 32, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (325, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', 1, 16, 0, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (326, N'BT0200002X0', N'EDA技术', N'考查', 2, 32, 8, 24, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (327, N'BT0200010X0', N'电磁场', N'考试', 3.5, 56, 54, 2, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (328, N'BT0200046X0', N'微机原理与接口技术1', N'考试', 3.5, 56, 56, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (329, N'BT0203026X0', N'光学工程', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (330, N'RZ0200009X0', N'单片机原理及应用', N'考查', 2, 32, 16, 16, N'电子科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (331, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (332, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (333, N'BS0200020X0', N'基础工程设计', N'考查', 2, 32, 0, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (334, N'BT0200071X0', N'电磁场与微波技术', N'考试', 4, 64, 60, 4, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (335, N'BT0206006X0', N'半导体物理', N'考试', 3, 48, 40, 8, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (336, N'BT0206017X0', N'微电子技术基础', N'考试', 3, 48, 40, 8, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (337, N'RZ0200009X0', N'单片机原理及应用', N'考查', 2, 32, 16, 16, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (338, N'RZ0200032X0', N'数字视频技术', N'考查', 2, 32, 26, 0, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (339, N'XZ0206012X0', N'计算机组成与体系结构', N'考试', 4, 64, 56, 8, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (340, N'XZ0206015X0', N'数字系统设计', N'考试', 3.5, 56, 40, 16, N'微电子科学与工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (341, N'BG0000048X0', N'形势与政策3', N'考查', 0.5, 8, 8, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (342, N'BS0000052X0', N'大学生安全教育3', N'考查', 0.5, 8, 8, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (343, N'BS0200020X0', N'基础工程设计', N'考查', 2, 32, 0, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (344, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', 1, 16, 0, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (345, N'BT0200002X0', N'EDA技术', N'考查', 2, 32, 8, 24, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (346, N'BT0200046X0', N'微机原理与接口技术1', N'考试', 3.5, 56, 56, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (347, N'BT020006111', N'计算机网络A（外文教材）', N'考试', 3.5, 56, 48, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (348, N'BT0200071X0', N'电磁场与微波技术', N'考试', 4, 64, 60, 4, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (349, N'BT0200116X0', N'数据库原理及应用', N'考查', 2, 32, 24, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (350, N'BT0205004X0', N'操作系统原理及应用', N'考查', 3, 48, 32, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (351, N'RZ0200009X0', N'单片机原理及应用', N'考查', 2, 32, 16, 16, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (352, N'RZ0200062X0', N'行业法规讲座', N'考查', 1, 16, 16, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (353, N'RZ0205019X0', N'面向对象程序设计', N'考查', 2, 32, 24, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (354, N'XZ0205011X0', N'信息编码与加密', N'考试', 2, 32, 24, 0, N'信息对抗技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (355, N'BG0000030X0', N'体育3', N'考查', 2, 32, 32, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (356, N'BG0000041X0', N'中国近现代史纲要', N'考查', 2, 32, 24, 8, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (357, N'BG0000177X0', N'形势与政策2', N'考查', 0.5, 8, 8, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (358, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (359, N'BJ000000510', N'大学物理A2', N'考查', 3, 48, 48, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (360, N'BJ0000013X0', N'概率论', N'考查', 2, 32, 32, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (361, N'BJ000030320', N'复变函数B', N'考查', 2, 32, 32, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (362, N'BS0000033X0', N'物理实验2', N'考查', 1.5, 24, 0, 24, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (363, N'BS0200024X3', N'模拟电子技术实验', N'考查', 1, 16, 0, 16, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (364, N'BT020007920', N'模拟电子技术B', N'考查', 4, 64, 64, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (365, N'BT0200097X0', N'信号与系统分析', N'考查', 3.5, 56, 56, 0, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (366, N'RZ0200026X0', N'软件技术基础', N'考查', 2, 32, 24, 8, N'通信工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (367, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'通信工程(卓越)', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (368, N'BG0000030X0', N'体育3', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (369, N'BG0000041X0', N'中国近现代史纲要', N'考查', 2, 32, 24, 8, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (370, N'BG0000177X0', N'形势与政策2', N'考查', 0.5, 8, 8, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (371, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (372, N'BJ000000510', N'大学物理A2', N'考查', 3, 48, 48, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (373, N'BJ0000013X0', N'概率论', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (374, N'BJ000030320', N'复变函数B', N'考查', 2, 32, 32, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (375, N'BS0000033X0', N'物理实验2', N'考查', 1.5, 24, 0, 24, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (376, N'BS0200024X3', N'模拟电子技术实验', N'考查', 1, 16, 0, 16, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (377, N'BT020007920', N'模拟电子技术B', N'考查', 4, 64, 64, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (378, N'BT0200081X0', N'数据结构', N'考查', 2, 32, 26, 6, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (379, N'BT0200097X0', N'信号与系统分析', N'考查', 3.5, 56, 56, 0, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (380, N'RZ0200026X0', N'软件技术基础', N'考查', 2, 32, 24, 8, N'电子信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (381, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'电子信息工程（卓越）', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (382, N'BG0000030X0', N'体育3', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (383, N'BG0000041X0', N'中国近现代史纲要', N'考查', 2, 32, 24, 8, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (384, N'BG0000177X0', N'形势与政策2', N'考查', 0.5, 8, 8, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (385, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (386, N'BJ000000510', N'大学物理A2', N'考查', 3, 48, 48, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (387, N'BJ0000013X0', N'概率论', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (388, N'BJ000030320', N'复变函数B', N'考查', 2, 32, 32, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (389, N'BS0000033X0', N'物理实验2', N'考查', 1.5, 24, 0, 24, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (390, N'BS0200024X3', N'模拟电子技术实验', N'考查', 1, 16, 0, 16, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (391, N'BT020007920', N'模拟电子技术B', N'考试', 4, 64, 64, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (392, N'BT0200097X0', N'信号与系统分析', N'考试', 3.5, 56, 56, 0, N'电子科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (393, N'BG0000030X0', N'体育3', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (394, N'BG0000041X0', N'中国近现代史纲要', N'考查', 2, 32, 24, 8, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (395, N'BG0000177X0', N'形势与政策2', N'考查', 0.5, 8, 8, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (396, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (397, N'BJ000000510', N'大学物理A2', N'考查', 3, 48, 48, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (398, N'BJ0000013X0', N'概率论', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (399, N'BJ000030320', N'复变函数B', N'考查', 2, 32, 32, 0, N'微电子科学与工程', N'2017')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (400, N'BS0000033X0', N'物理实验2', N'考查', 1.5, 24, 0, 24, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (401, N'BS0200024X3', N'模拟电子技术实验', N'考查', 1, 16, 0, 16, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (402, N'BT020007920', N'模拟电子技术B', N'考查', 4, 64, 64, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (403, N'BT0200097X0', N'信号与系统分析', N'考查', 3.5, 56, 56, 0, N'微电子科学与工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (404, N'BG0000030X0', N'体育3', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (405, N'BG0000041X0', N'中国近现代史纲要', N'考查', 2, 32, 24, 8, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (406, N'BG0000177X0', N'形势与政策2', N'考查', 0.5, 8, 8, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (407, N'BG0000334X0', N'大学英语3', N'考查', 3.5, 56, 56, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (408, N'BJ000000510', N'大学物理A2', N'考查', 3, 48, 48, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (409, N'BJ0000013X0', N'概率论', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (410, N'BJ000030320', N'复变函数B', N'考查', 2, 32, 32, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (411, N'BS0000033X0', N'物理实验2', N'考查', 1.5, 24, 0, 24, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (412, N'BS0200024X3', N'模拟电子技术实验', N'考查', 1, 16, 0, 16, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (413, N'BT020007920', N'模拟电子技术B', N'考查', 4, 64, 64, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (414, N'BT0200097X0', N'信号与系统分析', N'考查', 3.5, 56, 56, 0, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (415, N'BT0205022X0', N'数据结构与算法分析', N'考查', 3.5, 56, 44, 12, N'信息对抗技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (416, N'RZ0200026X0', N'软件技术基础', N'考查', 2, 32, 24, 8, N'信息对抗技术', N'2017')
SET IDENTITY_INSERT [dbo].[t_courseplan] OFF
SET IDENTITY_INSERT [dbo].[t_coursetable] ON 

INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3764, 1, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3765, 1, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3766, 2, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3767, 2, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3768, 3, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3769, 3, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3770, 4, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3771, 4, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3772, 5, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3773, 5, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3774, 11, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3775, 11, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3776, 6, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3777, 6, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3778, 7, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3779, 7, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3780, 8, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3781, 8, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3782, 9, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3783, 9, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3784, 10, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3785, 10, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3786, 12, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3787, 12, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3788, 129, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3789, 129, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3790, 149, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3791, 149, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3792, 150, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3793, 150, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3794, 151, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3795, 151, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3796, 152, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3797, 152, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3798, 153, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3799, 153, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3800, 154, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3801, 147, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3802, 147, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3803, 148, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3804, 148, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3805, 124, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3806, 124, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3807, 125, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3808, 125, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3809, 126, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3810, 126, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3811, 127, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3812, 127, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3813, 128, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3814, 128, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3815, 130, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3816, 130, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3817, 131, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3818, 132, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3819, 133, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3820, 134, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3821, 135, N'5', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3822, 136, N'5', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3823, 137, N'5', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3824, 139, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3825, 139, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3826, 140, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3827, 140, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3828, 141, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3829, 141, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3830, 142, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3831, 142, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3832, 143, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3833, 143, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3834, 144, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3835, 144, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3836, 145, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3837, 145, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3838, 16, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3839, 16, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3840, 17, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3841, 17, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3842, 18, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3843, 18, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3844, 19, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3845, 19, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3846, 20, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3847, 20, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3848, 21, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3849, 21, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3850, 22, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3851, 22, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3852, 23, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3853, 23, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3854, 24, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3855, 24, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3856, 13, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3857, 13, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3858, 14, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3859, 14, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3860, 15, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3861, 15, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3862, 28, N'1', N'2')
GO
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3863, 28, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3864, 29, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3865, 29, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3866, 37, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3867, 37, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3868, 39, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3869, 39, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3870, 41, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3871, 41, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3872, 49, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3873, 49, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3874, 51, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3875, 52, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3876, 40, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3877, 40, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3878, 42, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3879, 43, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3880, 44, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3881, 45, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3882, 46, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3883, 47, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3884, 48, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3885, 48, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3886, 38, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3887, 38, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3888, 50, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3889, 50, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3890, 30, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3891, 30, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3892, 31, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3893, 31, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3894, 32, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3895, 32, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3896, 33, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3897, 33, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3898, 34, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3899, 34, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3900, 35, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3901, 35, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3902, 36, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3903, 36, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3904, 53, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3905, 53, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3906, 104, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3907, 104, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3908, 105, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3909, 105, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3910, 106, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3911, 106, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3912, 107, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3913, 107, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3914, 109, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3915, 109, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3916, 115, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3917, 115, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3918, 116, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3919, 116, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3920, 117, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3921, 117, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3922, 120, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3923, 120, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3924, 89, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3925, 89, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3926, 90, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3927, 90, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3928, 91, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3929, 91, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3930, 92, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3931, 92, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3932, 93, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3933, 93, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3934, 108, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3935, 108, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3936, 110, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3937, 110, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3938, 111, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3939, 111, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3940, 118, N'5', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3941, 100, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3942, 100, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3943, 101, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3944, 101, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3945, 102, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3946, 102, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3947, 103, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3948, 103, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3949, 121, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3950, 121, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3951, 122, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3952, 122, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3953, 123, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3954, 123, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3955, 94, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3956, 94, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3957, 95, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3958, 95, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3959, 96, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3960, 96, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3961, 97, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3962, 97, N'4', N'2')
GO
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3963, 98, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3964, 98, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3965, 99, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (3966, 99, N'4', N'1')
SET IDENTITY_INSERT [dbo].[t_coursetable] OFF
SET IDENTITY_INSERT [dbo].[t_coursetask] ON 

INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (1, N'15161104', NULL, N'电子科学与技术', N'2016', N'射频技术与仿真', N'专业必修', 32, 16, 16, 0, 4, 0, N'1-8', N'考查', 100, N'10000', N'10099', N'10131', N'是', N'否', N'任选70（后半学期）')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (2, N'15161105', NULL, N'电子科学与技术', N'2016', N'微波电路及CAD技术', N'专业必修', 48, 38, 10, 0, 4, 0, N'10-17', N'考试', 100, N'10001', N'', N'10131', N'是（两用）', N'否', N'限选88（前半学期）')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (3, N'15161106', NULL, N'电子科学与技术', N'2016', N'光通信网络与交换', N'专业必修', 32, 32, 0, 0, 4, 0, N'10-18', N'考查', 100, N'10002', N'10100', N'', N'是（两用）', N'否', N'限选88（后半学期）')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (4, N'15161107', NULL, N'电子科学与技术', N'2016', N'光通信技术', N'专业必修', 48, 42, 6, 0, 4, 0, N'9-16', N'考试', 100, N'10003', N'', N'', N'是（两用）', N'否', N'限选88（前半学期）')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (5, N'15161108', NULL, N'电子科学与技术', N'2016', N'现代光电信息处理', N'专业必修', 32, 32, 0, 0, 4, 0, N'1-14', N'考试', 100, N'10004', N'', N'', N'是', N'否', N'限选88（取消4学时实验）')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (6, N'15161109', NULL, N'电子科学与技术', N'2017', N'电磁场', N'专业必修', 56, 54, 2, 0, 4, 0, N'10-18', N'考试', 100, N'10005', N'', N'10131', N'是', N'否', N'必修167+190+118')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (7, N'15161110', NULL, N'电子科学与技术', N'2017', N'电磁场', N'专业必修', 56, 54, 2, 0, 4, 0, N'1-14', N'考试', 100, N'10006', N'', N'10131', N'是', N'否', N'《电磁场》于新华2课号、姜兴1课号、姜彦南2课号')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (8, N'15161111', NULL, N'电子科学与技术', N'2017', N'电磁场', N'专业必修', 56, 54, 2, 0, 4, 0, N'1-14', N'考试', 100, N'10007', N'', N'10131', N'是（两用）', N'否', N'黑板大点的教室')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (9, N'15161112', NULL, N'电子科学与技术', N'2017', N'微波技术与天线', N'专业必修', 48, 42, 6, 0, 4, 0, N'1-14', N'考试', 100, N'10008', N'', N'10131', N'是', N'否', N'必修60')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (10, N'15161113', NULL, N'电子科学与技术', N'2017', N'电磁场与微波技术', N'专业必修', 64, 60, 4, 0, 4, 0, N'1-12', N'考试', 100, N'10009', N'', N'10131', N'是（两用）', N'否', N'必修63+27')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (11, N'15161114', NULL, N'电子科学与技术', N'2016', N'电波传播与天线', N'专业限选', 48, 42, 6, 0, 4, 0, N'1-12', N'考查', 100, N'10009', N'', N'10131', N'是（两用）', N'否', N'限选88')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (12, N'15161115', NULL, N'电子科学与技术', N'2017', N'光学工程', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10010', N'', N'', N'是', N'否', N'必修118（排课在9-16周下午)')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (13, N'15161147', NULL, N'通信工程', N'2017', N'锁相与频率合成', N'专业必修', 32, 28, 4, 0, 4, 0, N'9-15', N'考试', 100, N'10040', N'', N'', N'否', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (14, N'15161148', NULL, N'通信工程', N'2017', N'锁相与频率合成', N'专业必修', 32, 28, 4, 0, 4, 0, N'9-15', N'考试', 100, N'10040', N'', N'', N'否', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (15, N'15161149', NULL, N'通信工程', N'2017', N'通信电子电路', N'专业必修', 72, 56, 16, 0, 4, 0, N'1-16', N'考试', 100, N'10042', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (16, N'15161150', NULL, N'通信工程', N'2016', N'扩频通信（双语）', N'专业必修', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 140, N'10043', N'', N'', N'否', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (17, N'15161151', NULL, N'通信工程', N'2016', N'扩频通信（双语）', N'专业必修', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 140, N'10044', N'', N'', N'否', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (18, N'15161152', NULL, N'通信工程', N'2016', N'现代移动通信系统', N'专业限选', 48, 42, 6, 0, 4, 0, N'1-12', N'考试', 140, N'10045', N'', N'', N'是', N'否', N'待确定')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (19, N'15161153', NULL, N'通信工程', N'2016', N'现代交换技术', N'专业限选', 48, 42, 6, 0, 4, 0, N'1-11', N'考试', 140, N'10046', N'', N'', N'否', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (20, N'15161154', NULL, N'通信工程', N'2016', N'光通信网络', N'专业限选', 32, 32, 0, 0, 4, 0, N'9-19', N'考试', 100, N'10046', N'', N'', N'否', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (21, N'15161155', NULL, N'通信工程', N'2016', N'软件无线电技术概论', N'专业限选', 32, 26, 6, 0, 4, 0, N'9-16', N'考试', 100, N'10048', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (22, N'15161156', NULL, N'通信工程', N'2016', N'宽带接入技术', N'专业限选', 32, 32, 0, 0, 4, 0, N'2-8', N'考试', 100, N'10049', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (23, N'15161157', NULL, N'通信工程', N'2016', N'无线定位与GPS系统', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10049', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (24, N'15161158', NULL, N'通信工程', N'2016', N'现代通信技术及标准', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10050', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (25, N'15161159', NULL, N'通信工程', N'2016', N'无线通信新技术', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10043', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (26, N'15161160', NULL, N'通信工程', N'2016', N'信息系统集成技术', N'专业限选', 32, 28, 4, 0, 4, 0, N'1-8', N'考试', 100, N'10052', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (27, N'15161161', NULL, N'通信工程', N'2016', N'无线资源管理与网络规划优化', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10053', N'', N'', N'是', N'否', N'两门课排在一起，13级禁选')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (28, N'15161162', NULL, N'通信工程', N'2017', N'专业外语（通信类）', N'专业必修', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 60, N'10044', N'', N'', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (29, N'15161163', NULL, N'通信工程', N'2017', N'FPGA通信设计基础', N'专业限选', 32, 16, 16, 0, 4, 0, N'11-18', N'考试', 60, N'10055', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (30, N'15161164', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10056', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (31, N'15161165', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10056', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (32, N'15161166', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10058', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (33, N'15161167', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10058', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (34, N'15161168', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10060', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (35, N'15161169', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10061', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (36, N'1161170', NULL, N'微电子技术', N'2018', N'模拟电子技术B', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 100, N'10062', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (37, N'15161171', NULL, N'微电子技术', N'2016', N'集成电路工艺（双语）', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 90, N'10063', N'', N'', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (38, N'15161172', NULL, N'微电子技术', N'2017', N'数字系统设计', N'专业限选', 56, 40, 16, 4, 4, 0, N'1-10', N'考查', 90, N'10064', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (39, N'15161173', NULL, N'微电子技术', N'2016', N'VLSI设计基础', N'专业限选', 32, 28, 4, 4, 4, 0, N'1-7', N'考试', 90, N'10065', N'', N'', N'是', N'否', N'上午')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (40, N'15161174', NULL, N'微电子技术', N'2017', N'半导体物理', N'专业必修', 48, 40, 8, 4, 4, 0, N'1-10', N'考试', 90, N'10066', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (41, N'15161175', NULL, N'微电子技术', N'2016', N'ASIC设计原理与应用', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-14', N'考试', 60, N'10065', N'', N'', N'是', N'否', N'上午')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (42, N'15161176', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10068', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (43, N'15161177', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10068', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (44, N'15161178', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10069', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (45, N'15161179', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10069', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (46, N'15161180', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10070', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (47, N'15161181', NULL, N'微电子技术', N'2017', N'EDA技术', N'专业必修', 32, 8, 24, 2, 2, 0, N'1-4', N'考查', 60, N'10070', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (48, N'15161182', NULL, N'微电子技术', N'2017', N'微电子技术基础', N'专业必修', 48, 40, 8, 4, 4, 0, N'1-14', N'考查', 90, N'10066', N'', N'', N'否', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (49, N'15161183', NULL, N'微电子技术', N'2016', N'射频集成电路设计', N'专业限选', 32, 28, 4, 4, 4, 0, N'5-12', N'考查', 90, N'10072', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (50, N'15161184', NULL, N'微电子技术', N'2017', N'计算机组成与体系结构', N'专业限选', 64, 56, 8, 4, 4, 0, N'5-12', N'考试', 90, N'10073', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (51, N'15161185', NULL, N'微电子技术', N'2016', N'集成电路反向设计基础', N'专业任选', 16, 0, 16, 2, 2, 0, N'1-4', N'考查', 90, N'10074', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (52, N'15161186', NULL, N'微电子技术', N'2016', N'集成电路可测性设计与测试验证', N'专业任选', 32, 16, 16, 2, 2, 0, N'5-12', N'考查', 90, N'10065', N'', N'', N'', N'', N'开不了')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (53, N'15161187', NULL, N'微电子技术', N'2019', N'信息技术发展前沿讲座', N'专业任选', 16, 16, 0, 4, 4, 0, N'1-4', N'考查', 90, N'10072', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (89, N'15161188', NULL, N'信息对抗技术', N'2017', N'计算机通信与网络', N'专业必修', 56, 40, 16, 4, 4, 0, N'2-15', N'考试', 70, N'10077', N'10103', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (90, N'15161189', NULL, N'信息对抗技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10078', N'10078', N'10128', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (91, N'15161190', NULL, N'信息对抗技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10079', N'10105', N'10128', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (92, N'15161191', NULL, N'信息对抗技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10080', N'10106', N'10128', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (93, N'15161192', NULL, N'信息对抗技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10081', N'10107', N'10128', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (94, N'15161194', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (95, N'15161195', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (96, N'15161196', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10083', N'', N'', N'是', N'否', N'下午开课')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (97, N'15161197', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10084', N'10084', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (98, N'15161198', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10085', N'10085', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (99, N'15161199', NULL, N'信息对抗技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (100, N'15161200', NULL, N'信息对抗技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (101, N'15161201', NULL, N'信息对抗技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (102, N'15161202', NULL, N'信息对抗技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (103, N'15161203', NULL, N'信息对抗技术', N'2018', N'数据结构与算法分析', N'专业必修', 56, 44, 12, 4, 4, 0, N'1-14', N'考试', 50, N'10082', N'', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (104, N'15161204', NULL, N'信息对抗技术', N'2016', N'WINDOWS程序设计', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 60, N'10084', N'10084', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (105, N'15161205', NULL, N'信息对抗技术', N'2016', N'网络对抗技术', N'专业必修', 48, 32, 16, 4, 4, 0, N'9-16', N'考查', 60, N'10090', N'10090', N'10090', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (106, N'15161206', NULL, N'信息对抗技术', N'2016', N'通信对抗技术', N'专业必修', 32, 26, 6, 4, 4, 0, N'9-16', N'考查', 60, N'10091', N'10092', N'10092', N'是', N'否', N'通信对抗与雷达对抗安排同一天上午')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (107, N'15161207', NULL, N'信息对抗技术', N'2016', N'传感器原理与技术', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 100, N'10092', N'10092', N'10092', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (108, N'15161208', NULL, N'信息对抗技术', N'2017', N'信息编码与加密', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 50, N'10093', N'10117', N'10092', N'是', N'否', N'和计算机网络课排在一个上午')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (109, N'15161209', NULL, N'信息对抗技术', N'2016', N'密码算法与设计（双语）', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 60, N'10093', N'10117', N'10128', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (110, N'151613210', NULL, N'信息对抗技术', N'2017', N'数据库原理及应用', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考试', 50, N'10078', N'10082', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (111, N'15161211', NULL, N'信息对抗技术', N'2017', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (112, N'15161212', NULL, N'信息对抗技术', N'2017', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (113, N'15161213', NULL, N'信息对抗技术', N'2017', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (114, N'15161214', NULL, N'信息对抗技术', N'2017', N'软件技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (115, N'15161215', NULL, N'信息对抗技术', N'2016', N'JAVA程序设计', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 54, N'10085', N'10085', N'10085', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (116, N'15161216', NULL, N'信息对抗技术', N'2016', N'网络编程技术', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10080', N'10106', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (117, N'15161217', NULL, N'信息对抗技术', N'2016', N'网络编程技术', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10090', N'10090', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (118, N'15161218', NULL, N'信息对抗技术', N'2017', N'嵌入式系统', N'专业任选', 32, 16, 16, 4, 2, 0, N'1-8', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (119, N'15161219', NULL, N'信息对抗技术', N'2017', N'操作系统原理及应用', N'专业任选', 48, 32, 16, 6, 4, 0, N'2-13', N'考试', 90, N'10086', N'10086', N'10086', N'是', N'是', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (120, N'15161220', NULL, N'信息对抗技术', N'2016', N'Andriod应用与开发', N'专业任选', 32, 20, 12, 6, 4, 0, N'9-16', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (121, N'15161221', NULL, N'信息对抗技术', N'2018', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (122, N'15161222', NULL, N'信息对抗技术', N'2018', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (123, N'15161223', NULL, N'信息对抗技术', N'2018', N'软件技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (124, N'15161116', NULL, N'电子信息工程', N'2017', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10011', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (125, N'15161117', NULL, N'电子信息工程', N'2017', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10012', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (126, N'15161118', NULL, N'电子信息工程', N'2017', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10013', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (127, N'15161119', NULL, N'电子信息工程', N'2017', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10014', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (128, N'15161120', NULL, N'电子信息工程', N'2017', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10015', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (129, N'15161121', NULL, N'电子信息工程', N'2016', N'微机原理与接口技术I', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10015', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (130, N'15161122', NULL, N'电子信息工程', N'2017', N'单片微型计算机与接口技术', N'专业必修', 56, 28, 28, 4, 4, 0, N'1-7', N'考试', 70, N'10017', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (131, N'15161123', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10018', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (132, N'15161124', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10018', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (133, N'15161125', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10012', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (134, N'15161126', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10020', N'', N'', N'是', N'', N'')
GO
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (135, N'15161127', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10020', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (136, N'15161128', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10021', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (137, N'15161129', NULL, N'电子信息工程', N'2017', N'单片机原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10021', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (138, N'1516130', NULL, N'电子信息工程', N'2017', N'数字视频技术', N'专业限选', 32, 26, 6, 4, 4, 0, N'10-17', N'考查', 60, N'10022', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (139, N'15161131', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10023', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (140, N'15161132', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10024', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (141, N'15161133', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10025', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (142, N'15161134', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10026', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (143, N'15161135', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10027', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (144, N'15161136', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10028', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (145, N'15161137', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10029', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (146, N'15161138', NULL, N'电子信息工程', N'2018', N'信号与系统分析', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 70, N'10030', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (147, N'15161139', NULL, N'电子信息工程', N'2016', N'多系统融合技术', N'专业任选', 48, 24, 24, 4, 4, 0, N'11-17', N'考查', 100, N'10031', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (148, N'15161140', NULL, N'电子信息工程', N'2016', N'GPS系统原理及应用', N'专业任选', 48, 32, 16, 4, 4, 0, N'1-8', N'考查', 100, N'10032', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (149, N'15161141', NULL, N'电子信息工程', N'2016', N'语音信号处理', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-7', N'考试', 100, N'10033', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (150, N'15161142', NULL, N'电子信息工程', N'2016', N'信号与系统及处理', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-7', N'考试', 100, N'10030', N'', N'', N'', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (151, N'15161143', NULL, N'电子信息工程', N'2016', N'模式识别', N'专业限选', 32, 26, 6, 4, 4, 0, N'8-14', N'考试', 100, N'10027', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (152, N'15161144', NULL, N'电子信息工程', N'2016', N'数字视频技术', N'专业限选', 32, 26, 6, 4, 4, 0, N'11-17', N'考试', 100, N'10022', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (153, N'15161145', NULL, N'电子信息工程', N'2016', N'数字视频技术', N'专业限选', 32, 26, 6, 4, 4, 0, N'11-17', N'考试', 100, N'10022', N'', N'', N'是', N'', N'')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark]) VALUES (154, N'15161146', NULL, N'电子信息工程', N'2016', N'DSP设计基础', N'专业限选', 32, 16, 16, 2, 2, 0, N'9-16', N'考试', 100, N'10039', N'', N'', N'是', N'', N'')
SET IDENTITY_INSERT [dbo].[t_coursetask] OFF
SET IDENTITY_INSERT [dbo].[t_major] ON 

INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (1, N'电子科学与技术', N'电子科学与技术', 100)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (2, N'电子信息工程', N'电子信息工程', 100)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (4, N'通信工程', N'通信工程', 200)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (14, N'通信工程(卓越)', N'通信工程(卓越)', 60)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (15, N'微电子科学与工程', N'微电子科学与工程', 63)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (16, N'信息对抗技术', N'信息对抗技术', 27)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (17, N'微电子学', N'微电子学', 0)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (18, N'电子信息工程（卓越）', N'电子信息工程（卓越）', 0)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (5, N'微电子技术', N'微电子技术', 120)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (6, N'信息对抗技术系', N'信息对抗技术系', 200)
SET IDENTITY_INSERT [dbo].[t_major] OFF
SET IDENTITY_INSERT [dbo].[t_taboo] ON 

INSERT [dbo].[t_taboo] ([id], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (11, N'1', N'3', N'3', N'13', N'0', N'10001', N'1')
INSERT [dbo].[t_taboo] ([id], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (12, N'2', N'3', N'6', N'15', N'0', N'10001', N'1')
INSERT [dbo].[t_taboo] ([id], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (13, N'2', N'4', N'3', N'14', N'1', NULL, N'0')
INSERT [dbo].[t_taboo] ([id], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (14, N'3', N'4', N'6', N'15', N'0', N'10005', N'2')
INSERT [dbo].[t_taboo] ([id], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (15, N'3', N'4', N'2', N'11', N'1', NULL, N'0')
SET IDENTITY_INSERT [dbo].[t_taboo] OFF
SET IDENTITY_INSERT [dbo].[t_teacher] ON 

INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (135, N'10000', N'李海鸥', N'教授', N'博士', N'10000')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (136, N'10001', N'曹卫平', N'教授', N'博士', N'10001')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (137, N'10002', N'陈明', N'教授', N'博士', N'10002')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (138, N'10003', N'陈名松', N'教授', N'硕士', N'10003')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (139, N'10004', N'蒋行国', N'副教授', N'博士', N'10004')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (140, N'10005', N'于新华', N'副教授', N'博士', N'10005')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (141, N'10006', N'姜兴', N'教授', N'硕士', N'10006')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (142, N'10007', N'姜彦南', N'副教授', N'博士', N'10007')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (143, N'10008', N'高喜', N'教授', N'博士', N'10008')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (144, N'10009', N'李晓峰', N'讲师', N'硕士', N'10009')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (145, N'10010', N'陈辉', N'副教授', N'博士', N'10010')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (146, N'10011', N'欧阳宁', N'教授', N'硕士', N'10011')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (147, N'10012', N'王岩红', N'高级实验师', N'硕士', N'10012')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (148, N'10013', N'陈紫强', N'副教授', N'博士', N'10013')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (149, N'10014', N'王娇', N'讲师', N'硕士', N'10014')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (150, N'10015', N'洪莉', N'高级实验师', N'硕士', N'10015')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (151, N'10017', N'袁华', N'讲师', N'硕士', N'10017')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (152, N'10018', N'莫建文', N'副教授', N'博士', N'10018')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (153, N'10020', N'符强', N'副教授', N'硕士', N'10020')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (154, N'10021', N'孙安青', N'讲师', N'学士', N'10021')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (155, N'10022', N'蔡晓东', N'副教授', N'博士', N'10022')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (156, N'10023', N'王 健', N'副教授', N'硕士', N'10023')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (157, N'10024', N'王国富', N'教授', N'博士', N'10024')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (158, N'10025', N'张顺岚', N'讲师', N'硕士', N'10025')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (159, N'10026', N'张法全', N'副教授', N'博士', N'10026')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (160, N'10027', N'唐志芳', N'讲师', N'硕士', N'10027')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (161, N'10028', N'谢先明', N'副教授', N'博士', N'10028')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (162, N'10029', N'蒋俊正', N'副教授', N'博士', N'10029')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (163, N'10030', N'苏启常', N'讲师', N'硕士', N'10030')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (164, N'10031', N'孙希延', N'教授', N'博士', N'10031')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (165, N'10032', N'蔡成林', N'教授', N'博士', N'10032')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (166, N'10033', N'刘庆华', N'副教授', N'博士', N'10033')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (167, N'10039', N'丁 勇', N'讲师', N'硕士', N'10039')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (168, N'10040', N'樊孝明', N'讲师', N'硕士', N'10040')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (169, N'10042', N'陈冬梅', N'副教授', N'硕士', N'10042')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (170, N'10043', N'郑霖', N'教授', N'博士', N'10043')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (171, N'10044', N'闫坤', N'副教授', N'博士', N'10044')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (172, N'10045', N'仇洪冰', N'教授', N'博士', N'10045')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (173, N'10046', N'敖珺', N'教授', N'博士', N'10046')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (174, N'10048', N'赵利', N'教授', N'博士', N'10048')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (175, N'10049', N'符杰林', N'副教授', N'硕士', N'10049')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (176, N'10050', N'梁红玉', N'讲师', N'硕士', N'10050')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (177, N'10052', N'王吉平', N'高级实验师', N'硕士', N'10052')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (178, N'10053', N'宁向延', N'副教授', N'博士', N'10053')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (179, N'10055', N'覃远年', N'高级实验师', N'硕士', N'10055')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (180, N'10056', N'王卫东', N'教授', N'硕士', N'10056')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (181, N'10058', N'周茜', N'讲师', N'硕士', N'10058')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (182, N'10060', N'归法弟', N'讲师', N'硕士', N'10060')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (183, N'10061', N'徐卫林', N'副教授', N'博士', N'10061')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (184, N'10062', N'李秀东', N'讲师', N'硕士', N'10062')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (185, N'10063', N'肖功利', N'副教授', N'博士', N'10063')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (186, N'10064', N'谢跃雷', N'副教授', N'硕士', N'10064')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (187, N'10065', N'韦雪明', N'副教授', N'博士', N'10065')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (188, N'10066', N'岳宏卫', N'副教授', N'博士', N'10066')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (189, N'10068', N'赵中华', N'工程师', N'学士', N'10068')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (190, N'10069', N'陈小毛', N'副教授', N'博士', N'10069')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (191, N'10070', N'韦保林', N'副教授', N'博士', N'10070')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (192, N'10072', N'段吉海', N'教授', N'博士', N'10072')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (193, N'10073', N'晋良念', N'副教授', N'博士', N'10073')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (194, N'10074', N'翟江辉', N'讲师', N'硕士', N'10074')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (195, N'10077', N'马春波', N'教授', N'博士', N'10077')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (196, N'10078', N'武小年', N'副教授', N'硕士', N'10078')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (197, N'10079', N'陶晓玲', N'副教授', N'硕士', N'10079')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (198, N'10080', N'何倩', N'教授', N'博士', N'10080')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (199, N'10081', N'黄桂敏', N'教授', N'博士', N'10081')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (200, N'10082', N'张润莲', N'副教授', N'博士', N'10082')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (201, N'10083', N'张向利', N'教授', N'博士', N'10083')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (202, N'10084', N'马  杰', N'讲师', N'学士', N'10084')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (203, N'10085', N'李德明', N'讲师', N'硕士', N'10085')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (204, N'10086', N'黄建华', N'讲师', N'硕士', N'10086')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (205, N'10090', N'刘联海', N'讲师', N'博士', N'10090')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (206, N'10091', N'蒋留兵', N'研究员', N'硕士', N'10091')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (207, N'10092', N'车俐', N'高级实验师', N'硕士', N'10092')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (208, N'10093', N'韦永壮', N'教授', N'博士', N'10093')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (209, N'10099', N'李跃', N'讲师', N'', N'10099')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (210, N'10100', N'童秀倩', N'讲师', N'', N'10100')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (211, N'10101', N'吴庚飞', N'讲师', N'', N'10101')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (212, N'10102', N'黄干', N'讲师', N'', N'10102')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (213, N'10103', N'曾坤', N'讲师', N'', N'10103')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (214, N'10105', N'伍欣', N'副教授', N'', N'10105')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (215, N'10106', N'阳鑫磊', N'副教授', N'', N'10106')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (216, N'10107', N'李会娟', N'副教授', N'', N'10107')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (217, N'10108', N'陈达', N'副教授', N'', N'10108')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (218, N'10117', N'赵颖', N'研究生', N'', N'10117')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (219, N'10128', N'彭明', N'助工', N'', N'10128')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (220, N'10131', N'廖欣', N'实验师', N'', N'10131')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (221, N'10132', N'蒋红艳', N'实验师', N'', N'10132')
SET IDENTITY_INSERT [dbo].[t_teacher] OFF
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [score]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiallz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshouz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyanz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [courserongliang]
GO
ALTER TABLE [dbo].[t_taboo] ADD  DEFAULT ('0') FOR [shenhe]
GO
USE [master]
GO
ALTER DATABASE [db_paikesys] SET  READ_WRITE 
GO
