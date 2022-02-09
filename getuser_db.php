<?php

/* Creación de la base de datos y la tabla necesaria para el ejemplo getuser.html y getuser.php */

/* Función para la conexión con BBDD w3s */

function conecta_db($dbname) {

/* Variables de configuración de la conexión con la base de datos */
  $user = "root";  // usuario con el que se va conectar con MySQL
  $pass = "";  // contraseña del usuario

  $host = "localhost";  // nombre o IP del host 

try {
      $conexion = new PDO("mysql:host=$host", $user, $pass);  //conectar con MySQL 
	
      $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  //Manejo de errores con PDOException
	
      return $conexion;  // devuelve la cadena de conexión a la BBDD
	
    } catch (PDOException $e) {  // Si hubieran errores de conexión, se captura un objeto de tipo PDOException
        print "<p>Error: No se pudo conectar con la BBDD $dbname.</p>\n";
        print "<p>Error: " . $e->getMessage() . "</p>\n";  // mensaje de excepción
        exit();
    }
}

$basedatos = "ajax_demo";  // nombre de la base de datos
$db = conecta_db($basedatos);


$db->query("CREATE DATABASE IF NOT EXISTS $basedatos");

// Tabla user en la base de datos ajax_demo
$tabla = "CREATE TABLE IF NOT EXISTS $basedatos.user (
		id INT PRIMARY KEY, 
		FirstName VARCHAR(10), 
		LastName VARCHAR (15), 
		Age INT, 
		Hometown VARCHAR(15),
		Job VARCHAR(20)
	)";

$db->query($tabla);

// Filas para la tabla ajax_demo.user
$datos = "INSERT INTO $basedatos.user (id, FirstName, LastName, Age, Hometown, Job)
 VALUES (1, 'Peter', 'Griffin', 41, 'Quahog', 'Brewery'),
	(2, 'Lois', 'Griffin', 40, 'Newport', 'Piano Teacher'),
	(3, 'Joseph', 'Swanson', 39, 'Quahog', 'Police Officer'),
	(4, 'Glenn', 'Quagmire', 41, 'Quahog', 'Pilot')";
$db->query($datos);

?>
