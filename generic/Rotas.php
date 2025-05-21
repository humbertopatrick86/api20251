<?php

namespace generic;

class Rotas
{
    private $endpoints = [];

    public function __construct()
    {
        // rotas para o acesso as chamadas
        $this->endpoints = [
            "cliente" => new Acao([
                Acao::POST => new Endpoint("Cliente", "teste"),
                Acao::GET => new Endpoint("Cliente", "teste2")
            ])

        ];
    }

    public function executar($rota)
    {
        // verifica o array associativo se a rota existe
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
