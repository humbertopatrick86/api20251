<?php
include "generic/Autoload.php";

use generic\Controller;
// entrada de dados
//verifica se o parametro do endpoint existe
if (isset($_GET["param"])) {
    $controller = new Controller();
    //chamada para verificar se o endpoint está público
    $controller->verificarChamadas($_GET["param"]);
}
