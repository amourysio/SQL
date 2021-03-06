USE [FootBall]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupsPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[GName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupsPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[ManagerPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[MFirstName] [nvarchar](50) NULL,
	[MLastName] [nvarchar](50) NULL,
	[ManagerTeam_ID] [int] NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[ManagerPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[MatchesPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[RefeerMatches_ID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[HomeTeems_ID] [int] NULL,
	[GuestTeems_ID] [int] NULL,
	[Home_Points] [int] NULL,
	[Guest_Points] [int] NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[MatchesPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayersPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[PFirstName] [nvarchar](50) NULL,
	[PLastName] [nvarchar](50) NULL,
	[PlayersTeam_ID] [int] NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayersPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refeers]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refeers](
	[RefeerPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[RFirstName] [nvarchar](50) NULL,
	[RLastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Refeers] PRIMARY KEY CLUSTERED 
(
	[RefeerPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 9/27/2021 9:22:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamPrimary_ID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [nvarchar](50) NULL,
	[TeamsGroup_ID] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamPrimary_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (1, N'A')
INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (2, N'B')
INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (3, N'D')
INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (4, N'Efbet')
INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (5, N'Bundes')
INSERT [dbo].[Groups] ([GroupsPrimary_ID], [GName]) VALUES (6, N'Euro')
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Managers] ON 

INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (1, N'Mircea', N'Lucescu', 1)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (2, N'Arsene', N'Wenger', 2)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (3, N'Pep', N'Guardiola', 3)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (4, N'Marcello', N'Lippi', 4)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (5, N'Antonio', N'Conte', 5)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (6, N'Diego', N'Simeone', 6)
INSERT [dbo].[Managers] ([ManagerPrimary_ID], [MFirstName], [MLastName], [ManagerTeam_ID]) VALUES (7, N'Jurgen', N'Klopp', 7)
SET IDENTITY_INSERT [dbo].[Managers] OFF
GO
SET IDENTITY_INSERT [dbo].[Matches] ON 

INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (1, 1, CAST(N'2021-04-12' AS Date), CAST(N'12:30:00' AS Time), 2, 1, 3, 0)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (2, 2, CAST(N'2021-04-13' AS Date), CAST(N'23:00:00' AS Time), 2, 3, 1, 1)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (3, 3, CAST(N'2021-04-14' AS Date), CAST(N'22:00:00' AS Time), 3, 1, 0, 3)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (4, 4, CAST(N'2021-04-15' AS Date), CAST(N'15:00:00' AS Time), 4, 5, 1, 1)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (5, 5, CAST(N'2021-04-16' AS Date), CAST(N'12:00:00' AS Time), 4, 5, 3, 0)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (6, 6, CAST(N'2021-04-17' AS Date), CAST(N'21:00:00' AS Time), 2, 1, 0, 3)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (7, 1, CAST(N'2021-04-18' AS Date), CAST(N'18:30:00' AS Time), 3, 1, 0, 3)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (8, 2, CAST(N'2021-04-21' AS Date), CAST(N'14:30:00' AS Time), NULL, 6, 3, NULL)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (9, 3, CAST(N'2021-04-22' AS Date), CAST(N'20:30:00' AS Time), NULL, 6, 3, NULL)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (12, 6, CAST(N'2021-04-23' AS Date), CAST(N'22:00:00' AS Time), 2, 1, 0, 3)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (13, 7, CAST(N'2021-05-01' AS Date), CAST(N'14:30:00' AS Time), NULL, 6, 3, NULL)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (14, 1, CAST(N'2021-05-02' AS Date), CAST(N'21:00:00' AS Time), NULL, 6, 3, NULL)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (15, 4, CAST(N'2021-05-03' AS Date), CAST(N'15:30:00' AS Time), 5, 4, 3, 0)
INSERT [dbo].[Matches] ([MatchesPrimary_ID], [RefeerMatches_ID], [Date], [Time], [HomeTeems_ID], [GuestTeems_ID], [Home_Points], [Guest_Points]) VALUES (16, 5, CAST(N'2021-05-04' AS Date), CAST(N'22:00:00' AS Time), 2, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Matches] OFF
GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (1, N'Paulo', N'Dybala', 1)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (2, N'David', N'Luiz', 2)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (3, N'Raheem', N'Sterling', 3)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (4, N'David', N'Alaba', 4)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (5, N'Arturo', N'Vidal', 1)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (6, N'Giorgio', N'Chiellini', 1)
INSERT [dbo].[Players] ([PlayersPrimary_ID], [PFirstName], [PLastName], [PlayersTeam_ID]) VALUES (7, N'Javier', N'Mascherano', 7)
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
SET IDENTITY_INSERT [dbo].[Refeers] ON 

INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (1, N'Clare', N'Waters')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (2, N'Matthew', N'Giles')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (3, N'Warren', N'Norton')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (4, N'Beatrice', N'Allan')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (5, N'Douglas', N'Wallace')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (6, N'Stacy', N'Barry')
INSERT [dbo].[Refeers] ([RefeerPrimary_ID], [RFirstName], [RLastName]) VALUES (7, N'Zoe', N'Short')
SET IDENTITY_INSERT [dbo].[Refeers] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (1, N'Lion', 1)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (2, N'Tiger', 1)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (3, N'Mincen', 1)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (4, N'Snake', 2)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (5, N'Axel', 2)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (6, N'Slash', 4)
INSERT [dbo].[Teams] ([TeamPrimary_ID], [TName], [TeamsGroup_ID]) VALUES (7, N'LSFS', 6)
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
ALTER TABLE [dbo].[Managers] ADD  CONSTRAINT [DF_Managers_Team_ID]  DEFAULT ((7)) FOR [ManagerTeam_ID]
GO
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [DF_Teams_Group_ID]  DEFAULT ((6)) FOR [TeamsGroup_ID]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Teams] FOREIGN KEY([ManagerTeam_ID])
REFERENCES [dbo].[Teams] ([TeamPrimary_ID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Teams]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Guest] FOREIGN KEY([GuestTeems_ID])
REFERENCES [dbo].[Teams] ([TeamPrimary_ID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Guest]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Home] FOREIGN KEY([HomeTeems_ID])
REFERENCES [dbo].[Teams] ([TeamPrimary_ID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Home]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Refeers] FOREIGN KEY([RefeerMatches_ID])
REFERENCES [dbo].[Refeers] ([RefeerPrimary_ID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Refeers]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Teams] FOREIGN KEY([PlayersTeam_ID])
REFERENCES [dbo].[Teams] ([TeamPrimary_ID])
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Teams]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Groups] FOREIGN KEY([TeamsGroup_ID])
REFERENCES [dbo].[Groups] ([GroupsPrimary_ID])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Groups]
GO
