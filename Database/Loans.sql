USE [RedGateDemo]
GO

/****** Object:  Table [dbo].[Loans]    Script Date: 12/10/2014 08:30:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Loans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[FineIncurred] [money] NULL,
	[BookInstanceId] [int] NOT NULL,
	[Returned] [tinyint] NOT NULL,
	[FinePaid] [tinyint] NOT NULL,
 CONSTRAINT [PK_Loans_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [FK_BookInstanceId] FOREIGN KEY([BookInstanceId])
REFERENCES [dbo].[BookInstances] ([Id])
GO

ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [FK_BookInstanceId]
GO

ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [FK_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
GO

ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [FK_MemberId]
GO

ALTER TABLE [dbo].[Loans] ADD  CONSTRAINT [DF_Loans_Returned]  DEFAULT ((0)) FOR [Returned]
GO

ALTER TABLE [dbo].[Loans] ADD  CONSTRAINT [DF_Loans_FinePaid]  DEFAULT ((0)) FOR [FinePaid]
GO

