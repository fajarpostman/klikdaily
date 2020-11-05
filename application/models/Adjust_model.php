<?php

class Adjust_model extends CI_Model
{
    public function empty_response()
    {
        $response['status'] = 502;
        $response['error'] = true;
        $response['message'] = 'Field tidak boleh kosong';
        return $response;
    }

    public function adjust()
    {
        $adjust = $this->db->get("adjustment")->result();
        $response['status'] = 200;
        $response['error'] = false;
        $response['adjustment'] = $adjust;
        return $response;
    }

    public function update($id,$location_id,$nama,$produk,$adjustment,$stok,$req,$adjust,$updated)
    {
        if ($id == '' || empty($location_id) || empty($nama) || empty($produk) || empty($adjustment) || empty($stok) || empty($req) || empty($adjust) || empty($updated))
        {
            return $this->empty_response();
        }
        else
        {
            $where = array(
                "id" => $id
            );
            $set = array(
                "location_id" => $location_id,
                "location_name" => $nama,
                "product" => $produk,
                "adjustment" => $adjustment,
                "stock_quantity" => $stok,
                "requests" => $req,
                "adjusted" => $adjust,
                "updated_at" => $updated
            );
            $this->db->where($where);
            $update = $this->db->update("adjustment",$set);
            if ($update)
            {
                $response['status']=200;
                $response['error']=false;
                $response['message']='Data Berhasil Diubah.';
                return $response;
            }
            else
            {
                $response['status'] = 200;
                $response['error'] = true;
                $response['message'] = 'Data Tidak Dapat Berhasil Diubah.';
                return $response;
            }
        }
    }
}