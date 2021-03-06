USE [AMNHAC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/15/2022 3:21:47 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/15/2022 3:21:48 AM ******/
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetVideoUrl]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[link]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[Playlist]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[Theloai]    Script Date: 6/15/2022 3:21:48 AM ******/
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
/****** Object:  Table [dbo].[Video]    Script Date: 6/15/2022 3:21:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[id] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[author] [nvarchar](150) NULL,
	[link] [nvarchar](255) NULL,
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
/****** Object:  Table [dbo].[VideoAdmin]    Script Date: 6/15/2022 3:21:48 AM ******/
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

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (70, N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'urn:tokens:facebook', N'EAAIR22nv6uEBALJGg7VXBspcvGsHxeULoItkBxJm42TfdBjTzwE1ZAskTEogP8HfZA6aKklFCOPSQ6xk9d4zNtpZCIrfzH8QkVnjhTTF5zvYmybW3qZC0JuYjA0mFgCFPdWwRXvfhakQXzf0ZBHCeFFLIApEZB91q7pRfaoOL6dzYdH6b2lij7gkhnoZAz9KQ92Wd8HwgKTeG0kPw4wZAZAEf3rZC6VQuNYt8lUW4nnNiMbUoOZBfkuGdh9')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'1809425052726446', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'1dd006c0-f959-4a35-a562-6cac24c08460', N'quocviet@gmail.com', 0, N'AMTIzPjFPjbWmvowJydpof7qzbnDE+XfTqsXN0Wxrok3NPXDv9syxCm8nf6Pv9I9XQ==', N'a42363de-ce57-4a7b-bebf-691c215c01ca', NULL, 0, 0, NULL, 1, 0, N'quocviet@gmail.com', N'vietdeptrai')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'xincaiten2001@gmail.com', 0, N'ANIov8uv94mh81WDut6IeIeU3JwpDoK8foxwazD4UNjQv9os885GCkN3ce+9370iCQ==', N'8560d4eb-568a-4e88-a922-72534b70c591', NULL, 0, 0, NULL, 1, 0, N'xincaiten2001@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'c064dab6-1eff-41f4-8b53-5a3a8a72d473', N'hac@gmail.com', 0, N'AHDMEMqn4ZFnQhNTkgb5ojkDhVc7G3lZC3ZNHaFCCNLlDdgrfJjuM4wNCLiwSOptFg==', N'1eb26d49-6686-48cc-afed-c7c34fe528c0', NULL, 0, 0, NULL, 1, 0, N'hac@gmail.com', N'Hoàng Hạc')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'e39dadf2-20ff-4689-9da6-7f541af9b296', N'trantricute2806@gmail.com', 0, N'AH4DodCTTRAvxB6cjSf1UbdZr3y4eY2wiuQeOeLDg2OHYxn18dp+oHNymJPBQRQfyA==', N'77d405d3-2480-45f3-8d91-f172c4bf84c3', NULL, 0, 0, NULL, 1, 0, N'trantricute2806@gmail.com', N'Tri dep trai')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'e702572d-6bf4-4c3d-894d-783e01405587', N'viet@gmail.com', 0, N'AACSC3NBuo8/UeukuFyVtqmMpYKDd379tMbfOhMUiTBGfOqUydkK98Vv/dO0MjmX8A==', N'17107f34-4b43-4548-964d-177750b56ed0', NULL, 0, 0, NULL, 1, 0, N'viet@gmail.com', N'Đào Quốc Việt')
GO
INSERT [dbo].[link] ([idtimkiem], [timkiem]) VALUES (N'/Content/music/Ayueyue.mp4', N'/Content/music/Ayueyue.mp4')
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (1, N'A yue yue', N'Không có gì', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfAJhOdYIhDtaVGbWwx7OKITOsanEdcSPveQ&usqp=CAU', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (6, N'Khắc Việt', N'Mém có gì', N'https://photo-resize-zmp3.zadn.vn/w240_r1x1_jpeg/cover/0/8/2/2/08225973aa58f94e0e01a56fd701cc85.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (7, N'Diệp Lý', N'Xu xu', N'https://i.ytimg.com/vi/RB--wXNwWfg/maxresdefault.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (9, N'Võ Hà Nam', N'Nam Nè', N'/Content/images/JK2.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (10, N'Phan Thành Đạt', N'Đạt Nè', N'/Content/images/JK1.jpg', 2)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (12, N'Yuki Matsui', N'Nghệ Sĩ Nhật Bản', N'https://yt3.ggpht.com/6RSKQ6hC9k6TgMSZkErYwMU5-IyXVS2UsA3llYvVSVHlgo-ZdQX-V3s0rVK8BVcR7nTgAiD3OA=s900-c-k-c0x00ffffff-no-rj', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (13, N'A yue yue', N'Hà Nam Đẹp Trai', N'/Content/images/JK1.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (17, N'Cúc Tịnh Y', N'', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg/440px-Jujingyi-_C%C3%BAc_T%E1%BB%B7.jpg', 1)
INSERT [dbo].[Person] ([idPerson], [namePerson], [Mota], [hinhPerson], [idTheloai]) VALUES (18, N'Lady gaga', N'Nhac dinh cuar dinh', N'/Content/images/JK2.jpg', 2)
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
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'bu2FBl_GzEA/admin/xincaiten2001@gmail.com', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV', N'Khổng Tú Quỳnh Official', N'Khổng Tú Quỳnh - Mãi Mãi Là Một Lời Nói Dối ft. RIN9 | Official MV Dreamer Entertainment Executive Producer: Nguyễn Tường ...', N'bu2FBl_GzEA0', N'adminbu2FBl_GzEA/admin/xincaiten2001@gmail.com', 2, N'PT4M54S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'bu2FBl_GzEA', N'https://rr2---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655258270&ei=PuioYvinMpDngAPLwZOYAQ&ip=113.172.184.123&id=o-AKxsUP_yF0yQpzMa13p0qjHWnoqXYLDxZmnZUqd20ZaJ&itag=18&source=youtube&requiressl=yes&mh=4y&mm=31%2C29&mn=sn-8qj-nbo67%2Csn-8qj-nbosz&ms=au%2Crdu&mv=m&mvi=2&pl=23&spc=4ocVC3FYcJ9uico4aCbjJlY9r2aMxH8&vprv=1&mime=video%2Fmp4&ns=xYxJB-28L6afZDiVx9x6PBgG&gir=yes&clen=13460688&ratebypass=yes&dur=293.175&lmt=1574970680971584&mt=1655236165&fvip=4&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=yHhr8OWAjAWnmQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAOKiCTs80JbHxTLsPCk9hrTAeeOTVNgnKZe840b9uLSKAiEAtT0XzI4nKf5Jd9FhA3QMjyLNt0kFxbb_vs48VUcFzmY%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIgIMjnFA7ed3dNOZa8MwtQ7e4stxfddTDt4CdYdoNy26MCIQCh6WIkrPQROrbSVR3Fw_UFczgXST1guwQsSGJ9bhRwIg%3D%3D')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'DkEOyRx2cdw/admin/xincaiten2001@gmail.com', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修', N'Ngưng Tuyết - 凝雪', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修 ---------------------------- Lyrics: Zǒng yǒurén jìdé nǐ ...', N'DkEOyRx2cdw0', N'adminDkEOyRx2cdw/admin/xincaiten2001@gmail.com', 1, N'PT2M42S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'DkEOyRx2cdw', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655258011&ei=O-eoYtKgI9bmrQTb_p6QAQ&ip=113.172.184.123&id=o-AMGRcKpaBXZD_rTqeUOY4N1yHgCkG9vC6CHferdMXEyz&itag=18&source=youtube&requiressl=yes&mh=lA&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pl=23&spc=4ocVCyViQgYP-5w2fS6EC_ULvVWUpvw&vprv=1&mime=video/mp4&ns=1uSMtzZvtDUz5rr1OPxivlUG&gir=yes&clen=4765618&ratebypass=yes&dur=161.657&lmt=1649687904772658&mt=1655236165&fvip=5&fexp=24001373,24007246&c=WEB&txp=5319224&n=cE5TZTRCaRE0Jw&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAJqaoUBNi_e-o_gWhiKDjBe6niS7SowXvXub1Ys6TIwAAiEA7S6xdQt_PUahLInn9pUAjD6Y2nFAQM937CbY0IOa3Wg=&sig=AOq0QJ8wRAIgN5oDf6zCWpke-foTgUsOMJXGPTd0KWCb4QVYhl0HCT4CICU-ZwwL0OTsN7S3EpsV2sxm7vGlvWzSTCT36Y4jWo4Z')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'DkEOyRx2cdw/user/xincaiten2001@gmail.com', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修', N'Ngưng Tuyết - 凝雪', N'[Vietsub + Pinyin] Luôn có người, sẽ yêu anh - Mã Tu || 总有人，会爱你 - 马修 ---------------------------- Lyrics: Zǒng yǒurén jìdé nǐ ...', NULL, N'user', NULL, N'PT2M42S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'DkEOyRx2cdw', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655241245&ei=vaWoYo30Bs3BqAGG-4yoCQ&ip=113.172.184.123&id=o-AJSlIHA2dKbi0OWHrOPOPSG3jltB7MHcgojYqGhxGGX3&itag=18&source=youtube&requiressl=yes&mh=lA&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=1301250&spc=4ocVCzOU0yLC0PqaEUQ6lskpocgUZ0A&vprv=1&mime=video/mp4&ns=ywRhYr2wOtj-_q4FrqlagF8G&gir=yes&clen=4765618&ratebypass=yes&dur=161.657&lmt=1649687904772658&mt=1655219342&fvip=5&fexp=24001373,24007246&c=WEB&txp=5319224&n=Sr7YlwSCJPSl5w&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAP0xXfeJR0rctYDR2p0LSYS8FfD-AwNv8B09oZ92_7uWAiBru3Tz6pMrkb7R-o-yDit5oxUAbZqKGM-t1KkuxALnLQ==&sig=AOq0QJ8wRQIhAMfugV3eM-rn2LJxPCa0sHP_rVfXL_Y5qcA9e12k1qnLAiAG8N1XiXjJ4QlnGMR40dgK818JPPD5q86mYJqiejDmIQ==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'FeRHocQmcO4/admin/xincaiten2001@gmail.com', N'Vietsub - TikTok Chill ♪ Luôn Có Người Sẽ Yêu Anh - Mã Tu | 總有人, 會愛你 - 馬修 ♪ Giai Điệu Gây Nghiện Hay', N'Cloudy Music Vietsub ♪', N'Không yêu em thì hãy yêu cô gái khác và sẽ luôn luôn có người thay em yêu thương anh thật nhiều. Vậy nên nếu trong lòng anh ...', N'FeRHocQmcO40', N'adminFeRHocQmcO4/admin/xincaiten2001@gmail.com', 1, N'PT2M42S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'FeRHocQmcO4', N'https://rr1---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655258046&ei=XueoYuKUNcPNrQT2p6PwDA&ip=113.172.184.123&id=o-ADiZS6-ubPW5XvNtp8viRdNHRfTc81FYyUPxOD5ek-s7&itag=18&source=youtube&requiressl=yes&mh=JC&mm=31%2C29&mn=sn-8qj-nbo67%2Csn-8qj-nbol7&ms=au%2Crdu&mv=m&mvi=1&pcm2cms=yes&pl=23&spc=4ocVCyPWDrirdBV2jRqMsVy3thC-hKA&vprv=1&mime=video%2Fmp4&ns=zbIo6x5p_dGWY2PoCM2otE0G&gir=yes&clen=4430932&ratebypass=yes&dur=161.773&lmt=1649556328935874&mt=1655236165&fvip=5&fexp=24001373%2C24007246&c=WEB&txp=5319224&n=jAlGFqo_hXaBhQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgPvroSWL5ljR3qjQotRFtlaNWE2_mbt8przv_CvIPaiICIQChZT7hh_rq0xKv_SRvyBEG1_V4CwKperSl2tuPZ-EEOQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl&lsig=AG3C_xAwRAIgBlk24G6oGFu5VKsk8QNjSytOVii56fZI6IivX_w24lwCIDI-dhep6RSdOqjSM03UDdW5WkeG3w7hlLrmFGJmFkh_')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'FOEW93azS30/user/xincaiten2001@gmail.com', N'[VIETSUB + PINYIN] Sẽ Luôn Có Người Yêu Bạn | 总有人来爱你 | - Chỉ Tiêm Tiếu 指尖笑 【动态歌词】♩', N'Vivianan', N'Trên thế giới này sẽ luôn có người thấu hiểu bạn, trao cho bạn một tình yêu vô điều kiện Nếu như ở thời điểm hiện tại bạn vẫn ...', NULL, N'user', NULL, N'PT3M14S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'FOEW93azS30', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655241281&ei=4aWoYtaICIaTgQPsu4r4Dg&ip=113.172.184.123&id=o-AEFMZtgYWwny0zYWjQOpHWRvsrcdm2A1Pcm9ZMc4HVqq&itag=18&source=youtube&requiressl=yes&mh=Pz&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbol7&ms=au,rdu&mv=m&mvi=3&pl=21&initcwndbps=1301250&spc=4ocVCza8_f8T6gSmQltOxUizEVjhYZk&vprv=1&mime=video/mp4&ns=fj0nTBcrPgg92byaCGdyKPsG&gir=yes&clen=6167823&ratebypass=yes&dur=193.607&lmt=1641406928429880&mt=1655219342&fvip=8&fexp=24001373,24007246&c=WEB&txp=5319224&n=ivxabeWZObOAiA&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAKux4Q2oghm5tF4bhNDWTTCrjCWnIg6VDwbbIwwWzUeiAiBN-u9z_bHMySA6iX2SQGWNUZzDvwCAyaAPksQNOUC4Jg==&sig=AOq0QJ8wRQIhAMt40ofdVyZmz0xgGA6XCrPebXRSz55dsThgK3J05w5ZAiA5WheJ2DomhWkpftX-ke9JnDD3DtDRroHyP1ciZH_Pww==')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'kVT4kjuhMkk/admin/xincaiten2001@gmail.com', N'TOP 30 HIT NHẠC TRẺ VIỆT NAM TRIỆU VIEW TỪNG GÂY BÃO - ALBUM NHẠC TRẺ CHÀO 2022', N'Trạm Dừng Chân', N'TOP 30 HIT NHẠC TRẺ VIỆT NAM TRIỆU VIEW TỪNG GÂY BÃO - ALBUM NHẠC TRẺ CHÀO 2022 ✪ Follow Trạm Dừng Chân ...', N'kVT4kjuhMkk0', N'adminkVT4kjuhMkk/admin/xincaiten2001@gmail.com', 2, N'PT2H15M55S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'kVT4kjuhMkk', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655258675&ei=0-moYtv2E5uolQSErJXYDQ&ip=113.172.184.123&id=o-AK3Kg6j--48XLg-KgrFKmspeCSBjwqBnZwfrDZNnqETt&itag=18&source=youtube&requiressl=yes&mh=PH&mm=31%2C29&mn=sn-8qj-nbo67%2Csn-8qj-nbosz&ms=au%2Crdu&mv=m&mvi=3&pl=23&spc=4ocVC4YBKgbViISpo8IuUGt8IXB6MPs&vprv=1&mime=video%2Fmp4&ns=KvdxOBuW1xLRwZnIH2sXjgcG&gir=yes&clen=186332691&ratebypass=yes&dur=8154.128&lmt=1648146416723356&mt=1655236643&fvip=4&fexp=24001373%2C24007246&c=WEB&txp=4438434&n=A4WMw3BD3p1TZg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgfuMN0KAAgCtVOdX-v94dTGiHA-NilZuJjlH6wS8w1M4CICw_bv_zcglW0VYFiZo0CL8SnKz-4R5s29QO_h1UulHJ&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIhANuAEd4q765pe9cDqEnffx5_o9vP0ZVGCqS7KN2RYhHeAiBqTRmsoPX7wMSCqihv4DYQBF6akm8Z4gEqR8U6_0yrHQ%3D%3D')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'QqY4jFzycUY/admin/xincaiten2001@gmail.com', N'[Playlist] Nhạc Trung Hay Tháng 2/2022 || Ảo Ảnh (海市蜃楼) - Hứa Lam Tâm', N'Alice mai', N'', N'QqY4jFzycUY0', N'adminQqY4jFzycUY/admin/xincaiten2001@gmail.com', 1, N'PT28M36S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'QqY4jFzycUY', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655257963&ei=C-eoYs2-CdaTgQO6_qLIDg&ip=113.172.184.123&id=o-AG2hpofwOaK6MgPyU6wEY3moGe4unLV2T3WcOJtzurT9&itag=18&source=youtube&requiressl=yes&mh=D7&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pcm2cms=yes&pl=23&spc=4ocVCy5kMnZVcBCbSPa9mhIOVDx8nD4&vprv=1&mime=video/mp4&ns=rQcAXr4843MTMMcjYqnBeJ0G&gir=yes&clen=38294913&ratebypass=yes&dur=1715.072&lmt=1645109522162530&mt=1655236165&fvip=7&fexp=24001373,24007246&c=WEB&txp=5438434&n=AjfKU5vqutt3aw&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIhAJpPWfyoGpYhra0SXXgqet2vRY1K0gkoUM-Zzig7l3pzAiBnNooVpQfkqld5cAEH4rQnNn9Ft-EHVY_q520qFfEOyg==&sig=AOq0QJ8wRAIgRVVdtutHTGeIQcniElcLe-VGurIqaJs_VIMHwcvPY8wCIAj2V_Fp8vo-T9wU-GTt27O3dFr9EcXBG_euAZ3QONbt')
INSERT [dbo].[Video] ([id], [title], [author], [link], [vitrivideo], [loaivideo], [idTheloai], [duration], [UserId], [HinhNguonVideo], [NguonVideo]) VALUES (N'QqY4jFzycUY/user/xincaiten2001@gmail.com', N'[Playlist] Nhạc Trung Hay Tháng 2/2022 || Ảo Ảnh (海市蜃楼) - Hứa Lam Tâm', N'Alice mai', N'', NULL, N'user', NULL, N'PT28M36S', N'52ac2479-c2eb-492f-9970-bb49f2a8b33e', N'QqY4jFzycUY', N'https://rr3---sn-8qj-nbo67.googlevideo.com/videoplayback?expire=1655259274&ei=KuyoYu22E8mPigbBrpegBg&ip=113.172.184.123&id=o-AKE_Hzw_RECUlRaq_dl3pCyAXMx2Hxe9HzGfBVQu6FrQ&itag=18&source=youtube&requiressl=yes&mh=D7&mm=31,29&mn=sn-8qj-nbo67,sn-8qj-nbosz&ms=au,rdu&mv=m&mvi=3&pl=23&initcwndbps=1197500&spc=4ocVCzDnd8N7btEiBaDEZaQBxt7Nmws&vprv=1&mime=video/mp4&ns=TF92B7e0kYV_eg90y9ezJDcG&gir=yes&clen=38294913&ratebypass=yes&dur=1715.072&lmt=1645109522162530&mt=1655237355&fvip=7&fexp=24001373,24007246&c=WEB&txp=5438434&n=bacUsKLkl1YYfQ&sparams=expire,ei,ip,id,itag,source,requiressl,spc,vprv,mime,ns,gir,clen,ratebypass,dur,lmt&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgZqHLEXL0uRNElXjFGGFtdotfgps0j1Stw6Lr6WjS9ukCIQDpj-DVQMnCB8fCZK46TC1NtjWJra61xzAgc7Hr4vGzxw==&sig=AOq0QJ8wRgIhAKg1M8HNIoTIy37lrLsciIN0SvYmqbyCC94Lz8z0VbKsAiEA_0tpIBqCU47XzJ2CGwO9HMnFz_8W8r2TwgNafDoKDlM=')
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
