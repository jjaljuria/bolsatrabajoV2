<?php
include("conexion.php");

session_start();
$idempresa = $_SESSION['idempresa'];
$idusuario = $_POST["id"];
$idpropuesta = $_POST["idpropuesta"];

// $query = "INSERT INTO notificaciones (idempresa, idusuario, idpropuesta) VALUES ('$idempresa', '$idusuario', '$idpropuesta') ";
// mysqli_query($conexion,$query) or die(mysqli_error($conexion).$query);

// if(!$query)
//      {
//      die("la consulta fallo");
//     }
    

//     echo "exito";

$sql = "SELECT COUNT(*) as cantidad FROM notificaciones WHERE idempresa='$idempresa' AND idusuario='$idusuario' AND idpropuesta='$idpropuesta'";
$res = mysqli_query($conexion, $sql);
$data = mysqli_fetch_array($res);
if($data["cantidad"] > 0)
{
   echo "no insertado";
}
else{
     $query = "INSERT INTO notificaciones (idempresa, idusuario, idpropuesta) VALUES ('$idempresa', '$idusuario', '$idpropuesta') ";
     mysqli_query($conexion,$query) or die(mysqli_error($conexion).$query);
     echo "insertado";
}

?>
