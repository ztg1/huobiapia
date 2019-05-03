说明
=======
本项目主要是获取火币 实时推送的行情数据 ，保存到本地数据库和推送给客户端


 特性
======
 * 使用websocket协议
 * 多浏览器支持（浏览器支持html5或者flash任意一种即可）
 * 多房间支持
 * 私聊支持
 * 掉线自动重连
 * 微博图片自动解析
 * 聊天内容支持微博表情
 * 支持多服务器部署
 * 业务逻辑全部在一个文件中，快速入门可以参考这个文件[Applications/Chat/Event.php](https://github.com/walkor/workerman-chat/blob/master/Applications/Chat/Event.php)   
  
# 重要事情 重要事情 重要事情
   运行本项目服务器最好是国外的（国内要是你有代理）

启动停止(Linux系统)
=====
以debug方式启动  
```php start.php start  ```

以daemon方式启动  
```php start.php start -d ```

#(windows系统) 没有尝试过要是你可以运行看看


#前端连接 

  ws = new WebSocket("ws://x.x.x.x:7272");


 
 
