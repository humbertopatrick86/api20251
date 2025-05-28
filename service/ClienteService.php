<?php
namespace service;

use dao\mysql\ClienteDAO;

class ClienteService extends ClienteDAO{
    public function listarCliente(){
        
        return parent::listar();
    }

    public function inserir($nome,$endereco){
        if(parent::inserir($nome,$endereco)){
            return "Dados Salvo com Sucesso!";
        }
        return null;
    }
    public function alterar($id, $nome, $endereco)
    {
        return parent::alterar($id,$nome,$endereco);
    }
    public function listarId($id)
    {
        return parent::listarId($id);
    }
}