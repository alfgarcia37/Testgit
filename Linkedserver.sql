USE [master]
GO

/****** Object:  LinkedServer [GANDM_AZURE]    Script Date: 26/01/2021 10:30:05 ******/
EXEC master.dbo.sp_addlinkedserver @server = N'GANDM_AZURE', @srvproduct=N'', @provider=N'SQLNCLI', @datasrc=N'gandmdbs.database.windows.net', @catalog=N'gandm_afca'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'GANDM_AZURE',@useself=N'False',@locallogin=NULL,@rmtuser=N'gandmsa',@rmtpassword='########'

GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'GANDM_AZURE', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO


