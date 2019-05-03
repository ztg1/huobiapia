<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/18
 * Time: 11:51
 */
class HuobiRedis
{

    private $redis;
    private $host;  //redis ip
    private $port;  //redis 端口
    public static $db = null;

    public function __construct($host, $port)
    {
        $this->host = $host;
        $this->port = $port;
        //连接redis
        if (class_exists('Redis')) {
            $this->redis = new \Redis();
            if ($this->redis->connect($this->host, $this->port)) {
                $this->connect = true;
            }
        } else {
            exit('redis扩展不存在');
        }
    }


    /**
     * Notes: 向has表中写入数据
     * User: ${USER}
     * Date: ${DATE}
     * Time: ${TIME}
     * @param $table
     */
    public function write($table,$data){
       //批量设置
      return $this->redis->hMset($table,$data);
    }

    /**
     * Notes:查找是否存在重复 id 存在重复就更新覆盖，如果不重复 就取出保存到mysql中
     * User: ${USER}
     * Date: ${DATE}
     * Time: ${TIME}
     * @param $table
     * @param $id
     * @return int
     */
    public function SeachId($table,$id){

        $idtime= $this->redis->hGet($table, 'time'); // 获取h表中时间字段value

        if($idtime){
            if ($idtime==$id){
                return 1;       //存在相等
            }else{
                return 2;       //不相等
            }
        }
        return 0;  //不存在
    }


    /**
     * Notes: 读取缓存has表中的数据
     * User: ${USER}
     * Date: ${DATE}
     * Time: ${TIME}
     * @param $table
     * @return array
     */
    public function read($table){

       return $this->redis->hGetAll($table);
    }


    public function insertmysql($table,$data){
        self::$db = new \Workerman\Connection('127.0.0.1', '3306', 'root', 'root', 'huobiapi');

        $insert_id = static::$db->insert($table)->cols($data)->query();

        return $insert_id;
    }


}

// $huobiredis= new HuobiRedis("127.0.0.1",6379);

// $huobiredis->huobi1min();

//   $ids= $huobiredis->SeachId("klin1mina",1556160420);

// $tables=$huobiredis->Read("klin1min");
/*  $data=array (
      'id' => 1556150400,
      'open' => 5413.0,
      'close' => 5409.02,
      'low' => 5404.12,
      'high' => 5436.0,
      'amount' => 1776.0156640772,
      'vol' => 9631184.0369913,
      'count' => 15163,
  );
  $huobiredis->write("klin1mins",$data)*/

?>