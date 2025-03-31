create database awq
go
USE [awq]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCustomers] [int] NULL,
	[DateBuy] [date] NULL,
	[SumPrice] [int] NULL,
	[More] [nvarchar](70) NULL,
	[paid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameCompany] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[Phon] [nvarchar](10) NULL,
	[Amail] [nvarchar](60) NULL,
	[DateBorn] [date] NULL,
 CONSTRAINT [PK__Customer__3214EC07FE65DF61] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsBuy]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsBuy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdBuy] [int] NULL,
	[Idproduct] [int] NULL,
	[CountBuy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisCount]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisCount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[count] [float] NOT NULL,
	[typeName] [nchar](15) NULL,
 CONSTRAINT [PK__DisCount__3213E83FAD087432] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28/01/2025 12:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[IdCategory] [int] NULL,
	[IdCompany] [int] NULL,
	[description] [nvarchar](70) NULL,
	[Price] [int] NULL,
	[pic] [nvarchar](70) NULL,
	[QuantityInStock] [int] NULL,
	[Up_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buy] ON 
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (9, 1, CAST(N'2024-12-12' AS Date), 100, N'jjjjj', 0)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (10, 2, CAST(N'2024-12-14' AS Date), 500, N'gggg', NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (11, 1, CAST(N'2024-12-12' AS Date), 450, N'jjjjj', NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (12, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (13, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (14, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (15, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (16, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (17, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (18, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (19, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (20, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (21, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (22, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (23, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (24, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (25, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (26, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (27, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (28, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (29, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (30, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (31, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (32, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (33, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (34, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (35, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (36, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (37, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (38, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (39, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (40, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (41, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (42, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (43, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (44, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (45, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (46, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (47, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (48, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (49, 3, CAST(N'2022-10-10' AS Date), 50, N'dd', NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (50, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (51, 3, CAST(N'2002-02-02' AS Date), 50, N'More', NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (52, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (53, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (54, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (55, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (56, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (57, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (58, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (59, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (60, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (61, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (62, 3, NULL, 181, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (63, 3, NULL, 21, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (64, 3, CAST(N'2025-01-26' AS Date), 59, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (65, 3, CAST(N'2025-01-26' AS Date), 59, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (66, 6, CAST(N'2025-01-26' AS Date), 49, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (67, 6, CAST(N'2025-01-26' AS Date), 22, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (68, 6, CAST(N'2025-01-26' AS Date), 22, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (69, 6, CAST(N'2025-01-26' AS Date), 34, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (70, 6, CAST(N'2025-01-26' AS Date), 34, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (71, 6, CAST(N'2025-01-26' AS Date), 54, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (72, 6, CAST(N'2025-01-26' AS Date), 46, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (73, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (74, 6, CAST(N'2025-01-26' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (75, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (76, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (77, 6, CAST(N'2025-01-26' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (78, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (79, 6, CAST(N'2025-01-26' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (80, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (81, 6, CAST(N'2025-01-26' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (82, 6, CAST(N'2025-01-26' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (83, 6, CAST(N'2025-01-26' AS Date), 16, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (84, 6, CAST(N'2025-01-26' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (85, 6, CAST(N'2025-01-26' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (86, 6, CAST(N'2025-01-26' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (87, 6, CAST(N'2025-01-26' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (88, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (89, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (90, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (91, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (92, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (93, 6, CAST(N'2025-01-26' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (94, 6, CAST(N'2025-01-26' AS Date), 38, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (95, 6, CAST(N'2025-01-26' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (96, 3, CAST(N'2025-01-27' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (97, 3, CAST(N'2025-01-27' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (98, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (99, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (100, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (101, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (102, 3, CAST(N'2025-01-27' AS Date), 8, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (103, 3, CAST(N'2025-01-27' AS Date), 6, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (104, 3, CAST(N'2025-01-27' AS Date), 24, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (105, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (106, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (107, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (108, 3, CAST(N'2025-01-27' AS Date), 24, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (109, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (110, 3, CAST(N'2025-01-27' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (111, 3, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (112, 3, CAST(N'2025-01-27' AS Date), 12, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (113, 8, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (114, 8, CAST(N'2025-01-27' AS Date), 629, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (115, 9, CAST(N'2025-01-27' AS Date), 120, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (116, 9, CAST(N'2025-01-27' AS Date), 350, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (117, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (118, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (119, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (120, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (121, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (122, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (123, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (124, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (125, 9, CAST(N'2025-01-27' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (126, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (127, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (128, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (129, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (130, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (131, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (132, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[Buy] ([Id], [IdCustomers], [DateBuy], [SumPrice], [More], [paid]) VALUES (133, 9, CAST(N'2025-01-28' AS Date), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Buy] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1, N'הרכבת סלט')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (2, N'שתיה חמה')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (3, N'שתיה קרה')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (4, N'מוקרמים')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (5, N'קינוחים')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1002, N'מאפים')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1003, N'פרות')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1004, N'חטיפים')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1005, N'לחמים')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1006, N'תוספות')
GO
INSERT [dbo].[Category] ([Id], [NameCategory]) VALUES (1007, N'שייקים')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1, N'אוסם')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (2, N'באגסי')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (3, N'בית השיטה')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (4, N'דוריטוס')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1002, N'טרה')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1003, N'תנובה')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1004, N'קפוצינו')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1005, N'קוקה קולה')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1006, N'סחוט')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1007, N'מזוינס')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1008, N'תפוציפס')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1009, N'אנג''ל')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1010, N'S & C')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1011, N'יטבתה')
GO
INSERT [dbo].[Company] ([Id], [NameCompany]) VALUES (1012, N'עילית')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (1, N'Sari Filmer', N'0583297373', N'S0573@gmail.com', CAST(N'2025-01-20' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (2, N'chedvi', N'0589763522', N'jncn@', CAST(N'2024-12-14' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (3, N'Dvora Vaa', N'1111111111', N'string@gmail.com', CAST(N'2025-01-16' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (4, N'Ayala Mor', N'1111111111', N'A999@gmail.com', CAST(N'2025-02-02' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (5, NULL, NULL, NULL, CAST(N'2025-01-30' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (6, N'Bbb Bbb', N'3333333333', N't111@gmail.com', CAST(N'2025-01-22' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (7, N'Ss Ddd', N'1111111111', N't111@gmail.com', CAST(N'2025-01-21' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (8, N'Dvora gg', N'1111111111', N'string@gmail.com', CAST(N'2025-01-24' AS Date))
GO
INSERT [dbo].[Customers] ([Id], [Name], [Phon], [Amail], [DateBorn]) VALUES (9, N'Dvora fff', N'1111111111', N'string@gmail.com', CAST(N'2025-01-08' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailsBuy] ON 
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (4, 9, 1, 45)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (9, 9, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (10, 9, 2, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (11, 9, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (12, 9, 1, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (13, 9, 1, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (14, 9, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (15, 9, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (16, 9, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (17, 9, 2, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (18, 9, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (19, 9, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (20, 9, 1, 34)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (21, 9, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (22, 28, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (23, 9, 1, 50)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (24, 9, 1, 55)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (25, 29, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (26, 30, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (27, 31, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (28, 32, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (29, 33, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (30, 34, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (31, 35, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (32, 36, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (33, 37, 1, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (34, 38, 1, 8)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (35, 39, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (36, 40, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (37, 41, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (38, 42, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (39, 43, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (40, 44, 1, 5)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (41, 45, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (42, 46, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (43, 47, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (44, 47, 2, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (45, 48, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (46, 49, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (47, 50, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (48, 51, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (49, 52, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (50, 52, 1004, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (51, 53, 1013, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (52, 53, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (53, 54, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (54, 54, 1016, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (55, 55, 1011, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (56, 55, 1008, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (57, 38, 1, 8)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (58, 38, 1, 9993)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (59, 56, 1, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (60, 56, 1016, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (61, 57, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (62, 57, 1021, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (63, 58, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (64, 58, 1021, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (65, 59, 1, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (66, 59, 1027, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (67, 60, 1003, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (68, 62, 1005, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (69, 62, 1006, 7)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (70, 63, 2, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (71, 64, 1006, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (72, 64, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (73, 65, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (74, 65, 1006, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (75, 66, 1005, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (76, 66, 1, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (77, 66, 1014, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (78, 67, 1004, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (79, 67, 3, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (80, 68, 3, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (81, 68, 1004, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (82, 69, 1002, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (83, 69, 1007, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (84, 70, 1002, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (85, 70, 1007, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (86, 71, 3, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (87, 71, 1022, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (88, 72, 1002, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (89, 72, 1018, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (90, 73, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (91, 74, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (92, 75, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (93, 76, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (94, 77, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (95, 78, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (96, 79, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (97, 80, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (98, 81, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (99, 82, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (100, 83, 1002, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (101, 84, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (102, 85, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (103, 86, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (104, 87, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (105, 88, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (106, 89, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (107, 90, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (108, 91, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (109, 92, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (110, 93, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (111, 94, 1002, 4)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (112, 94, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (113, 95, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (114, 96, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (115, 97, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (116, 102, 1002, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (117, 103, 3, 1)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (118, 104, 1002, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (119, 108, 1002, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (120, 108, 1002, 3)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (121, 110, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (122, 112, 3, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (123, 114, 1081, 9)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (124, 114, 1060, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (125, 115, 1162, 2)
GO
INSERT [dbo].[DetailsBuy] ([id], [IdBuy], [Idproduct], [CountBuy]) VALUES (127, 115, 1162, 7)
GO
SET IDENTITY_INSERT [dbo].[DetailsBuy] OFF
GO
SET IDENTITY_INSERT [dbo].[DisCount] ON 
GO
INSERT [dbo].[DisCount] ([id], [count], [typeName]) VALUES (1, 0.3, N'birthday       ')
GO
INSERT [dbo].[DisCount] ([id], [count], [typeName]) VALUES (2, 0.15, N'more300        ')
GO
SET IDENTITY_INSERT [dbo].[DisCount] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1, N'פיתה', 1005, 1009, N'מכיל גלוטן', 5, N'פיתה1.png', 0, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (2, N'לאפה', 1005, 1009, N'מכיל: גלוטן', 7, N'LA.png', 897, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (3, N'פיתה', 1005, 1009, N'ללא גלוטן', 6, N'פיתה.png', 966, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1002, N'לאפה', 1005, 1009, N'ללא גלוטן', 8, N'L.png', 965, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1003, N'אייס קפה', 3, 1004, N'מכיל חלב', 8, N'a1.png', 98, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1004, N'ריבת חלב', 1006, 1010, N'מכיל אגוזים וחלב', 1, N'a2.png', 92, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1005, N'אספרסו כפול', 2, 1010, N'קופאין', 9, N'אספרסו כפול.png', 94, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1006, N'סחלב גדול', 2, 1010, N'קופאין', 22, N'סחלב גדול.png', 89, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1007, N'ביסלי פלאפל', 1004, 1, N'מכיל גלוטן', 5, N'b1.png', 96, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1008, N'ביסלי במבה', 1004, 1, N'מכיל גלוטן', 5, N'b2.png', 98, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1009, N'ביסלי במבה כחול', 1004, 1, N'ללא גלוטן', 6, N'b3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1010, N'אייס קפה', 3, 1004, N'מכיל חלב סויה', 8, N'a3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1011, N'אייס קפה עם עוגיות אוראו', 3, 1004, N'מכיל חלב וגלוטן', 9, N'a5.png', 97, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1012, N'בקבוק אייס', 3, 1004, N'ללא סוכר', 13, N'a6.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1013, N'אייס קפה דיאט', 3, 1004, N'חלב דיאט', 9, N'a7.png', 96, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1014, N'אייס קפה מופחת קלוריות', 3, 1004, N'דיאט', 7, N'a8.png', 99, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1015, N'אייס קפה משובח', 3, 1004, N'אגוזים ושקדים', 10, N'a10.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1016, N'אייס קפה מעורב', 3, 1004, N'נוגט חלב', 10, N'a11.png', 95, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1017, N'אייס קפה עם קצפת', 3, 1004, N'חלב', 12, N'a12.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1018, N'אייס קפה פקאן', 3, 1004, N'חלב ואגוזים', 15, N'a13.png', 98, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1019, N'אייס קפה ', 3, 1004, N'חלב', 7, N'a15.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1020, N'אייס קפה', 3, 1004, N'חלב', 8, N'a16.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1021, N'באגסי גריל', 1004, 2, N'גלוטן', 9, N'c1.png', 96, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1022, N'באגסי פיצה', 1004, 2, N'גלוטן', 9, N'c2.png', 96, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1023, N'באגסי חיטה', 1004, 2, N'גלוטן', 9, N'c3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1024, N'באגסי גריל', 1004, 2, N'ללא גלוטן', 9, N'c1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1025, N'זיתים ירוקים', 1, 3, N'ללא גרעינים', 3, N'd1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1026, N'שיפקה', 1, 3, N'חריף', 3, N'd2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1027, N'זית מרוקאי', 1, 3, N'גרעינים', 3, N'd3.png', 98, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1028, N'חרוזית', 1, 3, N'ללא גרעינים', 3, N'd4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1029, N'מלפפון חמוץ', 1, 3, N'חריף', 3, N'd5.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1030, N'קוקטייל זיתים', 1, 3, N'ללא חומר משמר', 3, N'd6.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1031, N'ירקות מעורבים', 1, 3, N'ללא חומר משמר', 3, N'd7.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1032, N'כרוב כבוש', 1, 3, N'ללא חומר משמר', 3, N'd9.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1033, N'פאנטה', 3, 1010, N'מוגז', 8, N'e1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1034, N'פאנטה פירות', 3, 1010, N'סוכר כמות גבוהה', 8, N'e2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1035, N'פרינוק פירות', 3, 1010, N'ללא חומרים משמרים וללא סוכר', 7, N'e3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1036, N'פריגת תפוזים', 3, 1010, N'תפוזים אמייתיים', 7, N'e4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1037, N'פריגת לימונענע', 3, 1010, N'סוכר כמות גבוהה', 7, N'e5.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1038, N'שישיית פפסי', 3, 1010, N'דיאט', 15, N'e7.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1039, N'סודה סטרים', 3, 1010, N'דיאט', 66, N'e9.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1040, N'שוופס פירות', 3, 1010, N'מוגז', 21, N'e10.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1041, N'פחית אקס', 3, 1010, N'ללא סוכר', 6, N'e11.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1042, N'תרכיז תפוזים', 3, 1010, N'100 אחוז טבעי פירות', 66, N'e12.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1043, N'שוופס פירות לימונייד', 3, 1010, N'מוגז זכוכית', 5, N'e13.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1044, N'קוקה קולה', 3, 1010, N'מוגז', 51, N'e14.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1045, N'קל דר', 3, 1010, N'סוכר כמות גבוהה', 7, N'e15.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1046, N'משקה אנרגיה בטעם אפרסק', 3, 1010, N'סוכר', 12, N'e16.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1047, N'משקה אנרגיה צמד', 3, 1010, N'דיאט', 42, N'e17.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1048, N'משקה בטעם אבטיח', 3, 1010, N'סוכר', 8, N'e19.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1049, N'אייס קפה', 3, 1011, N'חלב', 7, N'e21.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1050, N'משקה חלב go ', 3, 1003, N'חלב', 10, N'e22.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1051, N'אייס קפה בטעם טוויקס', 3, 1010, N'חלב וסוכר בכמות גבוהה', 10, N'e23.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1052, N'דוריטוס פלאפל', 1004, 1012, N'נתרן בכמות גבוהה', 6, N'f1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1053, N'דוריטוס אדום', 1004, 1012, N'ללא גלוטן', 6, N's2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1054, N'דוריטוס חריף', 1004, 1012, N'חריף', 6, N's3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1055, N'דוריטוס ברביקיו', 1004, 1012, N'גלוטן', 6, N's4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1056, N'דוריטוס פיצה', 1004, 1012, N'לא גלוטן', 6, N's5.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1057, N'דוריטוס גריל', 1004, 1012, N'ללא גלוטן', 6, N's7.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1058, N'דוריטוס צבעני', 1004, 1012, N'גלוטן', 6, N's8.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1059, N'דוריטוס חמוץ חריף', 1004, 1012, N'חריף', 6, N's9.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1060, N'-מוקה-', 3, 1002, N'חלב', 9, N'g1.png', 98, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1061, N'חלב', 3, 1002, N'חלב', 9, N'g2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1062, N'שוקו', 3, 1002, N'חלב', 9, N'g3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1063, N'עגבניה', 1, 1010, N'ירק', 2, N'A.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1064, N'עגבנית שרי לובלו', 1, 1010, N'ירק', 2, N'AS.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1065, N'עגבית שרי וויטני', 1, 1010, N'ירק', 2, N'ASH.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1066, N'אבוקדו', 1, 1010, N'ירק', 2, N'AV.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1067, N'חסה', 1, 1010, N'ירק', 2, N'CHA.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1068, N'מלפפון', 1, 1010, N'ירק', 2, N'M.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1069, N'פטריות פורטובלו', 1, 1010, N'ירק', 2, N'P.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1070, N'פלפל חריף', 1, 1010, N'ירק חריף', 2, N'PC.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1071, N'פלפל חריף ירוק', 1, 1010, N'ירק חריף', 2, N'PCR.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1072, N'פלפל כתום', 1, 1010, N'ירק', 2, N'PK.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1073, N'פלפל אדום', 1, 1010, N'ירק', 2, N'PL.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1074, N'פלפל ירוק', 1, 1010, N'ירק', 2, N'PY.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1075, N'פטריות שמפניון', 1, 1010, N'ירק', 2, N'PT.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1076, N'לחם', 1005, 1009, N'גלוטן', 5, N'LL.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1077, N'לחם', 1005, 1009, N'גלוטן', 5, N'LJ.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1078, N'לחם', 1005, 1009, N'גלוטן', 5, N'LK.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1079, N'לחם', 1005, 1009, N'כוסמין', 5, N'LK.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1080, N'עוגת אלפחורס', 5, 1010, N'חלבי', 195, N'Alf.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1081, N'עוגת אוראו', 5, 1010, N'חלבי', 68, N'אוראו.png', 91, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1082, N'עוגת אלפחורס', 5, 1010, N'חלבי', 70, N'אלפחורס.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1083, N'עוגת פטל', 5, 1010, N'חלבי', 195, N'פטל.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1084, N'פס ניקול', 5, 1010, N'חלבי', 70, N'פסניקול.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1085, N'קינדר', 5, 1010, N'חלבי', 195, N'קינדר.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1086, N'פס קרמשניט', 5, 1010, N'חלבי', 68, N'קרמשניט.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1087, N'עוגת שלושת השוקולדים', 5, 1010, N'חלבי', 195, N'שלוש.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1088, N'רוטב אלף האיים', 1, 1010, N'מיונז', 2, N'אלף.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1089, N'רוטב ויניגרט', 1, 1010, N'מיונז', 2, N'ויניגרט.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1090, N'רוטב ישראלי', 1, 1010, N'מיונז', 2, N'ישראלי.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1091, N'רוטב פיצה', 1, 1010, N'מיונז', 2, N'פיצה.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1092, N'רוטב פסטו', 1, 1010, N'מיונז', 2, N'פסטו.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1093, N'רוטב שום', 1, 1010, N'מיונז', 2, N'שום.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1094, N'אייס פסיפלורה', 1007, 1006, N'פרי', 10, N'אייס פסיפלורה.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1095, N'אגוזים עם חלב', 1007, 1006, N'פרי', 10, N'סחוט1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1096, N'שיק אבוקדו עם בננה', 1007, 1006, N'פרי', 10, N'סחוט2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1097, N'שייק עם נענע ועוד', 1007, 1006, N'פרי', 10, N'סחוט3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1098, N'שייק תותים', 1007, 1006, N'פרי', 10, N'סחוט4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1099, N'שייק טרופי', 1007, 1006, N'פרי', 10, N'סחוט5.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1100, N'שייק מנגו', 1007, 1006, N'פרי', 10, N'סחוט6.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1101, N'שייק פירות', 1007, 1006, N'פרי', 10, N'סחוט7.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1102, N'שייק מרענן', 1007, 1006, N'פרי', 10, N'סחוט8.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1103, N'שיק תפוזים', 1007, 1006, N'פרי', 10, N'סחוט9.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1104, N'שייק פירות', 1007, 1006, N'פרי', 10, N'סחוט10.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1105, N'שייק תותים ומנגו', 1007, 1006, N'פרי', 10, N'סחוט11.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1106, N'שייק מעורב', 1007, 1006, N'פרי', 10, N'סחוט13.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1107, N'חם לימונדה', 2, 1010, N'חם', 12, N'א4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1108, N'אספרסו', 2, 1010, N'חם', 8, N'אספרסו.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1109, N'הפוך גדול', 2, 1010, N'חם', 14, N'הפוך גדול.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1110, N'הפוך קטן', 2, 1010, N'חלב', 12, N'הפוך קטן.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1111, N'נס קפה קטן', 2, 1010, N'חלב', 12, N'נס קפה קטן.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1112, N'סיידר חם', 2, 1010, N'חם', 12, N'סיידר חם.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1113, N'פרנץ ונילה גדול', 2, 1010, N'חם', 14, N'פרנץ ונילה גדול.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1114, N'לימון ותה', 2, 1010, N'חם', 12, N'ך.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1115, N'קפה שחור', 2, 1010, N'חם', 8, N'קפא שחור.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1116, N'שוקולטה גדול', 2, 1010, N'חם', 19, N'שוקולטה גדול.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1117, N'תה', 2, 1010, N'חם', 8, N'תה.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1118, N'תה', 2, 1010, N'חם', 8, N'תה4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1119, N'חלב', 3, 1003, N'חלב', 8, N'חלב.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1120, N'ציפס טבעי', 1004, 1008, N'תפוא', 5, N'ציפס4.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1121, N'ציפס מקסיקני', 1004, 1008, N'תפוא', 5, N'ציפס1.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1122, N'ציפס גריל', 1004, 1008, N'תפוא', 5, N'ציפס2.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1123, N'ציפס קידס', 1004, 1008, N'תפוא', 5, N'ציפס3.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1124, N'ציפס גבינה', 1004, 1008, N'תפוא', 5, N'ציפס5.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1125, N'ציפס טבעי', 1004, 1008, N'תפוא', 5, N'ציפס6.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1126, N'ציפס מקלות', 1004, 1008, N'תפוא', 5, N'ציפס7.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1127, N'ציפס שמנת בצל', 1004, 1008, N'תפוא', 5, N'ציפס8.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1128, N'ציפס פופס', 1004, 1008, N'תפוא', 5, N'ציפס10.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1129, N'ציפס מטוגן', 1004, 1008, N'תפוא', 5, N'ציפס11.png', 100, CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1130, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'1.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1133, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'2.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1134, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'3.png', 95, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1135, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'4.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1137, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 65, N'5.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1138, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 90, N'6.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1139, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'7.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1140, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 50, N'8.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1141, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'9.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1142, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'10.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1143, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'11.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1144, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'12.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1145, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 80, N'13.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1146, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'14.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1147, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'15.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1148, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 50, N'16.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1149, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'17.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1150, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 50, N'18.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1151, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 55, N'19.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1152, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'20.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1153, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'21.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1154, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'22.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1155, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 50, N'23.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1156, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 66, N'24.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1157, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'25.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1158, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 50, N'26.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1159, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'27.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1160, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 66, N'28.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1161, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 70, N'29.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1162, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'30.png', 98, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1163, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 55, N'33.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1164, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 55, N'34.png', 100, CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Product] ([Id], [Name], [IdCategory], [IdCompany], [description], [Price], [pic], [QuantityInStock], [Up_Date]) VALUES (1165, N'-הרכבת סלט', 1, 1010, N'סלט מדהים', 60, N'35.png', 100, CAST(N'2025-01-27' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK__Buy__IdCustomers__4316F928] FOREIGN KEY([IdCustomers])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK__Buy__IdCustomers__4316F928]
GO
ALTER TABLE [dbo].[DetailsBuy]  WITH CHECK ADD FOREIGN KEY([IdBuy])
REFERENCES [dbo].[Buy] ([Id])
GO
ALTER TABLE [dbo].[DetailsBuy]  WITH CHECK ADD FOREIGN KEY([Idproduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([IdCompany])
REFERENCES [dbo].[Company] ([Id])
GO
