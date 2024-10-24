USE [master]
GO
/****** Object:  Database [imp]    Script Date: 21.10.2024 16:07:03 ******/
CREATE DATABASE [imp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'imp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\imp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'imp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\imp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [imp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [imp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [imp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [imp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [imp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [imp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [imp] SET ARITHABORT OFF 
GO
ALTER DATABASE [imp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [imp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [imp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [imp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [imp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [imp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [imp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [imp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [imp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [imp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [imp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [imp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [imp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [imp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [imp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [imp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [imp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [imp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [imp] SET  MULTI_USER 
GO
ALTER DATABASE [imp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [imp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [imp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [imp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [imp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [imp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [imp] SET QUERY_STORE = OFF
GO
USE [imp]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 21.10.2024 16:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[genName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeEnter]    Script Date: 21.10.2024 16:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeEnter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_typeEnter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 21.10.2024 16:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workId] [int] NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[patronim] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[phoneNum] [nvarchar](50) NOT NULL,
	[PaspSeria] [int] NOT NULL,
	[PaspNum] [int] NOT NULL,
	[Birthday] [date] NOT NULL,
	[LastEnter] [datetime] NULL,
	[typeEnterId] [int] NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[work]    Script Date: 21.10.2024 16:07:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gender] ON 

INSERT [dbo].[gender] ([id], [genName]) VALUES (1, N'ж')
INSERT [dbo].[gender] ([id], [genName]) VALUES (2, N'м')
SET IDENTITY_INSERT [dbo].[gender] OFF
GO
SET IDENTITY_INSERT [dbo].[typeEnter] ON 

INSERT [dbo].[typeEnter] ([id], [enterName]) VALUES (1, N'Неуспешно')
INSERT [dbo].[typeEnter] ([id], [enterName]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[typeEnter] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781) 785-5837', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01T05:59:51.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230) 906-8815', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(N'2023-02-13T13:59:08.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555) 444-8316', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(N'2023-02-10T17:58:02.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392) 682-4442', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(N'2023-02-03T03:35:08.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836) 429-0386', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(N'2023-02-15T21:35:55.000' AS DateTime), 1, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283) 945-3092', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(N'2023-02-11T20:22:23.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621) 359-3669', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(N'2023-02-15T18:22:26.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440) 561-0314', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(N'2023-02-15T23:03:04.000' AS DateTime), 1, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331) 918-2434', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(N'2023-02-05T05:55:20.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493) 219-3942', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407) 485-5030', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919) 478-2497', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(N'2023-02-04T19:26:44.000' AS DateTime), 1, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482) 802-9580', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(N'2023-02-16T05:30:24.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455) 944-6449', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(N'2023-02-10T23:46:25.000' AS DateTime), 1, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710) 388-2563', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(N'2023-02-01T17:56:56.000' AS DateTime), 2, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759) 452-3846', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(N'2023-02-08T19:05:56.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687) 801-1332', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425) 783-2253', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(N'2023-02-05T15:05:42.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889) 449-4391', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(N'2023-02-13T21:13:14.000' AS DateTime), 2, 2)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825) 301-8250', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397) 334-2086', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241) 570-3040', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713) 462-8265', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(N'2023-02-07T20:30:21.000' AS DateTime), 1, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854) 822-2331', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [workId], [surname], [name], [patronim], [Email], [login], [password], [phoneNum], [PaspSeria], [PaspNum], [Birthday], [LastEnter], [typeEnterId], [GenderId]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439) 713-6117', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(N'2023-02-01T13:07:20.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[work] ON 

INSERT [dbo].[work] ([id], [workName]) VALUES (1, N'Администратор')
INSERT [dbo].[work] ([id], [workName]) VALUES (2, N'Исполнитель')
INSERT [dbo].[work] ([id], [workName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[work] OFF
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_gender]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_typeEnter] FOREIGN KEY([typeEnterId])
REFERENCES [dbo].[typeEnter] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_typeEnter]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_work] FOREIGN KEY([workId])
REFERENCES [dbo].[work] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_work]
GO
USE [master]
GO
ALTER DATABASE [imp] SET  READ_WRITE 
GO
