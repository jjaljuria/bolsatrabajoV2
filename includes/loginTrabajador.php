<?php
include("conexion.php");
session_start();

if(isset($_POST['correo']) && isset($_POST['contrasena']))
{
      $correo = mysqli_real_escape_string($conexion, $_POST['correo']);
      $contrasena = mysqli_real_escape_string($conexion, $_POST['contrasena']);

      $sql = "SELECT correo, nombre, idusuarios, esAdmin, apellido, contrasena FROM usuarios WHERE correo='$correo'";

      $resultado = mysqli_query($conexion,$sql);
      //obtenemos el numero de filas de la variable resultado, es decir el numero de filas que obtuvo la consulta
      $num_filas = mysqli_num_rows($resultado);
      if($num_filas == "1")
      {  
         session_unset();
         //almacena el resultado de la consulta en forma de array
         $data = mysqli_fetch_array($resultado);
         if(password_verify($contrasena, $data["contrasena"]))
         {
            $_SESSION['correo'] = $data['correo'];
            $_SESSION['nombre'] = $data['nombre'];
            $_SESSION['idusuarios'] = $data['idusuarios'];
            $_SESSION['esAdmin'] = $data['esAdmin'];
            $_SESSION['apellido'] = $data['apellido'];
   
            
            echo '1';
         }
        
      }
      else
      {
         echo "Error";
      }
 }
 else
 {
     echo 'Error2  ';
 }



 ?>


