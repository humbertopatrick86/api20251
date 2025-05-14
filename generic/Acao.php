<?php

namespace generic;

class Acao
{

    const POST = "POST";
    const GET = "GET";
    const PUT = "PUT";
    const PATCH = "PATCH";
    const DELETE = "DELETE";

    private $endpoint;

    public function __construct($endpoint = [])
    {
       
        $this->endpoint = $endpoint;
    }

    public function executar()
    {
        $end = $this->endpointMetodo();
       
        if ($end) {
            $obj = new $end->classe();
          return  $obj->{$end->execucao}();
        }
        return null;
    }

    private function endpointMetodo()
    {
        return isset($this->endpoint[$_SERVER["REQUEST_METHOD"]]) ? $this->endpoint[$_SERVER["REQUEST_METHOD"]] : null;
    }

    private function getPost(){
        if($_POST){

        }
    }
}
