USE [AMNHAC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/22/2022 9:50:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[idPost] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[title] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[video] [nvarchar](255) NULL,
	[chedo] [nvarchar](50) NOT NULL,
	[newday] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetVideoUrl]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GetVideoUrl](
	[videoNameUrl] [nvarchar](255) NOT NULL,
	[videoUrl] [binary](8000) NULL,
 CONSTRAINT [PK_GetVideoUrl] PRIMARY KEY CLUSTERED 
(
	[videoNameUrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[idtimkiem] [nvarchar](50) NOT NULL,
	[timkiem] [nvarchar](50) NULL,
 CONSTRAINT [PK_link] PRIMARY KEY CLUSTERED 
(
	[idtimkiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[idPerson] [int] IDENTITY(1,1) NOT NULL,
	[namePerson] [nvarchar](255) NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[hinhPerson] [nvarchar](255) NULL,
	[idTheloai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[idmusic] [int] IDENTITY(1,1) NOT NULL,
	[namemusic] [nvarchar](255) NOT NULL,
	[singer] [nvarchar](50) NULL,
	[hinhmusic] [nvarchar](255) NULL,
	[link] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmusic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theloai]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theloai](
	[idTheloai] [int] IDENTITY(1,1) NOT NULL,
	[nameTheloai] [nvarchar](255) NULL,
 CONSTRAINT [PK__Theloai__EA17DFB5A849B5BD] PRIMARY KEY CLUSTERED 
(
	[idTheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[id] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[author] [nvarchar](150) NULL,
	[link] [nvarchar](4000) NULL,
	[vitrivideo] [nvarchar](50) NULL,
	[loaivideo] [nvarchar](50) NULL,
	[idTheloai] [int] NULL,
	[duration] [nvarchar](255) NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[HinhNguonVideo] [nvarchar](255) NULL,
	[NguonVideo] [nvarchar](4000) NULL,
 CONSTRAINT [PK__Video__3213E83F9D24CEAB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoAdmin]    Script Date: 6/22/2022 9:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoAdmin](
	[id] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[author] [nvarchar](150) NULL,
	[link] [nvarchar](255) NULL,
	[vitrivideo] [nvarchar](50) NULL,
	[loaivideo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202204270619585_InitialModel', N'AMNHAC.Migrations.Configuration', 0x1F8B0800000000000400DD5C6D6FE33612FE7E40FF83A04FD7436AE5A5BBD80BEC16AE93B441372F58678BFBB6A025DA1156A254894A131CFACBEEC3FDA4FB0B379428597CD38BADD84EB1C0C22287CF0C874372381CE67FFFF9EFF8C7E730B09E7092FA1199D827A363DBC2C48D3C9FAC26764697DF7DB07FFCE19BBF8D2FBDF0D9FAADA43B6374D092A413FB91D2F8DC7152F71187281D85BE9B4469B4A423370A1DE445CEE9F1F13F9D93130703840D589635FE9411EA8738FF80CF59445C1CD30C0537918783949743CD3C47B56E5188D318B978624F6F6E7F99CE4605A16D4D031F8110731C2C6D0B1112514441C4F3CF299ED32422AB790C052878788931D02D5190622EFAF99ABC6B2F8E4F592F9C75C312CACD521A853D014FCEB85A1CB9F946CAB52BB581E22E41C1F485F53A57DEC4BEF6705EF4290A400132C3F3599030E2897D53B198A6F12DA6A3B2E1A880BC4A00EE8F28F93AAA231E599DDB1D5566743A3A66FF8EAC5916D02CC11382339AA0E0C8BACF1681EFFE8A5F1EA2AF984CCE4E16CBB30FEFDE23EFECFDF7F8EC5DBDA7D057A0130AA0E83E89629C806C7859F5DFB61CB19D2337AC9AD5DA145A015B8219615B37E8F923262BFA0873E5F4836D5DF9CFD82B4BB8717D263E4C206844930C3E6FB320408B0057F54E234FF67F03D7D377EF07E17A8B9EFC553EF4127F983809CCAB4F38C86BD3473F2EA69730DE5F38D9551285EC5BB4AFA2F6CB3CCA1297752632923CA06485A928DDD8591B6F27936650C39B75897AF8A6CD2455CD5B4BCA3AB4C94C2859EC7A3694F2BE2EDFCE16378D6318BCDCB498469A0C4ED8A74652C323ABA85E1BCC49578321D091BFF2FA7719223F186001ECC005DC8EA59F84B8EAE54F11981B22BD65BE47690AF3DFFB05A58F0DA2C3CF01449F63374BC02CE71485F1AB73BB7F8C08BECDC205B3F6DDF11A6C681EFE88AE904BA3E492B0565BE37D8CDCAF51462F89778128FE4CDD12907D3EF861778041C499BA2E4ED32B3066ECCD22F0AA4BC06B42CF4E7BC3B1B569DF0EC82C407EA8F740A455F44B49BAF642F4148A276220D379234DA27E8C563EE9266A496A16B5A068159593F5159581759394539A05CD095AE52CA806F3EFF2111ADEC1CB610FDFC3DB6EF336AD053535CE6185C43F63821358C6BC7B44294EC87A04BAAC1BFB7016F2E1634C5F7D6FCA39FD86826C68561BCD867C11187E36E4B0873F1B7231A1F8C9F79857D2E1D85312037C277AFD89AA7DCE4992ED7A3A08DDDC35F3DDAC01A6E9324DD3C8F5F359A00978F17085283FF870567BECA2E88D1CFF808E81A1FB6CCB8312E89B2D1BD51DB9C001A6D89ABA45407086521779AA1AA1435E0FC1CA1D5523D83A0E220AF70F8527583A4E5823C40E4129CC549F50755AF8C4F56314B46A496AD9710B637DAF78C8351738C684316CD54417E6FAB00713A0E2230D4A9B86C64ECDE29A0DD1E0B59AC6BCCD855D8FBB128DD8894DB6F8CE06BBE4FEDBAB1866B3C676609CCD2AE922803184B70F03E56795AE06201F5C0ECD40A51393C140B94BB513031535B607031555F2E60CB438A2761D7FE9BC7A68E6291E9477BFAD37AA6B0FB629E8E3C04CB3F03DA10D85163851CDF362C12AF133D51CCE404E7E3E4BB9AB2B9B08039F632A866CD6FEAED60F759A4164236A025C1B5A0B28BFFC53809409D543B83296D7281DF7227AC09671B74658BEF64BB0351B50B1EB97A03542F355A96C9C9D4E1F55CF2A6B508CBCD361A186A3310879F1123BDE4129A6B8ACAA982EBE701F6FB8D6313E180D0A6AF15C0D4A2A3B33B8964AD36CD792CE21EBE3926DA525C97D3268A9ECCCE05AE236DAAE248D53D0C32DD84A45E2163ED0642B231DD56E53D58D9D222D8A178C1D43FED4F806C5B14F56B57C2A5E62CD8B64AAD977F3FEA9466181E1B8A926E3A892B6E244A304ADB0540BAC41D22B3F49E905A26881589C67E6850A99766F352CFF25CBFAF6A90E62B90F94D4EC37373DE1CA5ED866553F8437BF82CE85CC99C923E89AA1D737B7586A1B0A50A209DACFA2200B89D9B732B72EAEEEEAED8B121561EC48F22BBE93A228C5C315B5DE694CD4F9B0FDF8545ECBE66364863069BAF439EBBA36F9A16694322C55473185AAF6366626F7A5EB38C94E61FF616A45789DD9C43351EA00BCA827462D994101ABD5754715F34DEA98624D774429A9A40E2955F590B29E3A220859AFD808CFA0513D45770E6AB2481D5DADED8EAC491BA9436BAA37C0D6C82CD77547D56496D48135D5DDB1D76926F2FA79C0FB95F1A8B2C986551C64B7DBB10C18AFB3180EB3E1D5EEEBEB40B5E29E58FC465E01E3E5076948C6D3DC268654842EB63324038679BD112EB9C5E5A6F166DE8C29DC5C0B4B7AD3CDBD19AF9FB9BEAA5128E73899A4E25E9DE7A473DB989FA1DA1FC72887AA82C4B64A35C276FE92521C8E18C168FE7B300B7CCC16EF92E006117F89535A646BD8A7C727A7D2239BC379F0E2A4A91768CEA0A6572FE298ED20F18A3CA1C47D44899A06B1C5A39035A81261BE261E7E9ED8FFCE5B9DE7C10AF62B2F3EB2AED3CFC4FF3D838A8724C3D69F6A5AE73049F21D9E655482FEF926DE3B7457F9F5BFBE144D8FACBB04A6D3B9752C297A93E1175F41F492A668BA85341BBF8D78BBB34D7882A0459566CBE62F0E163E1DE4B54129E5DF43F4FC6D5FD1B42F0AB642D4BC1A180A6F10159A5E056C82657C11E0C127CD5F04F4EBACFE85C026A2195F07F8A43F98FC36A0FB3254B6DCE33EA4392BED6249CAF5DC9A5BBD55A2E5BEF72625057BAB89AEA659F7801B34957A3B17E58DA5280FB6756A329007C3DEA7DDBF7ADAF1A1641AAF9DF6FD2618EF32A7B8E106E92F954A7C00C96F9A649EFD270CEFDAD64CC1DF03CFBAEC97167C60C6C6B7F9FD27FFEEDAD84C01E20337B65E29BE07666BFBDA3FF76C699DB7D0BD27ECAAB947864B1C5D14B92D21B708B9C3F17F118111141E65F18E529F01D694BDDAC2704D62666A4E3D93192B1347E1AB5034B3EDD757BEE1377696D334B335246C36F1E6EB7F236F4ED3CCDB9006B98F54626D22A22EBDBB651D6BCA977A4BA9C3424F5A32D5DB7CD6C61BF9B794293C885284D963B85D7E3B89C183A864C8A9D3231158BD2886BDB3F6B71661FF4EFDD51A82FDE545825D61D7AC68AEC9322A376F49A292448AD0DC608A3CD852A709F597C8A550CD02D0F943F03CA8C7AE4116D8BB2677198D330A5DC6E12210025ECC0968E29F673B8B328FEF62F6950ED10510D36781FB3BF253E6075E25F7952626648060DE050FF7B2B1A42CECBB7AA9906E23D21188ABAF728A1E7018070096DE91397AC29BC806E6F711AF90FBB28E009A40DA074254FBF8C247AB048529C758B7874FB0612F7CFEE1FFD1D73A6472540000, N'6.2.0-61023')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1156, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'urn:tokens:facebook', N'EAAIR22nv6uEBAJzdWhTlTdfVmSo3SCCZBL6wZCCniRZCoF8ZC1Jn5ZBkdFJ7J9imuJ4AWaODbOyhtfvkaSZCu6GCq1bw8c6i1yhxGLmJST8oweC85LlLcNh42Hmfhb5JPpBBmPRMZA7b5DLw2lS6fOQXEisAjvfPoqj6WYwPmV6RZBmZBZAyqktJNZAldlmfZAx9YQqbyzSeDfDoEM9MeSz8oEDjj9e3IjCsgZCwgyUcPrn2dZCKE9X6PqkItq')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'1809425052726446', N'a21827b4-01c8-4ed0-9846-b8a841f6212d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Avatar]) VALUES (N'155a65f8-7fb3-41fc-8394-88fd18b780e3', N'viet@gmail.com', 0, N'APxKQ9t/PELSOQ05dfDCcRYVfCQ27sMnJnQgnDGWGVgpkCB/x9nPKG+YHQaqNXNSdg==', N'5ff2b18b-f2c0-4a67-9717-aa64321e7346', NULL, 0, 0, NULL, 1, 0, N'viet@gmail.com', N'Đào Quốc Việt', N'/Content/images/JK2.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Avatar]) VALUES (N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'xincaiten2001@gmail.com', 0, NULL, N'749e680d-bf46-424f-ad56-8006047e10a2', NULL, 0, 0, NULL, 1, 0, N'xincaiten2001@gmail.com', N'Võ Hà Nam', N'/Content/images/JK3.jpg')
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday]) VALUES (1, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'New My Post In Project And Mylife', N'Nam Nè', N'/Content/music/Ayueyue.mp4', N'CK', CAST(N'2022-06-22T01:45:20.477' AS DateTime))
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday]) VALUES (2, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'Ngày đẹp trời', N'Ok!!', N'/Content/music/video-1655838686.mp4', N'CK', CAST(N'2022-06-22T02:12:10.973' AS DateTime))
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday]) VALUES (3, N'155a65f8-7fb3-41fc-8394-88fd18b780e3', N'T mới lên cho ké với', N'Nguồn Gốc Trung Hoa', N'/Content/music/Ayueyue.mp4', N'CK', CAST(N'2022-06-22T02:18:04.967' AS DateTime))
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday]) VALUES (4, N'155a65f8-7fb3-41fc-8394-88fd18b780e3', N'Trẩm cảm quá!!', N'Địt mẹ m Việt', N'', N'CK', CAST(N'2022-06-22T13:33:00.763' AS DateTime))
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday]) VALUES (5, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'U là trời', N'...', N'', N'CN', CAST(N'2022-06-22T13:44:34.813' AS DateTime))
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
INSERT [dbo].[link] ([idtimkiem], [timkiem]) VALUES (N'/Content/music/Ayueyue.mp4', N'/Content/music/Ayueyue.mp4')
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (1, N'A yue yue', N'Không có gì', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfAJhOdYIhDtaVGbWwx7OKITOsanEdcSPveQ&usqp=CAU', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (6, N'Khắc Việt', N'Mém có gì', N'https://photo-resize-zmp3.zadn.vn/w240_r1x1_jpeg/cover/0/8/2/2/08225973aa58f94e0e01a56fd701cc85.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (7, N'Diệp Lý', N'Xu xu', N'https://i.ytimg.com/vi/RB--wXNwWfg/maxresdefault.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (9, N'Mỹ Tâm', N'Phan Thị Mỹ Tâm, thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên và giám khảo truyền hình người Việt Nam. Sinh ra tại Đà Nẵng, Mỹ Tâm sớm bộc lộ năng khiếu về âm nhạc và liên tiếp giành chiến thắng tại nhiều cuộc thi ca hát lớn nhỏ lúc còn ở độ tuổi thiếu niên.', N'https://nld.mediacdn.vn/2018/2/3/13-chot-15176700723471428987902.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (10, N'Hương Tràm', N'Phạm Thị Hương Tràm, thường được biết đến với nghệ danh Hương Tràm hay Charmy Pham, là một nữ ca sĩ nổi tiếng người Việt Nam. Cô là quán quân cuộc thi Giọng hát Việt mùa đầu tiên 2012. ', N'https://znews-stc.zdn.vn/static/topic/person/huongtram.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (12, N'Yuki Matsui', N'Nghệ Sĩ Nhật Bản', N'https://yt3.ggpht.com/6RSKQ6hC9k6TgMSZkErYwMU5-IyXVS2UsA3llYvVSVHlgo-ZdQX-V3s0rVK8BVcR7nTgAiD3OA=s900-c-k-c0x00ffffff-no-rj', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (13, N'Đàm Vĩnh Hưng', N'Đàm Vĩnh Hưng tên khai sinh là Huỳnh Minh Hưng, còn có biệt danh Mr. Đàm, là một ca sĩ người Việt Nam. Anh đã giành được 2 giải Cống hiến. Bên cạnh thể loại nhạc trẻ, anh còn hát những ca khúc nhạc tiền chiến mang tính chất trữ tình cũng như nhạc Trịnh Công Sơn và nhạc vàng.', N'https://suckhoedoisong.qltns.mediacdn.vn/Images/phamquynh/2021/05/09/Ong%20hoang%20nhac%20Viet%20co%20suc%20hut%20khung%20khiep%20khi%20chuyen%20sang%20nghe%20ban%20hang%20online.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (17, N'Cúc Tịnh Y', N'', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg/440px-Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (18, N'Châu Kiệt Luân', N'Ông hoàng nhạc Pop Châu Á – Châu Kiệt Luân từng được biết đến với vai trò là nhạc sĩ. Tuy nhiên lại không đạt được thành công như mong đợi. Cho đến khi anh ra mắt album đầu tay “Kiệt Luân”. Mang danh tiếng của nam ca sĩ nổi tiếng Trung Quốc lan rộng khắp Đông Nam Á.', N'https://znews-photo.zadn.vn/w660/Uploaded/mdf_rkxrxd/2021_01_14/JC_4.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (19, N'Khánh Ly', N'Ca sĩ hát nhạc Trịnh', N'https://media-cdn-v2.laodong.vn/Storage/newsportal/2018/8/11/624644/IMG-8296-1559-153370.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (20, N'Đặng Tử Kỳ', N'Sinh ra và lớn lên trong 1 gia đình có truyền thống âm nhạc. Ngay từ nhỏ Tử Kỳ đã được dạy hát và chơi các loại nhạc cụ. 10 tuổi bắt đầu sáng tác, 13 tuổi đạt chứng chỉ cấp 8 Piano và trở thành ca sĩ nổi tiếng khi mới 16 tuổi. ', N'https://afamilycdn.com/150157425591193600/2020/6/10/6-15916991664791092695087-1591759532962-1591759533710973968047.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (21, N'Tiết Chí Khiêm', N'Cùng bước ra một cuộc thi hát và ký hợp đồng với cùng một công ty, Tiết Chí Khiêm giống như Trương Kiệt, cũng không có bước đầu thuận lợi. Mười năm sau cuộc thi, cái tên Tiết Chí Khiêm dần gây được chú ý khi trở thành hiện tượng mạng, chuyên viết truyện hài chế trên Weibo.', N'https://zmp3-photo-fbcrawler.zadn.vn/avatars/2/f/2f94388eeb15b2e78dc2aa7be3ae7eba_1425283980.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (22, N'Dịch Dương Thiên Tỉ', N'Thành viên cuối cùng, và cũng là em út của TFBOYS – Dịch Dương Thiên Tỉ. Ngay từ khi còn rất nhỏ, Thiên Tỉ đã là thí sinh quen mặt tại các cuộc thi tài năng, sở hữu nhiều biệt tài khác nhau như vũ đạo, thư pháp,…', N'https://ss-images.saostar.vn/pc/1606399619141/exoga4oueaascvm(1).jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (23, N'Lam Trường
', N'Lam Trường tên đầy đủ là Tiêu Lam Trường là một ca sĩ và diễn viên người Việt gốc Hoa. Anh thường được người hâm mộ gọi thân mật là "Anh Hai" và thường viết là "A2". ', N'https://avatar-ex-swe.nixcdn.com/singer/avatar/2018/06/07/7/2/a/a/1528338325576_600.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (24, N'Lý Hải', N'Nguyễn Văn Hải thường được biết đến với nghệ danh Lý Hải, là một ca sĩ, diễn viên, đạo diễn và nhà sản xuất người Việt Nam.', N'http://hopamchuan.com/node/get_artist_image/ly_hai', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (26, N'Sơn Tùng', N'Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, thời thơ ấu, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ.', N'https://upload.wikimedia.org/wikipedia/commons/f/fe/Son_Tung_M-TP_1_%282017%29.png', 2)
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Playlist] ON 

INSERT [dbo].[Playlist] ([idmusic], [namemusic], [singer], [hinhmusic], [link]) VALUES (1, N'Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修', N'马修', N'https://img.youtube.com/vi/DkEOyRx2cdw/maxresdefault.jpg', N'314486061.mp3')
INSERT [dbo].[Playlist] ([idmusic], [namemusic], [singer], [hinhmusic], [link]) VALUES (2, N'枯鱼之肆 - 阿YueYue', N'阿YueYue', N'https://img.youtube.com/vi/nz1LXVRHN9M/maxresdefault.jpg', N'Ayueyue.mp3')
INSERT [dbo].[Playlist] ([idmusic], [namemusic], [singer], [hinhmusic], [link]) VALUES (3, N'Thu Thương Biệt Luyến - Mã Dược Triển | 秋殇别恋 - 马跃展', N'马跃展', N'https://img.youtube.com/vi/84vt6fqXtnI/maxresdefault.jpg', N'3136278587.mp3')
INSERT [dbo].[Playlist] ([idmusic], [namemusic], [singer], [hinhmusic], [link]) VALUES (4, N'Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã | 风过谢桃花 - 司南/汐音社', N'Tư Nam/ Tịch Âm Xã -司南/汐音社', N'https://img.youtube.com/vi/O_5VqxldvzQ/maxresdefault.jpg', N'1933377945.mp3')
INSERT [dbo].[Playlist] ([idmusic], [namemusic], [singer], [hinhmusic], [link]) VALUES (5, N'HoLo', NULL, N'https://img.youtube.com/vi/Iv5P21D76bw/maxresdefault.jpg', N'holo.mp3')
SET IDENTITY_INSERT [dbo].[Playlist] OFF
GO
SET IDENTITY_INSERT [dbo].[Theloai] ON 

INSERT [dbo].[Theloai] ([idTheloai], [nameTheloai]) VALUES (1, N'Trung Hoa')
INSERT [dbo].[Theloai] ([idTheloai], [nameTheloai]) VALUES (2, N'Việt Nam')
INSERT [dbo].[Theloai] ([idTheloai], [nameTheloai]) VALUES (4, NULL)
SET IDENTITY_INSERT [dbo].[Theloai] OFF
GO
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'DkEOyRx2cdw/user/xincaiten2001@gmail.com', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修', N'Ngưng Tuyết - 凝雪', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修 ---------------------------- Lyrics: Zǒng yǒurén jìdé nǐ ...', NULL, N'user', NULL, N'PT2M42S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'DkEOyRx2cdw', N'https://rr5---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1655910879&ei=f92yYoihFbLjs8IPjLGSiA8&ip=203.205.27.251&id=o-AJDclw4eM0L_Wq1HWbgTeapB75RjOteARU5iDSNxujtG&itag=18&source=youtube&requiressl=yes&mh=lA&mm=31,26&mn=sn-jhjup-nbol,sn-un57en7l&ms=au,onr&mv=m&mvi=5&pl=23&initcwndbps=697500&spc=4ocVC_U6HRGYJGWYJFq4UvkErNRtytA&vprv=1&mime=video/mp4&ns=-I0ly4lbIPZSkr3HCs5ZEGwG&gir=yes&clen=4765618&ratebypass=yes&dur=161.657&lmt=1649687904772658&mt=1655888931&fvip=1&fexp=24001373,24007246&c=WEB&txp=5319224&n=O5jm8I7poi9hAA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgQQElcecXkN9A9voC2asp79ZjcyE2BjEhHxXkxhTNOS8CIAk0W7PjJhPFmACjWXuN1-zN9Rrqs1maPkzHewPM7euV&sig=AOq0QJ8wRQIhAK3-EC7RJw-aPK5Rl-r7KKF88wAl5z2vVhvDJVk4DV8gAiA2b0moPgazHgBcNbBsRYO101QY3qX5gL3XPRj-IhOacg==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'FOEW93azS30/user/xincaiten2001@gmail.com', N'[VIETSUB + PINYIN] Sẽ Luôn Có Người Yêu Bạn | 总有人来爱你 | - Chỉ Tiêm Tiếu 指尖笑 【动态歌词】♩', N'Vivianan', N'Trên thế giới này sẽ luôn có người thấu hiểu bạn, trao cho bạn một tình yêu vô điều kiện Nếu như ở thời điểm hiện tại bạn vẫn ...', NULL, N'user', NULL, N'PT3M14S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'FOEW93azS30', N'https://rr6---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1655910882&ei=gt2yYqTRB9awgQPBjJrADA&ip=203.205.27.251&id=o-AEZC2DxjnhPwPSZfkh8xPW-p0Ssof3J2s841_FEiBwvt&itag=18&source=youtube&requiressl=yes&mh=Pz&mm=31,26&mn=sn-jhjup-nbol,sn-30a7rn76&ms=au,onr&mv=m&mvi=6&pl=23&initcwndbps=697500&spc=4ocVC_01KOhG47Qw0ZhwLsHBYhq9WZY&vprv=1&mime=video/mp4&ns=pjr_5u8skYmWn0nIzK_9PBcG&gir=yes&clen=6167823&ratebypass=yes&dur=193.607&lmt=1641406928429880&mt=1655888931&fvip=3&fexp=24001373,24007246&c=WEB&txp=5319224&n=KVZ91a3r4kioPA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhANB6nRvm6NKparI75ZgwiIbUdk7ODGGUIp9ijWPOBCw2AiA3zvUAMdvzG__yzD1UxHlBQI0O3EIxF_JfnbpqaeZCNA==&sig=AOq0QJ8wRAIgYF1CLpV4B_FhauUFxQPwcZkWjd6Wpcw41SJ1Cg5B_WkCIFdFb975TX_s47bcsD1pszl6lfxnN6VpJ1MO6tfP2B0U')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'O_5VqxldvzQ/user/xincaiten2001@gmail.com', N'[Vietsub] Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã | 风过谢桃花 - 司南/汐音社', N'Moah - Nhạc Trung Channel', N'Moah - Nhạc Trung Channel♪. Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã Lyricist：Thập Nhị Huynh（十二兄) Composer：Tôn ...', NULL, N'user', NULL, N'PT3M17S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'O_5VqxldvzQ', N'https://rr3---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1655910884&ei=hN2yYqmDIYKXgAOY0b64Dw&ip=203.205.27.251&id=o-AK2mm53etRzVZRtX59569W1l8R_FfYA6qiwEZDZWTNIS&itag=18&source=youtube&requiressl=yes&mh=N7&mm=31,26&mn=sn-jhjup-nbol,sn-30a7rned&ms=au,onr&mv=m&mvi=3&pl=23&initcwndbps=697500&spc=4ocVC54iGZdXlGK3xYDrZPobpillVTI&vprv=1&mime=video/mp4&ns=-3pvOUYHwibaiVEelYtC53UG&gir=yes&clen=8346835&ratebypass=yes&dur=196.069&lmt=1617538008657586&mt=1655888931&fvip=2&fexp=24001373,24007246&c=WEB&txp=5438434&n=_bigBhwpOif0GQ&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgZJK0ghfnuqWrj_dtnrki0zO-1o9VIWgCTqQJAd7oBQ4CIHQiXBTthwx8Zwms30wRYtP7qVoUT2edh36yJLIql3Vh&sig=AOq0QJ8wRQIhAPglI62rvpughDwmJmOOXvBIWNm2-uw8j-Qc6o7uGDWnAiABE3KTG_VzhMf3U4R1jBV9ybuw7CuEBNjeb0o_uOmxhQ==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/admin/xincaiten2001@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', N'OFdAYrQLMJ40', N'adminOFdAYrQLMJ4/admin/xincaiten2001@gmail.com', 1, N'PT2M34S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'OFdAYrQLMJ4', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655862483&ei=cyCyYpKBJtmD0-kPq_abCA&ip=113.172.243.90&id=o-APuqp4_ZUUbwkEbaRBPdFWbajeAq1nA3cY0MBeN8ttZL&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=992500&spc=4ocVCySgEfLORNkk7QCq2BSXygVLjWI&vprv=1&mime=video/mp4&ns=a9xHlmlq-iEJWgpwv-Q6L2sG&gir=yes&clen=5944601&ratebypass=yes&dur=153.042&lmt=1653133924609963&mt=1655840688&fvip=5&fexp=24001373,24007246&c=WEB&txp=6319224&n=7rkCkXZyBy61JA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgXONlyP3JgqXXlJF51VnkmJ3SkBKUA0urmHklbwkdMucCIQCfZgx8sqZAZTPdIusSUWbgOKxyEaJUBx5g4E8dpshvjg==&sig=AOq0QJ8wRQIgQxt2tgvAp7D4DFdRZkEeWgoV_zwnm042eP9tjIuxgzkCIQDnTytO6xI_YzIwt4hlgTcqDY9TSj71dIptsssCRFQw3A==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/user/viet@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', NULL, N'user', NULL, N'PT2M34S', N'155a65f8-7fb3-41fc-8394-88fd18b780e3', N'OFdAYrQLMJ4', N'https://rr8---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1655908770&ei=QtWyYsrdDoKXgAOY0b64Dw&ip=203.205.27.251&id=o-AFB1g2uoJr1nvW0PpVJ7Lo9QT_QrXub648N0hp4Tcupq&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,26&mn=sn-jhjup-nbol,sn-un57en7l&ms=au,onr&mv=m&mvi=8&pl=23&initcwndbps=771250&spc=4ocVC5MKuXdGWz8BMOcvaXoxe_xkwYI&vprv=1&mime=video/mp4&ns=_2aW8mgrLT538OMh0awPXgwG&gir=yes&clen=5944601&ratebypass=yes&dur=153.042&lmt=1653133924609963&mt=1655886769&fvip=5&fexp=24001373,24007246&c=WEB&txp=6319224&n=0Q_whcin8aaAyw&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAO2fNxASeXmBtyRNV6heGFY-RUzBf3J6QNz0YWDJ6oJhAiA_WQdNYCjl51w5Ac0M1osvtUbTIbo65rDe34WAOhDMcQ==&sig=AOq0QJ8wRQIhAMkRmmxEs9XexjbaEl8C9P84CUDqjJ95lOzJJ9pv2zfQAiABBIt6SjdoE3l7Q5z9H314xKe2N1szFinFqEASDd8HsQ==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/user/xincaiten2001@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', NULL, N'user', NULL, N'PT2M34S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'OFdAYrQLMJ4', N'https://rr8---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1655910886&ei=ht2yYtnpM5O5igb25ZaACg&ip=203.205.26.81&id=o-AGSfExgf9xfpouPep9QeNlo0VIC1KKy2Cf_0tYX_OYeB&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,26&mn=sn-jhjup-nbol,sn-30a7rn76&ms=au,onr&mv=m&mvi=8&pl=23&initcwndbps=697500&spc=4ocVC2hwX8NnPfdc_S531rJsYDBTZ_A&vprv=1&mime=video/mp4&ns=UOHwFieZ4dMY05fzletO6iYG&gir=yes&clen=5944601&ratebypass=yes&dur=153.042&lmt=1653133924609963&mt=1655888931&fvip=5&fexp=24001373,24007246&c=WEB&txp=6319224&n=qUfT0ZYJXqEnOA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRgIhAO-xgcaACFIT6ijggHx-k2Chb3FyyYxiUiUC-60_8qELAiEA0wX7hJ2QDCkEHsJAAJEe4YVfNT6GfYnbjYVSzzzd7Dk=&sig=AOq0QJ8wRAIgB1rIoPq5dfmXt8g3rh2dUVtNNxBi-1CqYfcAvWOsphoCIGqN_M6tQv0YLTHWVc2dDOHkgYhH9poxJDaVIbWAqo90')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'P9mqCv1yhBE/admin/xincaiten2001@gmail.com', N'[Vietsub] Thời Không Sai Lệch - Ngải Thần |  错位时空 - 艾辰', N'Moah - Nhạc Trung Channel', N'Moah - Nhạc Trung Channel♪. Thời Không Sai Lệch - Ngải Thần Lyricist: Chu Nhân ( 周仁 ) Composer: Trương Bác Văn ( 张博文 ) ...', N'P9mqCv1yhBE0', N'adminP9mqCv1yhBE/admin/xincaiten2001@gmail.com', 1, N'PT3M31S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'P9mqCv1yhBE', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655862401&ei=ISCyYra5F8mPigbV_ZXYBA&ip=113.172.243.90&id=o-AKuKnmmN_cH8LIY0nZKroWy9vHInl4abjyNIdy5CzTOi&itag=18&source=youtube&requiressl=yes&mh=tY&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=1191250&spc=4ocVC3PsWTFq0EWRh7S23ekQ3X1QwOY&vprv=1&mime=video/mp4&ns=8qPb3EFymyzEVUNkvrAsU40G&gir=yes&clen=8420729&ratebypass=yes&dur=210.070&lmt=1612038984653185&mt=1655840451&fvip=4&fexp=24001373,24007246&c=WEB&txp=5538434&n=aNTYQEFfnPWbww&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhANSCnaEMrP5f4te95yNfRlZUY_lrBfp8sE0wPe04j-FMAiAXIx_tjmjgsO4rGq4nx34UtEVoH-WqBFoSNQ4YRxo0ew==&sig=AOq0QJ8wRgIhAM_-nKoQmSVIe53UYxvsgHB8y31Gwl9EiWz7fLQ89MaxAiEAhLUSEjGM_x6HNkwRbzxCSYahIkpbcm_ACzA7b9HjTV4=')
GO
INSERT [dbo].[VideoAdmin] ([id], [title], [author], [link], [vitrivideo], [loaivideo]) VALUES (N'1', N'ok', NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_AspNetUsers]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [fk_ps] FOREIGN KEY([idTheloai])
REFERENCES [dbo].[Theloai] ([idTheloai])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [fk_ps]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_AspNetUsers]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Theloai] FOREIGN KEY([idTheloai])
REFERENCES [dbo].[Theloai] ([idTheloai])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Theloai]
GO
