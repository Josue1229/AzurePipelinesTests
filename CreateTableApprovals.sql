USE [ApprovalsLog]
GO

/****** Object:  Table [dbo].[Approvals]    Script Date: 1/31/2023 1:51:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Approvals](
	[Id] [int] NOT NULL,
	[ApproverId] [varchar](250) NOT NULL,
	[ApproverName] [varchar](250) NOT NULL,
	[ApproverUniqueName] [varchar](250) NOT NULL,
	[Type] [varchar](250) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[ReleaseId] [int] NOT NULL,
	[ReleaseName] [varchar](250) NOT NULL,
	[ReleaseDefinitionId] [int] NOT NULL,
	[ReleaseDefinitionName] [varchar](250) NOT NULL,
	[ReleaseEnvironmentId] [int] NOT NULL,
	[ReleaseEnvironmentName] [varchar](250) NOT NULL,
	[Comments] [varchar](500) NULL
) ON [PRIMARY]
GO


