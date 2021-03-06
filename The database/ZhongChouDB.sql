CREATE DATABASE ZhongChouDB
GO

USE [ZhongChouDB]
GO
/****** Object:  Table [dbo].[BankInfo]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankInfo](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[Bank_Name] [nvarchar](50) NOT NULL,
	[Bank_branch] [nvarchar](50) NOT NULL,
	[Account_name] [nvarchar](50) NOT NULL,
	[Bank_Number] [nchar](19) NOT NULL,
	[Accounts] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Information]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[InfromationID] [int] IDENTITY(1,1) NOT NULL,
	[Information_Name] [nvarchar](50) NOT NULL,
	[Information_Details] [nvarchar](max) NOT NULL,
	[Infromation_Pic] [nvarchar](50) NOT NULL,
	[Infromation_URL] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_User]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_User](
	[Project_UserID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Accounts] [nvarchar](50) NOT NULL,
	[Investment_state] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectDetails]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDetails](
	[ProjectDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Release_date] [datetime] NOT NULL,
	[Closing_date] [datetime] NOT NULL,
	[Like_number] [int] NOT NULL,
	[Financing_state] [nvarchar](50) NOT NULL,
	[Raised_amount] [decimal](18, 2) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Operation] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectInfo]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectInfo](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[Project_Name] [nvarchar](100) NOT NULL,
	[Project_Money] [decimal](18, 2) NOT NULL,
	[Raise_day] [int] NOT NULL,
	[Project_Type] [nvarchar](50) NOT NULL,
	[Project_Province] [nvarchar](50) NOT NULL,
	[Project_City] [nvarchar](50) NOT NULL,
	[Project_cover] [nvarchar](50) NOT NULL,
	[Project_Details] [nvarchar](max) NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Project_state] [nvarchar](50) NULL,
	[Project_brief] [nvarchar](max) NULL,
	[Video] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReceivingInfo]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceivingInfo](
	[ReceivingID] [int] IDENTITY(1,1) NOT NULL,
	[Zip_code] [int] NOT NULL,
	[Receiving_Province] [nvarchar](50) NOT NULL,
	[Receiving_City] [nvarchar](50) NOT NULL,
	[Receiving_Phone] [nchar](11) NOT NULL,
	[Receiving_Name] [nvarchar](50) NOT NULL,
	[Detailed_address] [nvarchar](50) NOT NULL,
	[Accounts] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Return]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return](
	[ReturnID] [int] IDENTITY(1,1) NOT NULL,
	[Qualified_quota] [int] NOT NULL,
	[Description_pic] [nvarchar](50) NOT NULL,
	[Support_amount] [decimal](18, 2) NOT NULL,
	[Return_content] [nvarchar](50) NOT NULL,
	[Freight] [decimal](18, 2) NOT NULL,
	[Return_time] [int] NOT NULL,
	[ProjectID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Support]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Support](
	[SupportID] [int] IDENTITY(1,1) NOT NULL,
	[Accounts] [nvarchar](50) NOT NULL,
	[ReturnID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[TopicID] [int] IDENTITY(1,1) NOT NULL,
	[Topic_time] [datetime] NOT NULL,
	[Topic_content] [nvarchar](50) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Accounts] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/4/1 14:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Accounts] [nvarchar](50) NOT NULL,
	[User_Type] [nvarchar](10) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Pwd] [nvarchar](50) NOT NULL,
	[Phone] [nchar](11) NULL,
	[Gender] [nchar](10) NULL,
	[Registration_time] [datetime] NOT NULL,
	[Personal_note] [nvarchar](50) NULL,
	[URL] [nvarchar](50) NULL,
	[Head_portrait] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[User_state] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BankInfo] ON 

INSERT [dbo].[BankInfo] ([BankID], [Bank_Name], [Bank_branch], [Account_name], [Bank_Number], [Accounts]) VALUES (1, N'中国农业银行', N'武汉支行', N'段荣盛', N'7672115978514452   ', N'drs')
INSERT [dbo].[BankInfo] ([BankID], [Bank_Name], [Bank_branch], [Account_name], [Bank_Number], [Accounts]) VALUES (2, N'中国建设银行', N'汉口支行', N'李园', N'6547891315642234   ', N'ly')
INSERT [dbo].[BankInfo] ([BankID], [Bank_Name], [Bank_branch], [Account_name], [Bank_Number], [Accounts]) VALUES (3, N'中国工商银行', N'衢州支行', N'徐子艺', N'2313515248942315   ', N'xzy')
INSERT [dbo].[BankInfo] ([BankID], [Bank_Name], [Bank_branch], [Account_name], [Bank_Number], [Accounts]) VALUES (4, N'中国农业银行', N'长沙支行', N'李兰', N'5646541316746841   ', N'll')
SET IDENTITY_INSERT [dbo].[BankInfo] OFF
SET IDENTITY_INSERT [dbo].[Information] ON 

INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (1, N'小肥羊(南门口店)', N'台湾婚礼习俗中,订婚礼饼共六种口味代表六礼,其中一种凤梨台语发音又称"旺来",象征子孙旺旺来的意思,而凤梨亦是台湾人拜拜常用的贡品,取其"旺旺""旺来"之意,深受民众喜爱 ,近百年前，台中县一位糕饼师傅颜瓶，经常挑着担子、带着自己做的“龙凤饼”到台中贩售。最初的“龙饼”是包了肉馅的大圆饼，同样大小的“凤饼”，则以菠萝为内馅。“龙凤饼”因为吉祥的寓意，被认为是订婚、结婚不能或缺的喜饼。', N'Information_1.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (3, N'辉鸿蚵仔煎', N'鹿港近海，所产的蚵仔新鲜肥美，尤其在鹿港品尝蚵仔煎、蚵仔汤，量多鲜嫩的蚵仔非别地可比，30多年的辉鸿蚵仔煎，是天后宫前的知名老店，标榜用料新鲜实在，配上自制甜酱，而成为这道好滋味的风味小吃。', N'Information_2.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (4, N'高雄：蚵仔煎', N'高雄：蚵仔煎 蚵仔高雄特产，是壳类海产的一种。先用线粉搅拌蚵仔，然后把鸡蛋打散放油煎，让鸡蛋包着蚵仔，像鸡蛋饼一样。', N'Information_3.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (5, N'正记彰化肉圆', N'为彰化肉圆的创始老店，已有50多年历史。彰化肉圆做法独特，以在来米磨浆蒸熟后掺入蕃薯粉，倒进浅底的中型碗，加上瘦肉、笋丝、香菇、蛋黄等丰盛馅料，再进蒸笼里炊熟，最后放入油锅浸炸，就成了享誉半世纪的著名小吃。( 彰化县)', N'Information_4.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (6, N'花莲薯', N'花莲薯的原料是蕃薯，作法是先去皮煮烂后，捣成泥状、加入糖、香料、面粉等拌匀，捏成型烘烤即成。花莲芋的作法亦雷同，惟烘培前，再撒些玉桂（肉桂）粉，增加香气，故又称为“玉桂馒头”。( 花莲县)', N'Information_5.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (7, N'猫鼠面', N'猫鼠面里既无猫肉也无鼠肉，只因创始人陈木荣绰号“老鼠”，他卖的面被称为“老鼠面”，以国语名之，便成了“猫鼠面”。猫鼠面其实就是切仔面，只是份量较少，作料更讲究。其肉燥高汤乃猪大骨、蛤仔、扁鱼、肉燥久熬炼成，浇在面上香味扑鼻，令人食指大动；再配上口味鲜醇的虾丸、鸡卷，让人吃了还想再吃。', N'Information_6.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (8, N'亲吻鱼', N'象征爱情，是情侣最喜爱的宠物之一。', N'5.jpg', N'http://www.baidu.com')
INSERT [dbo].[Information] ([InfromationID], [Information_Name], [Information_Details], [Infromation_Pic], [Infromation_URL]) VALUES (9, N'薰衣草园', N'薰衣草淡淡的香味和紫色的气息，深受青年人喜欢。另因熏衣草在不少爱情电视剧中出现。所以也寓意爱情。', N'4.jpg', N'http://www.baidu.com')
SET IDENTITY_INSERT [dbo].[Information] OFF
SET IDENTITY_INSERT [dbo].[Project_User] ON 

INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (1, 1, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (2, 2, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (3, 3, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (4, 4, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (5, 5, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (6, 6, N'drs', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (7, 7, N'll', N'喜欢的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (8, 8, N'ly', N'发起的')
INSERT [dbo].[Project_User] ([Project_UserID], [ProjectID], [Accounts], [Investment_state]) VALUES (9, 9, N'ly', N'发起的')
SET IDENTITY_INSERT [dbo].[Project_User] OFF
SET IDENTITY_INSERT [dbo].[ProjectDetails] ON 

INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (1,  '2019-03-01', '2019-05-29', 476, N'众筹中', CAST(76590.00 AS Decimal(18, 2)), 1, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (2,  '2019-03-11', '2019-04-10', 107, N'众筹中', CAST(240.00 AS Decimal(18, 2)), 2, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (3,  '2019-03-01', '2019-04-20', 1679, N'众筹中', CAST(249009.00 AS Decimal(18, 2)), 3, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (4,  '2019-03-01', '2019-03-29', 611, N'众筹中', CAST(322800.00 AS Decimal(18, 2)), 4, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (5,  '2019-03-03', '2019-03-31', 146, N'众筹中', CAST(240.00 AS Decimal(18, 2)), 5, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (6,  '2019-03-01', '2019-05-29', 27, N'众筹中', CAST(1600.00 AS Decimal(18, 2)), 6, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (7,  '2019-03-11', '2019-04-11', 212, N'众筹中', CAST(899.00 AS Decimal(18, 2)), 7, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (8,  '2019-03-11', '2019-04-10', 71, N'众筹中', CAST(580.00 AS Decimal(18, 2)), 8, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (9,  '2019-03-21', '2019-04-21', 272, N'众筹中', CAST(2120.00 AS Decimal(18, 2)), 9, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (10, '2019-03-01', '2019-04-07', 127, N'众筹中', CAST(972.00 AS Decimal(18, 2)), 10, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (11, '2019-03-01', '2019-05-29', 167, N'众筹中', CAST(8607.00 AS Decimal(18, 2)), 11, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (12, '2019-03-01', '2019-05-29', 177, N'众筹中', CAST(2400.00 AS Decimal(18, 2)), 12, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (13, '2019-03-11', '2019-04-06', 11, N'众筹中', CAST(0.00 AS Decimal(18, 2)), 13, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (14, '2019-03-11', '2019-04-07', 27, N'众筹中', CAST(1154.00 AS Decimal(18, 2)), 14, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (15, '2019-03-11', '2019-04-10', 34, N'众筹中', CAST(580.00 AS Decimal(18, 2)), 15, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (16, '2019-03-01', '2019-05-29', 75, N'众筹中', CAST(1378.00 AS Decimal(18, 2)), 16, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (17, '2019-03-01', '2019-03-31', 694, N'众筹中', CAST(6600.00 AS Decimal(18, 2)), 17, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (18, '2019-03-20', '2019-04-05', 79, N'众筹中', CAST(300.00 AS Decimal(18, 2)), 18, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (19, '2019-03-01', '2019-04-14', 726, N'众筹中', CAST(1550.00 AS Decimal(18, 2)), 19, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (20, '2019-03-10', '2019-04-12', 82, N'众筹中', CAST(1966.00 AS Decimal(18, 2)), 20, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (21, '2019-03-01', '2019-04-20', 466, N'众筹中', CAST(812120.00 AS Decimal(18, 2)), 21, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (22, '2019-03-01', '2019-05-11', 1511, N'众筹中', CAST(17800.00 AS Decimal(18, 2)), 22, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (23, '2019-03-11', '2019-05-09', 485, N'众筹中', CAST(19196.00 AS Decimal(18, 2)), 23, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (24, '2019-03-09', '2019-04-02', 60, N'众筹中', CAST(643.00 AS Decimal(18, 2)), 24, N'进行中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (25, '2019-02-09', '2019-03-09', 255, N'已完成', CAST(53500.00 AS Decimal(18, 2)), 25, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (26, '2019-02-09', '2019-03-09', 256, N'已完成', CAST(53500.00 AS Decimal(18, 2)), 26, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (27, '2019-02-09', '2019-03-11', 257, N'已完成', CAST(53510.00 AS Decimal(18, 2)), 27, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (28, '2019-02-09', '2019-03-11', 258, N'已完成', CAST(53510.00 AS Decimal(18, 2)), 28, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (29, '2019-02-01', '2019-03-09', 222, N'已完成', CAST(43510.00 AS Decimal(18, 2)), 29, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (30, '2019-02-01', '2019-03-09', 322, N'已完成', CAST(45410.00 AS Decimal(18, 2)), 30, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (31, '2019-02-01', '2019-03-09', 322, N'已完成', CAST(75401.00 AS Decimal(18, 2)), 31, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (32, '2019-02-01', '2019-03-06', 322, N'已完成', CAST(75401.00 AS Decimal(18, 2)), 32, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (33, '2019-02-01', '2019-03-06', 3103, N'已完成', CAST(75401.00 AS Decimal(18, 2)), 33, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (34, '2019-02-05', '2019-03-06', 3104, N'已完成', CAST(37001.00 AS Decimal(18, 2)), 34, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (35, '2019-02-05', '2019-03-09', 3105, N'已完成', CAST(97001.00 AS Decimal(18, 2)), 35, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (36, '2019-02-05', '2019-03-09', 3106, N'已完成', CAST(97000.00 AS Decimal(18, 2)), 36, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (37, '2019-02-05', '2019-03-05', 3107, N'已完成', CAST(99820.00 AS Decimal(18, 2)), 37, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (38, '2019-02-05', '2019-03-05', 3008, N'已完成', CAST(39820.00 AS Decimal(18, 2)), 38, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (39, '2019-02-01', '2019-03-05', 3009, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 39, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (40, '2019-02-02', '2019-03-10', 4000, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 40, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (41, '2019-02-02', '2019-03-10', 4001, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 41, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (42, '2019-02-02', '2019-03-10', 4002, N'已完成', CAST(28050.00 AS Decimal(18, 2)), 42, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (43, '2019-02-02', '2019-03-10', 4003, N'已完成', CAST(38050.00 AS Decimal(18, 2)), 43, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (44, '2019-02-02', '2019-03-10', 4004, N'已完成', CAST(38050.00 AS Decimal(18, 2)), 44, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (45, '2019-02-01', '2019-03-09', 455, N'已完成', CAST(48050.00 AS Decimal(18, 2)), 45, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (46, '2019-02-01', '2019-03-02', 456, N'已完成', CAST(47595.00 AS Decimal(18, 2)), 46, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (47, '2019-02-01', '2019-03-02', 457, N'已完成', CAST(47595.00 AS Decimal(18, 2)), 47, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (48, '2019-01-01', '2019-03-02', 458, N'已完成', CAST(67595.00 AS Decimal(18, 2)), 48, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (49, '2019-01-01', '2019-03-02', 459, N'已完成', CAST(67595.00 AS Decimal(18, 2)), 49, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (50, '2019-01-01', '2019-03-12', 550, N'已完成', CAST(65595.00 AS Decimal(18, 2)), 50, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (51, '2019-01-09', '2019-03-12', 551, N'已完成', CAST(58015.00 AS Decimal(18, 2)), 51, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (52, '2019-01-09', '2019-03-12', 561, N'已完成', CAST(58515.00 AS Decimal(18, 2)), 52, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (53, '2019-01-09', '2019-03-11', 561, N'已完成', CAST(58500.00 AS Decimal(18, 2)), 53, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (54, '2019-01-09', '2019-03-11', 561, N'已完成', CAST(45110.00 AS Decimal(18, 2)), 54, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (55, '2019-01-09', '2019-03-11', 561, N'已完成', CAST(35141.00 AS Decimal(18, 2)), 55, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (56, '2019-01-09', '2019-03-01', 561, N'已完成', CAST(35111.00 AS Decimal(18, 2)), 56, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (57, '2019-01-09', '2019-03-01', 527, N'已完成', CAST(99820.00 AS Decimal(18, 2)), 57, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (58, '2019-01-09', '2019-03-01', 528, N'已完成', CAST(39820.00 AS Decimal(18, 2)), 58, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (59, '2019-01-09', '2019-03-05', 529, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 59, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (60, '2019-01-09', '2019-03-05', 620, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 60, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (61, '2019-01-02', '2019-03-05', 621, N'已完成', CAST(29800.00 AS Decimal(18, 2)), 61, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (62, '2019-01-02', '2019-03-05', 622, N'已完成', CAST(28050.00 AS Decimal(18, 2)), 62, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (63, '2019-01-01', '2019-03-10', 683, N'已完成', CAST(38050.00 AS Decimal(18, 2)), 63, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (64, '2019-01-01', '2019-03-10', 684, N'已完成', CAST(38050.00 AS Decimal(18, 2)), 64, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (65, '2019-01-01', '2019-03-10', 685, N'已完成', CAST(48050.00 AS Decimal(18, 2)), 65, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (66, '2019-01-01', '2019-03-05', 686, N'已完成', CAST(47595.00 AS Decimal(18, 2)), 66, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (67, '2019-01-01', '2019-03-05', 687, N'已完成', CAST(47595.00 AS Decimal(18, 2)), 67, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (68, '2019-01-01', '2019-03-04', 688, N'已完成', CAST(67595.00 AS Decimal(18, 2)), 68, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (69, '2019-01-01', '2019-03-04', 689, N'已完成', CAST(67595.00 AS Decimal(18, 2)), 69, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (70, '2019-01-01', '2019-03-04', 780, N'已完成', CAST(65595.00 AS Decimal(18, 2)), 70, N'已完成')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (71, '2019-04-01', '2019-04-11', 687, N'众筹中', CAST(1239172.00 AS Decimal(18, 2)), 71, N'众筹中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (72, '2019-04-01', '2019-04-20', 688, N'众筹中', CAST(175206.00 AS Decimal(18, 2)), 72, N'众筹中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (73, '2019-04-01', '2019-04-10', 689, N'众筹中', CAST(10702.00 AS Decimal(18, 2)), 73, N'众筹中')
INSERT [dbo].[ProjectDetails] ([ProjectDetailID], [Release_date], [Closing_date], [Like_number], [Financing_state], [Raised_amount], [ProjectID], [Operation]) VALUES (74, '2019-04-01', '2019-04-27', 780, N'众筹中', CAST(972.00 AS Decimal(18, 2)), 74, N'众筹中')
SET IDENTITY_INSERT [dbo].[ProjectDetails] OFF
SET IDENTITY_INSERT [dbo].[ProjectInfo] ON 

INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (1, N'【大卫咖啡】国内首家电商咖啡馆', CAST(300000.00 AS Decimal(18, 2)), 90, N'科技', N'湖北', N'武汉', N'index_1.gif', N'100', N'100', N'已审核', N'100', N'1000')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (2, N'嘻哈包袱铺“一场演出”—石家庄站', CAST(200000.00 AS Decimal(18, 2)), 31, N'艺术', N'湖北', N'武汉', N'index_2.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (3, N'全球首创LOMO拍立得相机', CAST(100000.00 AS Decimal(18, 2)), 51, N'设计', N'湖北', N'武汉', N'index_3.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (4, N'中国金融博物馆《革命金融展》主题展览', CAST(300000.00 AS Decimal(18, 2)), 29, N'艺术', N'湖北', N'武汉', N'index_4.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (5, N'七夕.众筹爱情博物馆 慈善商店寻找最动人爱情故事 ', CAST(1314.00 AS Decimal(18, 2)), 29, N'艺术', N'湖北', N'武汉 ', N'hot_1.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (6, N'大学生村寨行——让当代青年了解真实“大美中国”', CAST(56000.00 AS Decimal(18, 2)), 90, N'公益', N'湖北', N'武汉', N'hot_2.gif', N'项目详情', N'标签 ', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (7, N'ROCK智能名片手机套', CAST(5000.00 AS Decimal(18, 2)), 30, N'科技', N'湖北', N'武汉', N'hot_3.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (8, N'卷土重来，办公桌上的搅拌“机”', CAST(30000.00 AS Decimal(18, 2)), 30, N'科技', N'湖北', N'武汉', N'hot_4.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (9, N'防雾、疏水、防污、抗老化—汽车整车护理纳米材料产品', CAST(10000.00 AS Decimal(18, 2)), 45, N'设计', N'湖北', N'武汉', N'hot_5.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (10, N'七夕月携手辛夷坞、顾西爵，给你全世界的甜蜜', CAST(20000.00 AS Decimal(18, 2)), 30, N'出版', N'湖北', N'武汉', N'hot_6.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (11, N'七夕，我们一起搭鹤桥', CAST(7777.00 AS Decimal(18, 2)), 20, N'其他', N'湖北', N'武汉', N'hot_7.gif', N'七夕鹤桥', N'七夕', N'已审核', N'七夕鹤桥', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (12, N'《木槿花开》：影像新浪潮2019最佳类型季提案', CAST(3000.00 AS Decimal(18, 2)), 30, N'影视', N'湖北', N'武汉', N'hot_8.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (13, N'【青春制噪】2019-8.14绿色情人节枕头大战', CAST(1000.00 AS Decimal(18, 2)), 26, N'其他', N'湖北', N'武汉', N'hot_9.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (14, N'一颗蜜桃，带你重温童年滋味', CAST(20000.00 AS Decimal(18, 2)), 30, N'农业', N'湖北', N'武汉', N'hot_10.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (15, N'汇源果时汇体验游—亲近自然 回归土地', CAST(10000.00 AS Decimal(18, 2)), 30, N'农业', N'湖北', N'武汉', N'hot_11.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (16, N'云中慢谷生态米—让留守农人安心耕作，让我们放心吃饭 ', CAST(450000.00 AS Decimal(18, 2)), 90, N'农业', N'湖北', N'武汉', N'hot_12.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (17, N'李家方纪录片《童年》—关注中国留守儿童生存状态', CAST(288888.00 AS Decimal(18, 2)), 30, N'影视', N'湖北', N'武汉', N'hot_13.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (18, N'【DIY创意坊】紫檀之魅', CAST(3000.00 AS Decimal(18, 2)), 15, N'艺术', N'湖北', N'武汉', N'hot_14.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (19, N'美院毕业设计师 原创星座系列丝巾', CAST(2000.00 AS Decimal(18, 2)), 45, N'设计', N'湖北', N'武汉', N'hot_15.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (20, N'让你的生活自带Instagram滤镜', CAST(30000.00 AS Decimal(18, 2)), 33, N'其他', N'湖北', N'武汉', N'hot_16.gif', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (21, N'《玩出来的产业—王志纲谈旅游》', CAST(1000000.00 AS Decimal(18, 2)), 51, N'出版', N'湖北', N'武汉', N'look_1.png', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (22, N'澜沧江计划 救助盲童眼疾', CAST(20000.00 AS Decimal(18, 2)), 70, N'公益', N'湖北', N'武汉', N'over_4.png', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (23, N'codru儿童智能守卫', CAST(30000.00 AS Decimal(18, 2)), 60, N'科技', N'湖北', N'武汉', N'look_12.png', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (24, N'从未如此接近！大别山孩子看青奥', CAST(3500.00 AS Decimal(18, 2)), 24, N'公益', N'湖北', N'武汉', N'look_20.png', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (25, N'悦海上品 平鱼一条装 240g-260g/袋', CAST(53500.00 AS Decimal(18, 2)), 25, N'公益', N'湖北', N'武汉', N'25.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (26, N'富味乡黑麻油 185ml/瓶', CAST(53500.00 AS Decimal(18, 2)), 26, N'公益', N'湖北', N'武汉', N'26.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (27, N'一品玉和田枣五星 450g/袋*3', CAST(53510.00 AS Decimal(18, 2)), 27, N'公益', N'湖北', N'武汉', N'27.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (28, N'科尔沁风干牛肉原味250g', CAST(53510.00 AS Decimal(18, 2)), 28, N'公益', N'湖北', N'武汉', N'28.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (29, N'农场特惠蔬菜包（6种）约6斤', CAST(43510.00 AS Decimal(18, 2)), 29, N'公益', N'湖北', N'武汉', N'29.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (30, N'乌拉圭肥羊排 1kg/份', CAST(45410.00 AS Decimal(18, 2)), 30, N'出版', N'湖北', N'武汉', N'30.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (31, N'生态胡萝卜', CAST(75401.00 AS Decimal(18, 2)), 31, N'出版', N'湖北', N'武汉', N'31.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (32, N'有机结球生菜', CAST(75401.00 AS Decimal(18, 2)), 32, N'出版', N'湖北', N'武汉', N'32.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (33, N'有机大白菜', CAST(75401.00 AS Decimal(18, 2)), 33, N'出版', N'湖北', N'武汉', N'33.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (34, N'有机圆白菜', CAST(37001.00 AS Decimal(18, 2)), 34, N'出版', N'湖北', N'武汉', N'34.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (35, N'有机西葫芦', CAST(97001.00 AS Decimal(18, 2)), 35, N'出版', N'湖北', N'武汉', N'35.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (36, N'（32城配送）乌拉圭羊前腿 1kg/袋', CAST(97000.00 AS Decimal(18, 2)), 36, N'出版', N'湖北', N'武汉', N'36.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (37, N'进口蓝莓', CAST(99820.00 AS Decimal(18, 2)), 37, N'影视', N'湖北', N'武汉', N'37.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (38, N'进口血橙 4个/份', CAST(39820.00 AS Decimal(18, 2)), 38, N'影视', N'湖北', N'武汉', N'38.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (39, N'精品天水花牛苹果 2个/份 约500g', CAST(29800.00 AS Decimal(18, 2)), 39, N'影视', N'湖北', N'武汉', N'39.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (40, N'进口姬娜果 4个/份', CAST(29800.00 AS Decimal(18, 2)), 40, N'影视', N'湖北', N'武汉', N'40.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (41, N'赣南脐橙【不催熟、不打蜡，自然成熟】 约5斤/份', CAST(29800.00 AS Decimal(18, 2)), 41, N'影视', N'湖北', N'武汉', N'41.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (42, N'冷鲜肉—添康生态有机猪肉前肩 350g/盒', CAST(28050.00 AS Decimal(18, 2)), 42, N'影视', N'湖北', N'武汉', N'42.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (43, N'农场自养猪前肘 850-950g/袋', CAST(38050.00 AS Decimal(18, 2)), 43, N'影视', N'湖北', N'武汉', N'43.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (44, N'农场自养猪后肘 1050-1350g/袋', CAST(38050.00 AS Decimal(18, 2)), 44, N'影视', N'湖北', N'武汉', N'44.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (45, N'澳洲雪花上脑 300g/袋', CAST(48050.00 AS Decimal(18, 2)), 45, N'农业', N'湖北', N'武汉', N'45.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (46, N'圣野特种野猪后腿肉 500g/袋', CAST(47595.00 AS Decimal(18, 2)), 46, N'农业', N'湖北', N'武汉', N'46.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (47, N'密云水库野生银鱼礼盒 3000g', CAST(47595.00 AS Decimal(18, 2)), 47, N'农业', N'湖北', N'武汉', N'47.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (48, N'九洋条冻大黄鱼 500g/袋', CAST(67595.00 AS Decimal(18, 2)), 48, N'农业', N'湖北', N'武汉', N'48.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (49, N'野生大目金枪鱼（A级）切片 200g/盒', CAST(67595.00 AS Decimal(18, 2)), 49, N'农业', N'湖北', N'武汉', N'49.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (50, N'泰国正大CP巴沙鱼片（带皮） 1000g/袋（学名：鲶鱼）', CAST(65595.00 AS Decimal(18, 2)), 50, N'艺术', N'湖北', N'武汉', N'50.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (51, N'纽麦福全脂纯牛奶 1L/盒', CAST(58015.00 AS Decimal(18, 2)), 51, N'艺术', N'湖北', N'武汉', N'51.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (52, N'多美鲜全脂牛奶 1L*12盒/箱', CAST(58515.00 AS Decimal(18, 2)), 52, N'艺术', N'湖北', N'武汉', N'52.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (53, N'德亚低脂牛奶 1L/盒', CAST(58500.00 AS Decimal(18, 2)), 53, N'艺术', N'湖北', N'武汉', N'53.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (54, N'归原有机鲜牛奶 243ml/盒(8盒/箱)', CAST(45110.00 AS Decimal(18, 2)), 54, N'设计', N'湖北', N'武汉', N'54.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (55, N'顶羊纯羊奶 250ml*12盒/箱', CAST(35141.00 AS Decimal(18, 2)), 55, N'设计', N'湖北', N'武汉', N'55.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (56, N'赛瑞海参活力乳 250ML*10/提', CAST(35111.00 AS Decimal(18, 2)), 56, N'设计', N'湖北', N'武汉', N'56.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (57, N'欧德堡超高温处理脱脂牛奶1L/盒', CAST(99820.00 AS Decimal(18, 2)), 57, N'音乐', N'湖北', N'武汉', N'57.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (58, N'蟹田生态米 5kg/袋', CAST(39820.00 AS Decimal(18, 2)), 58, N'音乐', N'湖北', N'武汉', N'58.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (59, N'隆福源 长粒香米 5kg/袋', CAST(29800.00 AS Decimal(18, 2)), 59, N'音乐', N'湖北', N'武汉', N'59.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (60, N'阿茜娅混合橄榄油 500ml/瓶', CAST(29800.00 AS Decimal(18, 2)), 60, N'出版', N'湖北', N'武汉', N'60.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (61, N'生态小镇有机花生油 1L/瓶 低温物理压榨', CAST(29800.00 AS Decimal(18, 2)), 61, N'出版', N'湖北', N'武汉', N'61.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (62, N'禾然有机糙米醋 500ml/瓶', CAST(28050.00 AS Decimal(18, 2)), 62, N'出版', N'湖北', N'武汉', N'62.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (63, N'乐活氏八宝坚果 250g/罐', CAST(38050.00 AS Decimal(18, 2)), 63, N'影视', N'湖北', N'武汉', N'63.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (64, N'新疆纸皮核桃 500g 基地直采', CAST(38050.00 AS Decimal(18, 2)), 64, N'影视', N'湖北', N'武汉', N'64.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (65, N'泰国正大CP虾肉馄饨12个 144g/盒', CAST(48050.00 AS Decimal(18, 2)), 65, N'农业', N'湖北', N'武汉', N'65.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (66, N'尚料理 西班牙海鲜饭 300克/盒', CAST(47595.00 AS Decimal(18, 2)), 66, N'农业', N'湖北', N'武汉', N'66.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (67, N'福成“鲜到家”宫爆鸡丁 370g/盒', CAST(47595.00 AS Decimal(18, 2)), 67, N'农业', N'湖北', N'武汉', N'67.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (68, N'蟹田生态米 5kg/袋', CAST(67595.00 AS Decimal(18, 2)), 68, N'农业', N'湖北', N'武汉', N'68.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (69, N'乐活氏八宝坚果 500g/罐', CAST(67595.00 AS Decimal(18, 2)), 69, N'农业', N'湖北', N'武汉', N'69.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (70, N'美兰卡可可蜂蜜蛋糕 100g/盒', CAST(65595.00 AS Decimal(18, 2)), 70, N'艺术', N'湖北', N'武汉', N'70.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (71, N'让我们一起开书店，寻找属于字里行间的人', CAST(500000.00 AS Decimal(18, 2)), 71, N'出版', N'湖北', N'武汉', N'71.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (72, N'众筹属于你的“生命可能”，一本古典为你定制的书', CAST(300000.00 AS Decimal(18, 2)), 72, N'出版', N'湖北', N'武汉', N'72.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (73, N'《日进3万3：微店这样开才赚钱》听哈爸讲故事，学微店', CAST(100000.00 AS Decimal(18, 2)), 73, N'出版', N'湖北', N'武汉', N'73.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
INSERT [dbo].[ProjectInfo] ([ProjectID], [Project_Name], [Project_Money], [Raise_day], [Project_Type], [Project_Province], [Project_City], [Project_cover], [Project_Details], [Label], [Project_state], [Project_brief], [Video]) VALUES (74, N'七夕携手辛夷坞、顾西爵，给你全世界的甜蜜', CAST(20000.00 AS Decimal(18, 2)), 74, N'出版', N'湖北', N'武汉', N'74.jpg', N'项目详情', N'标签', N'已审核', N'简介', N'视频')
SET IDENTITY_INSERT [dbo].[ProjectInfo] OFF
SET IDENTITY_INSERT [dbo].[ReceivingInfo] ON 

INSERT [dbo].[ReceivingInfo] ([ReceivingID], [Zip_code], [Receiving_Province], [Receiving_City], [Receiving_Phone], [Receiving_Name], [Detailed_address], [Accounts]) VALUES (1, 434470, N'湖北', N'武汉', N'15812345678', N'李园', N'洪山区', N'ly')
SET IDENTITY_INSERT [dbo].[ReceivingInfo] OFF
SET IDENTITY_INSERT [dbo].[Return] ON 

INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (1, 2, N'look1.png', CAST(2000.00 AS Decimal(18, 2)), N'回报内容三', CAST(0.00 AS Decimal(18, 2)), 50, 1)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (2, 100, N'look1.png', CAST(1000.00 AS Decimal(18, 2)), N'赠送一只手表。', CAST(0.00 AS Decimal(18, 2)), 50, 3)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (3, 10, N'look1.png', CAST(10000.00 AS Decimal(18, 2)), N'赠送0.5%的股权。', CAST(0.00 AS Decimal(18, 2)), 50, 5)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (4, 5, N'look1.png', CAST(20000.00 AS Decimal(18, 2)), N'赠送1.0%的股权。', CAST(0.00 AS Decimal(18, 2)), 50, 4)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (5, 7, N'look1.png', CAST(1000.00 AS Decimal(18, 2)), N'回报一', CAST(0.00 AS Decimal(18, 2)), 10, 6)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (6, 3, N'look1.png', CAST(2000.00 AS Decimal(18, 2)), N'回报二', CAST(0.00 AS Decimal(18, 2)), 10, 2)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (7, 2, N'look1.png', CAST(5000.00 AS Decimal(18, 2)), N'回报三', CAST(0.00 AS Decimal(18, 2)), 10, 7)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (8, 7, N'look1.png', CAST(500.00 AS Decimal(18, 2)), N'回报内容一', CAST(0.00 AS Decimal(18, 2)), 50, 8)
INSERT [dbo].[Return] ([ReturnID], [Qualified_quota], [Description_pic], [Support_amount], [Return_content], [Freight], [Return_time], [ProjectID]) VALUES (9, 4, N'look1.png', CAST(1000.00 AS Decimal(18, 2)), N'回报内容二', CAST(0.00 AS Decimal(18, 2)), 50, 9)
SET IDENTITY_INSERT [dbo].[Return] OFF
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([SupportID], [Accounts], [ReturnID]) VALUES (1, N'xzc', 2)
INSERT [dbo].[Support] ([SupportID], [Accounts], [ReturnID]) VALUES (2, N'xzy', 3)
INSERT [dbo].[Support] ([SupportID], [Accounts], [ReturnID]) VALUES (3, N'wzh', 4)
INSERT [dbo].[Support] ([SupportID], [Accounts], [ReturnID]) VALUES (4, N'll', 5)
SET IDENTITY_INSERT [dbo].[Support] OFF
SET IDENTITY_INSERT [dbo].[Topic] ON 

INSERT [dbo].[Topic] ([TopicID], [Topic_time], [Topic_content], [ProjectID], [Accounts]) VALUES (1, CAST(0x0000AA0800B7FD65 AS DateTime), N'奴才飞洒吃饭搜查', 1, N'drs')
INSERT [dbo].[Topic] ([TopicID], [Topic_time], [Topic_content], [ProjectID], [Accounts]) VALUES (2, CAST(0x0000AA0800B7FD65 AS DateTime), N'ergefgv', 2, N'ly')
INSERT [dbo].[Topic] ([TopicID], [Topic_time], [Topic_content], [ProjectID], [Accounts]) VALUES (3, CAST(0x0000AA0800B7FD65 AS DateTime), N'你是什么魔鬼', 3, N'xzy')
SET IDENTITY_INSERT [dbo].[Topic] OFF
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'wzh', N'管理员', N'wzh', N'123', N'13512345678', N'男         ', CAST(0x0000AA0800B7FD65 AS DateTime), N'学委', N'无', N'63.jpg', N'湖北', N'黄冈', N'使用')
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'xzc', N'管理员', N'xzc', N'123', N'13812345678', N'男         ', CAST(0x0000AA0800B80560 AS DateTime), N'组长', NULL, N'64.jpg', N'湖北', N'荆门', N'使用')
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'll', N'普通用户', N'll', N'123', N'18112345678', N'女         ', CAST(0x0000AA0800B80560 AS DateTime), N'组员', NULL, N'59.jpg', N'湖南', N'长沙', N'使用')
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'xzy', N'普通用户', N'xzy', N'123', N'15912345678', N'男         ', CAST(0x0000AA0800B8B587 AS DateTime), N'组员', NULL, N'58.jpg', N'浙江', N'衢州', N'使用')
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'drs', N'普通用户', N'drs', N'123', N'18712345678', N'男         ', CAST(0x0000AA0800C39E4B AS DateTime), N'项目老大', NULL, N'57.jpg', N'湖北', N'十堰', N'使用')
INSERT [dbo].[UserInfo] ([Accounts], [User_Type], [UserName], [Pwd], [Phone], [Gender], [Registration_time], [Personal_note], [URL], [Head_portrait], [Province], [City], [User_state]) VALUES (N'ly', N'普通用户', N'ly', N'132', N'18912345678', N'女         ', CAST(0x0000AA0800C3E1CF AS DateTime), N'辅导员', NULL, N'53.jpg', N'湖北', N'浠水', N'使用')
/****** Object:  Index [PK_BANKINFO]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[BankInfo] ADD  CONSTRAINT [PK_BANKINFO] PRIMARY KEY NONCLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_BankInfo_UserInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_BankInfo_UserInfo_FK] ON [dbo].[BankInfo]
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_INFORMATION]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [PK_INFORMATION] PRIMARY KEY NONCLUSTERED 
(
	[InfromationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PROJECT_USER]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[Project_User] ADD  CONSTRAINT [PK_PROJECT_USER] PRIMARY KEY NONCLUSTERED 
(
	[Project_UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_Project_User_ProjectInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Project_User_ProjectInfo_FK] ON [dbo].[Project_User]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_Project_User_UserInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Project_User_UserInfo_FK] ON [dbo].[Project_User]
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PROJECTDETAILS]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [PK_PROJECTDETAILS] PRIMARY KEY NONCLUSTERED 
(
	[ProjectDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_ProjectDetails_ProjectInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_ProjectDetails_ProjectInfo_FK] ON [dbo].[ProjectDetails]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PROJECTINFO]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[ProjectInfo] ADD  CONSTRAINT [PK_PROJECTINFO] PRIMARY KEY NONCLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_RECEIVINGINFO]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[ReceivingInfo] ADD  CONSTRAINT [PK_RECEIVINGINFO] PRIMARY KEY NONCLUSTERED 
(
	[ReceivingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_ReceivingInfo_UserInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_ReceivingInfo_UserInfo_FK] ON [dbo].[ReceivingInfo]
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_RETURN]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[Return] ADD  CONSTRAINT [PK_RETURN] PRIMARY KEY NONCLUSTERED 
(
	[ReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_Return_ProjectInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Return_ProjectInfo_FK] ON [dbo].[Return]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SUPPORT]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[Support] ADD  CONSTRAINT [PK_SUPPORT] PRIMARY KEY NONCLUSTERED 
(
	[SupportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_Table_1_Table_1_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Table_1_Table_1_FK] ON [dbo].[Support]
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_Table_1_Table_11_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Table_1_Table_11_FK] ON [dbo].[Support]
(
	[ReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TOPIC]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [PK_TOPIC] PRIMARY KEY NONCLUSTERED 
(
	[TopicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_Topic_ProjectInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Topic_ProjectInfo_FK] ON [dbo].[Topic]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_Topic_UserInfo_FK]    Script Date: 2019/4/1 14:35:21 ******/
CREATE NONCLUSTERED INDEX [FK_Topic_UserInfo_FK] ON [dbo].[Topic]
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_USERINFO]    Script Date: 2019/4/1 14:35:21 ******/
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [PK_USERINFO] PRIMARY KEY NONCLUSTERED 
(
	[Accounts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [DF_ProjectDetails_Release_date]  DEFAULT (getdate()) FOR [Release_date]
GO
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [DF_ProjectDetails_Closing_date]  DEFAULT (getdate()) FOR [Closing_date]
GO
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [DF_ProjectDetails_Operation]  DEFAULT (N'进行中') FOR [Operation]
GO
ALTER TABLE [dbo].[ProjectInfo] ADD  CONSTRAINT [DF_ProjecrInfo_Project_state]  DEFAULT (N'草稿') FOR [Project_state]
GO
ALTER TABLE [dbo].[ProjectInfo] ADD  CONSTRAINT [DF_ProjecrInfo_Project_brief]  DEFAULT (N'此人很懒，什么都没有留下！') FOR [Project_brief]
GO
ALTER TABLE [dbo].[ProjectInfo] ADD  CONSTRAINT [DF_ProjecrInfo_Video]  DEFAULT (N'其他') FOR [Video]
GO
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_Topic_time]  DEFAULT (getdate()) FOR [Topic_time]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_User_Type]  DEFAULT (N'普通用户') FOR [User_Type]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_Registration_time]  DEFAULT (getdate()) FOR [Registration_time]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_Head_portrait]  DEFAULT (N'
r.gif') FOR [Head_portrait]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_User_state]  DEFAULT (N'使用') FOR [User_state]
GO
ALTER TABLE [dbo].[BankInfo]  WITH CHECK ADD  CONSTRAINT [FK_BANKINFO_FK_BANKIN_USERINFO] FOREIGN KEY([Accounts])
REFERENCES [dbo].[UserInfo] ([Accounts])
GO
ALTER TABLE [dbo].[BankInfo] CHECK CONSTRAINT [FK_BANKINFO_FK_BANKIN_USERINFO]
GO
ALTER TABLE [dbo].[Project_User]  WITH CHECK ADD  CONSTRAINT [FK_PROJECT__FK_PROJEC_PROJECTI] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[ProjectInfo] ([ProjectID])
GO
ALTER TABLE [dbo].[Project_User] CHECK CONSTRAINT [FK_PROJECT__FK_PROJEC_PROJECTI]
GO
ALTER TABLE [dbo].[Project_User]  WITH CHECK ADD  CONSTRAINT [FK_PROJECT__FK_PROJEC_USERINFO] FOREIGN KEY([Accounts])
REFERENCES [dbo].[UserInfo] ([Accounts])
GO
ALTER TABLE [dbo].[Project_User] CHECK CONSTRAINT [FK_PROJECT__FK_PROJEC_USERINFO]
GO
ALTER TABLE [dbo].[ProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_PROJECTD_FK_PROJEC_PROJECTI] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[ProjectInfo] ([ProjectID])
GO
ALTER TABLE [dbo].[ProjectDetails] CHECK CONSTRAINT [FK_PROJECTD_FK_PROJEC_PROJECTI]
GO
ALTER TABLE [dbo].[ReceivingInfo]  WITH CHECK ADD  CONSTRAINT [FK_RECEIVIN_FK_RECEIV_USERINFO] FOREIGN KEY([Accounts])
REFERENCES [dbo].[UserInfo] ([Accounts])
GO
ALTER TABLE [dbo].[ReceivingInfo] CHECK CONSTRAINT [FK_RECEIVIN_FK_RECEIV_USERINFO]
GO
ALTER TABLE [dbo].[Return]  WITH CHECK ADD  CONSTRAINT [FK_RETURN_FK_RETURN_PROJECTI] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[ProjectInfo] ([ProjectID])
GO
ALTER TABLE [dbo].[Return] CHECK CONSTRAINT [FK_RETURN_FK_RETURN_PROJECTI]
GO
ALTER TABLE [dbo].[Support]  WITH CHECK ADD  CONSTRAINT [FK_SUPPORT_FK_TABLE__RETURN] FOREIGN KEY([ReturnID])
REFERENCES [dbo].[Return] ([ReturnID])
GO
ALTER TABLE [dbo].[Support] CHECK CONSTRAINT [FK_SUPPORT_FK_TABLE__RETURN]
GO
ALTER TABLE [dbo].[Support]  WITH CHECK ADD  CONSTRAINT [FK_SUPPORT_FK_TABLE__USERINFO] FOREIGN KEY([Accounts])
REFERENCES [dbo].[UserInfo] ([Accounts])
GO
ALTER TABLE [dbo].[Support] CHECK CONSTRAINT [FK_SUPPORT_FK_TABLE__USERINFO]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_TOPIC_FK_TOPIC__PROJECTI] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[ProjectInfo] ([ProjectID])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_TOPIC_FK_TOPIC__PROJECTI]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_TOPIC_FK_TOPIC__USERINFO] FOREIGN KEY([Accounts])
REFERENCES [dbo].[UserInfo] ([Accounts])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_TOPIC_FK_TOPIC__USERINFO]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProjectDetails'
GO

--存储过程

create proc chaxun(
@pagesize int, 
@pageindex int 
)as
select top (@pagesize)* from ProjectInfo p, ProjectDetails d where p.ProjectID =d.ProjectID
and p.ProjectID not in(
select top (@pagesize*@pageindex) p.ProjectID from ProjectInfo p, ProjectDetails
)

drop proc chaxun
execute chaxun 5,0

select * from Project_User;
select * from ProjectDetails;
select * from ProjectInfo;
select * from Information;
select * from ReceivingInfo;
select * from Support;
select * from Topic;
select * from UserInfo