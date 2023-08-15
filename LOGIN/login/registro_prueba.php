<?php
require 'vendor/autoload.php'; // Asegúrate de cargar el autoloader de Guzzle

use GuzzleHttp\Client;

// Datos del formulario de registro
$nombre = $_POST['registroNombre'];
$apellidos = $_POST['registroApellidos'];
$email = $_POST['registroEmail'];
$tel = $_POST['registroTel'];
$contrasena = $_POST['registroContraseña'];

// Datos de conexión a la base de datos
$host = 'localhost';
$usuario = 'root';
$contraseña = '';
$base_de_datos = 'sarsolu1_clientes';

// Conexión a la base de datos
$conexion = new mysqli($host, $usuario, $contraseña, $base_de_datos);

if ($conexion->connect_error) {
    die("Error de conexión a la base de datos: " . $conexion->connect_error);
}

//SENTENCIA A LA BD
$sql = "INSERT INTO datos (nombre, apellidos, email, tel, contrasena) VALUES ('$nombre', '$apellidos', '$email', '$tel', '$contrasena')";

if ($conexion->query($sql) === TRUE) {
    echo "Registro en la base de datos exitoso.<br>";
} else {
    echo "Error al registrar en la base de datos: " . $conexion->error . "<br>";
}

// Datos de la API de Moodle
$url = 'https://capestudiantil.com/cursos/webservice/rest/server.php';
$token = 'cced63b078f5e2e5fab3401710055bde'; // Reemplaza con tu token de acceso a la API de Moodle

$params = [
    'wstoken' => $token,
    'wsfunction' => 'core_user_create_users',
    'moodlewsrestformat' => 'json',
    'users' => [
        [
            'username' => $email,
            'password' => $contrasena,
            'firstname' => $nombre,
            'lastname' => $apellidos,
            'email' => $email,
            'phone1' => $tel,
        ],
    ],
];

$client = new Client();

try {
    $response = $client->post($url, [
        'form_params' => $params,
        'verify' => false, // Desactiva la verificación SSL (¡Cuidado! Esto no es seguro en producción)
    ]);

    $result = json_decode($response->getBody(), true);

    if (isset($result[0]['id'])) {
        // Registro en Moodle exitoso
        echo 'Registro en Moodle exitoso. ID del usuario en Moodle: ' . $result[0]['id'];
    } else {
        // Error en el registro en Moodle
        echo 'Error en el registro en Moodle. Detalles: ';
        print_r($result);
    }
} catch (\Exception $e) {
    // Manejar errores de Guzzle
    echo 'Error en la llamada a la API de Moodle: ' . $e->getMessage();
}

$conexion->close(); // Cierra la conexión a la base de datos
?>
