<?php

namespace App\Models;

use System\Model;

class AdsModel extends Model
{
     /**
     * Table name
     *
     * @var string
     */
    protected $table = 'ads';

     /**
     * Get Enabled Ads for the current page
     *
     * @return array
     */
     public function enabled()
     {
         $currentRoute = $this->route->getCurrentRouteUrl();

         $now = time();

         return $this->where('status=?', 'enabled')->fetchAll($this->table);
     }

     /**
     * Create New Ad
     *
     * @return void
     */
    public function create()
    {
        $image = $this->uploadImage();

        if ($image) {
            $this->data('image', $image);
        }

        $this->data('name', $this->request->post('name'))
             ->data('status', $this->request->post('status'))
             ->insert('ads');
    }

    
     /**
     * Update Ads Record By Id
     *
     * @param int $id
     * @return void
     */
    public function update($id)
    {

        $this->data('name', $this->request->post('name'))
             ->data('status', $this->request->post('status'))
             ->update('ads');
    }
}