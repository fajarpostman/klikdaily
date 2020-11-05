<?php

require APPPATH . 'libraries/REST_Controller.php';

class Adjusment extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Adjust_model');
    }

    public function index_get()
    {
        $location_id = $this->get('location_id');
        if ($location_id == '')
        {
            $lokasi = $this->db->get('adjustment')->result();
        }
        else
        {
            $this->db->where('location_id', $location_id);
            $lokasi = $this->db->get('adjustment')->result();
        }
        $this->response($lokasi, 200);
    }

    public function update_put()
    {
        $response = $this->Adjust_model->update(
            $this->put('id'),
            $this->put('location_id'),
            $this->put('location_name'),
            $this->put('product'),
            $this->put('adjustment'),
            $this->put('stock_quantity'),
            $this->put('requests'),
            $this->put('adjusted'),
            $this->put('updated_at')
        );
        $this->response($response);
    }
}