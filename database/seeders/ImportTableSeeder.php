<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ImportTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = array(
            array('id' => '1', 'parent_id' => NULL, 'order' => '1', 'name' => 'Category 1', 'slug' => 'category-1', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '2', 'parent_id' => NULL, 'order' => '1', 'name' => 'Category 2', 'slug' => 'category-2', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43')
        );

        foreach ($categories as $category) {
            DB::table('categories')->insert($category);
        }

        $data_types = array(
            array('id' => '1', 'name' => 'users', 'slug' => 'users', 'display_name_singular' => 'User', 'display_name_plural' => 'Users', 'icon' => 'voyager-person', 'model_name' => 'TCG\\Voyager\\Models\\User', 'policy_name' => 'TCG\\Voyager\\Policies\\UserPolicy', 'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:36:42'),
            array('id' => '2', 'name' => 'menus', 'slug' => 'menus', 'display_name_singular' => 'Menu', 'display_name_plural' => 'Menus', 'icon' => 'voyager-list', 'model_name' => 'TCG\\Voyager\\Models\\Menu', 'policy_name' => NULL, 'controller' => '', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:36:42'),
            array('id' => '3', 'name' => 'roles', 'slug' => 'roles', 'display_name_singular' => 'Role', 'display_name_plural' => 'Roles', 'icon' => 'voyager-lock', 'model_name' => 'TCG\\Voyager\\Models\\Role', 'policy_name' => NULL, 'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:36:42'),
            array('id' => '4', 'name' => 'categories', 'slug' => 'categories', 'display_name_singular' => 'Category', 'display_name_plural' => 'Categories', 'icon' => 'voyager-categories', 'model_name' => 'TCG\\Voyager\\Models\\Category', 'policy_name' => NULL, 'controller' => '', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '5', 'name' => 'posts', 'slug' => 'posts', 'display_name_singular' => 'Post', 'display_name_plural' => 'Posts', 'icon' => 'voyager-news', 'model_name' => 'TCG\\Voyager\\Models\\Post', 'policy_name' => 'TCG\\Voyager\\Policies\\PostPolicy', 'controller' => '', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '6', 'name' => 'pages', 'slug' => 'pages', 'display_name_singular' => 'Page', 'display_name_plural' => 'Pages', 'icon' => 'voyager-file-text', 'model_name' => 'TCG\\Voyager\\Models\\Page', 'policy_name' => NULL, 'controller' => '', 'description' => '', 'generate_permissions' => '1', 'server_side' => '0', 'details' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '7', 'name' => 'products', 'slug' => 'products', 'display_name_singular' => 'Product', 'display_name_plural' => 'Products', 'icon' => NULL, 'model_name' => 'App\\Models\\Product', 'policy_name' => NULL, 'controller' => NULL, 'description' => NULL, 'generate_permissions' => '1', 'server_side' => '0', 'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:49:19')
        );


        foreach ($data_types as $data_type) {
            DB::table('data_types')->insert($data_type);
        }


        $data_rows = array(
            array('id' => '1', 'data_type_id' => '1', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '2', 'data_type_id' => '1', 'field' => 'name', 'type' => 'text', 'display_name' => 'Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '2'),
            array('id' => '3', 'data_type_id' => '1', 'field' => 'email', 'type' => 'text', 'display_name' => 'Email', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '3'),
            array('id' => '4', 'data_type_id' => '1', 'field' => 'password', 'type' => 'password', 'display_name' => 'Password', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '1', 'add' => '1', 'delete' => '0', 'details' => NULL, 'order' => '4'),
            array('id' => '5', 'data_type_id' => '1', 'field' => 'remember_token', 'type' => 'text', 'display_name' => 'Remember Token', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '5'),
            array('id' => '6', 'data_type_id' => '1', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '6'),
            array('id' => '7', 'data_type_id' => '1', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '7'),
            array('id' => '8', 'data_type_id' => '1', 'field' => 'avatar', 'type' => 'image', 'display_name' => 'Avatar', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '8'),
            array('id' => '9', 'data_type_id' => '1', 'field' => 'user_belongsto_role_relationship', 'type' => 'relationship', 'display_name' => 'Role', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '0', 'details' => '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 'order' => '10'),
            array('id' => '10', 'data_type_id' => '1', 'field' => 'user_belongstomany_role_relationship', 'type' => 'relationship', 'display_name' => 'voyager::seeders.data_rows.roles', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '0', 'details' => '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 'order' => '11'),
            array('id' => '11', 'data_type_id' => '1', 'field' => 'settings', 'type' => 'hidden', 'display_name' => 'Settings', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '12'),
            array('id' => '12', 'data_type_id' => '2', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '13', 'data_type_id' => '2', 'field' => 'name', 'type' => 'text', 'display_name' => 'Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '2'),
            array('id' => '14', 'data_type_id' => '2', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '3'),
            array('id' => '15', 'data_type_id' => '2', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '4'),
            array('id' => '16', 'data_type_id' => '3', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '17', 'data_type_id' => '3', 'field' => 'name', 'type' => 'text', 'display_name' => 'Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '2'),
            array('id' => '18', 'data_type_id' => '3', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '3'),
            array('id' => '19', 'data_type_id' => '3', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '4'),
            array('id' => '20', 'data_type_id' => '3', 'field' => 'display_name', 'type' => 'text', 'display_name' => 'Display Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '5'),
            array('id' => '21', 'data_type_id' => '1', 'field' => 'role_id', 'type' => 'text', 'display_name' => 'Role', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '9'),
            array('id' => '22', 'data_type_id' => '4', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '23', 'data_type_id' => '4', 'field' => 'parent_id', 'type' => 'select_dropdown', 'display_name' => 'Parent', 'required' => '0', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 'order' => '2'),
            array('id' => '24', 'data_type_id' => '4', 'field' => 'order', 'type' => 'text', 'display_name' => 'Order', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"default":1}', 'order' => '3'),
            array('id' => '25', 'data_type_id' => '4', 'field' => 'name', 'type' => 'text', 'display_name' => 'Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '4'),
            array('id' => '26', 'data_type_id' => '4', 'field' => 'slug', 'type' => 'text', 'display_name' => 'Slug', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"slugify":{"origin":"name"}}', 'order' => '5'),
            array('id' => '27', 'data_type_id' => '4', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '0', 'read' => '1', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '6'),
            array('id' => '28', 'data_type_id' => '4', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '7'),
            array('id' => '29', 'data_type_id' => '5', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '30', 'data_type_id' => '5', 'field' => 'author_id', 'type' => 'text', 'display_name' => 'Author', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '0', 'delete' => '1', 'details' => NULL, 'order' => '2'),
            array('id' => '31', 'data_type_id' => '5', 'field' => 'category_id', 'type' => 'text', 'display_name' => 'Category', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '0', 'details' => NULL, 'order' => '3'),
            array('id' => '32', 'data_type_id' => '5', 'field' => 'title', 'type' => 'text', 'display_name' => 'Title', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '4'),
            array('id' => '33', 'data_type_id' => '5', 'field' => 'excerpt', 'type' => 'text_area', 'display_name' => 'Excerpt', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '5'),
            array('id' => '34', 'data_type_id' => '5', 'field' => 'body', 'type' => 'rich_text_box', 'display_name' => 'Body', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '6'),
            array('id' => '35', 'data_type_id' => '5', 'field' => 'image', 'type' => 'image', 'display_name' => 'Post Image', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 'order' => '7'),
            array('id' => '36', 'data_type_id' => '5', 'field' => 'slug', 'type' => 'text', 'display_name' => 'Slug', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 'order' => '8'),
            array('id' => '37', 'data_type_id' => '5', 'field' => 'meta_description', 'type' => 'text_area', 'display_name' => 'Meta Description', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '9'),
            array('id' => '38', 'data_type_id' => '5', 'field' => 'meta_keywords', 'type' => 'text_area', 'display_name' => 'Meta Keywords', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '10'),
            array('id' => '39', 'data_type_id' => '5', 'field' => 'status', 'type' => 'select_dropdown', 'display_name' => 'Status', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 'order' => '11'),
            array('id' => '40', 'data_type_id' => '5', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '12'),
            array('id' => '41', 'data_type_id' => '5', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '13'),
            array('id' => '42', 'data_type_id' => '5', 'field' => 'seo_title', 'type' => 'text', 'display_name' => 'SEO Title', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '14'),
            array('id' => '43', 'data_type_id' => '5', 'field' => 'featured', 'type' => 'checkbox', 'display_name' => 'Featured', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '15'),
            array('id' => '44', 'data_type_id' => '6', 'field' => 'id', 'type' => 'number', 'display_name' => 'ID', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '1'),
            array('id' => '45', 'data_type_id' => '6', 'field' => 'author_id', 'type' => 'text', 'display_name' => 'Author', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '2'),
            array('id' => '46', 'data_type_id' => '6', 'field' => 'title', 'type' => 'text', 'display_name' => 'Title', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '3'),
            array('id' => '47', 'data_type_id' => '6', 'field' => 'excerpt', 'type' => 'text_area', 'display_name' => 'Excerpt', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '4'),
            array('id' => '48', 'data_type_id' => '6', 'field' => 'body', 'type' => 'rich_text_box', 'display_name' => 'Body', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '5'),
            array('id' => '49', 'data_type_id' => '6', 'field' => 'slug', 'type' => 'text', 'display_name' => 'Slug', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 'order' => '6'),
            array('id' => '50', 'data_type_id' => '6', 'field' => 'meta_description', 'type' => 'text', 'display_name' => 'Meta Description', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '7'),
            array('id' => '51', 'data_type_id' => '6', 'field' => 'meta_keywords', 'type' => 'text', 'display_name' => 'Meta Keywords', 'required' => '1', 'browse' => '0', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '8'),
            array('id' => '52', 'data_type_id' => '6', 'field' => 'status', 'type' => 'select_dropdown', 'display_name' => 'Status', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 'order' => '9'),
            array('id' => '53', 'data_type_id' => '6', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '10'),
            array('id' => '54', 'data_type_id' => '6', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => NULL, 'order' => '11'),
            array('id' => '55', 'data_type_id' => '6', 'field' => 'image', 'type' => 'image', 'display_name' => 'Page Image', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => NULL, 'order' => '12'),
            array('id' => '56', 'data_type_id' => '7', 'field' => 'id', 'type' => 'text', 'display_name' => 'Id', 'required' => '1', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => '{}', 'order' => '1'),
            array('id' => '57', 'data_type_id' => '7', 'field' => 'name', 'type' => 'text', 'display_name' => 'Name', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '2'),
            array('id' => '58', 'data_type_id' => '7', 'field' => 'shot_dec', 'type' => 'text_area', 'display_name' => 'Shot Dec', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '3'),
            array('id' => '59', 'data_type_id' => '7', 'field' => 'long_dec', 'type' => 'rich_text_box', 'display_name' => 'Long Dec', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '4'),
            array('id' => '60', 'data_type_id' => '7', 'field' => 'current_price', 'type' => 'number', 'display_name' => 'Current Price', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '5'),
            array('id' => '61', 'data_type_id' => '7', 'field' => 'descount_price', 'type' => 'number', 'display_name' => 'Descount Price', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '6'),
            array('id' => '62', 'data_type_id' => '7', 'field' => 'category_id', 'type' => 'text', 'display_name' => 'Category Id', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '7'),
            array('id' => '63', 'data_type_id' => '7', 'field' => 'img1', 'type' => 'image', 'display_name' => 'Img1', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '8'),
            array('id' => '64', 'data_type_id' => '7', 'field' => 'img2', 'type' => 'image', 'display_name' => 'Img2', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '9'),
            array('id' => '65', 'data_type_id' => '7', 'field' => 'img3', 'type' => 'image', 'display_name' => 'Img3', 'required' => '1', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{}', 'order' => '10'),
            array('id' => '66', 'data_type_id' => '7', 'field' => 'created_at', 'type' => 'timestamp', 'display_name' => 'Created At', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => '{}', 'order' => '11'),
            array('id' => '67', 'data_type_id' => '7', 'field' => 'updated_at', 'type' => 'timestamp', 'display_name' => 'Updated At', 'required' => '0', 'browse' => '0', 'read' => '0', 'edit' => '0', 'add' => '0', 'delete' => '0', 'details' => '{}', 'order' => '12'),
            array('id' => '68', 'data_type_id' => '7', 'field' => 'product_belongsto_category_relationship', 'type' => 'relationship', 'display_name' => 'categories', 'required' => '0', 'browse' => '1', 'read' => '1', 'edit' => '1', 'add' => '1', 'delete' => '1', 'details' => '{"model":"App\\\\Models\\\\Category","table":"categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 'order' => '13')
        );


        foreach ($data_rows as $data_row) {
            DB::table('data_rows')->insert($data_row);
        }




        $menus = array(
            array('id' => '1', 'name' => 'admin', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:36:42')
        );

        foreach ($menus as $menu) {
            DB::table('menus')->insert($menu);
        }

        $menu_items = array(
            array('id' => '1', 'menu_id' => '1', 'title' => 'Dashboard', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-boat', 'color' => NULL, 'parent_id' => NULL, 'order' => '1', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:36:42', 'route' => 'voyager.dashboard', 'parameters' => NULL),
            array('id' => '2', 'menu_id' => '1', 'title' => 'Media', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-images', 'color' => NULL, 'parent_id' => NULL, 'order' => '2', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:28', 'route' => 'voyager.media.index', 'parameters' => NULL),
            array('id' => '3', 'menu_id' => '1', 'title' => 'Users', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-person', 'color' => NULL, 'parent_id' => '5', 'order' => '2', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.users.index', 'parameters' => NULL),
            array('id' => '4', 'menu_id' => '1', 'title' => 'Roles', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-lock', 'color' => NULL, 'parent_id' => '5', 'order' => '3', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.roles.index', 'parameters' => NULL),
            array('id' => '5', 'menu_id' => '1', 'title' => 'Tools', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-tools', 'color' => NULL, 'parent_id' => NULL, 'order' => '6', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => NULL, 'parameters' => NULL),
            array('id' => '6', 'menu_id' => '1', 'title' => 'Menu Builder', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-list', 'color' => NULL, 'parent_id' => '5', 'order' => '4', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.menus.index', 'parameters' => NULL),
            array('id' => '7', 'menu_id' => '1', 'title' => 'Database', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-data', 'color' => NULL, 'parent_id' => '5', 'order' => '5', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.database.index', 'parameters' => NULL),
            array('id' => '8', 'menu_id' => '1', 'title' => 'Compass', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-compass', 'color' => NULL, 'parent_id' => '5', 'order' => '6', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.compass.index', 'parameters' => NULL),
            array('id' => '9', 'menu_id' => '1', 'title' => 'BREAD', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-bread', 'color' => NULL, 'parent_id' => '5', 'order' => '7', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.bread.index', 'parameters' => NULL),
            array('id' => '10', 'menu_id' => '1', 'title' => 'Settings', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-settings', 'color' => NULL, 'parent_id' => NULL, 'order' => '7', 'created_at' => '2021-12-11 13:36:42', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.settings.index', 'parameters' => NULL),
            array('id' => '11', 'menu_id' => '1', 'title' => 'Categories', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-categories', 'color' => NULL, 'parent_id' => NULL, 'order' => '4', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:42:42', 'route' => 'voyager.categories.index', 'parameters' => NULL),
            array('id' => '12', 'menu_id' => '1', 'title' => 'Posts', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-news', 'color' => NULL, 'parent_id' => '5', 'order' => '1', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:42:41', 'route' => 'voyager.posts.index', 'parameters' => NULL),
            array('id' => '13', 'menu_id' => '1', 'title' => 'Pages', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-file-text', 'color' => NULL, 'parent_id' => NULL, 'order' => '3', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:42:40', 'route' => 'voyager.pages.index', 'parameters' => NULL),
            array('id' => '14', 'menu_id' => '1', 'title' => 'Products', 'url' => '', 'target' => '_self', 'icon_class' => 'voyager-shop', 'color' => '#000000', 'parent_id' => NULL, 'order' => '5', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:43:30', 'route' => 'voyager.products.index', 'parameters' => 'null')
        );

        foreach ($menu_items as $menu_item) {
            DB::table('menu_items')->insert($menu_item);
        }



        $permissions = array(
            array('id' => '1', 'key' => 'browse_admin', 'table_name' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '2', 'key' => 'browse_bread', 'table_name' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '3', 'key' => 'browse_database', 'table_name' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '4', 'key' => 'browse_media', 'table_name' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '5', 'key' => 'browse_compass', 'table_name' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '6', 'key' => 'browse_menus', 'table_name' => 'menus', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '7', 'key' => 'read_menus', 'table_name' => 'menus', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '8', 'key' => 'edit_menus', 'table_name' => 'menus', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '9', 'key' => 'add_menus', 'table_name' => 'menus', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '10', 'key' => 'delete_menus', 'table_name' => 'menus', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '11', 'key' => 'browse_roles', 'table_name' => 'roles', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '12', 'key' => 'read_roles', 'table_name' => 'roles', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '13', 'key' => 'edit_roles', 'table_name' => 'roles', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '14', 'key' => 'add_roles', 'table_name' => 'roles', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '15', 'key' => 'delete_roles', 'table_name' => 'roles', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '16', 'key' => 'browse_users', 'table_name' => 'users', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '17', 'key' => 'read_users', 'table_name' => 'users', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '18', 'key' => 'edit_users', 'table_name' => 'users', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '19', 'key' => 'add_users', 'table_name' => 'users', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '20', 'key' => 'delete_users', 'table_name' => 'users', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '21', 'key' => 'browse_settings', 'table_name' => 'settings', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '22', 'key' => 'read_settings', 'table_name' => 'settings', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '23', 'key' => 'edit_settings', 'table_name' => 'settings', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '24', 'key' => 'add_settings', 'table_name' => 'settings', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '25', 'key' => 'delete_settings', 'table_name' => 'settings', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '26', 'key' => 'browse_categories', 'table_name' => 'categories', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '27', 'key' => 'read_categories', 'table_name' => 'categories', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '28', 'key' => 'edit_categories', 'table_name' => 'categories', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '29', 'key' => 'add_categories', 'table_name' => 'categories', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '30', 'key' => 'delete_categories', 'table_name' => 'categories', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '31', 'key' => 'browse_posts', 'table_name' => 'posts', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '32', 'key' => 'read_posts', 'table_name' => 'posts', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '33', 'key' => 'edit_posts', 'table_name' => 'posts', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '34', 'key' => 'add_posts', 'table_name' => 'posts', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '35', 'key' => 'delete_posts', 'table_name' => 'posts', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '36', 'key' => 'browse_pages', 'table_name' => 'pages', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '37', 'key' => 'read_pages', 'table_name' => 'pages', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '38', 'key' => 'edit_pages', 'table_name' => 'pages', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '39', 'key' => 'add_pages', 'table_name' => 'pages', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '40', 'key' => 'delete_pages', 'table_name' => 'pages', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '41', 'key' => 'browse_products', 'table_name' => 'products', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:41:32'),
            array('id' => '42', 'key' => 'read_products', 'table_name' => 'products', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:41:32'),
            array('id' => '43', 'key' => 'edit_products', 'table_name' => 'products', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:41:32'),
            array('id' => '44', 'key' => 'add_products', 'table_name' => 'products', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:41:32'),
            array('id' => '45', 'key' => 'delete_products', 'table_name' => 'products', 'created_at' => '2021-12-11 13:41:32', 'updated_at' => '2021-12-11 13:41:32')
        );

        foreach ($permissions as $permission) {
            DB::table('permissions')->insert($permission);
        }

        $roles = array(
            array('id' => '1', 'name' => 'admin', 'display_name' => 'Administrator', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43'),
            array('id' => '2', 'name' => 'user', 'display_name' => 'Normal User', 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43')
        );
        foreach ($roles as $role) {
            DB::table('roles')->insert($role);
        }


        $permission_role = array(
            array('permission_id' => '1', 'role_id' => '1'),
            array('permission_id' => '2', 'role_id' => '1'),
            array('permission_id' => '3', 'role_id' => '1'),
            array('permission_id' => '4', 'role_id' => '1'),
            array('permission_id' => '5', 'role_id' => '1'),
            array('permission_id' => '6', 'role_id' => '1'),
            array('permission_id' => '7', 'role_id' => '1'),
            array('permission_id' => '8', 'role_id' => '1'),
            array('permission_id' => '9', 'role_id' => '1'),
            array('permission_id' => '10', 'role_id' => '1'),
            array('permission_id' => '11', 'role_id' => '1'),
            array('permission_id' => '12', 'role_id' => '1'),
            array('permission_id' => '13', 'role_id' => '1'),
            array('permission_id' => '14', 'role_id' => '1'),
            array('permission_id' => '15', 'role_id' => '1'),
            array('permission_id' => '16', 'role_id' => '1'),
            array('permission_id' => '17', 'role_id' => '1'),
            array('permission_id' => '18', 'role_id' => '1'),
            array('permission_id' => '19', 'role_id' => '1'),
            array('permission_id' => '20', 'role_id' => '1'),
            array('permission_id' => '21', 'role_id' => '1'),
            array('permission_id' => '22', 'role_id' => '1'),
            array('permission_id' => '23', 'role_id' => '1'),
            array('permission_id' => '24', 'role_id' => '1'),
            array('permission_id' => '25', 'role_id' => '1'),
            array('permission_id' => '26', 'role_id' => '1'),
            array('permission_id' => '27', 'role_id' => '1'),
            array('permission_id' => '28', 'role_id' => '1'),
            array('permission_id' => '29', 'role_id' => '1'),
            array('permission_id' => '30', 'role_id' => '1'),
            array('permission_id' => '31', 'role_id' => '1'),
            array('permission_id' => '32', 'role_id' => '1'),
            array('permission_id' => '33', 'role_id' => '1'),
            array('permission_id' => '34', 'role_id' => '1'),
            array('permission_id' => '35', 'role_id' => '1'),
            array('permission_id' => '36', 'role_id' => '1'),
            array('permission_id' => '37', 'role_id' => '1'),
            array('permission_id' => '38', 'role_id' => '1'),
            array('permission_id' => '39', 'role_id' => '1'),
            array('permission_id' => '40', 'role_id' => '1'),
            array('permission_id' => '41', 'role_id' => '1'),
            array('permission_id' => '42', 'role_id' => '1'),
            array('permission_id' => '43', 'role_id' => '1'),
            array('permission_id' => '44', 'role_id' => '1'),
            array('permission_id' => '45', 'role_id' => '1')
        );

        foreach ($permission_role as $permission_role) {
            DB::table('permission_role')->insert($permission_role);
        }



        $products = array(
            array('id' => '1', 'name' => 'Wide T-shirt', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78974</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 2</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '88', 'descount_price' => '59', 'category_id' => '1', 'img1' => 'products\\December2021\\XtGBETJb9dBAQ3EaCW9P.jpg', 'img2' => 'products\\December2021\\OPKIENiYYPMat6Zmpl4E.jpg', 'img3' => 'products\\December2021\\1TR1Zq2JNfTysc2VjKVr.jpg', 'created_at' => '2021-12-11 13:52:36', 'updated_at' => '2021-12-11 13:54:13'),
            array('id' => '2', 'name' => 'Gray jacket with image variant', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 2</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '100', 'descount_price' => '88', 'category_id' => '1', 'img1' => 'products\\December2021\\WG6QksaCY4GcyEyA0Om6.jpg', 'img2' => 'products\\December2021\\c7RciL0tk9GHysrBJRJf.jpg', 'img3' => 'products\\December2021\\eTDD7pEwIBL7RcfNU3bo.jpg', 'created_at' => '2021-12-11 13:56:18', 'updated_at' => '2021-12-11 13:56:18'),
            array('id' => '3', 'name' => 'Long sleeves', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78974</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 1</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '100', 'descount_price' => '88', 'category_id' => '1', 'img1' => 'products\\December2021\\Vp5fZfnyICSgxzF7LlOJ.jpg', 'img2' => 'products\\December2021\\x5irJsilYtXHaFWD7i46.jpg', 'img3' => 'products\\December2021\\SjlFellLY3lLwqVViEqJ.jpg', 'created_at' => '2021-12-11 13:57:33', 'updated_at' => '2021-12-11 13:57:33'),
            array('id' => '4', 'name' => 'Winter Coat with Hat', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 3</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '90', 'descount_price' => '78', 'category_id' => '2', 'img1' => 'products\\December2021\\RCuTmG8lEuBXXckFIPDX.jpg', 'img2' => 'products\\December2021\\ld0xCSW4lUJM3FiOF6qZ.jpg', 'img3' => 'products\\December2021\\lrdCRzaoZrmRkSRggNYG.jpg', 'created_at' => '2021-12-11 13:58:44', 'updated_at' => '2021-12-11 13:58:44'),
            array('id' => '5', 'name' => 'Men’s Bermuda Shorts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78965</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 3</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '88', 'descount_price' => '56', 'category_id' => '2', 'img1' => 'products\\December2021\\CoOBjkXjCkCcyjqZrCPH.jpg', 'img2' => 'products\\December2021\\A95Lz9h6TUTWFBurIzM4.jpg', 'img3' => 'products\\December2021\\EUZEriitpRaKqiCPVWkJ.jpg', 'created_at' => '2021-12-11 13:59:54', 'updated_at' => '2021-12-11 13:59:54'),
            array('id' => '6', 'name' => 'Men’s Bermuda Shorts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 2</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '88', 'descount_price' => '78', 'category_id' => '1', 'img1' => 'products\\December2021\\pwqlItqIZ1AzZkAhzMuC.jpg', 'img2' => 'products\\December2021\\8zOmUTYTg1gg3RmhsE1p.jpg', 'img3' => 'products\\December2021\\RaKojVSwp5kctDvX9OQy.jpg', 'created_at' => '2021-12-11 14:01:00', 'updated_at' => '2021-12-11 14:01:00'),
            array('id' => '7', 'name' => 'Men’s Bermuda Shorts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 3</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '56', 'descount_price' => '40', 'category_id' => '2', 'img1' => 'products\\December2021\\24Kw8n5YUbZIbE49NpoF.jpg', 'img2' => 'products\\December2021\\OMgI2YBgxJlMFFRVrFFq.jpg', 'img3' => 'products\\December2021\\l2CNbnVzKbnSWn58yYvh.jpg', 'created_at' => '2021-12-11 14:05:13', 'updated_at' => '2021-12-11 14:05:13'),
            array('id' => '8', 'name' => 'Men’s office t-shirts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 1</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '90', 'descount_price' => '86', 'category_id' => '2', 'img1' => 'products\\December2021\\rLGxCMHiIwf3ojCXFkak.jpg', 'img2' => 'products\\December2021\\Goq96x82PU2L4av0gF8I.jpg', 'img3' => 'products\\December2021\\EUUgTzJ5J0KlDMYbyhZ5.jpg', 'created_at' => '2021-12-11 14:06:25', 'updated_at' => '2021-12-11 14:06:25'),
            array('id' => '9', 'name' => 'Men’s office t-shirts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78974</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 3</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '40', 'descount_price' => '39', 'category_id' => '1', 'img1' => 'products\\December2021\\ccomH24HNbu9fks8ByN9.jpg', 'img2' => 'products\\December2021\\YgHyB5NcTzRJcqvVv9ms.jpg', 'img3' => 'products\\December2021\\p027THZU6NPZHbIhlNs3.jpg', 'created_at' => '2021-12-11 14:07:19', 'updated_at' => '2021-12-11 14:07:19'),
            array('id' => '10', 'name' => 'Men’s office t-shirts', 'shot_dec' => 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', 'long_dec' => '<div class="product-info-content" style="box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;"><label class="desc-label" style="box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;">DETAIL</label>
<ul class="product-info-list" style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-sku" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Product code: :&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-sku="">CA78963</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-vendor" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Vendor:</span>&nbsp;<span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;">VENDOR 1</span></div>
</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;">
<div class="product-info-item product-inventory" style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;"><span class="product-info-title" style="box-sizing: inherit;">Available:&nbsp;</span><span class="product-info-text" style="box-sizing: inherit; text-transform: uppercase;" data-product-inventory="" data-in-stock="In Stock" data-out-stock="Out stock">IN STOCK</span></div>
</li>
</ul>
</div>
<div class="product-short-desc" style="box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;">
<div class="description-update" style="box-sizing: inherit; margin: 0px; padding: 0px;">
<h3 style="box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;">DESCRIPTION</h3>
<ul style="box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;">
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Model is 5</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Wearing size 2</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">100% Cotton</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Machine wash cold with like colors, tumble dry low</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Made in Jiangmen, ChinaSee the factory</li>
<li style="box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;">Questions about fit?Email fit@everlane.com</li>
</ul>
<p style="box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>
</div>
</div>', 'current_price' => '99', 'descount_price' => '96', 'category_id' => '1', 'img1' => 'products\\December2021\\8lOovOY0MAmmQXo7iJ9i.jpg', 'img2' => 'products\\December2021\\u2dBAv2iYyq8lzIr3ROe.jpg', 'img3' => 'products\\December2021\\5QimwVq2EuX11WQ9M7t5.jpg', 'created_at' => '2021-12-11 14:08:20', 'updated_at' => '2021-12-11 14:08:20')
        );

        foreach ($products as $product) {
            DB::table('products')->insert($product);
        }



        $settings = array(
            array('id' => '1', 'key' => 'site.title', 'display_name' => 'Site Title', 'value' => 'Colo-shop', 'details' => '', 'type' => 'text', 'order' => '1', 'group' => 'Site'),
            array('id' => '2', 'key' => 'site.description', 'display_name' => 'Site Description', 'value' => 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.', 'details' => '', 'type' => 'text', 'order' => '2', 'group' => 'Site'),
            array('id' => '4', 'key' => 'site.google_analytics_tracking_id', 'display_name' => 'Google Analytics Tracking ID', 'value' => NULL, 'details' => '', 'type' => 'text', 'order' => '4', 'group' => 'Site'),
            array('id' => '5', 'key' => 'admin.bg_image', 'display_name' => 'Admin Background Image', 'value' => '', 'details' => '', 'type' => 'image', 'order' => '5', 'group' => 'Admin'),
            array('id' => '6', 'key' => 'admin.title', 'display_name' => 'Admin Title', 'value' => 'Colo-shop', 'details' => '', 'type' => 'text', 'order' => '1', 'group' => 'Admin'),
            array('id' => '7', 'key' => 'admin.description', 'display_name' => 'Admin Description', 'value' => 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.', 'details' => '', 'type' => 'text', 'order' => '2', 'group' => 'Admin'),
            array('id' => '8', 'key' => 'admin.loader', 'display_name' => 'Admin Loader', 'value' => '', 'details' => '', 'type' => 'image', 'order' => '3', 'group' => 'Admin'),
            array('id' => '9', 'key' => 'admin.icon_image', 'display_name' => 'Admin Icon Image', 'value' => '', 'details' => '', 'type' => 'image', 'order' => '4', 'group' => 'Admin'),
            array('id' => '10', 'key' => 'admin.google_analytics_client_id', 'display_name' => 'Google Analytics Client ID (used for admin dashboard)', 'value' => NULL, 'details' => '', 'type' => 'text', 'order' => '1', 'group' => 'Admin'),
            array('id' => '11', 'key' => 'site.banner_image', 'display_name' => 'Banner Image', 'value' => 'settings\\December2021\\bZwVhNpn0wg4ORHZVrxy.jpg', 'details' => NULL, 'type' => 'image', 'order' => '6', 'group' => 'Site'),
            array('id' => '12', 'key' => 'site.banner_subtitle', 'display_name' => 'Banner Sub Title', 'value' => 'SPRING / SUMMER COLLECTION 2021', 'details' => NULL, 'type' => 'text', 'order' => '7', 'group' => 'Site'),
            array('id' => '13', 'key' => 'site.banner_title', 'display_name' => 'Banner Title', 'value' => 'Get up to 30% Off New Arrivals', 'details' => NULL, 'type' => 'text', 'order' => '8', 'group' => 'Site'),
            array('id' => '14', 'key' => 'site.phone', 'display_name' => 'Phone', 'value' => '(800) 686-6688', 'details' => NULL, 'type' => 'text', 'order' => '9', 'group' => 'Site'),
            array('id' => '15', 'key' => 'site.email', 'display_name' => 'Email', 'value' => 'info.colo.shop@gmail.com', 'details' => NULL, 'type' => 'text', 'order' => '10', 'group' => 'Site'),
            array('id' => '16', 'key' => 'site.opening_date', 'display_name' => 'Opening Date', 'value' => 'Open hours: 8.00-18.00 Mon-Fri  Sunday: Closed', 'details' => NULL, 'type' => 'text', 'order' => '11', 'group' => 'Site'),
            array('id' => '17', 'key' => 'site.map', 'display_name' => 'Map URL', 'value' => 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1080.4176082016186!2d88.60679775455874!3d24.378618557976317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbee4db10be455%3A0xc6ee56098bd61ee9!2sRajshahi%20Polytechnic%20Institute!5e0!3m2!1sen!2sbd!4v1639115389456!5m2!1sen!2sbd', 'details' => NULL, 'type' => 'text', 'order' => '12', 'group' => 'Site')
        );


        foreach ($settings as $setting) {
            DB::table('settings')->insert($setting);
        }

        $users = array(
            array('id' => '1', 'role_id' => '1', 'name' => 'Admin', 'email' => 'admin@admin.com', 'avatar' => 'users/default.png', 'email_verified_at' => NULL, 'password' => '$2y$10$Qs6seD1nXCSjZt8DlD5xHexNFks2D8WBO7mrR/E6mqbmf8Xp1ahDK', 'remember_token' => 'CyvVSZ1YsXfhLDFC8W27xyihqTG4rOIX6wzJQYLsSNWIAqJsZOkIdEOk7BiZ', 'settings' => NULL, 'created_at' => '2021-12-11 13:36:43', 'updated_at' => '2021-12-11 13:36:43')
        );


        foreach ($users as $user) {
            DB::table('users')->insert($user);
        }
    }
}
