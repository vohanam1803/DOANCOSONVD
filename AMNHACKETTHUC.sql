USE [AMNHAC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/27/2022 11:33:57 PM ******/
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
/****** Object:  Table [dbo].[BaiViet]    Script Date: 6/27/2022 11:33:57 PM ******/
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
	[image] [nvarchar](4000) NULL,
	[chedotimkiem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetVideoUrl]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[link]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[Playlist]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[Theloai]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[Video]    Script Date: 6/27/2022 11:33:58 PM ******/
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
/****** Object:  Table [dbo].[VideoAdmin]    Script Date: 6/27/2022 11:33:58 PM ******/
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

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4172, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'urn:tokens:facebook', N'EAAIR22nv6uEBANUvCSa00iTZAKlkZB9F9bq3cRlL5TZCwZAaypwpy5ZAacgDSJXZAjiJcvLZAq9yEBumEXDua9zW8zxRg2u5eEGxShXVhQkV9D0o1vHJE6hSXz7ph87ZB8KTvYD0aJQiPH9Ju417TQZBRlGWNx07VajebT0UOfrve74c3BUfsmMc4p5llsyYNrchJKZBF11G3DxCo7R4lbml4NNa1VKW68zrZAQi9b1lSkoPiup0Xk764ZBi')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'1809425052726446', N'a21827b4-01c8-4ed0-9846-b8a841f6212d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Avatar]) VALUES (N'2114ed80-ca9b-4eae-a95b-86e3339d2ffd', N'hong@gmail.com', 0, N'49df1b9ece7100827cac4104ebe66042', N'1e42369a-9e07-4085-a4a3-9cf826e916ef', NULL, 0, 0, NULL, 1, 0, N'hong@gmail.com', N'Lưu Sỏi Hồng', N'/Content/images/277246911_1746083735727245_3237405825520662426_n.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Avatar]) VALUES (N'3f5616b7-db12-45e9-afe7-1c1eaa738f11', N'viet@gmail.com', 0, N'80c8db73e189880f52c9b0b09d1888ac', N'ce18c946-2a91-44b0-9971-e7608ea47aed', NULL, 0, 0, NULL, 1, 0, N'viet@gmail.com', N'Đào Quốc Việt', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Avatar]) VALUES (N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'xincaiten2001@gmail.com', 0, NULL, N'749e680d-bf46-424f-ad56-8006047e10a2', NULL, 0, 0, NULL, 1, 0, N'xincaiten2001@gmail.com', N'Võ Hà Nam', N'/Content/images/JK3.jpg')
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (1, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'New My Post In Project And Mylife', N'Nam Nè', N'/Content/music/Ayueyue.mp4', N'CK', CAST(N'2022-06-22T01:45:20.477' AS DateTime), NULL, NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (2, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'Ngày đẹp trời', N'Ok!!', N'/Content/music/video-1655838686.mp4', N'CK', CAST(N'2022-06-22T02:12:10.973' AS DateTime), NULL, NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (5, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'U là trời', N'...', N'', N'CN', CAST(N'2022-06-22T13:44:34.813' AS DateTime), NULL, NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (8, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'Hello!!', N'....', N'', N'CK', CAST(N'2022-06-23T12:55:35.340' AS DateTime), N'/Content/images/JK3.jpg', NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (1011, N'2114ed80-ca9b-4eae-a95b-86e3339d2ffd', N'Test Âm Thanh ', N'Test Check!!', N'/Content/music/video-1656336700.mp4', N'CK', CAST(N'2022-06-27T20:35:09.843' AS DateTime), N'/Content/images/1624.jpg', NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (1012, N'2114ed80-ca9b-4eae-a95b-86e3339d2ffd', N'Test Âm Thanh ', N'AAAA', N'/Content/music/video-1655838686.mp4', N'CK', CAST(N'2022-06-27T20:50:00.953' AS DateTime), N'', NULL)
INSERT [dbo].[BaiViet] ([idPost], [UserId], [title], [Mota], [video], [chedo], [newday], [image], [chedotimkiem]) VALUES (1013, N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'Test Âm Thanh 2', N'BBB', N'/Content/music/video-1656338521.mp4', N'CK', CAST(N'2022-06-27T21:03:00.383' AS DateTime), N'', NULL)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
INSERT [dbo].[link] ([idtimkiem], [timkiem]) VALUES (N'/Content/music/Ayueyue.mp4', N'/Content/music/Ayueyue.mp4')
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (1, N'Châu Thâm', N'Châu Thâm là một nam ca sĩ người Trung Quốc nổi tiếng với chất giọng phản nam cao. Anh được biết đến nhiều nhất qua ca khúc《Đại ngư》 và《Hoa hồng và nai nhỏ》. Cả hai bài hát này đều nằm trong top 10 bài hát hay nhất năm của Giải Đông Phương Phong Vân Bảng 2016.', N'https://upload.wikimedia.org/wikipedia/commons/2/2f/Zhou_Shen%2C_Global_Chinese_Golden_Chart%2C_Beijng_2019_%28cropped%29.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (6, N'Khắc Việt', N'Khắc Việt tên thật là Nguyễn Khắc Việt là một ca sĩ, nhạc sĩ Việt Nam. Anh theo dòng nhạc pop-ballad.', N'https://photo-resize-zmp3.zadn.vn/w240_r1x1_jpeg/cover/0/8/2/2/08225973aa58f94e0e01a56fd701cc85.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (7, N'Chúc Tự Đan', N'Chúc Tự Đan là nữ diễn viên, ca sĩ, người mẫu người Trung Quốc. Tốt nghiệp Học viện Hý kịch Trung ương, hiện đang trực thuộc công ty giải trí Truyền thông Gia Hành.', N'https://i.ytimg.com/vi/RB--wXNwWfg/maxresdefault.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (9, N'Mỹ Tâm', N'Phan Thị Mỹ Tâm, thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên và giám khảo truyền hình người Việt Nam. Sinh ra tại Đà Nẵng, Mỹ Tâm sớm bộc lộ năng khiếu về âm nhạc và liên tiếp giành chiến thắng tại nhiều cuộc thi ca hát lớn nhỏ lúc còn ở độ tuổi thiếu niên.', N'https://nld.mediacdn.vn/2018/2/3/13-chot-15176700723471428987902.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (10, N'Hương Tràm', N'Phạm Thị Hương Tràm, thường được biết đến với nghệ danh Hương Tràm hay Charmy Pham, là một nữ ca sĩ nổi tiếng người Việt Nam. Cô là quán quân cuộc thi Giọng hát Việt mùa đầu tiên 2012. ', N'https://znews-stc.zdn.vn/static/topic/person/huongtram.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (12, N'Hoa Thần Vũ', N'Hoa Thần Vũ là ca sĩ người Trung Quốc, tốt nghiệp đại học tại học viện âm nhạc Vũ Hán, Hồ Bắc. Anh là ca sĩ đoạt quán quân toàn quốc của cuộc thi Superboy năm 2013 do đài truyền hình Hồ Nam tổ chức.', N'https://kenh14cdn.com/2019/8/13/htvanh1-15656954373121348483251.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (13, N'Đàm Vĩnh Hưng', N'Đàm Vĩnh Hưng tên khai sinh là Huỳnh Minh Hưng, còn có biệt danh Mr. Đàm, là một ca sĩ người Việt Nam. Anh đã giành được 2 giải Cống hiến. Bên cạnh thể loại nhạc trẻ, anh còn hát những ca khúc nhạc tiền chiến mang tính chất trữ tình cũng như nhạc Trịnh Công Sơn và nhạc vàng.', N'https://suckhoedoisong.qltns.mediacdn.vn/Images/phamquynh/2021/05/09/Ong%20hoang%20nhac%20Viet%20co%20suc%20hut%20khung%20khiep%20khi%20chuyen%20sang%20nghe%20ban%20hang%20online.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (17, N'Cúc Tịnh Y', N'Cúc Tịnh Y (giản thể: 鞠婧祎; phồn thể: 鞠婧禕; bính âm: Jū Jìngyī, sinh 18 tháng 6 năm 1994) là một nữ ca sĩ, diễn viên, vũ công người Trung Quốc.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg/440px-Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (18, N'Châu Kiệt Luân', N'Ông hoàng nhạc Pop Châu Á – Châu Kiệt Luân từng được biết đến với vai trò là nhạc sĩ. Tuy nhiên lại không đạt được thành công như mong đợi. Cho đến khi anh ra mắt album đầu tay “Kiệt Luân”. Mang danh tiếng của nam ca sĩ nổi tiếng Trung Quốc lan rộng khắp Đông Nam Á.', N'https://znews-photo.zadn.vn/w660/Uploaded/mdf_rkxrxd/2021_01_14/JC_4.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (19, N'Khánh Ly', N'Ca sĩ hát nhạc Trịnh', N'https://media-cdn-v2.laodong.vn/Storage/newsportal/2018/8/11/624644/IMG-8296-1559-153370.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (20, N'Đặng Tử Kỳ', N'Sinh ra và lớn lên trong 1 gia đình có truyền thống âm nhạc. Ngay từ nhỏ Tử Kỳ đã được dạy hát và chơi các loại nhạc cụ. 10 tuổi bắt đầu sáng tác, 13 tuổi đạt chứng chỉ cấp 8 Piano và trở thành ca sĩ nổi tiếng khi mới 16 tuổi. ', N'https://afamilycdn.com/150157425591193600/2020/6/10/6-15916991664791092695087-1591759532962-1591759533710973968047.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (21, N'Tiết Chí Khiêm', N'Cùng bước ra một cuộc thi hát và ký hợp đồng với cùng một công ty, Tiết Chí Khiêm giống như Trương Kiệt, cũng không có bước đầu thuận lợi. Mười năm sau cuộc thi, cái tên Tiết Chí Khiêm dần gây được chú ý khi trở thành hiện tượng mạng, chuyên viết truyện hài chế trên Weibo.', N'https://zmp3-photo-fbcrawler.zadn.vn/avatars/2/f/2f94388eeb15b2e78dc2aa7be3ae7eba_1425283980.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (22, N'Dịch Dương Thiên Tỉ', N'Thành viên cuối cùng, và cũng là em út của TFBOYS – Dịch Dương Thiên Tỉ. Ngay từ khi còn rất nhỏ, Thiên Tỉ đã là thí sinh quen mặt tại các cuộc thi tài năng, sở hữu nhiều biệt tài khác nhau như vũ đạo, thư pháp,…', N'https://ss-images.saostar.vn/pc/1606399619141/exoga4oueaascvm(1).jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (23, N'Lam Trường
', N'Lam Trường tên đầy đủ là Tiêu Lam Trường là một ca sĩ và diễn viên người Việt gốc Hoa. Anh thường được người hâm mộ gọi thân mật là "Anh Hai" và thường viết là "A2". ', N'https://avatar-ex-swe.nixcdn.com/singer/avatar/2018/06/07/7/2/a/a/1528338325576_600.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (24, N'Lý Hải', N'Nguyễn Văn Hải thường được biết đến với nghệ danh Lý Hải, là một ca sĩ, diễn viên, đạo diễn và nhà sản xuất người Việt Nam.', N'http://hopamchuan.com/node/get_artist_image/ly_hai', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (26, N'Sơn Tùng', N'Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, thời thơ ấu, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ.', N'https://upload.wikimedia.org/wikipedia/commons/f/fe/Son_Tung_M-TP_1_%282017%29.png', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (27, N'Vương Khôn', N'Vương Nguyên là nam ca sĩ, nhạc sĩ, diễn viên, MC người Trung Quốc, thành viên nhóm nhạc thần tượng Trung Quốc TFBOYS từ năm 2013. Anh được tạp chí Time bình chọn là một trong 30 thanh thiếu niên có sức ảnh hưởng nhất thế giới năm 2017. Vương Nguyên cũng là Đại sứ Quỹ Nhi đồng Liên Hợp Quốc từ năm 2018. ', N'https://kenh14cdn.com/2019/5/22/ae1-15584956882451968150708.jpeg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (28, N'Thái Từ Khôn', N'Thái Từ Khôn Là một nam ca sĩ, rapper, nhạc sĩ, nhà sản xuất âm nhạc, DJ người Trung Quốc, cựu thành viên, center kiêm trưởng nhóm Nine Percent, cựu thành viên nhóm ra mắt trong nhóm nhạc Nine Percent vào ngày 6/4/2018. Trước đó, Thái Từ Khôn đã tham gia Super Idol và được ra mắt cũng nhóm SWIN-S vào ngày 18/10/2016.', N'https://icdn.dantri.com.vn/thumb_w/770/2022/04/14/thai-tu-khon-2-1649930135855.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (29, N'Trương Bích Thần', N'Trương Bích Thần là một nữ ca sĩ người Trung Quốc. Năm 2012, cô giành chiến thắng trong cuộc thi K-Pop World Festival khu vực Trung Quốc, đồng thời đại diện cho nước này tại vòng chung kết của cuộc thi diễn ra tại Hàn Quốc và đoạt giải xuất sắc nhất.', N'https://znews-photo.zingcdn.me/w660/Uploaded/kbd_pilk/2021_01_23/truong_bich_than20.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (30, N'Đặng Tử Kỳ', N'Đặng Tử Kỳ được biết đến nghệ danh G.E.M. là viết tắt của "Get Everybody Moving", là một ca sĩ, nhạc sĩ Hồng Kông. Đĩa đơn đầu tay của G.E.M. đã giành được sự chú ý của đông đảo công chúng, giúp cô giành lấy giải thưởng "Nghệ sĩ mới xuất sắc nhất".', N'https://35express.org/wp-content/uploads/2022/01/dang-tu-ky-la-ai-1-35express.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (31, N'Trương Kiệt', N'Zhang Jie, còn được gọi là Jason Zhang, là một ca sĩ nhạc pop Trung Quốc. Anh ấy đã ra mắt bộ phim truyền hình của mình trong cuộc thi hát thực tế My Show năm 2004, mà anh ấy đã thắng. Đến cuối tháng 5 năm 2017, Zhang đã thu âm 12 album và tổ chức 34 buổi hòa nhạc.', N'https://35express.org/wp-content/uploads/2022/02/ca-si-truong-kiet-la-ai-1-35express.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (32, N'Tống Thiến', N'Tống Thiến, còn được biết đến với nghệ danh Victoria, là một ca sĩ, vũ công, người mẫu và diễn viên người Trung Quốc. Cô ra mắt công chúng vào năm 2009 dưới tư cách là một thành viên của nhóm nhạc nữ Hàn Quốc f(x).', N'https://afamilycdn.com/150157425591193600/2021/8/5/2299613723267714124824148181443759168901323n-162814336493922294173.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (33, N'Chi Dân', N'Chi Dân tên thật là Nguyễn Trung Hiếu là một nam ca sĩ kiêm sáng tác nhạc người Việt Nam. ', N'https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/11/14/f/5/c/0/1573701246190_600.jpg', 2)
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
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'0uGkMEuisKM/admin/xincaiten2001@gmail.com', N'Còn Lại Gì Sau Cơn Mưa | Hồ Quang Hiếu | Official MV', N'Hồ Quang Hiếu TV', N'Music Video Còn Lại Gì Sau Cơn Mưa performing by Hồ Quang Hiếu ☆ THEO DÕI Hồ Quang Hiếu ▷ Facebook: ...', N'0uGkMEuisKM0', N'admin0uGkMEuisKM/admin/xincaiten2001@gmail.com', 2, N'PT4M37S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'0uGkMEuisKM', N'https://rr4---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656346098&ei=koG5YrDZF42cgAP27bKQAg&ip=203.205.27.251&id=o-ACWINTVLMITRY2q7ryEIO8bVk6zQkwsMB9mepj36gQJ9&itag=18&source=youtube&requiressl=yes&mh=k6&mm=31,26&mn=sn-jhjup-nbol,sn-un57sn7y&ms=au,onr&mv=m&mvi=4&pl=23&initcwndbps=960000&spc=4ocVC4XhwdILYdWaB9V5QCvTnYVqS_w&vprv=1&mime=video/mp4&ns=bljwUaspdoXOlQSNTQ0pV54G&gir=yes&clen=20552892&ratebypass=yes&dur=276.758&lmt=1605923865719851&mt=1656324049&fvip=1&fexp=24001373,24007246&c=WEB&txp=1432434&n=aF0drzpKIrBmxg&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgVB7qvfKy_lvsYAD-MG2xXjWVgWFlUH4rdTFEXdCAvewCIQD-9H48lhyZ2gkm7G8vsKK1nvgYvoqWLunbh7QVtXp7Ew==&sig=AOq0QJ8wRgIhAJlVaSSZt9CHtAPMhfTQkW4TCNAjhRHqhKCa1vs0LdQKAiEAr9k75zIKz8Spok9ofWovZ5dGSopcRj4TjKPdXj5wGZM=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'42Uvxt7i5dw/admin/xincaiten2001@gmail.com', N'KHẮC VIỆT - Yêu Lại Từ Đầu [Official]', N'KHẮC VIỆT', N'MV MỚI - HOT NHẤT CỦA KHẮC VIỆT - SAO EM NỠ VẬY: https://youtu.be/gQXr_MtxjGM --------- © Copyright by VHD ...', N'42Uvxt7i5dw0', N'admin42Uvxt7i5dw/admin/xincaiten2001@gmail.com', 2, N'PT3M49S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'42Uvxt7i5dw', N'https://rr4---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656346085&ei=hYG5YrPgLMLsqQH1uL_YDA&ip=203.205.27.251&id=o-AHnEipswjrM7xnwSXNSQ8UYIK6rSM-HAb4nKVlh-_tS2&itag=18&source=youtube&requiressl=yes&mh=7Y&mm=31,26&mn=sn-jhjup-nbol,sn-un57sn7y&ms=au,onr&mv=m&mvi=4&pl=23&initcwndbps=907500&spc=4ocVC_Yw_6VejK71A346qhOpK2ppQQI&vprv=1&mime=video/mp4&ns=SV3lQUzYoBy9pHuFh0ugVKwG&gir=yes&clen=15633547&ratebypass=yes&dur=228.368&lmt=1575157648904840&mt=1656324290&fvip=1&fexp=24001373,24007246&c=WEB&txp=5531432&n=EEhTPQ6TCv96xQ&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgVn99Pez1JDfs1MnNm_kdO7VpWCzKJ4fECGSe6ocTQgYCIQDHUWivqdEPgzkcNKS8rj5OVMuZekh6BwB4Rzo1qwq7tQ==&sig=AOq0QJ8wRAIgCTAQiZPVj-mX-MyYB4_W6Od3TjzfsY-9Y1ErO-YrmJYCIDxLX8x4R9CeH45joGibHNSU7LrwAPK29KS1Kfzxdo8C')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'bu2FBl_GzEA/admin/xincaiten2001@gmail.com', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV', N'Khổng Tú Quỳnh Official', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV Dreamer Entertainment Executive Producer: Nguyễn Tường ...', N'bu2FBl_GzEA0', N'adminbu2FBl_GzEA/admin/xincaiten2001@gmail.com', 2, N'PT4M54S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'bu2FBl_GzEA', N'https://rr2---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656345369&ei=uX65Ys-nGcWMs8IP2PSCqAE&ip=203.205.27.251&id=o-AOVVStB3jMfI2cL0FUx8a9Sp-WqmVuLlTWuYqOSDyX2q&itag=18&source=youtube&requiressl=yes&mh=4y&mm=31%2C26&mn=sn-jhjup-nbol%2Csn-un57en7l&ms=au%2Conr&mv=m&mvi=2&pl=23&initcwndbps=748750&spc=4ocVC_fzITtgWTfBKwMDh9oZ0aOotVY&vprv=1&mime=video%2Fmp4&ns=71XlQhPTc7GupDAI_gj_DbwG&gir=yes&clen=13460688&ratebypass=yes&dur=293.175&lmt=1574970680971584&mt=1656323329&fvip=5&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=yCTB72ABCG5XUQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAJ2SNj3VaCugWfiVZwPUWJIV_SgXzDPJhdTQ6RRwdD82AiAwh-SqR1cAFIFFY8HZfdVE_Q6aHd5bIbXJdJKF6l0l6w%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAOfCuJdXXWNLbxZuxr3yWauLCD7pDmOLirh7XcE3kt-4AiEAleFUCvmjNMIqZ-3fwhsLDIXEL9qByOGAdnsCu5OV-R0%3D')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'bu2FBl_GzEA/user/xincaiten2001@gmail.com', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV', N'Khổng Tú Quỳnh Official', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV Dreamer Entertainment Executive Producer: Nguyễn Tường ...', NULL, N'user', NULL, N'PT4M54S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'bu2FBl_GzEA', N'https://rr2---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656362317&ei=7cC5YsTkEofCqQHA1IHgAg&ip=113.172.187.13&id=o-AAcfSBggjp7SW6WflggUKTZ4M_L1IKOOGx5THq1ipt7m&itag=18&source=youtube&requiressl=yes&mh=4y&mm=31%2C29&mn=sn-8qj-nbo67%2Csn-8qj-nbosz&ms=au%2Crdu&mv=m&mvi=2&pl=27&initcwndbps=1213750&spc=4ocVC_k9mFISua8jnqjEbwSZVdb16cI&vprv=1&mime=video%2Fmp4&ns=Az9WscJRIS4MeXDCj2f9EToG&gir=yes&clen=13460688&ratebypass=yes&dur=293.175&lmt=1574970680971584&mt=1656340372&fvip=4&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=y6EM65GHvFKRUg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhALuAluZAiP99ypHmQO5N1gYJszucwIs8_PuMW94YBJpHAiEA-OQ8iGlwwAU4JbhrASWL6Zt0p62UMF9c_PgAiykveUI%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOihOMsdI4aWFZZlsn54v5Grr1Q6RecNNaSBKOwIbHECAiAbrvFco8eXmLT9skCjke_JeaZe19AbfN1fpElIbSpgWA%3D%3D')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'DkEOyRx2cdw/user/xincaiten2001@gmail.com', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修', N'Ngưng Tuyết - 凝雪', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修 ---------------------------- Lyrics: Zǒng yǒurén jìdé nǐ ...', NULL, N'user', NULL, N'PT2M42S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'DkEOyRx2cdw', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656362320&ei=8MC5Yqu7HIGnqQGNw7PgCQ&ip=113.172.187.13&id=o-AGhT0RzcF8AueOVEKJHo3ScSrL6CsNULnj-yNGJxwpzk&itag=18&source=youtube&requiressl=yes&mh=lA&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pl=27&initcwndbps=1213750&spc=4ocVC3T_qa3WwyaFklrS6eKcWGzdBS4&vprv=1&mime=video/mp4&ns=oVt-g50BkJ8z6u6IO_HKDMMG&gir=yes&clen=4765618&ratebypass=yes&dur=161.657&lmt=1649687904772658&mt=1656340372&fvip=5&fexp=24001373,24007246&beids=23886209&c=WEB&txp=5319224&n=yZAEKhf_R72cKw&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAKJGWSbl0jbjHte1clfckNHEpXoU8JetdqgsUEmx1PiJAiAd5P0HXoSEem-_mNM2qxbpO4bp4IjzCXPYJcUAvqTDgg==&sig=AOq0QJ8wRgIhALAxHkw56NUMPKO-UcLwCjIQJuXal0lGeIDkaZzGjeCrAiEA3Fb5fP1zwAG-rK-FRoaqgu4MzYjwXV1IHAECB6umO54=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'eLOvu7fMHvY/admin/xincaiten2001@gmail.com', N'[Vietsub + Kara] Rất muốn bên cạnh anh 中國音樂 - Lưu tăng đồng', N'Kiều Bá Hùng', N'Rất muốn bên cạnh em nhưng em đâu biết? 演唱：劉增瞳作詞：孫莞作曲：孫莞編曲：呂宏斌混音：盧曉武_. Trans: Timer: Page ...', N'eLOvu7fMHvY0', N'admineLOvu7fMHvY/admin/xincaiten2001@gmail.com', 1, N'PT3M33S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'eLOvu7fMHvY', N'https://rr5---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656345064&ei=iH25YqTdMIfCqQHA1IHgAg&ip=203.205.27.251&id=o-AF-eliubIGEGSQnDfJ1p8bahLuAfri6f2U7TYI-UAkFF&itag=18&source=youtube&requiressl=yes&mh=XF&mm=31,26&mn=sn-jhjup-nbol,sn-un57en7s&ms=au,onr&mv=m&mvi=5&pl=23&initcwndbps=841250&spc=4ocVC-3nODjduAO-nzg1ilo8DmnC6-s&vprv=1&mime=video/mp4&ns=dbodClpou-A12agpZmjyVhMG&gir=yes&clen=10906943&ratebypass=yes&dur=213.019&lmt=1577574857803696&mt=1656323087&fvip=1&fexp=24001373,24007246&c=WEB&txp=5531432&n=XiNUqv0yYbULyA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRgIhAPVgpsFEa2PnSck5gj3wmiklO-kgJMhjxFt3OMG_ZmjEAiEA_YKEDinMlL6LjXe6x4DU1YLGPaOr1mTbF9Mm3vIcigI=&sig=AOq0QJ8wRgIhAKhMoPpQi0djadRKvVESSlN8c_CBhpFMVQOW6hZF3C7jAiEAs9Mf3VCptNfPgdAV5hwoSmVpz6mBA6F88eNAym1MOAA=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'FOEW93azS30/user/xincaiten2001@gmail.com', N'[VIETSUB + PINYIN] Sẽ Luôn Có Người Yêu Bạn | 总有人来爱你 | - Chỉ Tiêm Tiếu 指尖笑 【动态歌词】♩', N'Vivianan', N'Trên thế giới này sẽ luôn có người thấu hiểu bạn, trao cho bạn một tình yêu vô điều kiện Nếu như ở thời điểm hiện tại bạn vẫn ...', NULL, N'user', NULL, N'PT3M14S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'FOEW93azS30', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656362323&ei=88C5YqDUNIX8qAHCgp_ACQ&ip=113.172.187.13&id=o-AH5HDRt2jfI_mHcSuWjLbcH4p3zUinFWRKMbgIfbLwim&itag=18&source=youtube&requiressl=yes&mh=Pz&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbol7&ms=au,rdu&mv=m&mvi=3&pl=27&initcwndbps=1213750&spc=4ocVC5KDbzgyTMQicka8qCx1RbuoSdc&vprv=1&mime=video/mp4&ns=ie2av9bbEq21tHu28ybPwogG&gir=yes&clen=6167823&ratebypass=yes&dur=193.607&lmt=1641406928429880&mt=1656340372&fvip=8&fexp=24001373,24007246&c=WEB&txp=5319224&n=v0P_W_pLl5pcyA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhALe5qf-4zMH3bViU9Xqz0R1W4t9Ad-e7KANCPrPr3rXKAiBowsaMbpIJWw0rg_o2g5TnYfNRv4oklk7Pzh7Zp3UQAQ==&sig=AOq0QJ8wRgIhAIcYltuzl3bCVi1D6U5ITfcFXUj4LHh2CTykApTBbQ6-AiEA2s2bi1jzovsTE3S-TYpOjE75LZEUn8ICec9uvcrEWwA=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'O_5VqxldvzQ/admin/xincaiten2001@gmail.com', N'[Vietsub] Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã | 风过谢桃花 - 司南/汐音社', N'Moah - Nhạc Trung Channel', N'Moah - Nhạc Trung Channel♪. Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã Lyricist：Thập Nhị Huynh（十二兄) Composer：Tôn ...', N'O_5VqxldvzQ0', N'adminO_5VqxldvzQ/admin/xincaiten2001@gmail.com', 1, N'PT3M17S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'O_5VqxldvzQ', N'https://rr3---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656345398&ei=1n65Yq-BGP-A1d8P5_CngA8&ip=203.205.27.251&id=o-ALIJRC9J9QicfXX5pTZX3dnHbCqSrVZ7cZmR5gTy9ru2&itag=18&source=youtube&requiressl=yes&mh=N7&mm=31,26&mn=sn-jhjup-nbol,sn-un57en7s&ms=au,onr&mv=m&mvi=3&pl=23&initcwndbps=901250&spc=4ocVCwLU3ApliKu1vxSxHdbUywMfvlQ&vprv=1&mime=video/mp4&ns=ir_CRR7h7aeystyIiKtqdPYG&gir=yes&clen=8346835&ratebypass=yes&dur=196.069&lmt=1617538008657586&mt=1656323567&fvip=4&fexp=24001373,24007246&c=WEB&txp=5438434&n=5kgIRpKTcy36tA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRgIhALbr09coyQHkK17opQq_KISJzT4qF9keAPyhqz6AmYYSAiEArsFikI4P4uIpDEibceXifuOt9p4BP232Hq-hVPOayyg=&sig=AOq0QJ8wRQIhALuGbMX9avyS2glXA18fpMAvSGTPPGNqMMifL1U9jXr6AiBgppqodPgL0CkPads6EcjEbEIrG4VJsvhiaQX9CoiqHg==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'O_5VqxldvzQ/user/xincaiten2001@gmail.com', N'[Vietsub] Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã | 风过谢桃花 - 司南/汐音社', N'Moah - Nhạc Trung Channel', N'Moah - Nhạc Trung Channel♪. Gió Lay Nhành Đào - Tư Nam/ Tịch Âm Xã Lyricist：Thập Nhị Huynh（十二兄) Composer：Tôn ...', NULL, N'user', NULL, N'PT3M17S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'O_5VqxldvzQ', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656362326&ei=9sC5YpSQGIT4qAGS_IXACw&ip=113.172.187.13&id=o-AIaa2ejEyGwA7H62ILFS_yuj-MoF8AJofjkWCE7HS0Om&itag=18&source=youtube&requiressl=yes&mh=N7&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pl=27&initcwndbps=1213750&spc=4ocVC8tnvt1Uw3_vIRmxH6lxsKQRUsw&vprv=1&mime=video/mp4&ns=AqkQX7ekz1d9Sj_Oeix-joYG&gir=yes&clen=8346835&ratebypass=yes&dur=196.069&lmt=1617538008657586&mt=1656340372&fvip=3&fexp=24001373,24007246&c=WEB&txp=5438434&n=gUHIMHktbAg7Mw&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgZXe3SwUV3CRwndtsi8RXMFD1upEvRM_dTqNP38BdYDsCIQDCdFfFgUx5HmxPPLkPJXerLBtFh45loJmItj7Ah7X9wg==&sig=AOq0QJ8wRQIhAKumZKpJaOULSZCUCDEsr6M71XpSOMfaFsk9Icrg9X-rAiBvDuOsTHuo3-GImjMAcjmOZP1J7hJjE_4S8cgWzKuSMw==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/admin/xincaiten2001@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', N'OFdAYrQLMJ40', N'adminOFdAYrQLMJ4/admin/xincaiten2001@gmail.com', 1, N'PT2M34S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'OFdAYrQLMJ4', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655862483&ei=cyCyYpKBJtmD0-kPq_abCA&ip=113.172.243.90&id=o-APuqp4_ZUUbwkEbaRBPdFWbajeAq1nA3cY0MBeN8ttZL&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=992500&spc=4ocVCySgEfLORNkk7QCq2BSXygVLjWI&vprv=1&mime=video/mp4&ns=a9xHlmlq-iEJWgpwv-Q6L2sG&gir=yes&clen=5944601&ratebypass=yes&dur=153.042&lmt=1653133924609963&mt=1655840688&fvip=5&fexp=24001373,24007246&c=WEB&txp=6319224&n=7rkCkXZyBy61JA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgXONlyP3JgqXXlJF51VnkmJ3SkBKUA0urmHklbwkdMucCIQCfZgx8sqZAZTPdIusSUWbgOKxyEaJUBx5g4E8dpshvjg==&sig=AOq0QJ8wRQIgQxt2tgvAp7D4DFdRZkEeWgoV_zwnm042eP9tjIuxgzkCIQDnTytO6xI_YzIwt4hlgTcqDY9TSj71dIptsssCRFQw3A==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/user/hong@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', NULL, N'user', NULL, N'PT2M34S', N'2114ed80-ca9b-4eae-a95b-86e3339d2ffd', N'OFdAYrQLMJ4', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656368626&ei=ktm5YsXvMMzkqQG-5oPIBQ&ip=113.172.187.13&id=o-AFYdumKg6QL1yFrzn4fNKDep8krEk1WFy986STekmRbE&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=27&initcwndbps=973750&spc=4ocVC4ZLDgV5yjquxADJRj8Y3fz9kdE&vprv=1&mime=video/mp4&ns=szPFlLlzK0GM6Fc0QEdjyZ0G&gir=yes&clen=6952541&ratebypass=yes&dur=153.089&lmt=1656076156057961&mt=1656346613&fvip=5&fexp=24001373,24007246&c=WEB&txp=5438434&n=_1KhSnHUsQsD0Q&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRgIhAItv70f5HP9fH77TbrFy1IVVrFBQcgPn7NyjJTQeGDymAiEAuXSSx40q-k8tOXHuYE6az68gQt5Xf-IvODlr1HXG95I=&sig=AOq0QJ8wRgIhAKoIAbCi8PmFJOESC9WMqeKhhBxlPjN6B-IlS2FRZ3kmAiEAmagKe-7kCQxOeRpVvBrJjqnKRrcBBjQZZXeRIQ-i4GM=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'OFdAYrQLMJ4/user/xincaiten2001@gmail.com', N'pro - 等不來花開「我們的愛 就像秋葉等不到花開」【動態歌詞/PinyinLyrics】♪', N'ORT Music', N'ORT Music ♪. 等不來花開- pro 詞：不要再胖了詞：不要再胖了編曲：不要再胖了/果凍混音：阿良策劃：秦耍耍製作人：舒心愛就像 ...', NULL, N'user', NULL, N'PT2M34S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'OFdAYrQLMJ4', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1656362329&ei=-MC5YuTmOZiRqQHCj5OgCw&ip=113.172.187.13&id=o-AOlLdyJYWQJ39TIdx00UgCM-pzRBa5db43Y2okh2U9xa&itag=18&source=youtube&requiressl=yes&mh=Qr&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=27&initcwndbps=1213750&spc=4ocVC5N2IK0o_nlPjB5zif66caxuJxw&vprv=1&mime=video/mp4&ns=gZjoOr4Q6w3J19H5qEdcMTkG&gir=yes&clen=6952541&ratebypass=yes&dur=153.089&lmt=1656076156057961&mt=1656340372&fvip=5&fexp=24001373,24007246&c=WEB&txp=5438434&n=ZDIVpxlASm7x5Q&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgZbY_Tq-B3ggkRHLnDf0MiX4kYMJGburdenLlM1GjGjkCIQC_5RIm1Qx2KhATy0FAQgI_SiMHGAq2PByYPIFCNxS2AQ==&sig=AOq0QJ8wRQIgcN_afS3DCZ3ghTKjwu3NtC5_CjbHIADkI_dc3PwsX5UCIQCFf9_w-JLmoKlgpYqGqnc-Xx1EoNgaybm8mtw_m8lJOQ==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'P9mqCv1yhBE/admin/xincaiten2001@gmail.com', N'[Vietsub] Thời Không Sai Lệch - Ngải Thần |  错位时空 - 艾辰', N'Moah - Nhạc Trung Channel', N'Moah - Nhạc Trung Channel♪. Thời Không Sai Lệch - Ngải Thần Lyricist: Chu Nhân ( 周仁 ) Composer: Trương Bác Văn ( 张博文 ) ...', N'P9mqCv1yhBE0', N'adminP9mqCv1yhBE/admin/xincaiten2001@gmail.com', 1, N'PT3M31S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'P9mqCv1yhBE', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655862401&ei=ISCyYra5F8mPigbV_ZXYBA&ip=113.172.243.90&id=o-AKuKnmmN_cH8LIY0nZKroWy9vHInl4abjyNIdy5CzTOi&itag=18&source=youtube&requiressl=yes&mh=tY&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbo66&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=1191250&spc=4ocVC3PsWTFq0EWRh7S23ekQ3X1QwOY&vprv=1&mime=video/mp4&ns=8qPb3EFymyzEVUNkvrAsU40G&gir=yes&clen=8420729&ratebypass=yes&dur=210.070&lmt=1612038984653185&mt=1655840451&fvip=4&fexp=24001373,24007246&c=WEB&txp=5538434&n=aNTYQEFfnPWbww&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhANSCnaEMrP5f4te95yNfRlZUY_lrBfp8sE0wPe04j-FMAiAXIx_tjmjgsO4rGq4nx34UtEVoH-WqBFoSNQ4YRxo0ew==&sig=AOq0QJ8wRgIhAM_-nKoQmSVIe53UYxvsgHB8y31Gwl9EiWz7fLQ89MaxAiEAhLUSEjGM_x6HNkwRbzxCSYahIkpbcm_ACzA7b9HjTV4=')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'QqY4jFzycUY/admin/xincaiten2001@gmail.com', N'[Playlist] Nhạc Trung Hay Tháng 2/2022 || Ảo Ảnh (海市蜃楼) - Hứa Lam Tâm', N'Alice mai', N'', N'QqY4jFzycUY0', N'adminQqY4jFzycUY/admin/xincaiten2001@gmail.com', 1, N'PT28M36S', N'a21827b4-01c8-4ed0-9846-b8a841f6212d', N'QqY4jFzycUY', N'https://rr7---sn-jhjup-nbol.googlevideo.com/videoplayback?expire=1656345090&ei=on25Ypy5DYy8qQG4nYjQBQ&ip=203.205.27.251&id=o-ABX6d6mw3NcIHnguy6GhQNsadZX4J6HFruNjQlN218HJ&itag=18&source=youtube&requiressl=yes&mh=D7&mm=31,26&mn=sn-jhjup-nbol,sn-un57sn7y&ms=au,onr&mv=m&mvi=7&pl=23&initcwndbps=841250&spc=4ocVCxgICRhtcnFoH1jeixuwN5g3ljY&vprv=1&mime=video/mp4&ns=q8fEIJBjgeyCDtvXHNlAGLAG&gir=yes&clen=38294913&ratebypass=yes&dur=1715.072&lmt=1645109522162530&mt=1656323087&fvip=3&fexp=24001373,24007246&c=WEB&txp=5438434&n=a_exsnC5PJa3ZA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgFc53u4_YUFp4GkGz5JHUoYiiYvDlCzQQ83ZXBvo68tQCID_T7kx2dMUyY56pd2nj_LE0en1dorWs5Kc_M20ZeTuw&sig=AOq0QJ8wRQIgIFyZIMpBhX2NUDFLPoRXAbkOc4o3sGqgtXA0s0JV9AACIQCfKT6y6gSJsIMfNBzPRDM6Grh2867ORrnmiGH9cdQtzQ==')
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
