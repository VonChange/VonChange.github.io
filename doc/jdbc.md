[github地址](https://github.com/VonChange/spring-data-jdbc-mybatis)
[gitee地址](https://gitee.com/vonchange/spring-data-jdbc-mybatis)

**spring data jdbc 扩展 mybatis 动态sql能力**
## What Is This?
* 使用jdbcTemplate,相当于直接调用jdbc。不提供缓存、延迟加载等JPA或mybatis的许多特性。一个简单、有限、固执己见的ORM

* 使用mybatis动态sql能力,可以应对复杂sql

* SQL 写在 Markdown 里


[UserInfoRepository.md](spring-data-jdbc-mybatis-test%2Fsrc%2Ftest%2Fresources%2Fsql%2FUserInfoRepository.md)

```sql
-- findUserByIds
SELECT  [@id column] FROM user_base 
<where> 
[@@and id in #{idList:in} and user_name like #{userName:like}]
[@and user_name like userName%]
[@and id in idList]
<if test="null!=createTime">  and create_time < #{createTime}  </if>
</where>
```