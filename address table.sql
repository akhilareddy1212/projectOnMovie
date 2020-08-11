USE [HVTClubDB]
GO

/****** Object:  Table [dbo].[tblAddress]    Script Date: 18-Nov-17 04:46:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[FirstName] [nvarchar](64) NOT NULL,
	[LastName] [nvarchar](64) NULL,
	[HomeNo] [nvarchar](16) NULL,
	[MobileNo] [nvarchar](16) NULL,
	[Email] [nvarchar](64) NULL,
	[Address1] [nvarchar](64) NULL,
	[Address2] [nvarchar](64) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zipcode] [nvarchar](32) NULL,
 CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([Id])
GO

ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblUser]
GO


