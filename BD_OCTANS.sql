Create Database bd_octans;
Use bd_octans;

Create Table Rol(
	Id_Rol int NOT NULL UNIQUE,
    Nombre_Rol varchar(45) NOT NULL UNIQUE,
    PRIMARY KEY (Id_Rol)
);

Create Table Usuario (
  Id_Usuario int NOT NULL UNIQUE AUTO_INCREMENT,
  Id_Rol int NOT NULL,
  Nombre_Usuario varchar(45) NOT NULL UNIQUE,
  Activo char(3) NOT NULL,
  PRIMARY KEY (Id_Usuario),
  FOREIGN KEY(Id_Rol) REFERENCES Rol(Id_Rol)
);

 Insert into Rol Values (1,'ADMINISTRADOR'), (2,'AUDITOR'), (3,'AUXILIAR');




 