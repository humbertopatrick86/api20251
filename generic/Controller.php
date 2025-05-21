<?php

namespace generic;

class Controller
{
    private $rotas = null;
    public function __construct()
    {
        $this->rotas = new Rotas();
    }

    public function verificarChamadas($rota)
    {
        
        $retorno = $this->rotas->executar($rota);
        //se existe um retorno irá devolver em formato json
        if ($retorno) {
            header("Content-Type: application/json");
            $json = json_encode($retorno);
            echo $json;
        }
    }
}
