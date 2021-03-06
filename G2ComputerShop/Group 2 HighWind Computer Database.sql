USE [HighWindComputer]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_date] [date] NOT NULL,
	[manager_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_billid] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[billdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_bdid] PRIMARY KEY CLUSTERED 
(
	[billdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [varchar](200) NOT NULL,
	[nation_id] [int] NOT NULL,
 CONSTRAINT [PK_brid] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](50) NULL,
	[customer_gender] [int] NULL,
	[customer_DOB] [date] NULL,
	[customer_email] [varchar](50) NULL,
	[customer_phone] [varchar](10) NULL,
	[customer_address] [varchar](100) NULL,
	[customer_username] [varchar](50) NULL,
	[customer_pass] [varchar](50) NULL,
 CONSTRAINT [PK_cuid] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[manager_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](50) NULL,
	[gender] [int] NULL,
	[dOB] [date] NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[salary] [int] NULL,
	[position] [varchar](20) NULL,
	[username] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_maid] PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nation]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nation](
	[nation_id] [int] IDENTITY(1,1) NOT NULL,
	[nation_name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_naid] PRIMARY KEY CLUSTERED 
(
	[nation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productlist]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productlist](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](200) NOT NULL,
	[product_detail] [varchar](1000) NOT NULL,
	[product_date] [date] NOT NULL,
	[purchase_price] [int] NOT NULL,
	[price] [int] NOT NULL,
	[discount] [int] NULL,
	[stock] [int] NULL,
	[unit_sold] [int] NULL,
	[warrant] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
	[producttype_id] [int] NOT NULL,
	[images] [varchar](max) NULL,
 CONSTRAINT [PK_pdid] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producttype]    Script Date: 27-Jan-21 9:26:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producttype](
	[producttype_id] [int] IDENTITY(1,1) NOT NULL,
	[producttype_name] [varchar](200) NOT NULL,
	[producttype_images] [varchar](max) NULL,
 CONSTRAINT [PK_pd_type_id] PRIMARY KEY CLUSTERED 
(
	[producttype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (1, CAST(N'2020-12-02' AS Date), 4, 1, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (2, CAST(N'2020-12-05' AS Date), 4, 2, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (3, CAST(N'2020-12-11' AS Date), 4, 3, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (4, CAST(N'2020-12-19' AS Date), 5, 4, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (5, CAST(N'2021-01-01' AS Date), 5, 5, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (6, CAST(N'2021-01-12' AS Date), 5, 6, N'Received Payment')
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id], [status]) VALUES (7, CAST(N'2021-01-22' AS Date), 5, 7, N'Received Payment')
SET IDENTITY_INSERT [dbo].[bill] OFF
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (1, 1, 1, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (2, 1, 2, 5)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (3, 1, 3, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (4, 2, 4, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (5, 2, 5, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (6, 2, 6, 4)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (7, 3, 7, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (8, 3, 8, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (9, 3, 9, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (10, 4, 10, 5)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (11, 4, 11, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (12, 4, 12, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (13, 5, 14, 4)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (14, 5, 15, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (15, 5, 16, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (16, 6, 17, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (17, 6, 18, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (18, 6, 19, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (19, 7, 20, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (20, 7, 21, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (21, 7, 22, 5)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (1, N'LG', 1)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (2, N'Dell', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (3, N'ACER', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (4, N'Asus', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (5, N'Intel', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (6, N'MSI', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (7, N'Huawei', 4)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (8, N'Microsoft', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (9, N'HP', 4)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (10, N'Apple', 3)
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (11, N'Lenovo', 4)
SET IDENTITY_INSERT [dbo].[brand] OFF
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (1, N'Huynh Ngoc Tram', 2, CAST(N'2000-02-10' AS Date), N'tram01@gmail.com', N'0908069741', N'159 Au Co, Tan Binh District, HCM City', N'tram01', N'Uhd3ofRMuh7I')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (2, N'Tran Ngoc Phuong Uyen', 2, CAST(N'2001-07-08' AS Date), N'uyen021@gmail.com', N'0912358123', N'56 Nguyen Hue, District 1, HCM City', N'uyen021', N'h7WVDD4cYCK1')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (3, N'Truong Thanh Viet', 1, CAST(N'2002-06-06' AS Date), N'viet51@gmail.com', N'0908126485', N'25 Luong Dinh Cua, District 2, HCM City', N'viet51', N'H7pV5gPe8l9D')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (4, N'Huynh Do Anh Dao', 2, CAST(N'2003-01-01' AS Date), N'dao45@gmail.com', N'0908024128', N'169 Su Van Hanh, District 10, HCM City', N'dao45', N'e0Fo1HWgPfc7')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (5, N'Tran My Uyen', 2, CAST(N'2004-08-11' AS Date), N'myuyenh2004@gmail.com', N'0908364895', N'34 Pham The Hien, District 8, HCM City', N'myuyenh2004', N'yfxmg71evPRu')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (6, N'To Thi Mai Loan', 2, CAST(N'2005-05-06' AS Date), N'loan153@gmail.com', N'0908360156', N'64 Nguyen Trai, District 5, HCM City', N'loan153', N'1inS0UBeOCOT')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (7, N'Pham Mai Loan', 2, CAST(N'2006-06-01' AS Date), N'mailoan785@gmail.com', N'0908123948', N'599 Hau Giang, District 6, HCM City', N'mailoan785', N'ATwqV4Yuz4xP')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (8, N'Phan Duc Hai', 1, CAST(N'1999-02-03' AS Date), N'hai296@gmail.com', N'0908985103', N'10 Ly Thuong Kiet, District 5, HCM City', N'hai296', N'Aawzf4auz4xP')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (9, N'Nguyen Nhat Tien', 1, CAST(N'1998-07-21' AS Date), N'nnt2107@gmail.com', N'0335167610', N'1416 Le Duc Tho. Go Vap District, Ho Chi Minh City', N'tien', N'123')
SET IDENTITY_INSERT [dbo].[customer] OFF
SET IDENTITY_INSERT [dbo].[manager] ON 

INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (1, N'Nguyen Nhat Tien', 1, CAST(N'1991-02-09' AS Date), N'tien01@gmail.com', N'0908069741', 1000, N'Director', N'tien01', N'1234567')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (2, N'Nguyen Thu Ha', 2, CAST(N'1992-03-05' AS Date), N'ha1192@gmail.com', N'0908069741', 800, N'Vice Director', N'ha1192', N'aMmqoK96qst6')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (3, N'Ha Huy Hoang', 1, CAST(N'1993-06-08' AS Date), N'hoang016@gmail.com', N'0908069741', 500, N'HRM', N'hoang016', N'rvp0SQRDBo4o')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (4, N'Nguyen Duy Nam', 1, CAST(N'1994-07-05' AS Date), N'nam94@gmail.com', N'0908069741', 500, N'Chief Accountant', N'nam94', N'0wPi2bxLCyJm')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (5, N'Le Thao Nguyen', 2, CAST(N'1994-10-02' AS Date), N'nguyen05@gmail.com', N'0908069741', 300, N'Accountant', N'nguyen05', N'gMll2wK9VwSf')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (6, N'Pham Ngoc Bao Tran', 2, CAST(N'1995-12-09' AS Date), N'tran95@gmail.com', N'0908069741', 300, N'Staff', N'tran95', N'TRgV0Hgt5l9o')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (7, N'Ngo Thi Thuy Anh', 2, CAST(N'1995-03-07' AS Date), N'anh102@gmail.com', N'0908069741', 300, N'Staff-Order Online', N'anh123', N'1234567')
SET IDENTITY_INSERT [dbo].[manager] OFF
SET IDENTITY_INSERT [dbo].[nation] ON 

INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (1, N'Korea')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (2, N'Japan')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (3, N'United States')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (4, N'China')
SET IDENTITY_INSERT [dbo].[nation] OFF
SET IDENTITY_INSERT [dbo].[productlist] ON 

INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (1, N'Laptop ASUS Vivobook S433EA- EB100T ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 8GB Onboard DDR4 3200MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 50 Wh <br>
- Weight: 1.4 kg <br>
                        
                        
                        
                        
                        
                        
                        
                        
                        ', CAST(N'2021-01-01' AS Date), 150, 299, 10, 16, 89, 2, 4, 2, N'Laptop ASUS Vivobook S433EA- EB100T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (2, N'Laptop ASUS Vivobook A415EA- EB358T ( 14" Full HD/Intel Core i3-1115G4/4GB/256GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i3-1115G4 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 1 x 4GB Onboard DDR4 3200MHz <br>
- VGA: Intel UHD Graphics <br>
- Storage: 256GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 42 Wh <br>
- Weight: 1.4 kg <br>
                        
                        ', CAST(N'2021-01-02' AS Date), 300, 558, 10, 10, 256, 2, 4, 2, N'Laptop ASUS Vivobook A415EA- EB358T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (3, N'Asus ZenBook UX371EA-HL701TS', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 13.3" OLED (3840 x 2160) <br>
- RAM: 16GB Onboard LPDDR4X 4266MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 1TB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 67 Wh <br>
- Weight: 1.2 kg <br>
                        
                        ', CAST(N'2021-01-03' AS Date), 1100, 1733, 25, 5, 55, 2, 4, 2, N'Asus ZenBook UX371EA-HL701TS.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (4, N'Laptop ASUS TUF Gaming FX506LI HN096T ( 15.6" Full HD/Intel Core i7-10870H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Windows 10 Home 64-bit/2.3kg)', N'- CPU: Intel Core i7-10870H <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 2933MHz <br>
- VGA: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics 630 <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.3 kg <br>
                        
                        ', CAST(N'2021-01-04' AS Date), 870, 1170, 15, 3, 42, 2, 4, 3, N'Laptop ASUS TUF Gaming FX506LI HN096T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (5, N'Laptop ASUS ROG Strix G G531GT HN554T ( 15.6" Full HD/ 144Hz/Intel Core i7 9750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home SL 64-bit/2.3kg)', N'- CPU: Intel Core i7 9750H <br>
- Monitor: 15.6" IPS (1920 x 1080), 144Hz <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630 <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.3 kg <br>
                        
                        ', CAST(N'2021-01-05' AS Date), 785, 1083, 10, 7, 29, 2, 4, 2, N'Laptop ASUS ROG Strix G G531GT HN554T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (6, N'Laptop HP ProBook 450 G8 2H0Y1PA ( 15.6" Full HD/Intel Core i7-1165G7/16GB/512GB SSD/NVIDIA GeForce MX450/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 16GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce MX450 2GB GDDR5 / Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 45 Wh <br>
- Cell: 1.7 kg <br>', CAST(N'2020-12-01' AS Date), 800, 1300, 10, 6, 43, 1, 9, 2, N'Laptop HP ProBook 450 G8 2H0Y1PA.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (7, N'Laptop HP 15s-fq2029TU (2Q5Y7PA) ( 15.6" HD/Intel Core i7-1165G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.7kg)', N'- CPU: Intel Core i7-1165G7 <br>
- Monitor: 15.6" IPS (1366 x 768) <br>
- RAM: 2 x 4GB DDR4 2666MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 41 Wh <br>
- Weight: 1.7 kg <br>
                        
                        ', CAST(N'2020-12-02' AS Date), 500, 800, 10, 14, 47, 2, 9, 2, N'Laptop HP 15s-fq2029TU (2Q5Y7PA).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (8, N'Laptop ACER Aspire 3 A315-57G-524Z NX.HZRSV.009 ( 15.6" Full HD/Intel Core i5-1035G1/8GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home 64-bit/1.9kg)', N'- CPU: Intel Core i5-1035G1 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 8GB (4GB + 4GB Onboard) DDR4 2400MHz <br>
- VGA: NVIDIA GeForce MX330 2GB GDDR5 / Intel UHD Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 36 Wh <br>
- Weight: 1.9 kg <br>
                        
                        ', CAST(N'2020-12-04' AS Date), 400, 650, 10, 23, 94, 1, 3, 2, N'Laptop ACER Aspire 3 A315-57G.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (9, N'Laptop ACER Swift 3 SF314-510G-57MR NX.A10SV.004 ( 14" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.4kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 14" IPS (1920 x 1080) <br>
- RAM: 8GB Onboard LPDDR4X 2666MHz <br>
- VGA: Intel Iris Xe Max Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 4 cell 58 Wh <br>
- Weight: 1.4 kg <br>', CAST(N'2020-12-05' AS Date), 450, 997, 15, 18, 87, 2, 3, 2, N'Laptop ACER Swift 3 SF314-510G-57MR NX.A10SV.004.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (10, N'Laptop Dell Inspiron 15 5502 1XGR11 ( 15.6" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.6kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 53 Wh <br>
- Weight: 1.6 kg <br>', CAST(N'2020-12-06' AS Date), 600, 900, 0, 9, 64, 2, 2, 2, N'Laptop Dell Inspiron 15 5502 1XGR11.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (11, N'Laptop Dell Vostro 15 5502 NT0X01 ( 15.6" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home SL 64-bit/1.6kg)', N'- CPU: Intel Core i5-1135G7 <br>
- Monitor: 15.6" (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce MX330 2GB GDDR5 / Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe / <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 40 Wh <br>
- Weight: 1.6 kg <br>
                        ', CAST(N'2020-12-07' AS Date), 630, 930, 0, 11, 87, 2, 2, 2, N'Laptop Dell Vostro 15 5502 NT0X01.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (12, N'PC ASUS ROG Strix GL10CS-VN021T (i5-9400/8GB/512GB SSD/GeForce GTX 1660Ti/Win10)', N'- CPU: Intel Core i5-9400 (2.90 GHz - 4.10 GHz/9MB) <br>
- RAM: 1 x 8GB DDR4 2666MHz (2 slot, max support 32GB) <br>
- VGA: Intel UHD Graphics 630 / GeForce GTX 1660TI 6GB <br>
- Storage: 512GB M.2 NVMe SSD <br>
', CAST(N'2020-12-08' AS Date), 629, 930, 20, 44, 165, 1, 4, 1, N'PC ASUS ROG Strix GL10CS-VN021T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (13, N'PC ASUS ROG Huracan G21CN (G21CN-D-VN001T) (i5-9400F/8GB/256GB SSD/GeForce RTX 2060/Win10)', N'- CPU: Intel Core i5-9400F (2.90GHz up to 4.10GHz/9MB) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: / GeForce RTX 2060 6GB <br>
- Storage: 256GB M.2 NVMe SSD <br>', CAST(N'2020-12-09' AS Date), 799, 1300, 0, 16, 54, 7, 4, 1, N'PC ASUS ROG Huracan G21CN.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (14, N'PC ASUS D540SA I38100012D (i3-8100/4GB/1TB HDD/UHD 630/Endless)', N'- CPU: Intel Core i3-8100 ( 3.6 GHz / 6MB ) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>
                        ', CAST(N'2020-12-09' AS Date), 320, 476, 0, 16, 89, 7, 4, 1, N'PC ASUS D540SA I38100012D.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (15, N'PC HP S01-pF0102d (7XE21AA) (i5-9400/4GB/1TB HDD/UHD 630/Win10)', N'- CPU: Intel Core i5-9400 (2.90 GHz - 4.10 GHz/9MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 5400RPM <br>', CAST(N'2020-12-10' AS Date), 330, 500, 15, 16, 147, 1, 9, 1, N'PC HP S01-pF0102d (7XE21AA).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (16, N'PC HP Pavilion 590 TP01-0131d (7XF41AA) (i3-9100/4GB/1TB HDD/UHD 630/Win10)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz) <br>
- RAM: 1 x 4GB DDR4 2400MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-11' AS Date), 280, 400, 0, 18, 48, 1, 9, 1, N'PC HP Pavilion 590 TP01-0131d.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (17, N'PC HP ProDesk 400 G6 MT 7YH20PA (i3-9100/4GB/1TB HDD/UHD 630/Free DOS)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz/6MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-12' AS Date), 260, 430, 0, 16, 36, 1, 9, 1, N'PC HP ProDesk 400 G6 MT 7YH20PA.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (18, N'PC Dell Optiplex 3070 SFF 70199618 (i3-9100/4GB/1TB HDD/UHD 630/Fedora)', N'- CPU: Intel Core i3-9100 (3.60 GHz up to 4.20 GHz/6MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-14' AS Date), 290, 410, 0, 18, 94, 1, 2, 1, N'PC Dell Optiplex 3070 SFF 70199618.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (19, N'PC Dell Vostro 3471 ST (46R631W) (Pentium G5420/4GB/1TB HDD/UHD 610/Win10)', N'- CPU: Intel Pentium G5420 (3.80 GHz/4MB) <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 610 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-15' AS Date), 200, 320, 5, 16, 78, 1, 2, 1, N'PC Dell Vostro 3471 ST (46R631W).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (20, N'PC Dell Inspiron 3881 MT 42IN380001(Intel Core i3-10100/8GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i3-10100 (3.60 GHz - 4.30 GHz/6MB)<br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-16' AS Date), 340, 440, 0, 10, 78, 1, 2, 1, N'PC Dell Inspiron 3881 MT 42IN380001.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (21, N'PC Dell Vostro 3888 MT RJMM6D(Intel Core i5-10400/4GB/1TBHDD/Windows 10 Home SL 64-bit/DVD/CD RW/WiFi 802.11ac)', N'- CPU: Intel Core i5-10400 (2.90 GHz - 4.30 GHz/12MB) <br>
- RAM: 1 x 4GB DDR4 3200MHz <br>
- VGA: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-17' AS Date), 420, 520, 10, 34, 125, 1, 2, 1, N'PC Dell Vostro 3888 MT RJMM6D.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (22, N'Laptop ASUS TUF Gaming FX505DD-AL186T (15" FHD/R5-3550H/8GB/512GB SSD/GTX 1050/Win10/2.2 kg)', N'- CPU: AMD Ryzen 5 3550H ( 2.1 GHz - 3.7 GHz / 4MB ) <br>
- Monitor: 15.6" IPS ( 1920 x 1080 ) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: AMD Radeon Vega 8 Graphics / NVIDIA GeForce GTX 1050 3GB GDDR5 <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.2 kg <br>', CAST(N'2020-12-18' AS Date), 640, 780, 15, 19, 78, 2, 4, 3, N'Laptop ASUS TUF Gaming FX505DD-AL186T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (23, N'Laptop ASUS TUF Gaming FX504GE-EN047T (15.6" FHD/i7-8750H/8GB/1TB HDD/GTX 1050Ti/Win10/2.3 kg)', N'- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB ) <br>
- Monitor: 15.6" ( 1920 x 1080 ) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5 <br>
- Storage: 1TB HDD 5400RPM <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.3 kg <br>', CAST(N'2020-12-19' AS Date), 1360, 1180, 20, 12, 26, 2, 4, 3, N'Laptop ASUS TUF Gaming FX504GE-EN047T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (24, N'Laptop ASUS TUF Gaming FX505GD-BQ012T (15.6" FHD/i5-8300H/8GB/1TB HDD/GTX 1050/Win10/2.2 kg)', N'- CPU: Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB ) <br>
- Monitor: 15.6" IPS ( 1920 x 1080 ) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050 4GB GDDR5 <br>
- Storage: 1TB HDD 5400RPM <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 48 Wh <br>
- Weight: 2.2 kg <br>', CAST(N'2020-12-19' AS Date), 700, 930, 0, 23, 49, 4, 4, 3, N'Laptop ASUS TUF Gaming FX505GD-BQ012T.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (25, N'Laptop HP Pavilion Gaming 15-cx0177TX (5EF40PA) (15.6" FHD/i5-8300H/8GB/1TB HDD/GTX 1050/Win10/2.2 kg)', N'- CPU: Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB ) <br>
- Monitor: 15.6" ( 1920 x 1080 ) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050 4GB GDDR5 <br>
- Storage: 128GB SSD M.2 NVMe / 1TB HDD 7200RPM <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 52 Wh <br>
- Weight: 2.2 kg', CAST(N'2020-12-20' AS Date), 880, 1120, 0, 16, 58, 2, 9, 3, N'Laptop HP Pavilion Gaming 15-cx0177TX.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (26, N'Laptop HP Pavilion Gaming 15-ec0050AX (9AV28PA) (15.6" FHD 144Hz/R5 3550H/8GB/128GB SSD/1TB HDD/GeForce GTX 1650/Win10/2kg)', N'- CPU: AMD Ryzen 5 3550H <br>
- Monitor: 15.6" (1920 x 1080), 144Hz <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: NVIDIA GeForce GTX 1650 4GB GDDR5 / AMD Radeon Vega 8 Graphics <br>
- Storage: 128GB SSD M.2 NVMe / 1TB HDD 7200RPM <br>
- Operating system: Windows 10 Home SL 64-bit <br>
- Battery: 3 cell 52 Wh <br>
- Weight: 2 kg <br>', CAST(N'2020-12-22' AS Date), 690, 870, 0, 12, 85, 2, 9, 3, N'Laptop HP Pavilion Gaming 15-ec0050AX.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (27, N'Laptop HP Pavilion Gaming 15-dk1072TX - Black', N'- CPU: Intel Core i5-10300H ( 2.5 GHz - 4.5 GHz / 8MB) <br>
- Monitor: 15.6" ( 1920 x 1080 ) Full HD IPS <br>
- RAM: 1 x 8GB DDR4 3200MHz <br>
- VGA: NVIDIA GeForce GTX 1650 4GB GDDR6 / Intel UHD Graphics <br>
- Storage: 512GB SSD M.2 NVMe  <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 50 Wh <br>
- Weight: 2.3 kg <br>', CAST(N'2020-12-22' AS Date), 840, 1040, 0, 16, 48, 2, 9, 3, N'Laptop HP Pavilion Gaming 15-dk1072TX.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (28, N'Laptop Dell Gaming G7 15 7500 (G7500A-P100F001G7500A) ( 15.6" Full HD/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Windows 10 Home SL 64-bit/2.6kg)', N'- CPU: Intel Core i7-10750H <br>
- Monitor: 15.6" WVA (1920 x 1080) <br>
- RAM: 2 x 8GB LPDDR4X 2933MHz <br>
- VGA: NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel Iris Xe Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 6 cell 40 Wh <br>
- Weight: 2.6 kg <br>', CAST(N'2020-12-23' AS Date), 1500, 1820, 0, 16, 46, 2, 2, 3, N'Laptop Dell Gaming G7 15 7500.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (29, N'Laptop HP Pavilion Gaming 15-dk0233TX (8DS86PA) (15" FHD/i7-9750H/8GB/512GB SSD/GTX 1650/Win10/2.2 kg)', N'- CPU: Intel Core i7-9750H <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: NVIDIA GeForce GTX 1650 4GBIntel UHD Graphics 630 <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 53 Wh <br>
- Weight: 2.2 kg <br>', CAST(N'2020-12-24' AS Date), 1050, 1260, 0, 16, 95, 2, 9, 3, N'Laptop HP Pavilion Gaming 15-dk0233TX.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (30, N'Laptop HP Pavilion Gaming 15-dk1075TX 1K3V0PA ( 15.6" Full HD/Intel Core i7-10750H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Windows 10 Home 64-bit/2.2kg)', N'- CPU: Intel Core i7-10750H <br>
- Monitor: 15.6" IPS (1920 x 1080) <br>
- RAM: 1 x 8GB DDR4 2666MHz <br>
- VGA: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics <br>
- Storage: 512GB SSD M.2 NVMe <br>
- Operating system: Windows 10 Home 64-bit <br>
- Battery: 3 cell 52 Wh <br>
- Weight: 2.2 kg <br>', CAST(N'2020-12-25' AS Date), 1100, 1300, 0, 15, 49, 2, 9, 3, N'Laptop HP Pavilion Gaming 15-dk1075TX.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (31, N'Microsoft Wireless Mouse 1850 (Black)', N'- Connection type: Wireless <br>
- Sensor Type: Optical <br>
- Resolution: 1000 DPI <br>
- Color: Black <br>
                        
                        ', CAST(N'2020-12-01' AS Date), 8, 15, 0, 23, 126, 1, 8, 4, N'Microsoft Wireless Mouse 1850 (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (32, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Black)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>
- Supports Bluetooth 4.0 <br>', CAST(N'2020-12-02' AS Date), 24, 33, 15, 19, 146, 1, 8, 4, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (33, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Red)', N'- Microsoft multi-function computer mouse <br>
- Compact size  <br>
- Supports Bluetooth 4.0  <br>
                        ', CAST(N'2020-12-03' AS Date), 24, 33, 10, 16, 188, 1, 8, 4, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Red).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (34, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Blue)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>
- Supports Bluetooth 4.0 <br>
                        ', CAST(N'2020-12-04' AS Date), 24, 33, 10, 16, 178, 1, 8, 4, N'Microsoft Bluetooth Wireless Mouse 3600 Computer Mouse (Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (35, N'Microsoft Wireless Mobile Mouse 1850 (Pink)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>', CAST(N'2020-12-06' AS Date), 8, 15, 0, 26, 87, 1, 8, 4, N'Microsoft Wireless Mobile Mouse 1850 (Pink).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (36, N'Microsoft Wireless Mobile Mouse 1850 (Purple)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>', CAST(N'2020-12-07' AS Date), 8, 15, 0, 14, 58, 1, 8, 4, N'Microsoft Wireless Mobile Mouse 1850 (Purple).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (37, N'Microsoft Wireless Mobile Mouse 1850 (Red)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>', CAST(N'2020-12-09' AS Date), 8, 15, 0, 12, 48, 1, 8, 4, N'Microsoft Wireless Mobile Mouse 1850 (Red).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (38, N'Microsoft Wireless Mobile Mouse 1850 (Blue)', N'- Microsoft multi-function computer mouse <br>
- Compact size <br>', CAST(N'2020-12-09' AS Date), 8, 15, 0, 27, 67, 1, 8, 4, N'Microsoft Wireless Mobile Mouse 1850 (Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (39, N'Microsoft Modern Wireless Mouse (Black)', N'- Soft and simple design <br>
- Bluetooth wireless connectivity <br>
- High precision, glide on many surfaces <br>
- Unique Swift Pair feature can Pair devices right on notification <br>
- A comfortable grip for long-term use <br>', CAST(N'2020-12-10' AS Date), 24, 39, 20, 36, 178, 1, 8, 4, N'Microsoft Modern Wireless Mouse (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (40, N'Bluetooth Mouse Microsoft RJN-00005 (Black)', N'- Soft and simple design <br>
- Bluetooth wireless connectivity <br>
- High precision, glide on many surfaces <br>
- Unique Swift Pair feature can Pair devices right on notification <br>
- A comfortable grip for long-term use <br>', CAST(N'2020-12-12' AS Date), 16, 26, 10, 24, 120, 1, 8, 4, N'Bluetooth Mouse Microsoft RJN-00005 (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (41, N'LG XBOOMGo PL7W Bluetooth Speaker (White)', N'- Meridian technology <br>
- 30W powerful sound <br>
- Bass with dual speakers <br>
- Long battery life up to 24 hours <br>
- Multi-color light mode <br>
- Waterproof IPX5 standard <br>', CAST(N'2020-12-14' AS Date), 164, 195, 10, 12, 56, 1, 1, 5, N'LG XBOOMGo PL7W Bluetooth Speaker (White).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (42, N'LG XBOOMGo PL5W Bluetooth Speaker (White)', N'- Advanced Meridian technology <br>
- Powerful 20W sound <br>
- Dual speaker bass <br>
- Long battery life up to 17 hours <br>
- Multi-color light mode <br>
- Waterproof IPX5 standard <br>
                        ', CAST(N'2020-12-15' AS Date), 124, 156, 15, 10, 41, 1, 1, 5, N'LG XBOOMGo PL5W Bluetooth Speaker (White).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (43, N'LG XBOOMGo PL2W Bluetooth Speaker (White)', N'- Advanced Meridian technology <br>
- Audio capacity of 5W <br>
- Dual speaker bass <br>
- Long battery life up to 10 hours <br>
- Waterproof IPX5 standard <br>
- Integrated voice control <br>', CAST(N'2020-12-16' AS Date), 38, 56, 0, 7, 42, 1, 1, 5, N'LG XBOOMGo PL2W Bluetooth Speaker (White).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (44, N'LG XBOOMGo PN7 Bluetooth Speaker (Black Blue)', N'- Meridian Technology for impressive quality <br>
- 30W Audio, DTS Sound Plus / SOUND BOOST <br>
- All-day battery life up to 24 hours <br>
- Eye-catching multi-color led light mode <br>', CAST(N'2020-12-18' AS Date), 158, 190, 0, 15, 67, 1, 1, 5, N'LG XBOOMGo PN7 Bluetooth Speaker (Black Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (45, N'LG XBOOMGo PL7 Bluetooth Speaker (Black Blue)', N'- Meridian technology <br>
- 30W powerful sound <br>
- Bass with dual speakers <br>
- Long battery life up to 24 hours <br>
- Multi-color light mode <br>
- Waterproof IPX5 standard <br>', CAST(N'2020-12-15' AS Date), 158, 190, 0, 12, 45, 1, 1, 5, N'LG XBOOMGo PL7 Bluetooth Speaker (Black Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (46, N'LG XBOOMGo PL5 Bluetooth Speaker (Black Blue)', N'- Meridian technology <br>
- Powerful 20W sound <br>
- Dual speaker bass <br>
- Long battery life up to 17 hours <br>
- Multi-color light mode <br>
- Waterproof IPX5 standard <br>', CAST(N'2020-12-20' AS Date), 124, 156, 0, 16, 85, 1, 1, 5, N'LG XBOOMGo PL5 Bluetooth Speaker (Black Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (47, N'LG XBOOMGo PL2 Bluetooth Speaker (Black Blue)', N'- Meridian technology <br>
- Audio capacity of 5W <br>
- Dual speaker bass <br>
- Long battery life up to 10 hours <br>
- Waterproof IPX5 standard <br>
- Integrated voice control <br>', CAST(N'2020-12-21' AS Date), 38, 56, 0, 24, 87, 1, 1, 5, N'LG XBOOMGo PL2 Bluetooth Speaker (Black Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (48, N'LG XBOOMGo PN5 Bluetooth Speaker (Black Blue)', N'- Meridian Technology for clear and balanced sound <br>
- Powerful sound, capacity of 20W <br>
- Waterproof IPX5 standard <br>
- Long lasting battery up to 18 hours of music playback <br>
- Colorful LED eye-catching <br>
- Control by voice via virtual assistant <br>', CAST(N'2020-12-21' AS Date), 124, 156, 0, 28, 194, 1, 1, 5, N'LG XBOOMGo PN5 Bluetooth Speaker (Black Blue).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (49, N'Huawei Sound X Starry Night Bluetooth Speaker (AIS-B80-90)', N'- Audio capacity of 30W <br>
- Dual speaker bass <br>
- Long battery life up to 10 hours <br>
- Waterproof IPX5 standard <br>', CAST(N'2020-11-30' AS Date), 250, 300, 0, 7, 42, 1, 7, 5, N'Huawei Sound X Starry Night Bluetooth Speaker (AIS-B80-90).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (50, N'Speaker 2.1 Huawei UN 01 (Silver)', N'- 2.0 speaker system <br>
- Led display screen, using BL-5C (3.5V) battery. <br>
- Power source: DC5V <br>
- Power: 3W. <br>', CAST(N'2020-11-29' AS Date), 6, 10, 0, 6, 42, 1, 7, 5, N'Speaker 2.1 Huawei UN 01 (Silver).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (51, N'Headphones Asus ROG Delta', N'- Asus ROG Delta Headset <br>
- 4 built-in ESS hi-res DACs for detailed and realistic sound <br>
- Customizable border RGB lighting <br>
- Multi-platform support with USB-C and USB 2.0 <br>', CAST(N'2020-12-01' AS Date), 160, 215, 10, 15, 24, 1, 4, 6, N'Headphones Asus ROG Delta.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (52, N'ASUS Cerberus Over-ear Headphones (Black)', N'- Large 60mm neodymium-magnet drivers <br>
- Compatible with PC, MAC, PlayStation 4 and smart devices <br>
- Dual microphone design: Large detachable mic for clear in-game communication and built-in mic <br>
- Comfortable 100mm sealed ear cushions provide great sound separation <br>
                        
                        ', CAST(N'2020-12-02' AS Date), 41, 65, 20, 28, 134, 1, 4, 6, N'ASUS Cerberus Over-ear Headphones (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (53, N'Asus Rog Cetra In-ear Headphones', N'- ROG Cetra Gaming in-ear headphones <br>
- USB Type-C connection ear is very popular today <br>
- Easy headphone tuning with ROG AMOURY II software <br>
- Large 10mm Driver Essence for detailed sound <br>
- Equipped with active noise cancellation technology ANC <br>
- LOGO led is sharp and unique <br>', CAST(N'2020-12-03' AS Date), 64, 99, 0, 52, 267, 1, 4, 6, N'Asus Rog Cetra In-ear Headphones.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (54, N'Asus TUF Gaming Headset H3 (Red)', N'- TUF H3 Gaming Headset <br>
- ASUS Essence 50mm Driver and Chamber Technology for Impressive Sound <br>
- Simulated Windows Sonic 7.1 Surround Sound <br>
- Comfortable, Compact Design <br>
- Stainless Steel Headset Strong rust for increased durability <br>
- Compatible with multiple platforms such as PC, Mac, PS4, Nintendo Switch, Xbox One and phone <br>', CAST(N'2020-12-04' AS Date), 30, 47, 0, 12, 34, 1, 4, 6, N'Asus TUF Gaming Headset H3 (Red).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (55, N'Asus ROG Delta Core Over-ear headphones', N'- Exclusive ASUS Essence drivers, closed-chamber technology and audio cue detection for an immersive audio experience <br>
- Cross-platform support for PC, Mac, PS4, Nintendo Switch and mobile devices <br>
- More comfort with the ergonomically-designed D-shaped ROG Hybrid ear cushions <br>
- Physical controls on the case for easy control of volume and microphone volume mute <br>', CAST(N'2020-12-05' AS Date), 93, 125, 0, 8, 43, 1, 4, 6, N'Asus ROG Delta Core Over-ear headphones.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (56, N'Asus ROG Cetra core In-ear headphones', N'- Large, 10mm ASUS Essence drivers deliver powerful bass and optimized gaming audio. <br>
- Optimized for handheld mode: 90-degree cable connector for gaming comfort.<br>
- Ergonomic design, three sizes of ear buds and a pair of foam padded buttons ensure a comfortable and secure fit.<br>
- Extremely responsive and convenient controls help increase or decrease the volume <br>', CAST(N'2020-12-06' AS Date), 38, 52, 0, 1, 7, 41, 4, 6, N'Asus ROG Cetra core In-ear headphones.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (57, N'Microsoft LifeChat LX-3000 On-ear Headphones (Black)', N'- Brand: Microsoft <br>
- Standard USB connection <br>', CAST(N'2020-12-07' AS Date), 40, 53, 0, 25, 74, 1, 8, 6, N'Microsoft LifeChat LX-3000 On-ear Headphones (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (58, N'Asus ROG Theta 7.1 over-ear headphones (Black)', N'- 7.1 surround sound with eight ASUS Essence drivers and virtual subwoofer <br>
- AI technology noise-canceling mic for clear voice communication <br>
- The USB-C connector is compatible with PC, Mac, PS4, Nintendo Switch, and smart devices <br>
- Armory II software allows customization of virtual bass and other audio profiles <br>', CAST(N'2020-12-08' AS Date), 250, 308, 0, 4, 14, 2, 4, 6, N'Asus ROG Theta 7.1 over-ear headphones (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (59, N'Asus ROG Strix Go 2.4 wireless headphones (Black)', N'- Asus ROG STRIX GO 2.4 wireless headphones <br>
- Low-latency 2.4GHz wireless connection via Nintendo Switch compatible USB-C adapter in handheld mode, smart devices, PC, Mac, and PS4, plus 3.5 connector mm for Xbox One and other 3.5 mm devices <br>
- Extremely lightweight design, comes with a carrying pouch for use and protection on the go <br>
- Advanced noise canceling microphone enables clear in-game voice communication <br>
', CAST(N'2020-12-09' AS Date), 180, 215, 0, 6, 12, 1, 4, 6, N'Asus ROG Strix Go 2.4 wireless headphones (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (60, N'ASUS STRIX 2.0 Over-ear Headphones- ROG Gaming (Black)', N'- Platform versatility: PC, Mac, PS4, and smart compatible device <br>
- Dual microphone design: detachable microphone for clear in-game chat and online mic for on-the-go use <br>
- Foldable ear cups: Travel-friendly design <br>', CAST(N'2020-12-10' AS Date), 78, 95, 0, 8, 26, 1, 4, 6, N'ASUS STRIX 2.0 Over-ear Headphones- ROG Gaming (Black).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (61, N'ASUS Monitor 31.5 VA326H (FullHD - VA - 144Hz - 4ms)', N'- Size: 31.5 " <br>
- Resolution: 1920 x 1080 (16: 9) <br>
- Panel technology: VA <br>
- Viewing angle: 178 (H) / 178 (V) <br>
- Frequency sweep: 144Hz <br>
- Response time: 4 ms <br>', CAST(N'2020-11-01' AS Date), 300, 400, 20, 24, 73, 1, 4, 7, N'ASUS Monitor 31.5 VA326H (FullHD - VA - 144Hz - 4ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (62, N'ASUS Monitor 23.6 VP247H (1920x1082 - 1ms)', N'- Size: 23.6 " <br>
- Resolution: 1920 x 1080 (16: 9) <br>
- Viewing angle: 170 (H) / 160 (V) <br>
- Response time: 1 ms <br>', CAST(N'2020-11-02' AS Date), 98, 150, 10, 12, 167, 1, 4, 7, N'ASUS Monitor 23.6 VP247H (1920x1082 - 1ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (63, N'ASUS Monitor 21.5 VZ229HE (FullHD - 5ms)', N'- Size: 21.5 " <br>
- Resolution: 1920 x 1080 (16: 9) <br>
- Viewing angle: 178 (H) / 178 (V) <br>
- Response time: 5 ms <br>', CAST(N'2020-11-03' AS Date), 100, 140, 0, 26, 210, 1, 4, 7, N'ASUS Monitor 21.5 VZ229HE (FullHD - 5ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (64, N'Acer Monitor 23.8 ET241Y (1920x1080-IPS-60Hz-4ms)', N'- Size: 23.8 " <br>
- Resolution: 1920 x 1080 (16: 9) <br>
- Panel technology: IPS <br>
- Viewing angle: 178 (H) / 178 (V) <br>
- Frequency sweep: 60Hz <br>
- Response time: 4 ms <br>', CAST(N'2020-11-04' AS Date), 89, 146, 0, 6, 41, 1, 3, 7, N'Acer Monitor 23.8 ET241Y (1920x1080-IPS-60Hz-4ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (65, N'Acer Monitor 18.5 EB192QA (1366x768-TN-60Hz-5ms)', N'- Dimensions: 18.5 "(1366 x 768), Ratio 16: 9 <br>
- IPS panel, Viewing Angle: 178 (H) / 178 (V) <br>
- Scanning frequency: 60Hz, Response time 5 ms <br>
- Display colors: 16.7 million colors <br>
- Image ports:, 1 x VGA / D-sub <br>', CAST(N'2020-11-05' AS Date), 47, 77, 0, 11, 34, 1, 3, 7, N'Acer Monitor 18.5 EB192QA (1366x768-TN-60Hz-5ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (66, N'Acer Monitor 19.5 K202HQL (1600x900-TN-60Hz-5ms)', N'- Size: 19.5 " <br>
- Resolution: 1600 x 900 (16: 9) <br>
- Panel technology: TN <br>
- Viewing angle: 90 (H) / 65 (V) <br>
- Frequency sweep: 60Hz <br>
- Response time: 5 ms <br>', CAST(N'2020-11-06' AS Date), 61, 81, 0, 8, 79, 1, 3, 7, N'Acer Monitor 19.5 K202HQL (1600x900-TN-60Hz-5ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (67, N'MSI Pro MP241 LCD monitor (1920 x 1080-IPS-60Hz-7 ms)', N'- Dimensions: 23.8 "(1920 x 1080), Ratio 16: 9 <br>
- IPS panel, Viewing Angle: 178 (H) / 178 (V) <br>
- Scanning frequency: 60Hz, Response time 7 ms <br>
- Display colors: 16.7 million colors <br>
- Picture Ports:, 1 x HDMI 1.4, 1 x VGA / D-sub <br>', CAST(N'2020-11-07' AS Date), 94, 127, 0, 34, 122, 1, 6, 7, N'MSI Pro MP241 LCD monitor (1920 x 1080-IPS-60Hz-7 ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (68, N'MSI Pro MP221 LCD monitor (1920 x 1080-TN-60Hz-5 ms)', N'- Dimensions: 21.5 "(1920 x 1080), Ratio 16: 9 <br>
- TN panel, Viewing angle: 170 (H) / 160 (V) <br>
- Scanning frequency: 60Hz, Response time 5 ms <br>
- Display colors: 16.7 million colors <br>
- Picture Ports:, 1 x HDMI 1.4, 1 x VGA / D-sub <br>', CAST(N'2020-11-08' AS Date), 87, 105, 0, 24, 185, 1, 6, 7, N'MSI Pro MP221 LCD monitor (1920 x 1080-TN-60Hz-5 ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (69, N'MSI Optix 32 AG32CQ Curved Monitor (2560x1440-VA-144Hz-1ms-FreeSync)', N'- Size: 32 " <br>
- Resolution: 2560 x 1440 (16: 9) <br>
- Panel technology: VA <br>
- Viewing angle: 178 (H) / 178 (V) <br>
- Frequency sweep: 144Hz <br>
- Response time: 1 ms <br>', CAST(N'2020-11-09' AS Date), 310, 395, 0, 26, 284, 1, 6, 7, N'MSI Optix 32 AG32CQ Curved Monitor (2560x1440-VA-144Hz-1ms-FreeSync).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (70, N'Dell 18.5 E1916HV Monitor (1366x768-TN-60Hz-5ms)', N'- Size: 18.5 " <br>
- Resolution: 1366 x 768 (16: 9) <br>
- Viewing angle: 90 (H) / 65 (V) <br>
- Response time: 5 ms <br>
                        
                        ', CAST(N'2020-11-10' AS Date), 45, 77, 0, 14, 56, 0, 2, 7, N'Dell 18.5 E1916HV Monitor (1366x768-TN-60Hz-5ms).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (71, N'CPU Intel Core I7-7700K (4.2GHz)', N'- Socket: LGA 1151, Intel Core 7th generation <br>
- Processor speed: 4.2 GHz (4 cores, 8 threads) <br>
- Cache: 8MB <br>
- Integrated Graphics: Intel HD Graphics 630 <br>', CAST(N'2020-11-11' AS Date), 300, 400, 20, 42, 305, 1, 5, 8, N'CPU Intel Core I7-7700K (4.2GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (72, N'CPU Intel Core I7-7700 (3.6GHz)', N'- Socket: LGA 1151, Intel Core 7th generation <br>
- Processing speed: 3.6 GHz (4 cores, 8 threads) <br>
- Cache: 8MB <br>
- Integrated Graphics: Intel HD Graphics 630 <br>', CAST(N'2020-11-12' AS Date), 300, 390, 15, 12, 95, 1, 5, 8, N'CPU Intel Core I7-7700 (3.6GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (73, N'CPU Intel Comet Lake Core i9-10900K', N'- Socket: LGA 1200, Intel Core 10th generation <br>
- Processor speed: 3.70 GHz - 5.30 GHz (10 cores, 20 threads) <br>
- Cache: 20MB <br>
- Integrated Graphics: Intel UHD Graphics 630 <br>', CAST(N'2020-11-13' AS Date), 520, 615, 10, 36, 247, 1, 5, 8, N'CPU Intel Comet Lake Core i9-10900K.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (74, N'CPU Intel Core i3-8350K (4.0GHz)', N'- Socket: LGA 1151-v2, Intel Core 8th generation <br>
- Processing speed: 4.0 GHz (4 cores, 4 threads)  <br>
- Cache: 8MB  <br>
- Integrated Graphics: Intel UHD Graphics 630  <br>', CAST(N'2020-11-14' AS Date), 170, 200, 0, 36, 94, 1, 5, 8, N'CPU Intel Core i3-8350K (4.0GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (75, N'CPU Intel Core I5-8600K (3.6GHz)', N'- Socket: LGA 1151-v2, Intel Core 8th generation <br>
- Processor speed: 3.6 GHz (6 cores, 6 threads) <br>
- Cache: 9MB <br> 
- Integrated Graphics: Intel UHD Graphics 630 <br>', CAST(N'2020-11-15' AS Date), 270, 316, 0, 1, 45, 147, 5, 8, N'CPU Intel Core I5-8600K (3.6GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (76, N'CPU Intel Comet Lake Core i7-10700K', N'- Socket: LGA 1200, Intel Core 10th generation <br>
- Processing speed: 3.80 GHz - 5.10 GHz (8 cores, 16 threads) <br>
- Cache: 16MB <br>
- Integrated Graphics: Intel UHD Graphics 630 <br>', CAST(N'2020-12-16' AS Date), 380, 470, 0, 11, 42, 1, 5, 8, N'CPU Intel Comet Lake Core i7-10700K.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (77, N'CPU Intel Comet Lake Core i5-10500', N'- Socket: LGA 1200, Intel Core 10th generation <br>
- Processing speed: 3.10 GHz - 4.50 GHz (6 cores, 12 threads)  <br> 
- Cache: 12MB  <br>
- Integrated Graphics: Intel UHD Graphics 630  <br>', CAST(N'2020-11-17' AS Date), 190, 245, 0, 8, 27, 1, 5, 8, N'CPU Intel Comet Lake Core i5-10500.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (78, N'CPU Intel Core I5-7600 (3.5GHz - 4.1GHz)', N'- Socket: LGA 1151, Intel Core 7th generation <br>
- Processing speed: 3.5 GHz - 4.1 GHz (4 cores, 4 threads) <br>
- Cache: 6MB <br>
- Integrated Graphics: Intel HD Graphics 630 <br>', CAST(N'2020-11-18' AS Date), 180, 270, 0, 16, 68, 1, 5, 8, N'CPU Intel Core I5-7600 (3.5GHz - 4.1GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (79, N'CPU Intel Core I5-7400 (3.0GHz - 3.5GHz)', N'- Socket: LGA 1151, Intel Core 7th generation <br>
- Processing speed: 3.0 GHz - 3.5 GHz (4 cores, 4 threads) <br>
- Cache: 6MB <br>
- Integrated Graphics: Intel HD Graphics 630 <br>', CAST(N'2020-11-19' AS Date), 150, 220, 0, 26, 84, 1, 5, 8, N'CPU Intel Core I5-7400 (3.0GHz - 3.5GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (80, N'CPU Intel Core I5-7500 (3.4GHz - 3.8GHz)', N'- Socket: LGA 1151, Intel Core 7th generation <br>
- Processor speed: 3.4 GHz - 3.8 GHz (4 cores, 4 threads) <br>
- Cache: 6MB <br>
- Integrated Graphics: Intel HD Graphics 630 <br>', CAST(N'2020-11-20' AS Date), 160, 260, 0, 9, 167, 1, 5, 8, N'CPU Intel Core I5-7500 (3.4GHz - 3.8GHz).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (81, N'MSI GeForce GTX graphics cards 4GB GDDR5 Ventus XS 1650 OC', N'- Graphics chip: NVIDIA GeForce GTX 1650 <br>
- Memory: 4GB GDDR5 (128-bit) <br>
- GPU clock Boost: 1740 MHz <br>', CAST(N'2020-12-01' AS Date), 150, 210, 10, 42, 284, 1, 6, 9, N'MSI GeForce GTX graphics cards 4GB GDDR5 Ventus XS 1650 OC.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (82, N'MSI GeForce video card RTX 2080 GDDR6 8GB Gaming X TRIO', N'- Graphics chip: NVIDIA GeForce RTX 2080 <br>
- Memory: 8GB GDDR6 (256-bit) <br>                        ', CAST(N'2020-12-02' AS Date), 850, 1120, 20, 47, 241, 1, 6, 9, N'MSI GeForce video card RTX 2080 GDDR6 8GB Gaming X TRIO.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (83, N'MSI GeForce GTX graphics cards 4GB GDDR5 1650 X Gaming', N'- Graphics chip: NVIDIA GeForce GTX 1650 <br>
- Memory: 4GB GDDR5 (128-bit) <br>
- GPU clock Boost: 1860 MHz <br>
                        ', CAST(N'2020-12-03' AS Date), 180, 225, 0, 7, 26, 1, 6, 9, N'MSI GeForce GTX graphics cards 4GB GDDR5 1650 X Gaming.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (84, N'MSI GeForce GTX Graphics Card 3GB GDDR5 1060 OCV1 ARMOR', N'- Graphics chip: NVIDIA GeForce GTX 1060 <br>
- Memory: 3GB GDDR5 (192-bit) <br>
- GPU clock 1759 MHz / 1544 MHz <br>
                        ', CAST(N'2020-12-04' AS Date), 180, 268, 0, 8, 68, 1, 6, 9, N'MSI GeForce GTX Graphics Card 3GB GDDR5 1060 OCV1 ARMOR.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (85, N'MSI GeForce GTX graphics card 6GB GDDR5 1060 OCV2', N'- Graphics chip: NVIDIA GeForce GTX 1060 <br>
- Memory: 6GB GDDR5 (192-bit) <br>
- GPU clock 1759 MHz / 1544 MHz <br>

                        ', CAST(N'2020-12-05' AS Date), 280, 325, 0, 7, 47, 1, 6, 9, N'MSI GeForce GTX graphics card 6GB GDDR5 1060 OCV2.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (86, N'MSI GeForce graphics card OC 2X 8GB RTX 3070 Ventus GDDR6', N'- Graphics chip: GeForce RTX 3070 <br>
- Memory: 8GB GDDR6 (256-bit) <br>                        ', CAST(N'2020-12-06' AS Date), 560, 690, 15, 26, 224, 1, 6, 9, N'MSI GeForce graphics card OC 2X 8GB RTX 3070 Ventus GDDR6.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (87, N'ASUS graphics cards 4GB GDDR5 Radeon RX 570 ROG OC Strix', N'- Graphics chip: AMD Radeon RX 570 <br>
- Memory: 4GB GDDR5 (256-bit) <br>
- GPU clock 1310 MHz (OC Mode) 1300 MHz (Gaming Mode) <br>
                        ', CAST(N'2020-12-07' AS Date), 120, 160, 0, 9, 34, 1, 4, 9, N'ASUS graphics cards 4GB GDDR5 Radeon RX 570 ROG OC Strix.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (88, N'ASUS graphics cards GeForce GTX Gaming TUF 1650 4GB GDDR5', N'- Graphics chip: GeForce GTX 1650 <br>
- Memory: 4GB GDDR5 (128-bit) <br>
- OC Mode - GPU Boost Clock: 1695 MHz, GPU Base Clock: 1515 MHz <br>
- Gaming Mode (Default) - GPU Boost Clock: 1665 MHz, GPU Base Clock: 1485 MHz <br>', CAST(N'2020-12-08' AS Date), 160, 200, 0, 25, 75, 1, 4, 9, N'ASUS graphics cards GeForce GTX Gaming TUF 1650 4GB GDDR5.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (89, N'ASUS graphics cards 4GB GDDR5 GeForce GTX 1050Ti Cerberus', N'- Graphics chip: GeForce GTX 1050Ti <br>
- Memory: 4GB GDDR5 (128-bit) <br>
- GPU Boost Clock: 1442 MHz, GPU Base Clock: 1328 MHz Gaming Mode (Default) <br>
- GPU Boost Clock: 1417 MHz, GPU Base Clock: 1303 MHz <br>', CAST(N'2020-12-09' AS Date), 170, 200, 0, 6, 36, 1, 4, 9, N'ASUS graphics cards 4GB GDDR5 GeForce GTX 1050Ti Cerberus.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (90, N'ASUS graphics cards GeForce GTX 3GB GDDR5 1060 DUAL', N'- Graphics chip: NVIDIA GeForce GTX 1060 <br>
- Memory: 3GB GDDR5 (192-bit) <br>
- GPU clock boosted GPU Clock: 1708 Mhz Basic GPU Clock: 1506 Mhz <br>', CAST(N'2020-12-10' AS Date), 170, 270, 0, 10, 28, 1, 4, 9, N'ASUS graphics cards GeForce GTX 3GB GDDR5 1060 DUAL.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (91, N'PC Lenovo V530-15ICR (11BHS07200)', N'- CPU: Intel Core i5-9400 (2.90 GHz up to 4.10 GHz / 9MB / 6 cores, 6 threads) <br>
- RAM: 1 x 4GB DDR4 2666MHz (2 Slot, Max Support 32GB) <br>
- Graphics: Intel UHD Graphics 630 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-11' AS Date), 420, 500, 0, 7, 16, 1, 11, 1, N'PC Lenovo V530-15ICR (11BHS07200).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (92, N'PC Lenovo V530-15ICB (10TVS0LV00)', N'- CPU: Intel Celeron G4930 (3.20 GHz / 2MB / 2 core, 2 threads) <br>
- RAM: 1 x 4GB DDR4 2666MHz (2 Slot, Max Support 32GB) <br>
- Graphics: Intel UHD Graphics 610 <br>
- Storage: 1TB HDD 7200RPM <br>', CAST(N'2020-12-12' AS Date), 270, 310, 0, 4, 26, 1, 11, 1, N'PC Lenovo V530-15ICB (10TVS0LV00).png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (93, N'Laptop Lenovo Yoga 520-14IKBR', N'- CPU: Intel Core i3-7020U (2.3 GHz / 3MB / 2 core, 4 threads) <br>
- Screen: 14 "(1920 x 1080), touch screen <br>
- RAM: 1 x 4GB DDR4 2666MHz <br>
- Graphics: Intel HD Graphics 620 <br>
- Storage: 256GB SSD <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 2 cell 35 Wh Instant battery, weight: 1.7 kg <br>', CAST(N'2020-12-13' AS Date), 560, 670, 0, 8, 34, 2, 11, 2, N'Laptop Lenovo Yoga 520-14IKBR.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (94, N'Laptop Lenovo Ideapad 720s-13IKB', N'- CPU: Intel Core i5-8250U (1.6 GHz - 3.4 GHz / 6MB / 4 core, 8 threads) <br>
- Screen: 13.3 "IPS (1920 x 1080), non-touch <br>
- RAM: 1 x 8GB Onboard DDR4 2400MHz <br>
- Graphics: Intel UHD Graphics 620 <br>
- Storage: 256GB M.2 NVMe SSD <br>
- Operating System: Windows 10 Home SL 64-bit <br>
- Battery: 4 cell 48 Wh Instant battery, weight: 1.1 kg <br>', CAST(N'2020-12-14' AS Date), 780, 950, 0, 6, 14, 2, 11, 2, N'Laptop Lenovo Ideapad 720s-13IKB.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (95, N'Laptop Lenovo ThinkPad E590', N'- CPU: Intel Core i5-8265U (1.6 GHz - 3.9 GHz / 6MB / 4 core, 8 threads) <br>
- Screen: 15.6 "IPS (1366 x 768), non-touch <br>
- RAM: 1 x 4GB DDR4 2400MHz <br>
- Graphics: Intel UHD Graphics 620 <br>
- Storage: 1TB HDD 5400RPM <br>
- Operating System: Free DOS <br>
- Battery: 3 cell 45 Wh Removable battery, weight: 2.1 kg <br>', CAST(N'2020-12-15' AS Date), 650, 730, 0, 6, 27, 2, 11, 2, N'Laptop Lenovo ThinkPad E590.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (96, N'Laptop Apple MacBook Pro 2018 13.3 MR9R2', N'- CPU: Core i5 (2.3 GHz) <br>
- Screen: 13.3 "(2560 x 1600) <br>
- RAM: 8GB LPDDR3 2133MHz <br>
- Graphics: Intel Iris Plus Graphics 650 <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Battery: Instant battery <br>', CAST(N'2020-12-16' AS Date), 1850, 2150, 0, 4, 46, 2, 10, 2, N'Laptop Apple MacBook Pro 2018 13.3 MR9R2.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (97, N'Laptop APPLE MacBook Pro 2020MXK32SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600)  <br>
- RAM: 8GB Onboard LPDDR3 2133MHz  <br>
- Storage: 256GB SSD  <br>
- Operating System: macOS  <br>
- 58 Wh Battery  <br>
- Weight: 1.4 kg  <br>', CAST(N'2020-12-17' AS Date), 1340, 1520, 0, 7, 46, 2, 10, 2, N'Laptop APPLE MacBook Pro 2020MXK32SA.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (98, N'Laptop APPLE MacBook Air 2020 MVH52SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600) <br>
- RAM: 8GB Onboard LPDDR4 3733MHz <br>
- Graphics: Intel Iris Plus Graphics <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Weight: 1.3 kg <br>', CAST(N'2020-12-18' AS Date), 1230, 1550, 0, 6, 74, 2, 10, 2, N'Laptop APPLE MacBook Air 2020 MVH52SA.png')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (99, N'Laptop APPLE MacBook Air 2020 MVH22SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600) <br>
- RAM: 1 x 8GB Onboard LPDDR4 3733MHz <br>
- Graphics: Intel Iris Plus Graphics <br>
- Storage: 512GB SSD <br>
- Operating System: macOS <br>
- Weight: 1.3 kg <br>', CAST(N'2020-12-19' AS Date), 1230, 1550, 0, 9, 17, 2, 10, 2, N'Laptop APPLE MacBook Air 2020 MVH22SA.png')
GO
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [product_date], [purchase_price], [price], [discount], [stock], [unit_sold], [warrant], [brand_id], [producttype_id], [images]) VALUES (100, N'Laptop APPLE MacBook Air 2020 MVH42SA', N'- CPU: Intel Core i5 <br>
- Screen: 13.3 "IPS (2560 x 1600)  <br>
- RAM: 8GB Onboard LPDDR4 3733MHz  <br>
- Graphics: Intel Iris Plus Graphics  <br>
- Storage: 512GB SSD  <br>
- Operating System: macOS  <br>
- Weight: 1.3 kg  <br>', CAST(N'2020-12-20' AS Date), 1230, 1550, 0, 23, 124, 2, 10, 2, N'Laptop APPLE MacBook Air 2020 MVH42SA.png')
SET IDENTITY_INSERT [dbo].[productlist] OFF
SET IDENTITY_INSERT [dbo].[producttype] ON 

INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (1, N'PC', N'pc.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (2, N'Laptop', N'laptop.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (3, N'Gaming Laptop', N'laptop.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (4, N'Mouse', N'mouse.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (5, N'Speaker', N'speaker.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (6, N'Headphone', N'headphone.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (7, N'Monitor', N'monitor.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (8, N'CPU', N'cpu.png')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name], [producttype_images]) VALUES (9, N'VGA', N'vga.png')
SET IDENTITY_INSERT [dbo].[producttype] OFF
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [PK_cu_bi_id] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [PK_cu_bi_id]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [PK_ma_bi_id] FOREIGN KEY([manager_id])
REFERENCES [dbo].[manager] ([manager_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [PK_ma_bi_id]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [PK_bi_pd_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[productlist] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [PK_bi_pd_id]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [PK_dt_bi_id] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [PK_dt_bi_id]
GO
ALTER TABLE [dbo].[brand]  WITH CHECK ADD  CONSTRAINT [PK_br_na_id] FOREIGN KEY([nation_id])
REFERENCES [dbo].[nation] ([nation_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[brand] CHECK CONSTRAINT [PK_br_na_id]
GO
ALTER TABLE [dbo].[productlist]  WITH CHECK ADD  CONSTRAINT [PK_pd_br_id] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productlist] CHECK CONSTRAINT [PK_pd_br_id]
GO
ALTER TABLE [dbo].[productlist]  WITH CHECK ADD  CONSTRAINT [PK_pd_ty_id] FOREIGN KEY([producttype_id])
REFERENCES [dbo].[producttype] ([producttype_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productlist] CHECK CONSTRAINT [PK_pd_ty_id]
GO
