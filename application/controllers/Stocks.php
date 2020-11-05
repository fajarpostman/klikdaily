<?php

require APPPATH . 'libraries/REST_Controller.php';

class Stocks extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Stocks_model');
    }

    public function index_get()
    {
        $reponse = $this->Stocks_model->stocks();
        $this->response($reponse);
    }

    public function update_put()
    {
        $response = $this->Karyawan_model->update(
            $this->put('id'),
            $this->put('nama'),
            $this->put('tgl_lahir'),
            $this->put('gaji'),
            $this->put('status')
        );
        $this->response($response);
    }
}