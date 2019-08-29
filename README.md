# College-students-blog-platform
## 介绍

大学生博客平台 `College students' blog platform`

这个是2018年6月完成的

刚接触`Java Web`开发所写的项目

### 大学生博客平台的功能需求

(1)用户可以自行注册账号，有验证功能，如果密码不合法或者用户名重复，邮箱和手机号不合法等情况下，会不予注册，并提示。

(2)用户在注册完毕账号后，可以自行选择申请为博主。

(3)普通用户登录，进入浏览界面，博主登录，会进入博主专属页面。

(4)后台管理系统，内有关于我们，新闻中心，博文中心，博主服务，用户管理，评论管理，个人管理共7大板块。管理员可以进行相关操作。

(5)后台，用户管理功能，可以增删改查用户信息。

(5)后台，博主服务功能，管理员可以审核博主，管理博主。

(6)后台，博文中心功能，管理员可以查看博文，审核博文，管理博文。

(7)博文界面功能设计，有专属的导航栏，可以跨页面锚点定位到博文的题目处。

(8)博文审核界面具备待审核，通过，驳回，三种情况。

(8)交流平台功能，可以提供用户反馈途径。

(9)博主可以修改上传头像。

(10)博主可以上传博文。

(11)所有增删改操作结束后，5秒倒计时，自动调转回原页面。或者手动跳转。

(12)平台简介和审核简介

(13)评论板块中的管理评论，显示的信息除了评论的相关信息，还有对应博文的相关信息。

(14)博文管理和评论管理，可以直接通过后面的详情链接，点击查看博文的具体内容。

(15)主页的内容都是从数据库中读取的。

(16)BLOG管理中心的登录信息显示，实时时间

未完成的功能：

(1)  博文界面的最新博文和精彩博文，进行时间发布和阅读量的比较并获得它们的id。

(2)  翻页功能。管理功能中的修改按钮。

(3)  异常处理，大多数为直接抛出，没有处理。

(4)  上传博文的中文乱码问题

(5)  上传评论的相关操作

(6)  新闻管理，弹框更换

### 大学生博客平台的总体功能结构

![总体功能结构](https://github.com/EmptySingleRain/College-students-blog-platform/blob/master/image/pattern.png)

### 大学生博客平台的主要界面设计

1. 主页：有导航栏，可以转向博文，联系我们，后台等相关页面。以及注册和登录。Read all。

![3.1](C:\Blog\College-students-blog-platform\image\3.1.png)

2. 博文页面:(有精彩博文，最新博文，博文长廊，均有左侧的导航栏，可以定位，底下可以评论)

**最新博文**

![3.2](C:\Blog\College-students-blog-platform\image\3.2.png)

**精彩博文**

![3.3](C:\Blog\College-students-blog-platform\image\3.3.png)

3. 联系我们:

![3.4](C:\Blog\College-students-blog-platform\image\3.4.png)

4. 注册页面:(有非法验证，如果不和规矩会提示)

![3.5](C:\Blog\College-students-blog-platform\image\3.5.png)

5. 登录后页面:(博主，普通用户，未注册用户)

**博主**

![3.6](C:\Blog\College-students-blog-platform\image\3.6.png)

**普通用户：(可以申请博主)**

![3.7](C:\Blog\College-students-blog-platform\image\3.7.png)

![3.8](C:\Blog\College-students-blog-platform\image\3.8.png)

 **未注册用户(可以点击注册，直接跳转至注册页面)**

![3.9](C:\Blog\College-students-blog-platform\image\3.9.png)

6. 博主页面下的个人信息页面(可以从本地上传头像到服务器)可以修改个人信息。

![3.10](C:\Blog\College-students-blog-platform\image\3.10.png)

7. 博主页面下的我的文章(可以发布博文):

![3.11](C:\Blog\College-students-blog-platform\image\3.11.png)

8. 博主页面下的给我留言:

![3.12](C:\Blog\College-students-blog-platform\image\3.12.png)

9.	后台管理登录页面:

![3.13](C:\Blog\College-students-blog-platform\image\3.13.png)

10.	后台管理页面(左侧为各项功能)

![3.14](C:\Blog\College-students-blog-platform\image\3.14.png)

11.	关于我们中平台简介和审核简介:

![3.15](C:\Blog\College-students-blog-platform\image\3.15.png)

![3.16](C:\Blog\College-students-blog-platform\image\3.16.png)

12.	博文中心的页面(点击详情可以进行跳转)

![3.17](C:\Blog\College-students-blog-platform\image\3.17.png)

![3.18](C:\Blog\College-students-blog-platform\image\3.18.png)

13.	博主服务的页面

![3.19](C:\Blog\College-students-blog-platform\image\3.19.png)

![3.20](C:\Blog\College-students-blog-platform\image\3.20.png)

14. 用户管理的页面

    有伸缩功能，自适应：

![3.21](C:\Blog\College-students-blog-platform\image\3.21.png)

指定用户查询，可以先查询所有存在的用户，再找其具体信息，当用户多的时候，更加便捷：

![3.22](C:\Blog\College-students-blog-platform\image\3.22.png)

更新用户信息，可以有下拉框选择修改，避免错误可以直接在页面上修改，有自动填补的功能，有自适应：

![3.23](C:\Blog\College-students-blog-platform\image\3.23.png)

多选删除一直有问题，所以这里还是单选删除：

![3.24](C:\Blog\College-students-blog-platform\image\3.24.png)

增加用户信息，可以选择用户类型，而不是输入，避免错误：

![3.25](C:\Blog\College-students-blog-platform\image\3.25.png)

15.	评论管理的页面

![3.26](C:\Blog\College-students-blog-platform\image\3.26.png)

16.	个人管理的页面

![3.27](C:\Blog\College-students-blog-platform\image\3.27.png)

17.	增删改查操作后的自动跳转界面(只展示一个)5秒自动跳转，如果未跳转。可以单击右边的链接进行跳转。

![3.28](C:\Blog\College-students-blog-platform\image\3.28.png)

### 大学生博客平台的数据库设计

数据库的表:4张

![4.1](C:\Blog\College-students-blog-platform\image\4.1.png)

数据库中的存储过程:若干

![4.2](C:\Blog\College-students-blog-platform\image\4.2.png)

数据库的表的设计:

**Admin表：**

| 字段名   | 数据类型 | 长度 | 主键否 | 描述           |
| -------- | -------- | ---- | ------ | -------------- |
| id       | int      | /    | 是     | 主键，管理员ID |
| name     | nvarchar | 50   | 否     | 管理员用户名   |
| password | varchar  | 50   | 否     | 管理员密码     |

**Allusers表：**

| 字段名      | 数据类型 | 长度 | 主键否 | 描述         |
| ----------- | -------- | ---- | ------ | ------------ |
| user_id     | int      | /    | 是     | 主键，用户ID |
| username    | nvarchar | 10   | 否     | 用户名       |
| password    | varchar  | 50   | 否     | 密码         |
| idnumber    | nvarchar | 50   | 否     | 身份证号码   |
| contactway  | nvarchar | 50   | 否     | 手机号       |
| email       | nvarchar | 50   | 否     | 邮箱         |
| perferences | nvarchar | 256  | 否     | 个人喜好     |
| regitime    | date     | /    | 否     | 注册时间     |
| imgpath     | nvarchar | 50   | 否     | 头像路径     |
| idcode      | int      | /    | 否     | 用户权限级别 |
| applyid     | int      | /    | 否     | 博主审核标识 |

**Allusers表：**

| 字段名              | 数据类型 | 长度 | 主键否 | 描述         |
| ------------------- | -------- | ---- | ------ | ------------ |
| article_id          | int      | /    | 是     | 主键，博文ID |
| article_author      | nvarchar | 10   | 否     | 博文作者     |
| article_title       | varchar  | 40   | 否     | 博文标题     |
| article_time        | datetime | /    | 否     | 博文发布时间 |
| article_summary     | nvarchar | MAX  | 否     | 博文概要     |
| article_content     | text     | /    | 否     | 博文内容     |
| article_read        | int      | /    | 否     | 阅读量       |
| article_comment_num | int      | /    | 否     | 评论量       |
| article_apply       | int      | /    | 否     | 博文审核标识 |

**Comment表：**

| 字段名           | 数据类型 | 长度 | 主键否 | 描述           |
| ---------------- | -------- | ---- | ------ | -------------- |
| comment_id       | int      | /    | 是     | 主键，评论ID   |
| article_id       | int      | /    | 否     | 博文ID         |
| comment_time     | datetime | /    | 否     | 评论发布时间   |
| comment_username | nvarchar | 10   | 否     | 评论发布用户名 |
| comment_content  | nvarchar | 100  | 否     | 评论内容       |

关系图:

![4.3](C:\Blog\College-students-blog-platform\image\4.3.png)

### 大学生博客平台的项目文件目录结构

`Src`目录中:`JavaBean`和`Servlet`等`Java`文件:

![5.1](C:\Blog\College-students-blog-platform\image\5.1.png)

`Jar`包的引用:

![5.2](C:\Blog\College-students-blog-platform\image\5.2.png)

`WebRoot`中的文件，`Web`工程主要页面和文件夹：

![5.3](C:\Blog\College-students-blog-platform\image\5.3.png)

`admin`中文件夹中的文件:

![5.4](C:\Blog\College-students-blog-platform\image\5.4.png)

`blog_article`,`blogger`,`css`,`jqAlert`文件夹中的内容:

![5.5](C:\Blog\College-students-blog-platform\image\5.5.png)

剩下的文件夹的内容:

![5.6](C:\Blog\College-students-blog-platform\image\5.6.png)

## 完整程序导入流程

1.在`sql server2014`中还原`Blog.bak`数据库备份文件

2.导入`YZLBlog`项目文件