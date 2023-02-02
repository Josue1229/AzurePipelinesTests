USE [master]
GO

/****** Object:  Database [ApprovalsLog]    Script Date: 1/31/2023 1:49:49 PM ******/
CREATE DATABASE [ApprovalsLog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApprovalsLog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ApprovalsLog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApprovalsLog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ApprovalsLog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApprovalsLog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ApprovalsLog] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ApprovalsLog] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ApprovalsLog] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ApprovalsLog] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ApprovalsLog] SET ARITHABORT OFF 
GO

ALTER DATABASE [ApprovalsLog] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ApprovalsLog] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ApprovalsLog] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ApprovalsLog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ApprovalsLog] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ApprovalsLog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ApprovalsLog] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ApprovalsLog] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ApprovalsLog] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ApprovalsLog] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ApprovalsLog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ApprovalsLog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ApprovalsLog] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ApprovalsLog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ApprovalsLog] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ApprovalsLog] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ApprovalsLog] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ApprovalsLog] SET RECOVERY FULL 
GO

ALTER DATABASE [ApprovalsLog] SET  MULTI_USER 
GO

ALTER DATABASE [ApprovalsLog] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ApprovalsLog] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ApprovalsLog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ApprovalsLog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ApprovalsLog] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ApprovalsLog] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ApprovalsLog] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ApprovalsLog] SET  READ_WRITE 
GO

