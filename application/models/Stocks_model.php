<?php

class Stocks_model extends CI_Model
{
    public function empty_response()
    {
        $response['status'] = 502;
        $response['error'] = true;
        $response['message'] = 'Field tidak boleh kosong';
        return $response;
    }

    public function stocks()
    {
        $view = $this->db->get("stocks")->result();
        $response['status'] = 200;
        $response['error'] = false;
        $response['stocks'] = $view;
        return $response;
    }
}