<?php

namespace generic;

class Rotas
{
    private $endpoints = [];

    public function __construct()
    {
        $this->endpoints = [
            "cliente" => new Acao([
                Acao::POST => new Endpoint("Cliente", "teste2"),
                Acao::GET => new Endpoint("Cliente", "teste")
            ])

        ];
    }

    public function executar($rota)
    {
        
        if (isset($this->endpoints[$rota])) {
          
            $endpoint = $this->endpoints[$rota];
            $dados =$endpoint->executar();
            $retorno = new Retorno();
            $retorno ->dados = $dados;
            return $retorno;
        }

        return null;
    }
}
