# IM

## 项目介绍

#### 前端代码：

https://gitee.com/beijing_hongye_huicheng/lilishop-ui/tree/master/im

#### 后端代码

https://gitee.com/beijing_hongye_huicheng/lilishop/tree/master/im-api

## 启动IM

#### IM-API

1、打开API项目：https://gitee.com/beijing_hongye_huicheng/lilishop/tree/master/im-api

2、修改配置文件：https://gitee.com/beijing_hongye_huicheng/lilishop/blob/master/im-api/src/main/resources/application.yml (PS:修改数据库，redis，elasticsearch等连接配置)

3、mvn打包，然后启动jar包。

成功启动后访问：http://localhost:8885/doc.html#/home 正常启动则进行下一步，否则自行调试一下

#### IM-UI

1、修改配置文件

测试环境：https://gitee.com/beijing_hongye_huicheng/lilishop-ui/blob/master/im/.env.development

生产环境：https://gitee.com/beijing_hongye_huicheng/lilishop-ui/blob/master/im/.env

#### 参数说明：

> NODE_ENV=development #默认值无需修改
>
> VUE_APP_PREVIEW=false #默认值无需修改
>
> VUE_APP_API_BASE_URL=[https://im-api.pickmall.cn](https://im-api.pickmall.cn/) #IM API地址
>
> VUE_APP_WEB_SOCKET_URL=wss://im-api.pickmall.cn/lili/webSocket # IM API websocket地址，http/https 对应 ws/wss 协议
>
> VUE_APP_COMMON=[https://common-api.pickmall.cn](https://common-api.pickmall.cn/) #通用接口API地址，COMMON-API
>
> VUE_APP_BUYER=[https://buyer-api.pickmall.cn](https://buyer-api.pickmall.cn/) #买家API地址
>
> VUE_APP_SELLER=[https://store-api.pickmall.cn](https://store-api.pickmall.cn/) #商家API地址
>
> VUE_APP_WEBSITE_NAME="LiLi IM" #IM 站点名称
>
> VUE_APP_PC_URL=https://pc-b2b2c.pickmall.cn/#买家UI地址
>
> VUE_APP_PC_STORE=https://store-b2b2c.pickmall.cn/ #商家UI地址

#### 本地运行参数示例

```
NODE_ENV=development
VUE_APP_PREVIEW=false
VUE_APP_API_BASE_URL=http://127.0.0.1:8885
VUE_APP_WEB_SOCKET_URL=ws://127.0.0.1:8885/lili/webSocket
VUE_APP_COMMON=http://127.0.0.1:8890
VUE_APP_BUYER=http://127.0.0.1:8888
VUE_APP_SELLER=http://127.0.0.1:8889
VUE_APP_WEBSITE_NAME="LiLi IM"
VUE_APP_PC_URL=http://127.0.0.1:10000
VUE_APP_PC_STORE=https://127.0.0.1:10002
Copy
```

## 管理端配置IM地址

路径：管理后台 > 系统设置 > 客服设置

云IM地址：配置IM-UI的地址，本地环境默认端口8000 示例配置 [http://127.0.0.1:8000](http://127.0.0.1:8000/)

## 移动端IM配置

移动端配置--imWebSrc与baseWsUrl

https://e.gitee.com/beijing_hongye_huicheng/repos/beijing_hongye_huicheng/lilishop-uniapp/blob/master/config/config.js

![img](https://docs.pickmall.cn/help/images/im%E7%A7%BB%E5%8A%A8%E7%AB%AF%E9%85%8D%E7%BD%AE.png)

以及配置IM-API

https://e.gitee.com/beijing_hongye_huicheng/repos/beijing_hongye_huicheng/lilishop-uniapp/blob/master/config/api.js

![img](https://docs.pickmall.cn/help/images/imApi1.png)

## 微信小程序IM配置

微信小程序在配置完移动端的前提下，微信小程序需要在服务区域名下socket配置IM WS 地址

配置完成后微信小程序即可使用im

路径 微信公众平台 > 开发管理 > 开发设置

![img](https://docs.pickmall.cn/help/images/weix.png)

## 使用IM

1、前往商家端，首页点击 （点击登录客服） 按钮，跳转至客服页面

![img](https://docs.pickmall.cn/help/images/%E5%95%86%E5%AE%B6%E7%99%BB%E9%99%86%E5%AE%A2%E6%9C%8D.png) ![img](https://docs.pickmall.cn/help/images/im%E5%AE%A2%E6%9C%8D.png)

2、前往买家端，搜索店铺商品，点击商品页面右上角的联系客服按钮，与客服进行沟通

![img](https://docs.pickmall.cn/help/images/%E8%81%94%E7%B3%BB%E5%AE%A2%E6%9C%8D%E4%B9%B0%E5%AE%B6%E7%AB%AF.png) ![img](https://docs.pickmall.cn/help/images/%E4%B9%B0%E5%AE%B6im.png)

3、移动端/微信小程序,点击商品详情的客服，与客服进行沟通

![img](https://docs.pickmall.cn/help/images/im%E7%A7%BB%E5%8A%A8%E7%AB%AF%E5%AE%A2%E6%9C%8D%E5%85%A5%E5%8F%A31.png) ![img](https://docs.pickmall.cn/help/images/im%E7%A7%BB%E5%8A%A8%E7%AB%AF2.png)