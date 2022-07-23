CREATE DATABASE Uc12Sa3Er1
GO

USE Uc12Sa3Er1
GO

CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
)
GO

INSERT INTO Usuarios VALUES('obalala@email.com', 456789)
INSERT INTO Usuarios VALUES('obalala1@email.com', 456789)
INSERT INTO Usuarios VALUES('obalala2@email.com', 456789)
GO

SELECT * FROM Usuarios

SELECT Email, Senha, HASHBYTES('MD2', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('MD4', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('MD5', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA1', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA2_256', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA2_512', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
