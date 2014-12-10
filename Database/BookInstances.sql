USE [RedGateDemo]
GO

/****** Object:  Table [dbo].[BookInstances]    Script Date: 12/10/2014 08:30:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BookInstances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[PricePaid] [money] NOT NULL,
 CONSTRAINT [PK_BookInstances_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[BookInstances]  WITH CHECK ADD  CONSTRAINT [FK_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO

ALTER TABLE [dbo].[BookInstances] CHECK CONSTRAINT [FK_BookId]
GO

ALTER TABLE [dbo].[BookInstances] ADD  CONSTRAINT [DF_BookInstances_PricePaid]  DEFAULT ((0.00)) FOR [PricePaid]
GO

