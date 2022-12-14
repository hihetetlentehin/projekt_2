USE [master]
GO
/****** Object:  Database [HelixFoglalo]    Script Date: 2022. 11. 06. 11:07:57 ******/
CREATE DATABASE [HelixFoglalo]
GO
ALTER DATABASE [HelixFoglalo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HelixFoglalo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HelixFoglalo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HelixFoglalo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HelixFoglalo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HelixFoglalo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HelixFoglalo] SET ARITHABORT OFF 
GO
ALTER DATABASE [HelixFoglalo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HelixFoglalo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HelixFoglalo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HelixFoglalo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HelixFoglalo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HelixFoglalo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HelixFoglalo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HelixFoglalo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HelixFoglalo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HelixFoglalo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HelixFoglalo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HelixFoglalo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HelixFoglalo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HelixFoglalo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HelixFoglalo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HelixFoglalo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HelixFoglalo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HelixFoglalo] SET RECOVERY FULL 
GO
ALTER DATABASE [HelixFoglalo] SET  MULTI_USER 
GO
ALTER DATABASE [HelixFoglalo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HelixFoglalo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HelixFoglalo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HelixFoglalo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HelixFoglalo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HelixFoglalo', N'ON'
GO
ALTER DATABASE [HelixFoglalo] SET QUERY_STORE = OFF
GO
USE [HelixFoglalo]
GO
/****** Object:  Table [dbo].[Fotos]    Script Date: 2022. 11. 06. 11:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotos](
	[F_id] [nchar](25) NOT NULL,
	[F_password] [nvarchar](25) NOT NULL,
	[F_vnev] [nvarchar](50) NOT NULL,
	[F_knev] [nvarchar](50) NOT NULL,
	[picture] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fotos] PRIMARY KEY CLUSTERED 
(
	[F_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rendezveny]    Script Date: 2022. 11. 06. 11:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rendezveny](
	[r_id] [nchar](25) NOT NULL,
	[R_nev] [nvarchar](50) NOT NULL,
	[helyszin] [nvarchar](50) NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[fotos_1] [nchar](25) NOT NULL,
	[fotos_2] [nchar](25) NULL,
	[fotos_3] [nchar](25) NULL,
	[videos_1] [nchar](25) NULL,
	[videos_2] [nchar](25) NULL,
	[megrendelo_NK] [nchar](6) NULL,
	[status] [tinyint] NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rendezveny] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2022. 11. 06. 11:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[NK] [nchar](6) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[U_vnev] [nvarchar](50) NOT NULL,
	[U_knev] [nvarchar](50) NOT NULL,
	[szak] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[tszam] [tinyint] NOT NULL,
	[is_admin] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[NK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 2022. 11. 06. 11:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[V_id] [nchar](25) NOT NULL,
	[V_password] [nvarchar](25) NOT NULL,
	[V_vnev] [nvarchar](50) NOT NULL,
	[V_knev] [nvarchar](50) NOT NULL,
	[picture] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[V_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'05I3x1uglV               ', N'GJD7h_VdTe', N'Ficzere', N'Márk', N'pic011.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'1Wt9eAz75L               ', N'd5hmScoW1o', N'Fülöp', N'Sándor', N'pic013.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'26VTDWcYkb               ', N'SByMsRzaV4', N'Bécsi', N'Evelin', N'pic005.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'5zjXmZeuOi               ', N'ugzomNs14v', N'Magda', N'Domonkos', N'pic017.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'68iGLx1dUb               ', N'7ZCQP8FxyA', N'Ambrus', N'Gábor', N'pic001.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'AiMtxmL7g4               ', N'DP-bhVNS6N', N'Németh', N'Gergely', N'pic021.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'bbHIqY6h7y               ', N'UWxs0U2dOQ', N'Szatmáry', N'Csenge', N'pic025.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'csZ1hcvx4s               ', N'R21sa3eopG', N'Kürtösi', N'Janka', N'pic016.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'E4xREaoG7a               ', N'2VSa5YzSQr', N'Sándor', N'Bernát', N'pic022.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'hmNJxzBOdP               ', N'QgPWW-_ygL', N'Gyergyói', N'Réka', N'pic014.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'iiYyG87yIo               ', N'yuLnyLmV0f', N'Tian', N'Yubo', N'pic028.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'JupAcCsPe4               ', N'mK8UCzIVGR', N'Bakos', N'László', N'pic003.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'kismTs238E               ', N'FbQgrh7GjT', N'Szabó', N'Enikő', N'pic024.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'lme5MtaTnv               ', N'U7X1gpkGqu', N'Baranyai', N'Tamás', N'pic004.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'mN1ET0kzQt               ', N'ajHFAcjZ_T', N'Bradics', N'Péter', N'pic007.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'nKNEvt7OWN               ', N'sf-XSoBHxC', N'Csete', N'Martin', N'pic008.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'nR0GOYhyTQ               ', N'2INz0mKEwi', N'Tamás', N'Lilian', N'pic027.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'oreOvyfhC5               ', N'Au3HVRggaU', N'Derzsi', N'Nándi', N'pic010.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'QSg3dsh7KY               ', N'tc7_fulojp', N'Bakcsi', N'Alexandra', N'pic002.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'R0bjZlKyxP               ', N'8I6XbPJjNl', N'Fülöp', N'András', N'pic012.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'RAEX2PWcBQ               ', N'7R72qAn9l3', N'Vitéz', N'Marcell', N'pic029.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'SscEn0OdyI               ', N'9Otwj3xY6D', N'Makay', N'Bálint', N'pic018.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'tMxTIHq8JR               ', N'YTtINQJO4S', N'Csillag', N'Bence', N'pic009.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'V6ZUldzYqe               ', N'roahI1qnoq', N'Benedek', N'Bálint', N'pic006.jpg')
INSERT [dbo].[Fotos] ([F_id], [F_password], [F_vnev], [F_knev], [picture]) VALUES (N'xkwwC3N8kt               ', N'VP3a4PMcYI', N'Sersztnyev', N'Kitti', N'pic023.jpg')
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [FK_Rendezveny_Fotos] FOREIGN KEY([fotos_1])
REFERENCES [dbo].[Fotos] ([F_id])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_Fotos]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [FK_Rendezveny_Fotos1] FOREIGN KEY([fotos_2])
REFERENCES [dbo].[Fotos] ([F_id])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_Fotos1]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH NOCHECK ADD  CONSTRAINT [FK_Rendezveny_Fotos2] FOREIGN KEY([fotos_3])
REFERENCES [dbo].[Fotos] ([F_id])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_Fotos2]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [FK_Rendezveny_User] FOREIGN KEY([megrendelo_NK])
REFERENCES [dbo].[User] ([NK])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_User]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [FK_Rendezveny_Videos] FOREIGN KEY([videos_1])
REFERENCES [dbo].[Videos] ([V_id])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_Videos]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [FK_Rendezveny_Videos1] FOREIGN KEY([videos_2])
REFERENCES [dbo].[Videos] ([V_id])
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [FK_Rendezveny_Videos1]
GO
ALTER TABLE [dbo].[Fotos]  WITH NOCHECK ADD  CONSTRAINT [CK_Fotos] CHECK  ((NOT [F_id] like '%[^A-Z0-9 ]%'))
GO
ALTER TABLE [dbo].[Fotos] CHECK CONSTRAINT [CK_Fotos]
GO
ALTER TABLE [dbo].[Rendezveny]  WITH CHECK ADD  CONSTRAINT [CK_Rendezveny] CHECK  (([megrendelo_NK] like '[A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9]'))
GO
ALTER TABLE [dbo].[Rendezveny] CHECK CONSTRAINT [CK_Rendezveny]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [CK_User] CHECK  (([NK] like '[A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9][A-Z0-9]'))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [CK_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [CK_User_1] CHECK  (([tszam] like '[+36][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [CK_User_1]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [CK_Videos] CHECK  ((NOT [V_id] like '%[^A-Z0-9 ]%'))
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [CK_Videos]
GO
USE [master]
GO
ALTER DATABASE [HelixFoglalo] SET  READ_WRITE 
GO
