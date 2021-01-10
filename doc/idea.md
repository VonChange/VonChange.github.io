**IDEA 全系列组最简单最low的破解 去除30min限制**


> 之前破解了一个内部OA软件 蓝凌的 学会了点如何破解java软件 然后想着尝试破解下idea
> 果然不是一个层次的东西 这破解的最关键是找到关键代码 idea还是太麻烦了
> 于是我想那把时间锁定下试下 竟然真的能屏蔽30min使用限制 所以

***我改了java.util.Date类 锁定时间 === 史上最low实现 》-《

1. 破解包
   idea.jar[https://gitee.com/vonchange/VonChange.github.io/raw/master/doc/file/idea.jar]
2. HELP->Edit Custom VM Options 后面追加破解代理
   -javaagent:/{{你的存放路径}}/idea.jar 然后重启即可
   
   ![例子](https://gitee.com/vonchange/VonChange.github.io/raw/master/doc/image/idea.png)
   
   
3. 打开都会显示Server’s certificate is not
   trusted。这个是因为破解的idea，然后idea检测出来给出警告，服务器的证书不受信任。
4. 解决方法：在idea的左上角的file中找到Setting，然后在搜索框中搜索Server
   Certificates,将Accept non-trusted certificates automatically
   勾选上就行了。 
   
   ![例子](https://img-blog.csdnimg.cn/20190724203733769.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2xvb25nX191cA==,size_16,color_FFFFFF,t_70)
   
5. 不管过没过30天试用期 都会提示30min提示 应该是触发了他的检查机制
   但使用上不会有30min限制 至于啥机制(不费这时间研究 还是请大神们处理吧 ==
   能用就行对吧)