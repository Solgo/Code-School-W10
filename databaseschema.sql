USE [kickstartdb]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 12/22/2016 2:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[courses_grades_students]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses_grades_students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[grade_id] [int] NULL,
	[student_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[courses_tracks]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses_tracks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[track_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[grades]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attendance] [varchar](50) NULL,
	[grade] [varchar](25) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[instructors]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instructor_name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](25) NULL,
	[address] [varchar](255) NULL,
	[email] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[instructors_schools]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructors_schools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instructor_id] [int] NULL,
	[school_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[instructors_tracks]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructors_tracks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instructor_id] [int] NULL,
	[track_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schools]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[school_city] [varchar](255) NULL,
	[school_address] [varchar](233) NULL,
	[phone_number] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schools_students]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schools_students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[school_id] [int] NULL,
	[student_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schools_tracks]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schools_tracks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[school_id] [int] NULL,
	[track_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[students]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[email] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[students_tracks]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students_tracks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[track_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tracks]    Script Date: 12/22/2016 2:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tracks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[track_name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([id], [course_name]) VALUES (7, N'Intro to Programming')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (8, N'Javascript')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (9, N'C#/.Net')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (10, N'Advanced CSS/Design')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (12, N'Embedded Systems')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (13, N'Robotics')
INSERT [dbo].[courses] ([id], [course_name]) VALUES (11, N'Logic Gates')
SET IDENTITY_INSERT [dbo].[courses] OFF
SET IDENTITY_INSERT [dbo].[courses_grades_students] ON 

INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (4, 7, 4, 5)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (5, 8, 5, 5)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (6, 9, 6, 5)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (7, 7, 7, 6)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (8, 8, 8, 6)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (9, 9, 9, 6)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (10, 12, 10, 7)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (11, 13, 11, 7)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (12, 11, 12, 7)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (13, 7, 13, 2)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (14, 8, 14, 2)
INSERT [dbo].[courses_grades_students] ([id], [course_id], [grade_id], [student_id]) VALUES (15, 10, 15, 2)
SET IDENTITY_INSERT [dbo].[courses_grades_students] OFF
SET IDENTITY_INSERT [dbo].[courses_tracks] ON 

INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (7, 7, 1)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (8, 8, 1)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (9, 9, 1)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (11, 8, 2)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (12, 10, 2)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (15, 12, 3)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (17, 13, 3)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (10, 7, 2)
INSERT [dbo].[courses_tracks] ([id], [course_id], [track_id]) VALUES (16, 11, 3)
SET IDENTITY_INSERT [dbo].[courses_tracks] OFF
SET IDENTITY_INSERT [dbo].[grades] ON 

INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (1, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (2, N'97', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (3, N'100', N'B')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (4, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (5, N'97', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (6, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (7, N'75', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (8, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (9, N'87', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (10, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (11, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (12, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (13, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (14, N'100', N'A')
INSERT [dbo].[grades] ([id], [attendance], [grade]) VALUES (15, N'97', N'A')
SET IDENTITY_INSERT [dbo].[grades] OFF
SET IDENTITY_INSERT [dbo].[instructors] ON 

INSERT [dbo].[instructors] ([id], [instructor_name], [username], [password], [address], [email]) VALUES (1, N'Professor Dumbledore', N'pdiddy', N'yo', N'asdasd', N'asdasd')
INSERT [dbo].[instructors] ([id], [instructor_name], [username], [password], [address], [email]) VALUES (2, N'Minerva McGonagall', N'P-Mac', N'cruciactus', N'123 Hogwarts Ln', N'gryffindor@hogwarts.com')
INSERT [dbo].[instructors] ([id], [instructor_name], [username], [password], [address], [email]) VALUES (3, N'Professor Flitwick', N'charms4days', N'charms', N'145 Fake Ln', N'charms4days@hogwarts.com')
INSERT [dbo].[instructors] ([id], [instructor_name], [username], [password], [address], [email]) VALUES (4, N'Severus Snape', N'potionpower', N'ilovelilly', N'Heaven', N'arickman@gmail.com')
INSERT [dbo].[instructors] ([id], [instructor_name], [username], [password], [address], [email]) VALUES (5, N'Professor Slughorn', N'horcruxconfidant', N'memoryforger', N'8574 N Tower Way', N'pslughorn@gmail.com')
SET IDENTITY_INSERT [dbo].[instructors] OFF
SET IDENTITY_INSERT [dbo].[instructors_schools] ON 

INSERT [dbo].[instructors_schools] ([id], [instructor_id], [school_id]) VALUES (8, 2, 1)
INSERT [dbo].[instructors_schools] ([id], [instructor_id], [school_id]) VALUES (9, 3, 1)
INSERT [dbo].[instructors_schools] ([id], [instructor_id], [school_id]) VALUES (11, 1, 2)
INSERT [dbo].[instructors_schools] ([id], [instructor_id], [school_id]) VALUES (12, 4, 2)
INSERT [dbo].[instructors_schools] ([id], [instructor_id], [school_id]) VALUES (13, 5, 2)
SET IDENTITY_INSERT [dbo].[instructors_schools] OFF
SET IDENTITY_INSERT [dbo].[schools] ON 

INSERT [dbo].[schools] ([id], [school_city], [school_address], [phone_number]) VALUES (1, N'Portland', N'123 Fake Address', N'1234567890')
INSERT [dbo].[schools] ([id], [school_city], [school_address], [phone_number]) VALUES (2, N'Seattle', N'123 Fake Address', N'1234567890')
SET IDENTITY_INSERT [dbo].[schools] OFF
SET IDENTITY_INSERT [dbo].[schools_tracks] ON 

INSERT [dbo].[schools_tracks] ([id], [school_id], [track_id]) VALUES (1, 2, 1)
INSERT [dbo].[schools_tracks] ([id], [school_id], [track_id]) VALUES (5, 1, 3)
INSERT [dbo].[schools_tracks] ([id], [school_id], [track_id]) VALUES (6, 1, 2)
INSERT [dbo].[schools_tracks] ([id], [school_id], [track_id]) VALUES (7, 2, 2)
INSERT [dbo].[schools_tracks] ([id], [school_id], [track_id]) VALUES (8, 2, 3)
SET IDENTITY_INSERT [dbo].[schools_tracks] OFF
SET IDENTITY_INSERT [dbo].[students] ON 

INSERT [dbo].[students] ([id], [first_name], [last_name], [username], [password], [address], [email]) VALUES (5, N'Ryan', N'Peterson', N'ryanpeterson08', N'sha1:64000:18:0dqrpJF5Cwh0cYXthuHRCpiTGioehPbB:SapqIEeJtDmvzFLHXutevLCH', N'6146 SW 18th Dr. Portland, OR', N'ryanpeterson08@gmail.com')
INSERT [dbo].[students] ([id], [first_name], [last_name], [username], [password], [address], [email]) VALUES (2, N'Ryan', N'M', N'rtmath', N'sha1:64000:18:7v8/AIv/Fkw9gNT1HnWc1AvbDpjh+QA1:fzWn88eV3Idq21jTfK+V3yx+', N'9011 Fake Address', N'ryan@gmail.com')
INSERT [dbo].[students] ([id], [first_name], [last_name], [username], [password], [address], [email]) VALUES (6, N'Loren', N'Glenn', N'lglenn', N'sha1:64000:18:J7kaQqI6QiVksrs3IQ2zLd010EeGttlG:9/WAXWQ+YprsJvO6Pbbt0wSE', N'555 Fake St. ', N'loren@email.com')
INSERT [dbo].[students] ([id], [first_name], [last_name], [username], [password], [address], [email]) VALUES (4, N'A.D.', N'Min', N'sysadmin', N'sha1:64000:18:M0fIbYVVWCueRZ/FRz9rBu7J4kpwMP1Z:+WSuX1f7v/pZgwGq0pe78uqJ', N'694 Campus University', N'jimmy@gmail.com')
INSERT [dbo].[students] ([id], [first_name], [last_name], [username], [password], [address], [email]) VALUES (7, N'Daniel', N'Munger', N'munger', N'sha1:64000:18:VrhgrLawRQldnAZmToUs1wCw3vbi/3q+:BrUa4TvzmOx8gSEl95XV2WRu', N'1232 fake street', N'munger@hotmail.com')
SET IDENTITY_INSERT [dbo].[students] OFF
SET IDENTITY_INSERT [dbo].[students_tracks] ON 

INSERT [dbo].[students_tracks] ([id], [student_id], [track_id]) VALUES (2, 5, 1)
INSERT [dbo].[students_tracks] ([id], [student_id], [track_id]) VALUES (3, 6, 1)
INSERT [dbo].[students_tracks] ([id], [student_id], [track_id]) VALUES (4, 7, 3)
INSERT [dbo].[students_tracks] ([id], [student_id], [track_id]) VALUES (5, 2, 2)
SET IDENTITY_INSERT [dbo].[students_tracks] OFF
SET IDENTITY_INSERT [dbo].[tracks] ON 

INSERT [dbo].[tracks] ([id], [track_name]) VALUES (1, N'C#')
INSERT [dbo].[tracks] ([id], [track_name]) VALUES (2, N'CSS/Design')
INSERT [dbo].[tracks] ([id], [track_name]) VALUES (3, N'Electrical Engineering')
SET IDENTITY_INSERT [dbo].[tracks] OFF
