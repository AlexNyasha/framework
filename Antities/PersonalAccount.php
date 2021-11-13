<?php

class PersonalAccount
{
    protected $AccountNumber;
    protected $ApartmentArea;
    public function __construct($AccountNumber, $post,)
    {
        $this->$AccountNumber = $get;
        $this->$ApartmentArea = $post;
        $this->originalServer = $server;

        $this->method = $server['REQUEST_METHOD'];
        $this->path = $server['PATH_INFO'];
    }
}