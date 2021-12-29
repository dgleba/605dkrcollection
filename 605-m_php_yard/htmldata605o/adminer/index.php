<?php
function adminer_object() {
  
  class AdminerSoftware extends Adminer {
    
    function name() {
      // custom name in title and heading
      return 'Software';
    }
    
    // function permanentLogin() {
    //   // key used for permanent login
    //   return '11dbe76c28ef6f5abdff555fb9f17e9a';
    // }
    
    function credentials() {
      // server, username and password for connecting to database
      return array('dbm', 'muser', 'dev.ri.2ws');
    }
    
    function database() {
      // database name, will be escaped by Adminer
      return 'dkrdb';
    }
    
    function login($login, $password) {
      // validate user submitted credentials
      return ($login == 'a' && $password == 'a');
    }
    
    // function tableName($tableStatus) {
    //   // tables without comments would return empty string and will be ignored by Adminer
    //   return h($tableStatus['nte']);
    // }
    
    // function fieldName($field, $order = 0) {
    //   // only columns with comments will be displayed and only the first five in select
    //   return ($order <= 5 && !preg_match('~_(md5|sha1)$~', $field['field']) ? h($field['comment']) : '');
    // }
    
  }
  
  return new AdminerSoftware;
}

include './editor.php';