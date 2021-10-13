<?php
session_start();
include_once('conexion.php');
var_dump($_POST);

if (isset($_POST['ConfirmarAsistencia'])) {
    # code...
    $database = new ConectarBD();
    $db = $database->open();
    try {
        $Id=$_POST['id'];

        $Confirmacion=$_POST['Confirmacion'];
      
        //code...
        //$id = $_GET['id'];
        //$nombrec = $_POST['nombrecontacto'];
        //$telefono = $_POST['celular'];
        //$correoc = $_POST['email'];
        //$direccionc = $_POST['direccion'];
        //$stmt = $db->prepare("INSERT INTO personas(Nombre,Telefono,Correo,Direccion) VALUES(:nombrecontacto,:celular,:email,:direccion)");

        
        $sql="UPDATE listapersonas SET lpsConfirmacion=$Confirmacion WHERE lspId=$Id";
        $_SESSION['message'] = ($db->exec($sql)) ? 'Datos actualizados correctamente' : 'Algo salio mal, no se pudo actualizar correcctamente';
    } catch (PDOException $e) {
        //throw $th;
        $_SESSION['message'] = $e->getMessage();
    }
    $database->close();
} else {
    # code...
    $_SESSION['message'] = 'Rellene el formulario';
}
header('location:index.php');
