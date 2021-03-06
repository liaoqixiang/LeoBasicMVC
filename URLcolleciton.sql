USE [LinkHubDB]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 1/04/2017 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[CategoryId] [int] IDENTITY(1000,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[CategoryDesc] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Url]    Script Date: 1/04/2017 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Url](
	[UrlId] [int] IDENTITY(1,1) NOT NULL,
	[UrlTitle] [varchar](50) NOT NULL,
	[Url] [varchar](50) NOT NULL,
	[UrlDesc] [varchar](max) NOT NULL,
	[CategoryId] [int] NULL,
	[UserId] [int] NULL,
	[IsApproved] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_Url] PRIMARY KEY CLUSTERED 
(
	[UrlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 1/04/2017 5:23:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1000, N'Technology', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1001, N'Math and Science ', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1002, N'Crafts and Hobbies', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1003, N'Business', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1004, N'Education', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1005, N'Sports', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1006, N'Design	', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1007, N'Languages', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1008, N'Games', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1009, N'Arts and Photography', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1010, N'Humanities	', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1011, N'Other', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1012, N'Health and Fitness', N'')
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [CategoryDesc]) VALUES (1013, N'Social Sciences', N'')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
SET IDENTITY_INSERT [dbo].[tbl_Url] ON 

INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (1, N'Proin', N'http://www.wooster.edu/', N'feugiat enim rhoncus Duis magnis dapibus id sagittis leo consectetuer', 1008, 3, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (2, N'varius', N'http://www.molloy.edu/', N'Lorem Phasellus nostra Suspendisse Fusce pretium Duis odio sagittis Mauris', 1004, 11, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (3, N'fermentum', N'http://www.mscfs.edu/', N'hendrerit velit sem commodo mattis vel nascetur egestas Lorem ac', 1003, 5, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (4, N'Quisque', N'http://www.naz.edu/', N'Pellentesque nibh montes justo metus senectus justo Cras metus Curabitur', 1003, 4, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (5, N'lorem', N'http://www.fairmont.wvnet.edu:80/', N'ante iaculis Mauris lectus elit torquent Vivamus nec tellus turpis', 1006, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (6, N'vehicula', N'http://www.nwmissouri.edu/', N'Proin magnis lacus dis congue tristique ligula laoreet laoreet egestas', 1010, 8, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (7, N'eleifend', N'http://www.milligan.milligan-college.tn.us/', N'rhoncus id ullamcorper Praesent consectetuer nascetur ac massa Nunc nibh', 1004, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (8, N'quam', N'http://www.mcneese.edu/', N'Phasellus varius interdum venenatis ultrices auctor Nulla Ut nec magnis', 1001, 7, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (9, N'Mauris', N'http://www.ipfw.indiana.edu/', N'consectetuer aliquet in orci penatibus In commodo dolor Quisque pharetra', 1007, 4, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (10, N'Nulla', N'http://www.dwc.edu/', N'id rutrum ac rutrum fermentum Aliquam nascetur Morbi nunc placerat', 1003, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (11, N'neque', N'http://www.fhsu.edu/', N'tellus Maecenas Vestibulum et risus nec volutpat fermentum dis tempor', 1008, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (12, N'ipsum', N'http://www.dwu.edu/', N'purus mi amet eget nisl et eros conubia molestie amet', 1003, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (13, N'Ut', N'http://www.metro.msus.edu/', N'pharetra ac cubilia ridiculus Lorem metus nunc vel dignissim hymenaeos', 1002, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (14, N'et', N'http://www.pbac.edu/', N'Maecenas tempus libero montes Curabitur laoreet Donec lorem vestibulum id', 1001, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (15, N'lectus', N'http://www.goshen.edu/', N'fames ultricies torquent convallis magna Maecenas in elementum nisi Lorem', 1000, 11, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (16, N'lobortis', N'http://www.csc.edu/', N'felis ultrices nec pharetra lorem egestas vestibulum tristique porta dui', 1009, 12, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (17, N'mauris', N'http://www.moravian.edu/', N'volutpat Vivamus Vivamus massa a arcu suscipit vitae volutpat posuere', 1009, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (18, N'imperdiet', N'http://www.central.edu/', N'Pellentesque viverra facilisis nisi dis natoque ipsum massa lectus facilisi', 1003, 11, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (19, N'pulvinar', N'http://unix1.sncc.lsu.edu/', N'In Praesent vestibulum pede Morbi nibh augue neque metus velit', 1006, 8, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (20, N'venenatis', N'http://www.msstate.edu/', N'non Pellentesque Nunc Cras Morbi ligula suscipit laoreet lectus auctor', 1006, 7, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (21, N'accumsan', N'http://www.cts.edu/', N'faucibus Proin lectus hymenaeos vel tellus sollicitudin nascetur ut natoque', 1005, 4, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (22, N'tempor', N'http://www.csbsju.edu/', N'sociosqu vel metus elit turpis Morbi dapibus Cras elementum neque', 1009, 6, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (23, N'Donec', N'http://www.gac.edu/', N'euismod dignissim egestas condimentum Integer montes quam pede sit pede', 1008, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (24, N'aptent', N'http://www.lfc.edu/', N'viverra ad pretium elit Quisque nascetur gravida lacinia risus odio', 1002, 8, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (25, N'ullamcorper', N'http://www.colostate.edu/', N'nisi litora mauris eget ipsum dignissim porta dui convallis sollicitudin', 1009, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (26, N'natoque', N'http://www.fsufay.edu/', N'sodales luctus euismod pharetra Mauris Morbi nostra id a Nullam', 1002, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (27, N'tortor', N'http://www.jones.edu/', N'torquent nostra Morbi nibh Fusce diam litora nonummy amet lobortis', 1001, 6, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (28, N'metus', N'http://www.graceland.edu/', N'tristique erat odio ullamcorper dolor Ut nisl posuere hymenaeos commodo', 1003, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (29, N'vehicula', N'http://www.lemoyne.edu/', N'habitant nostra posuere ipsum natoque penatibus In torquent Aenean sociosqu', 1010, 2, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (30, N'iaculis', N'http://www.fresno.edu/', N'id eleifend egestas vitae conubia pede Pellentesque felis sit amet', 1000, 12, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (31, N'consectetuer', N'http://www.hood.edu/', N'turpis erat sem laoreet nonummy porttitor suscipit congue sed accumsan', 1008, 12, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (32, N'tempor', N'http://www.fsc.edu/', N'Nunc tempor risus eu tristique varius pellentesque Class mus interdum', 1000, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (33, N'montes', N'http://www.css.edu/', N'suscipit Suspendisse In metus pede sit diam sapien id sociis', 1010, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (34, N'Aenean', N'http://www.colum.edu/', N'enim dapibus commodo rhoncus gravida Vivamus Nam sed Donec viverra', 1004, 2, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (35, N'Nam', N'http://www.fit.edu/', N'consequat cubilia sollicitudin enim nibh at Duis Nunc pulvinar consectetuer', 1010, 2, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (36, N'nunc', N'http://www.campbellsvil.edu/', N'leo felis Suspendisse hendrerit nisi consectetuer gravida nonummy Nullam Phasellus', 1004, 8, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (37, N'dictum', N'http://www.huntcol.edu/', N'sollicitudin amet aptent pellentesque sociis suscipit rhoncus Class leo Vestibulum', 1005, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (38, N'lorem', N'http://www.prysm.com/~lsuscba/', N'neque tempus mauris Morbi inceptos ullamcorper rhoncus eu commodo fames', 1009, 6, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (39, N'Integer', N'http://hws3.hws.edu/', N'sit blandit habitant a Pellentesque adipiscing conubia Nulla velit quis', 1003, 7, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (40, N'gravida', N'http://www.nwciowa.edu/', N'ut faucibus sociosqu per ornare Suspendisse mollis mattis Sed Phasellus', 1004, 12, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (41, N'suscipit', N'http://www.molloy.edu/', N'lobortis augue vitae scelerisque taciti convallis et congue Maecenas tincidunt', 1007, 6, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (42, N'amet', N'http://www.fit.edu/', N'fermentum lobortis luctus mollis et molestie tincidunt dui penatibus eget', 1000, 4, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (43, N'dis', N'http://www.efn.org/~mscenter/guten', N'natoque eros habitant viverra consequat sodales tortor dis Pellentesque nulla', 1000, 11, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (44, N'habitant', N'http://www.davidson.edu/', N'varius sociosqu molestie Donec leo accumsan Aliquam dapibus nostra lorem', 1005, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (45, N'nulla', N'http://www.dowling.edu/', N'accumsan consectetuer ligula Class ultricies erat ultricies dui nonummy metus', 1001, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (46, N'sollicitudin', N'http://www.olivet.edu/', N'Pellentesque malesuada suscipit ante accumsan bibendum ridiculus quam viverra Suspendisse', 1009, 7, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (47, N'libero', N'http://www.lfc.edu/', N'per Aenean luctus congue vitae imperdiet eget inceptos facilisi ac', 1004, 8, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (48, N'inceptos', N'http://www.lyon.edu/', N'id lectus habitant nec est consectetuer netus Quisque parturient lacus', 1003, 4, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (49, N'bibendum', N'http://www.mercer.peachnet.edu/', N'vitae elit lacus in neque egestas ridiculus euismod Curabitur nisl', 1006, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (50, N'porta', N'http://www.coa.edu/', N'mus Nunc Proin elementum placerat lobortis laoreet Donec malesuada ornare', 1000, 11, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (51, N'tellus', N'http://www.msmc.edu/', N'gravida libero viverra ut Aliquam sodales Ut lacinia magnis fames', 1009, 12, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (52, N'mollis', N'http://www.lacollege.edu/', N'penatibus porttitor placerat blandit pretium dui arcu pharetra per Nam', 1000, 3, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (53, N'arcu', N'http://marauder.millersv.edu/', N'montes Phasellus lorem nisl blandit fames velit augue purus bibendum', 1001, 11, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (54, N'condimentum', N'http://www.indtech.edu/', N'tempor sodales malesuada egestas faucibus consectetuer Morbi Mauris morbi Morbi', 1000, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (55, N'urna', N'http://www.njit.edu/', N'leo nec pellentesque taciti Morbi tincidunt libero interdum imperdiet dictum', 1004, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (56, N'dui', N'http://www.furman.edu/', N'imperdiet Cras commodo urna per nibh ultricies parturient iaculis Nam', 1002, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (57, N'tellus', N'http://www.hastings.edu/', N'dignissim vestibulum feugiat auctor Duis Vestibulum facilisi lectus Cras metus', 1008, 11, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (58, N'iaculis', N'http://www.cs.cofc.edu/', N'convallis ultricies egestas vehicula Vestibulum sed vestibulum habitant dapibus Curabitur', 1005, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (59, N'Cras', N'http://www.ibc.edu/', N'porttitor lorem sociosqu augue nisi erat fermentum Etiam arcu odio', 1004, 12, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (60, N'lectus', N'http://www.friends.edu/', N'Praesent taciti aptent habitant volutpat metus tellus egestas sapien facilisi', 1000, 4, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (61, N'varius', N'http://www.ncwc.edu/', N'Quisque sapien Class nisl Donec sapien Nulla nisl sociosqu feugiat', 1004, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (62, N'Praesent', N'http://www.wooster.edu/', N'bibendum semper Maecenas nulla porta conubia varius sodales turpis eu', 1008, 7, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (63, N'diam', N'http://www.jbc.edu/', N'purus parturient erat sociis Duis Suspendisse leo elementum tellus Ut', 1005, 9, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (64, N'arcu', N'http://www.lemoyne.edu/', N'amet libero Mauris consectetuer lobortis consectetuer fringilla Donec non penatibus', 1007, 3, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (65, N'eleifend', N'http://esoptron.umd.edu/FUSFOLDER/', N'sollicitudin vulputate sed enim felis inceptos netus hymenaeos facilisis leo', 1009, 10, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (66, N'ligula', N'http://www.hiram.edu/', N'tincidunt sapien conubia amet rutrum et risus Cras Cras Duis', 1000, 12, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (67, N'nunc', N'http://www.luthersem.edu/', N'augue Class sodales volutpat condimentum Nunc tincidunt orci Lorem Curabitur', 1008, 9, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (68, N'Ut', N'http://www.ohsu.edu/', N'pharetra Mauris mauris mauris suscipit felis leo pretium cursus pulvinar', 1001, 3, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (69, N'felis', N'http://www.earlham.edu/', N'sed Curae tristique amet In Integer per consequat tempor Phasellus', 1001, 9, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (70, N'leo', N'http://www.dsc.edu/', N'Duis turpis mauris Cras convallis risus orci iaculis ac netus', 1010, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (71, N'volutpat', N'http://www.meredith.edu/meredith/', N'libero Etiam vestibulum Ut sed semper justo conubia Praesent hendrerit', 1002, 5, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (72, N'purus', N'http://www.Peace.edu/', N'fringilla tortor varius euismod porttitor ligula ipsum nibh odio morbi', 1008, 3, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (73, N'diam', N'http://www.famu.edu/', N'montes at nisi feugiat metus consequat tempus cubilia molestie morbi', 1006, 5, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (74, N'lobortis', N'http://www.hunter.cuny.edu/', N'sollicitudin Nam id montes aliquet Aenean tortor accumsan commodo Nam', 1002, 2, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (75, N'malesuada', N'http://www.nku.edu/', N'nec tristique natoque bibendum penatibus ultricies mus massa lorem amet', 1005, 7, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (76, N'facilisis', N'http://www.cwru.edu/', N'consequat per placerat sem ante cursus imperdiet senectus hymenaeos dictum', 1008, 5, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (77, N'vehicula', N'http://www.dsc.edu/', N'metus lacus mollis rhoncus Etiam Sed Suspendisse tellus mollis In', 1002, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (78, N'augue', N'http://www.gac.peachnet.edu/', N'fames ultrices Lorem blandit quam interdum a metus aliquet ultricies', 1000, 6, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (79, N'urna', N'http://www.prysm.com/~lsuscba/', N'eu Nullam et cubilia litora enim diam Etiam velit venenatis', 1007, 11, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (80, N'quis', N'http://www.mbc.edu/', N'laoreet eleifend purus sem magna tortor justo lacus Integer cursus', 1009, 11, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (81, N'sed', N'http://www.nyit.edu/', N'suscipit massa litora tempus posuere pellentesque lacinia ad a at', 1002, 8, N'A')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (82, N'molestie', N'http://www.mc.edu/', N'vulputate nisl sapien libero lacus dui in neque inceptos mauris', 1000, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (83, N'fermentum', N'http://www.state.me.us/maritime/mma.htm', N'purus per non natoque sem arcu auctor tempor facilisis ridiculus', 1003, 4, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (84, N'eleifend', N'http://www.metro.msus.edu/', N'sollicitudin quam luctus rutrum Curabitur gravida Aliquam at Proin cursus', 1007, 2, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (85, N'Cum', N'http://home.judson.edu/', N'leo dui rutrum sapien mus tortor hendrerit litora sociosqu egestas', 1004, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (86, N'Aliquam', N'http://www.msu.edu/', N'id purus consectetuer Sed torquent urna pulvinar Ut euismod condimentum', 1006, 11, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (87, N'mauris', N'http://www.champlain.edu/', N'natoque Nunc urna habitant habitant euismod massa penatibus Suspendisse sed', 1008, 5, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (88, N'consequat', N'http://www.plu.edu/', N'ac malesuada Etiam aptent nibh porta sed laoreet Cras sed', 1004, 4, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (89, N'diam', N'http://www.csc.peachnet.edu/', N'sociosqu posuere Fusce dignissim purus Etiam fringilla vulputate at Nulla', 1008, 11, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (90, N'diam', N'http://www.milligan.milligan-college.tn.us/', N'est dolor facilisis imperdiet fames pede volutpat In quis mi', 1001, 10, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (91, N'ante', N'http://www.esu.edu/', N'rhoncus nonummy eu ridiculus Nunc nunc faucibus Maecenas venenatis Lorem', 1007, 3, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (92, N'nibh', N'http://www.eosc.osshe.edu/', N'feugiat laoreet vel ultrices ridiculus molestie erat Curabitur porta natoque', 1004, 5, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (93, N'pretium', N'http://www.curry.edu:8080/', N'ac nascetur tempor et sed nunc Curabitur dis lacinia a', 1005, 11, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (94, N'iaculis', N'http://www.jhu.edu/', N'sagittis elementum magnis Aliquam placerat suscipit Etiam Mauris dis odio', 1004, 4, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (95, N'mauris', N'http://www.chapman.edu/', N'dapibus ultrices dolor nascetur commodo fames convallis varius Phasellus elementum', 1007, 12, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (96, N'urna', N'http://www.ius.indiana.edu/', N'congue tristique ac interdum Morbi et facilisi imperdiet Curabitur erat', 1001, 4, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (97, N'egestas', N'http://www.ogi.edu/welcome.html', N'consectetuer interdum egestas ad neque interdum sollicitudin pede Proin purus', 1005, 10, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (98, N'Integer', N'http://www.iup.edu/', N'iaculis porta neque nisl elementum congue posuere aptent sociis habitant', 1001, 12, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (99, N'quis', N'http://www.dwu.edu/', N'sit auctor Suspendisse diam lectus lacinia posuere rutrum sed enim', 1004, 4, N'P')
GO
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (100, N'gravida', N'http://www.nwciowa.edu/', N'sollicitudin Curabitur bibendum interdum accumsan cursus mus lobortis tortor sociosqu', 1008, 5, N'R')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (101, N'baidudafa', N'http://www.baidu.com', N'good search engine', 1011, 3, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (102, N'daw', N'http://www.bai1du.com', N'nothing', 1000, 14, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (103, N'daw', N'http://www.bai123141du.com', N'nothing', 1000, 15, N'P')
INSERT [dbo].[tbl_Url] ([UrlId], [UrlTitle], [Url], [UrlDesc], [CategoryId], [UserId], [IsApproved]) VALUES (104, N'baidu', N'http://www.baidu12312341.com', N'nothing', 1000, 17, N'A')
SET IDENTITY_INSERT [dbo].[tbl_Url] OFF
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (1, N'admin@gmail.com', N'123', N'A')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (2, N'Jack@manzoorthetrainer.com', N'jack1@3', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (3, N'Jescie@hymenaeos.org', N'Nam', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (4, N'Macey@consectetuer.com', N'orci', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (5, N'Ulysses@conubia.us', N'luctus', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (6, N'Harper@Vivamus.gov', N'augue', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (7, N'Derek@Suspendisse.gov', N'primis', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (8, N'Lois@erat.net', N'In', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (9, N'Whilemina@Vestibulum.gov', N'metus', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (10, N'Joelle@ad.us', N'Cras', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (11, N'Drake@feugiat.edu', N'suscipit', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (12, N'Kevin@libero.gov', N'dis', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (13, N'liao@gmail.com', N'DefaultPassword', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (14, N'liao1@gmail.com', N'DefaultPassword', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (15, N'liao@gmail.com', N'DefaultPassword', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (16, N'222@gmail.com', N'123', N'U')
INSERT [dbo].[tbl_User] ([UserId], [UserEmail], [Password], [Role]) VALUES (17, N'hdawkj@da.com', N'DefaultPassword', N'U')
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
ALTER TABLE [dbo].[tbl_Url] ADD  CONSTRAINT [DF_tbl_Url_IsApproved]  DEFAULT ('N') FOR [IsApproved]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_Role]  DEFAULT ('U') FOR [Role]
GO
ALTER TABLE [dbo].[tbl_Url]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Url_tbl_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tbl_Category] ([CategoryId])
GO
ALTER TABLE [dbo].[tbl_Url] CHECK CONSTRAINT [FK_tbl_Url_tbl_Category]
GO
ALTER TABLE [dbo].[tbl_Url]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Url_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Url] CHECK CONSTRAINT [FK_tbl_Url_tbl_User]
GO
