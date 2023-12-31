USE [master]
GO
/****** Object:  Database [AmazePay]    Script Date: 25-12-2023 11:53:52 ******/
CREATE DATABASE [AmazePay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AmazePay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AmazePay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AmazePay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AmazePay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AmazePay] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AmazePay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AmazePay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AmazePay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AmazePay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AmazePay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AmazePay] SET ARITHABORT OFF 
GO
ALTER DATABASE [AmazePay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AmazePay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AmazePay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AmazePay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AmazePay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AmazePay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AmazePay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AmazePay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AmazePay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AmazePay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AmazePay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AmazePay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AmazePay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AmazePay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AmazePay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AmazePay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AmazePay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AmazePay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AmazePay] SET  MULTI_USER 
GO
ALTER DATABASE [AmazePay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AmazePay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AmazePay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AmazePay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AmazePay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AmazePay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AmazePay] SET QUERY_STORE = ON
GO
ALTER DATABASE [AmazePay] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AmazePay]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 25-12-2023 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Bankcode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([Id], [Username], [Password], [Bankcode]) VALUES (1, N'Lahulesh', N'QWERTY@123', N'123')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 25-12-2023 11:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_Login]
@Username Varchar(100),
@Password Varchar(100),
@Bankcode VARCHAR(10)

AS
BEGIN
	INSERT INTO Login(Username,Password,Bankcode)VALUES(@Username,@Password,@Bankcode);
END
GO
USE [master]
GO
ALTER DATABASE [AmazePay] SET  READ_WRITE 
GO
