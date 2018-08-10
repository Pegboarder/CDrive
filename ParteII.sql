drop table if exists Película_Director_Observaciones;
drop table if exists Pelicula;
drop table if exists Director;


create table Director(
	idDirector smallint auto_increment,
    Nombre varchar(45),
    Fecha_Nacimiento date default null,
    Nacionalidad varchar(45),
    PRIMARY KEY(`idDirector`)
) engine = InnoDB;

create table Pelicula(
	idPelicula smallint auto_increment,
    Titulo varchar(45) not null,
    Año varchar(45) not null,
    Origen varchar(45) not null, 
    Color varchar(5) not null,
    Restricción tinyint(1) not null,
    Resumen varchar(500) not null,
    primary key(`idPelicula`)
) engine = InnoDB;

insert into pelicula(Titulo,Año,Origen,Color,Restricción,Resumen) values ("León: The Professional","1994","Inglés","Si","+18","Un asesino a sueldo, Léon (interpretado por el actor Jean Reno), se ve envuelto en un problema al salvarle la vida a una niña llamada Mathilda (Natalie Portman) que se encuentra comprando en el momento en que unos agentes corruptos de la división antinarcóticos del Departamento de Policía de la ciudad de Nueva York (NYPD) masacran en su propia casa a todos los miembros de su familia por problemas de droga.");

create table observaciones(
	idObservaciones smallint auto_increment,
    idPelicula smallint not null,
    idDirector smallint not null,
    PRIMARY KEY (`idObservaciones`),
  index `fk_Observaciones_Pelicula_idx` (`idPelicula` ASC),
  index `fk_Observaciones_Director1_idx` (`idDirector` ASC),
  constraint `fk_Observaciones_Pelicula`
    foreign key (`idPelicula`)
    references `carlos`.`Pelicula` (`idPelicula`)
    on delete no action
    on update no action,
  constraint `fk_Observaciones_Director1`
    foreign key (`idDirector`)
    references `carlos`.`Director` (`idDirector`)
    on delete no action
    on update no action
)engine = InnoDB;


select * from pelicula;
select * from observaciones;
describe observaciones;