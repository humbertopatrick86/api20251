<?php

namespace generic;

class Endpoint
{
    public $classe;
    public $execucao;

    public function __construct($classe, $execucao)
    {
        $this->classe = "controller\\" . $classe;
        $this->execucao = $execucao;
    }
}
