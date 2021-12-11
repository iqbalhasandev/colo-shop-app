CREATE TABLE "categories" ("id" integer not null primary key autoincrement, "parent_id" integer, "order" integer not null default '1', "name" varchar not null, "slug" varchar not null, "created_at" datetime, "updated_at" datetime, foreign key("parent_id") references "categories"("id") on delete set null on update cascade);

CREATE TABLE "data_rows" ("id" integer not null primary key autoincrement, "data_type_id" integer not null, "field" varchar not null, "type" varchar not null, "display_name" varchar not null, "required" tinyint(1) not null default '0', "browse" tinyint(1) not null default '1', "read" tinyint(1) not null default '1', "edit" tinyint(1) not null default '1', "add" tinyint(1) not null default '1', "delete" tinyint(1) not null default '1', "details" text, "order" integer not null default '1', foreign key("data_type_id") references "data_types"("id") on delete cascade on update cascade);

CREATE TABLE "data_types" ("id" integer not null primary key autoincrement, "name" varchar not null, "slug" varchar not null, "display_name_singular" varchar not null, "display_name_plural" varchar not null, "icon" varchar, "model_name" varchar, "description" varchar, "generate_permissions" tinyint(1) not null default '0', "created_at" datetime, "updated_at" datetime, "server_side" integer not null default '0', "controller" varchar, "policy_name" varchar, "details" text);

CREATE TABLE "failed_jobs" ("id" integer not null primary key autoincrement, "uuid" varchar not null, "connection" text not null, "queue" text not null, "payload" text not null, "exception" text not null, "failed_at" datetime default CURRENT_TIMESTAMP not null);

CREATE TABLE "menu_items" ("id" integer not null primary key autoincrement, "menu_id" integer, "title" varchar not null, "url" varchar not null, "target" varchar not null default '_self', "icon_class" varchar, "color" varchar, "parent_id" integer, "order" integer not null, "created_at" datetime, "updated_at" datetime, "route" varchar, "parameters" text);

CREATE TABLE "menus" ("id" integer not null primary key autoincrement, "name" varchar not null, "created_at" datetime, "updated_at" datetime);

CREATE TABLE "migrations" ("id" integer not null primary key autoincrement, "migration" varchar not null, "batch" integer not null);

CREATE TABLE "pages" ("id" integer not null primary key autoincrement, "author_id" integer not null, "title" varchar not null, "excerpt" text, "body" text, "image" varchar, "slug" varchar not null, "meta_description" text, "meta_keywords" text, "status" varchar check ("status" in ('ACTIVE', 'INACTIVE')) not null default 'INACTIVE', "created_at" datetime, "updated_at" datetime);

CREATE TABLE "password_resets" ("email" varchar not null, "token" varchar not null, "created_at" datetime);

CREATE TABLE "permission_role" ("permission_id" integer not null, "role_id" integer not null, foreign key("permission_id") references "permissions"("id") on delete cascade, foreign key("role_id") references "roles"("id") on delete cascade, primary key ("permission_id", "role_id"));

CREATE TABLE permissions (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "key" VARCHAR(255) NOT NULL COLLATE BINARY, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, table_name VARCHAR(120) DEFAULT NULL COLLATE BINARY);

CREATE TABLE "personal_access_tokens" ("id" integer not null primary key autoincrement, "tokenable_type" varchar not null, "tokenable_id" integer not null, "name" varchar not null, "token" varchar not null, "abilities" text, "last_used_at" datetime, "created_at" datetime, "updated_at" datetime);

CREATE TABLE posts (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, author_id INTEGER NOT NULL, category_id INTEGER DEFAULT NULL, title VARCHAR(255) NOT NULL COLLATE BINARY, seo_title VARCHAR(255) DEFAULT NULL COLLATE BINARY, body CLOB NOT NULL COLLATE BINARY, image VARCHAR(255) DEFAULT NULL COLLATE BINARY, slug VARCHAR(255) NOT NULL COLLATE BINARY, status VARCHAR(255) DEFAULT 'DRAFT' NOT NULL COLLATE BINARY, featured BOOLEAN DEFAULT '0' NOT NULL, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, excerpt CLOB DEFAULT NULL COLLATE BINARY, meta_description CLOB DEFAULT NULL COLLATE BINARY, meta_keywords CLOB DEFAULT NULL COLLATE BINARY);

CREATE TABLE "products" ("id" integer not null primary key autoincrement, "name" varchar not null, "shot_dec" varchar not null, "long_dec" text not null, "current_price" integer not null, "descount_price" integer not null, "category_id" integer not null, "img1" varchar not null, "img2" varchar not null, "img3" varchar not null, "created_at" datetime, "updated_at" datetime);

CREATE TABLE "roles" ("id" integer not null primary key autoincrement, "name" varchar not null, "display_name" varchar not null, "created_at" datetime, "updated_at" datetime);

CREATE TABLE settings (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "key" VARCHAR(255) NOT NULL COLLATE BINARY, display_name VARCHAR(255) NOT NULL COLLATE BINARY, details CLOB DEFAULT NULL COLLATE BINARY, type VARCHAR(255) NOT NULL COLLATE BINARY, "order" INTEGER DEFAULT 1 NOT NULL, "group" VARCHAR(255) DEFAULT NULL COLLATE BINARY, value CLOB DEFAULT NULL COLLATE BINARY);

CREATE TABLE sqlite_sequence(name,seq);

CREATE TABLE "translations" ("id" integer not null primary key autoincrement, "table_name" varchar not null, "column_name" varchar not null, "foreign_key" integer not null, "locale" varchar not null, "value" text not null, "created_at" datetime, "updated_at" datetime);

CREATE TABLE "user_roles" ("user_id" integer not null, "role_id" integer not null, foreign key("user_id") references "users"("id") on delete cascade, foreign key("role_id") references "roles"("id") on delete cascade, primary key ("user_id", "role_id"));

CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name VARCHAR(255) NOT NULL COLLATE BINARY, email VARCHAR(255) NOT NULL COLLATE BINARY, email_verified_at DATETIME DEFAULT NULL, password VARCHAR(255) NOT NULL COLLATE BINARY, remember_token VARCHAR(255) DEFAULT NULL COLLATE BINARY, created_at DATETIME DEFAULT NULL, updated_at DATETIME DEFAULT NULL, avatar VARCHAR(255) DEFAULT 'users/default.png' COLLATE BINARY, role_id BIGINT UNSIGNED DEFAULT NULL, "settings" text);

INSERT INTO "categories" ("id", "parent_id", "order", "name", "slug", "created_at", "updated_at") VALUES
(1, NULL, 1, 'Storage', 'storage', '2021-12-10 09:05:32', '2021-12-10 09:25:08'),
(2, NULL, 1, 'Laptop', 'laptop', '2021-12-10 09:05:32', '2021-12-10 09:25:01');

INSERT INTO "data_rows" ("id", "data_type_id", "field", "type", "display_name", "required", "browse", "read", "edit", "add", "delete", "details", "order") VALUES
(1, 1, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(2, 1, 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', NULL, 2),
(3, 1, 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', NULL, 3),
(4, 1, 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{"model":"TCG\\Voyager\\Models\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', '0', '1', '1', '1', '1', '0', '{"model":"TCG\\Voyager\\Models\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', NULL, 12),
(12, 2, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(13, 2, 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', NULL, 4),
(16, 3, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(17, 3, 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', NULL, 5),
(21, 1, 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', NULL, 9),
(22, 4, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', '0', '0', '1', '1', '1', '1', '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(24, 4, 'order', 'text', 'Order', '1', '1', '1', '1', '1', '1', '{"default":1}', 3),
(25, 4, 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', NULL, 4),
(26, 4, 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{"slugify":{"origin":"name"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '0', NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', NULL, 7),
(29, 5, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(30, 5, 'author_id', 'text', 'Author', '1', '0', '1', '1', '0', '1', NULL, 2),
(31, 5, 'category_id', 'text', 'Category', '1', '0', '1', '1', '1', '0', NULL, 3),
(32, 5, 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', NULL, 6),
(35, 5, 'image', 'image', 'Post Image', '0', '1', '1', '1', '1', '1', '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', '1', '0', '1', '1', '1', '1', NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', '1', '0', '1', '1', '1', '1', NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', '0', '1', '1', '1', '1', '1', NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', '1', '1', '1', '1', '1', '1', NULL, 15),
(44, 6, 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', NULL, 1),
(45, 6, 'author_id', 'text', 'Author', '1', '0', '0', '0', '0', '0', NULL, 2),
(46, 6, 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', NULL, 5),
(49, 6, 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', '1', '0', '1', '1', '1', '1', NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', '1', '0', '1', '1', '1', '1', NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', '1', '1', '1', '0', '0', '0', NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', '1', '0', '0', '0', '0', '0', NULL, 11),
(55, 6, 'image', 'image', 'Page Image', '0', '1', '1', '1', '1', '1', NULL, 12),
(56, 7, 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', '{}', 1),
(57, 7, 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', 2),
(58, 7, 'shot_dec', 'text_area', 'Shot Dec', '1', '1', '1', '1', '1', '1', '{}', 3),
(59, 7, 'long_dec', 'rich_text_box', 'Long Dec', '1', '1', '1', '1', '1', '1', '{}', 4),
(60, 7, 'current_price', 'number', 'Current Price', '1', '1', '1', '1', '1', '1', '{}', 5),
(61, 7, 'descount_price', 'number', 'Descount Price', '1', '1', '1', '1', '1', '1', '{}', 6),
(62, 7, 'category_id', 'text', 'Category Id', '1', '1', '1', '1', '1', '1', '{}', 7),
(63, 7, 'img1', 'image', 'Img1', '1', '1', '1', '1', '1', '1', '{}', 8),
(64, 7, 'img2', 'image', 'Img2', '1', '1', '1', '1', '1', '1', '{}', 9),
(65, 7, 'img3', 'image', 'Img3', '1', '1', '1', '1', '1', '1', '{}', 10),
(66, 7, 'created_at', 'text', 'Created At', '0', '1', '1', '0', '0', '0', '{}', 11),
(67, 7, 'updated_at', 'text', 'Updated At', '0', '1', '1', '0', '0', '0', '{}', 12),
(68, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', '0', '1', '1', '1', '1', '1', '{"model":"App\\Models\\Category","table":"categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 13);

INSERT INTO "data_types" ("id", "name", "slug", "display_name_singular", "display_name_plural", "icon", "model_name", "description", "generate_permissions", "created_at", "updated_at", "server_side", "controller", "policy_name", "details") VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\Voyager\Models\User', '', '1', '2021-12-10 09:05:31', '2021-12-10 09:05:31', 0, 'TCG\Voyager\Http\Controllers\VoyagerUserController', 'TCG\Voyager\Policies\UserPolicy', NULL),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\Voyager\Models\Menu', '', '1', '2021-12-10 09:05:31', '2021-12-10 09:05:31', 0, '', NULL, NULL),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\Voyager\Models\Role', '', '1', '2021-12-10 09:05:31', '2021-12-10 09:05:31', 0, 'TCG\Voyager\Http\Controllers\VoyagerRoleController', NULL, NULL),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\Voyager\Models\Category', '', '1', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 0, '', NULL, NULL),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\Voyager\Models\Post', '', '1', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 0, '', 'TCG\Voyager\Policies\PostPolicy', NULL),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\Voyager\Models\Page', '', '1', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 0, '', NULL, NULL),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\Models\Product', NULL, '1', '2021-12-10 09:19:30', '2021-12-10 09:26:55', 0, NULL, NULL, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}');


INSERT INTO "menu_items" ("id", "menu_id", "title", "url", "target", "icon_class", "color", "parent_id", "order", "created_at", "updated_at", "route", "parameters") VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 3, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2021-12-10 09:05:32', '2021-12-10 09:28:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2021-12-10 09:05:32', '2021-12-10 09:29:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2021-12-10 09:05:32', '2021-12-10 09:29:23', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 4, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 5, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 6, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 7, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 3, '2021-12-10 09:05:32', '2021-12-10 09:29:23', 'voyager.categories.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 5, 2, '2021-12-10 09:05:33', '2021-12-10 09:29:23', 'voyager.pages.index', NULL),
(14, 1, 'Products', '', '_self', 'voyager-shop', '#000000', NULL, 4, '2021-12-10 09:19:30', '2021-12-10 09:30:25', 'voyager.products.index', 'null');

INSERT INTO "menus" ("id", "name", "created_at", "updated_at") VALUES
(1, 'admin', '2021-12-10 09:05:32', '2021-12-10 09:05:32');

INSERT INTO "migrations" ("id", "migration", "batch") VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2021_12_10_090846_create_products_table', 2);

INSERT INTO "pages" ("id", "author_id", "title", "excerpt", "body", "image", "slug", "meta_description", "meta_keywords", "status", "created_at", "updated_at") VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o''nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>
<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-10 09:05:33', '2021-12-10 09:05:33');


INSERT INTO "permission_role" ("permission_id", "role_id") VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1);

INSERT INTO "permissions" ("id", "key", "created_at", "updated_at", "table_name") VALUES
('1', 'browse_admin', '2021-12-10 09:05:32', '2021-12-10 09:05:32', NULL),
('2', 'browse_bread', '2021-12-10 09:05:32', '2021-12-10 09:05:32', NULL),
('3', 'browse_database', '2021-12-10 09:05:32', '2021-12-10 09:05:32', NULL),
('4', 'browse_media', '2021-12-10 09:05:32', '2021-12-10 09:05:32', NULL),
('5', 'browse_compass', '2021-12-10 09:05:32', '2021-12-10 09:05:32', NULL),
('6', 'browse_menus', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'menus'),
('7', 'read_menus', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'menus'),
('8', 'edit_menus', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'menus'),
('9', 'add_menus', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'menus'),
('10', 'delete_menus', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'menus'),
('11', 'browse_roles', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'roles'),
('12', 'read_roles', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'roles'),
('13', 'edit_roles', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'roles'),
('14', 'add_roles', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'roles'),
('15', 'delete_roles', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'roles'),
('16', 'browse_users', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'users'),
('17', 'read_users', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'users'),
('18', 'edit_users', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'users'),
('19', 'add_users', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'users'),
('20', 'delete_users', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'users'),
('21', 'browse_settings', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'settings'),
('22', 'read_settings', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'settings'),
('23', 'edit_settings', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'settings'),
('24', 'add_settings', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'settings'),
('25', 'delete_settings', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'settings'),
('26', 'browse_categories', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'categories'),
('27', 'read_categories', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'categories'),
('28', 'edit_categories', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'categories'),
('29', 'add_categories', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'categories'),
('30', 'delete_categories', '2021-12-10 09:05:32', '2021-12-10 09:05:32', 'categories'),
('31', 'browse_posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'posts'),
('32', 'read_posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'posts'),
('33', 'edit_posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'posts'),
('34', 'add_posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'posts'),
('35', 'delete_posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'posts'),
('36', 'browse_pages', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'pages'),
('37', 'read_pages', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'pages'),
('38', 'edit_pages', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'pages'),
('39', 'add_pages', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'pages'),
('40', 'delete_pages', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'pages'),
('41', 'browse_products', '2021-12-10 09:19:30', '2021-12-10 09:19:30', 'products'),
('42', 'read_products', '2021-12-10 09:19:30', '2021-12-10 09:19:30', 'products'),
('43', 'edit_products', '2021-12-10 09:19:30', '2021-12-10 09:19:30', 'products'),
('44', 'add_products', '2021-12-10 09:19:30', '2021-12-10 09:19:30', 'products'),
('45', 'delete_products', '2021-12-10 09:19:30', '2021-12-10 09:19:30', 'products');


INSERT INTO "posts" ("id", "author_id", "category_id", "title", "seo_title", "body", "image", "slug", "status", "featured", "created_at", "updated_at", "excerpt", "meta_description", "meta_keywords") VALUES
('1', '0', NULL, 'Lorem Ipsum Post', NULL, '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'PUBLISHED', '0', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'This is the excerpt for the Lorem Ipsum Post', 'This is the meta description', 'keyword1, keyword2, keyword3'),
('2', '0', NULL, 'My Sample Post', NULL, '<p>This is the body for the sample post, which includes the body.</p>
                <h2>We can use all kinds of format!</h2>
                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'PUBLISHED', '0', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'This is the excerpt for the sample Post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3'),
('3', '0', NULL, 'Latest Post', NULL, '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'PUBLISHED', '0', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'This is the excerpt for the latest post', 'This is the meta description', 'keyword1, keyword2, keyword3'),
('4', '0', NULL, 'Yarr Post', NULL, '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>
<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>
<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'PUBLISHED', '0', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', 'this be a meta descript', 'keyword1, keyword2, keyword3');

INSERT INTO "products" ("id", "name", "shot_dec", "long_dec", "current_price", "descount_price", "category_id", "img1", "img2", "img3", "created_at", "updated_at") VALUES
(1, 'Rahim Cain', 'Et autem reprehender', '<p>sdfsdgs</p>', 757, 398, 1, 'products\December2021\zkH3ah2Jza9NSz9jIrcu.png', 'products\December2021\OnFrzFaQ6T6v8FPsHRDA.jpg', 'products\December2021\mn5zFdm0yZ8nwxxT00fU.jpg', '2021-12-10 09:27:24', '2021-12-10 09:27:24'),
(2, 'Amal Solomon', 'Est necessitatibus d', '<p>dada</p>', 840, 689, 2, 'products\December2021\pstREfFHoZQLxc9h3DnX.jpg', 'products\December2021\sNdGP9EXAASjqv9LpnYd.jpg', 'products\December2021\63unrUPos9olwhUb0eB5.jpg', '2021-12-10 09:46:55', '2021-12-10 09:46:55'),
(3, 'Victoria Christensen', 'Error error esse om', '<p>Error error esse om</p>', 776, 790, 1, 'products\December2021\FOZYNw085TeJSTgsiXXd.jpg', 'products\December2021\ryqhBalRjemAMrUpYpvf.png', 'products\December2021\JnfadYq7HXbeAKHHVwYP.png', '2021-12-10 09:50:19', '2021-12-10 09:55:05');

INSERT INTO "roles" ("id", "name", "display_name", "created_at", "updated_at") VALUES
(1, 'admin', 'Administrator', '2021-12-10 09:05:32', '2021-12-10 09:05:32'),
(2, 'user', 'Normal User', '2021-12-10 09:05:32', '2021-12-10 09:05:32');

INSERT INTO "settings" ("id", "key", "display_name", "details", "type", "order", "group", "value") VALUES
('1', 'site.title', 'Site Title', '', 'text', '1', 'Site', 'Colo-shop'),
('2', 'site.description', 'Site Description', '', 'text', '2', 'Site', 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.'),
('3', 'site.logo', 'Site Logo', '', 'image', '3', 'Site', ''),
('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', 'text', '4', 'Site', NULL),
('5', 'admin.bg_image', 'Admin Background Image', '', 'image', '5', 'Admin', ''),
('6', 'admin.title', 'Admin Title', '', 'text', '1', 'Admin', 'Colo-shop'),
('7', 'admin.description', 'Admin Description', '', 'text', '2', 'Admin', 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.'),
('8', 'admin.loader', 'Admin Loader', '', 'image', '3', 'Admin', ''),
('9', 'admin.icon_image', 'Admin Icon Image', '', 'image', '4', 'Admin', ''),
('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', 'text', '1', 'Admin', NULL),
('11', 'site.banner_image', 'Banner Image', NULL, 'image', '6', 'Site', 'settings\December2021\VtML4caLBnxcieTvp7yi.jpg'),
('12', 'site.banner_subtitle', 'Banner  sub title', NULL, 'text', '7', 'Site', 'SPRING / SUMMER COLLECTION 2021'),
('13', 'site.banner_title', 'Banner  title', NULL, 'text', '8', 'Site', 'Get up to 30% Off New Arrivals'),
('14', 'site.phone', 'Phone', NULL, 'text', '9', 'Site', '(800) 686-6688'),
('15', 'site.email', 'Email', NULL, 'text', '10', 'Site', 'info.colo.shop@gmail.com'),
('16', 'site.opening_date', 'Opening Date', NULL, 'text', '11', 'Site', 'Open hours: 8.00-18.00 Mon-Fri  Sunday: Closed'),
('17', 'site.map', 'Map URL', NULL, 'text', '12', 'Site', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1080.4176082016186!2d88.60679775455874!3d24.378618557976317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbee4db10be455%3A0xc6ee56098bd61ee9!2sRajshahi%20Polytechnic%20Institute!5e0!3m2!1sen!2sbd!4v1639115389456!5m2!1sen!2sbd');

INSERT INTO "sqlite_sequence" ("name", "seq") VALUES
('migrations', '29'),
('permissions', '45'),
('posts', '4'),
('users', '1'),
('settings', '17'),
('data_types', '7'),
('data_rows', '68'),
('menus', '1'),
('menu_items', '14'),
('roles', '2'),
('categories', '2'),
('pages', '1'),
('translations', '30'),
('products', '3');

INSERT INTO "translations" ("id", "table_name", "column_name", "foreign_key", "locale", "value", "created_at", "updated_at") VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o''nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>
<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-10 09:05:33', '2021-12-10 09:05:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-10 09:05:33', '2021-12-10 09:05:33');


INSERT INTO "users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at", "avatar", "role_id", "settings") VALUES
('1', 'Admin', 'admin@admin.com', NULL, '$2y$10$XtpoAZwNMucGmM07rPklV.Gqzt6yzX0xv9u2j8c3snx4oKFcTEfgW', '4e2b9TogS92rGV7HvRkcGmVIiLJRG0dPo16DOBPljRWGJTJFmJxsA16KseEd', '2021-12-10 09:05:33', '2021-12-10 09:05:33', 'users/default.png', '1', NULL);
