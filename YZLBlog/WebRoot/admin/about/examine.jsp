<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'examine.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="blog_article/css/backstage_article.css">

  </head>
  
  <body>
    这是审核简介页面 <br>
  <div class="t_fsz">
      <table cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <td class="t_f" id="postmessage_2765731"><font face="微软雅黑">
              <div align="center"><font size="6" color="#000000"><strong>大学生博客平台审核总规则</strong></font></div>
              <br>
              <div class="quote">
                <blockquote><font color="#0000ff" style="font-size:10.5pt">大学生博客平台是一个致力于为在校的大学生提供一个发挥个人文学兴趣的平台，学生可以通过该平台进行文学交流，丰富其课后生活，提升其文化道德素养。这个平台也是将德育教育融入学生课后生活的一种方式。</font></blockquote>
              </div>
              <br>
              </font><div align="left"><font size="4" face="微软雅黑"><font color="#ff8c00"><strong>第一章&nbsp;&nbsp;总规则</strong></font></font><font face="微软雅黑"><br>
                <font size="2">第1条&nbsp; &nbsp; 站方的所有使用者与管理者的所有行为必须遵守本规则，其他管理规定不得与本规则相抵触。</font><br><br>
                </font><div align="left"><font size="4" face="微软雅黑"><font color="#ff8c00"><strong>第二章&nbsp;&nbsp;行为准则</strong></font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第1条&nbsp; &nbsp;凡注册使用本博客平台的会员则代表了解并自愿遵守免责申明（附1）内所包涵的所有规定及条列<br>
                  </font>第2条&nbsp; &nbsp;博客平台成员应遵守中华人民共和国的法律法规。<br>
                  第3条&nbsp; &nbsp;禁止政治、敏感的文章发表以及转帖。<br>
                  第4条&nbsp; &nbsp;禁止不顾他人感受的个人情感发泄、人身攻击、低级趣味或者捏造事实诽谤他人。<br>
                    第5条&nbsp; &nbsp;禁止张贴、人肉搜集未经他人许可的任何私人信息。</font></div>
                <div align="left"><font size="2" face="微软雅黑">第6条&nbsp; &nbsp;禁止抄袭及剽窃他人作品，禁止转载或引用涉及版权问题的文章。<br>
                  第7条&nbsp; &nbsp;禁止发表与站方宗旨无关主题、与主题无关回复、上传与内容无关图片。<br>
                    第8条&nbsp; &nbsp;禁止一帖(回复)多发、刷版（帖）等恶意灌水现象；<br>
                      第9条&nbsp; &nbsp;禁止任何未经站方允许的广告。</font></div>
                <div align="left"><font size="2" face="微软雅黑">第10条 禁止破坏平台公共秩序及侵害站方利益的内容。<br>
                  第11条 禁止任何组织或个人在平台从事任何商业交易，禁止使用平台相关名义进行任何形式的商业交易，平台禁止发布非法交易行骗行为内容，平台没有任何公开的官方QQ群！</font></div>
                <div align="left"><font size="2" face="微软雅黑">第12条 成员的头像/照片不得有国家领导人的形象；不得有歪曲/侮辱他人行为；禁止使用不雅头像/照片；<br>
                  第13条 禁止挑战站方规定干涉站方管理，挑拨会员及管理关系，拉帮结伙、意图分裂。<br>
                  第14条 禁止指桑骂槐、意图不明的行为。</font></div>
                <font face="微软雅黑"><br>
                <br>
                <div align="left"><strong><font size="4"><font color="#ff8c00">第三章&nbsp;&nbsp;注册、管理账号规则</font></font></strong></div></font>
                <div align="left"><font size="2" face="微软雅黑">凡注册的账号自动视为同意注册的账号归平台所有</font></div>
                <div align="left"><font color="#0000ff" face="微软雅黑">包含以下内容的注册名将被无条件删除：</font><font face="微软雅黑"><br>
                  <font size="2"><font color="#000000">第1条&nbsp;&nbsp;党和国家领导人或其他名人的真实姓名、字、号、艺名、笔名，国家机构或其他机构、和政治、宗教有关之敏感的名称</font></font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第2条&nbsp;&nbsp;</font></font><font color="#000" face="微软雅黑"><font size="2">不文明、不健康、易产生歧义、引起他人误解的名称</font></font><font size="2" face="微软雅黑"><font color="#000000"><br>
                  第3条&nbsp;&nbsp;非官方途径购买的</font></font><font color="#000" face="微软雅黑"><font size="2">账号，平台账号和邀请码禁止贩卖</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第4条&nbsp;&nbsp;不论出于何种目的原因，平台</font></font><font color="#000" face="微软雅黑"><font size="2">账号</font></font><font size="2" face="微软雅黑"><font color="#000000">均不得转赠或外借他人使用，每人只能拥有一个平台账号，禁止注册马甲账号，即使账号被禁言也禁止再次注册，违规者一律做封号处理！<br>
                  第5条&nbsp;&nbsp;</font></font><font color="#ff00" face="微软雅黑"><font size="2">以通讯账号作为平台ID(例如：QQ12345或在其他地方说明通讯账号为平台ID)等 2015年3月28日前注册账号暂不做处理。</font></font></div>
                <font face="微软雅黑"><br>
                <br>
                </font><div align="left"><font size="4" face="微软雅黑"><font color="#ff8c00"><strong>第四章&nbsp;&nbsp;发贴规则&nbsp;&nbsp;</strong></font></font><font face="微软雅黑"><br>
                  <font size="2">站方原则上接纳一切能够真正给大家带来经验的交流帖，任何精品、破解软件、心得体验&hellip;&hellip;都可以成为帖子的主题。</font></font></div>
                <div align="left"><font color="#0000ff" face="微软雅黑">具有以下规则性质的主题或回复将被管理人员处理，并对发贴者进行置顶奖励、禁言、禁止访问、删除ID、扣除CB等相应处理。</font><font face="微软雅黑"><br>
                  <font size="2"><font color="#000000">第1条&nbsp;&nbsp;</font></font></font><font color="#000" face="微软雅黑"><font size="2">禁止发布大学生博客平台官方认定不宜在本社区发表的帖子</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第2条&nbsp;&nbsp;禁止以任何名义开帖召集、建立团体或者群的，如：&ldquo;召集中关村地区的&rdquo;，&ldquo;东北人的请进&rdquo;，</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第3条&nbsp;&nbsp;批评性内容或评语必须给出详细理由，否则将视为诽谤</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第4条&nbsp;&nbsp;禁止发布暴力、恐怖、血腥、反复贴过很多次、引起人视觉反感的图片</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第5条&nbsp;&nbsp;禁止发布违反国家和谐的内容，如各种翻墙软件、翻墙方法、VPN和免流等</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第6条&nbsp;&nbsp;禁止发布主题过于简单、无实质内容、使用哗众取宠标题的&nbsp;&nbsp;</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第7条&nbsp;&nbsp;禁止自己开贴或在他人发表的主题中进行版聊，针对某一事件、问题反复开贴</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第8条&nbsp;&nbsp;禁止与主题明显不符的回复、仅使用表情、数字、字母、引用等无意义的回复</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第9条&nbsp;&nbsp;禁止发布含有病毒链接或恶意代码的帖子</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第10条 禁止发布广告贴(标准见附2)</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第11条 鼓励会员多发布原创帖</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 1) 对于原创贴将予以加分鼓励，可在三日内本版置顶，显示高亮。<br>
                  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 2) 对于伪原创将作出取消在原创区发帖资格以及更严厉的处分。</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第12条 任何讨论、建议、质疑、询问社区功能使用方法必须发表在<a href="http://www.52pojie.cn/forum-72-1.html" target="_blank">【站务处理】</a>版块</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第13条 任何投诉社区管理的主题而必须发表在<a href="http://www.52pojie.cn/forum-15-1.html" target="_blank">【投诉举报区】</a></font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第14条 禁止发布不符合相关版面版规的帖子</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第15条 </font></font><font color="#000" face="微软雅黑"><font size="2">禁止发布求师父帖子</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第16条 </font></font><font color="#000" face="微软雅黑"><font size="2">禁止出售交易平台账号和平台附件等资源</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第17条 禁止将他人出售中的、加权限限制的、回帖可见的内容或者附件直接共享出来，损坏作者利益的行为</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第18条 </font></font><font color="#ff00" face="微软雅黑"><font size="2">禁止非原创作品使用&ldquo;隐藏回复&rdquo;功能和&ldquo;出售附件&rdquo;等功能</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第19条 禁止使用图片&ldquo;隐藏回复&rdquo;</font></font><font color="#ff00" face="微软雅黑"><font size="2">&ldquo;管理加分&rdquo;等伪装显示和</font></font><font face="微软雅黑" style="color:rgb(255, 0, 0)"><font size="2">刮刮卡等</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第20条 允许刷屏,但内容要有意义,不可脱离主题帖</font></font><font color="#000" face="微软雅黑"><font size="2">(</font></font><font face="微软雅黑"><a href="http://www.52pojie.cn/forum.php?mod=redirect&amp;goto=findpost&amp;ptid=143136&amp;pid=9180499" target="_blank">灌水帖</a><font color="#000"><font size="2">除外)</font></font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第21条 允许同一主题多次回复可以连楼(三次以内)，但要符合主题(</font></font><font face="微软雅黑"><a href="http://www.52pojie.cn/forum.php?mod=redirect&amp;goto=findpost&amp;ptid=143136&amp;pid=9180499" target="_blank">灌水帖</a><font size="2"><font color="#000000">除外)</font></font></font></div>
                <div align="left"><font color="#ff00" face="微软雅黑"><font size="2">第22条 禁止在标题以及内容添加误导性词汇 例如 精华、精品等</font></font></div>
                <div align="left"><font color="#ff00" face="微软雅黑"><font size="2">第23条 </font></font><font size="2" face="微软雅黑"><font color="#ff0000">禁止诱导会员或强制要求会员加分等不正当方式来获取积分</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第24条 禁止发布符合灌水规则的主题和回复(</font><a href="http://www.52pojie.cn/forum.php?mod=redirect&amp;goto=findpost&amp;ptid=143136&amp;pid=9180499" target="_blank">点我查看灌水定义</a><font color="#ff0000">)</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff00">第25条 </font><font color="#666666"><strong>禁止发布非必须管理阅读的高权限(只能管理阅读)主题</strong></font><font color="#ff0000"><br>
                第26条 禁止发布封装的操作系统镜像、PE系统和U盘装系统类软件</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第27条 禁止发布所有手机短信轰炸、呼死你、改号软件等相似的攻击工具</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#ff0000">第28条 禁止发帖或者回复中添加干扰帖子阅读的内容，如各种异常代码和在帖子中添加不可见声音等！</font></font></div>
                <div align="left"><font color="#ff0000" face="微软雅黑"><font size="2">第29条 </font></font><font color="#ff00" face="微软雅黑"><font size="2">禁止私服服务端等相关工具</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#005500"><br>
                  </font></font><font size="4" face="微软雅黑"><font color="#ff8c00"><strong>第五章&nbsp;&nbsp;短信通知及会员投诉标准</strong></font></font><font face="微软雅黑"><br>
                  <font size="2"><font color="#000000">第1条 贴子被转移、删除、关闭等不一定有系统短信通知和给出理由。<br>
                    第2条 禁止发言、禁止访问、删除ID，均不会被通知，且用户资料将被清除。(扣除CB需要通知)<br>
                    第3条 任何建议、质疑、询问社区功能使用方法的帖子请在<a href="http://www.52pojie.cn/forum-72-1.html" target="_blank">【站务处理】</a>版块发帖。<br>
                    第4条 任何投诉社区管理、方法，违规行为的请在<a href="http://www.52pojie.cn/forum-15-1.html" target="_blank">【投诉举报区】</a>发帖。<br>
                    第5条 发表在其他板块的一律删除处理；屡教不改的一律删除ID或者扣除CB处理。</font></font><br>
                  <font size="2"><font color="#ff00ff">会员投诉会员或版主，请一并提交以下内容，内容表述不清的，将不予受理和解释：<br>
                    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;被投诉人ID ：<br>
                    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;事件发生时间：<br>
                    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;投诉理由：<br>
                    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;投诉证据(地址+截图)：</font></font><br>
                  <br>
                  <font size="2"><font color="#000000">第6条 双方如在平台内进行争执漫骂，无论事由起因，均会做出严重处理。若仅一方侮辱攻击，另一方可进行投诉，由管理进行处理。 </font></font><br>
                </font></div>
                <font face="微软雅黑"><br>
                <br>
                </font><div align="left"><font size="4" face="微软雅黑"><font color="#ff8c00"><strong>第六章&nbsp;&nbsp;平台奖励、处罚规则</strong></font></font><font face="微软雅黑"><br>
                <font size="2"><font color="#000000">第1条 符合发帖规则及该板块版规的原创帖可以给予</font><font color="#000">3~5cb奖励并可本版置顶、高亮3天，优秀帖可加威望延长置顶、加亮时间。（娱乐分版区除外）</font><br>
                    <font color="#000000">第2条 娱乐分版区优秀原创可给予</font><font color="#000">1~5cb奖励，可考虑给予本版置顶、高亮1~3天。</font><br>
                    <font color="#000000">第3条 按照版规成功举报违规的发帖给予加热心值奖励。（成功举报求破求脱、病毒帖可优先给予扣除违规的奖励）</font><br>
                    <font color="#000000">第4条 具有特别意义或管理组商讨决定的帖子可以给予全局置顶、加亮，并可以适量提升奖励</font><font color="#000">CB。</font><br>
                    <font color="#000000">第5条 签名违规的一律违规</font><font color="#000">+1，CB酌情扣除并由处理人记录，每天汇总后交由管理员删除违规签名，</font><font color="#ff0000">会员改正后不予扣除违规值，如再犯将双倍处罚。</font><br>
                    <font color="#000000">第6条 违反总版规及分版版规的发帖视情节严重程度给予处罚：</font><br>
                    <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;1</font><font color="#000">）灌水帖(1~5)给予删除所有发帖及发帖所得，增加扣除水帖量*1的处罚</font><br>
                    <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2</font><font color="#000">）少量灌水帖(2周内6~10) 给予删除所有发帖及发帖所得，增加扣除水帖量*2，增加违规数的处罚。</font><br>
                    <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;3</font><font color="#000">）大量灌水帖(2周内10以上) 给予删除所有发帖及发帖所得，增加扣除20cb，增加违规数，根据实际情况禁言、禁访、永久禁言、永久禁访等处罚。</font><br>
                    <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;4</font><font color="#000">）故意发布病毒、色情帖的ID永久禁止访问并查封其所有小号。</font><br>
                    <font color="#ff0000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;5）凡所有ID违规数&ge;3的将实行永久禁言的处罚<br>
                  </font><font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;6</font><font color="#000">）违反</font><font color="#000000">行为准则、注册</font><font color="#000">ID管理规则的删除ID。</font><br>
                    <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;7）违反总规则的视情节严重扣</font><font color="#000">1~20CB，删除发帖，增加违规和禁言、禁访、永久禁言、永久禁访。（各板块可以根据总版规自定规则）</font><br>
                  <font color="#000000">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;8）所有</font><font color="#8b0000">平台违规、禁言、禁止ID </font><font color="#000000">操作必须</font></font><font size="2"><font color="#000">按照以下格式回复</font></font><font size="2">：<br>
                      <font color="#ff00ff">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 会员ID：<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 违规行为：<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 处理时间：<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 处理方式<strong>:</strong></font></font></font></div>
                <font color="#ff0000" face="微软雅黑">NEW</font><font face="微软雅黑">&nbsp;&nbsp;<font size="2"><font color="#000000"> 9）在原创区以及其他板块违规发帖严重且不构成禁止访问的会员，将取消该板块发帖权限，站务区发布解封申请起六个月内为考察期，解封条件为考察期内每月都必须有该板块原创内容发布且原创内容不再涉及违规，审查合格后解封。</font>&nbsp;&nbsp;</font><br>
                <font size="2">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; <font color="#ff0000">注:该板块被封可到精品区发帖，帖子链接需要回复到解封申请帖内</font></font><br>
                <br>
                </font><div align="left"><font face="微软雅黑"><strong><font size="4"><font color="#ff8c00">第七章&nbsp;&nbsp;社区的举报功能</font></font></strong><br>
                  <font size="2"><font color="#000000">平台每日新增帖子数多，对违规帖的发现只靠版主和巡查的力量是不够的。欢迎广大会员报告检举违规帖，让我们共同维护我们自己的友好和谐网上家园！同时特别感谢以往关注平台和谐、举报违规帖的众多热心会员！大学生博客在大家的爱护下将更加规范文明温馨！<br>
                    <br>
                    注：怎样举报违规帖：不论是主帖还是回帖的右下角都有举报按钮，举报违规帖点击&ldquo;举报&rdquo;按钮即可。该板块版主可立即收到你的举报短信并进行相关管理操作。或者也可以通过<a href="http://www.52pojie.cn/forum-15-1.html" target="_blank">『投诉举报区』</a> 进行发帖举报。</font></font></font><font size="2" face="微软雅黑"><font color="#ff0000">（举报成功可以获得热心值，举报求脱求破成功将会优先扣除违规值）</font></font></div>
                <font face="微软雅黑"><br>
                <br>
                </font><div align="left"><font size="3" face="微软雅黑"><font color="#ff0000">附1 免责申明</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#0000ff">1、【大学生博客】平台里的文章仅代表作者本人的观点，与本网站立场无关。出于遵守国家相关法规或促进平台发展的前提，我们有权在不经作者准许的情况下删除其在【大学生博客】所发表的文章。<br>
                  2、【大学生博客】平台的所有文章、内容、信息、资料，都不保证其准确性、完整性、有效性、时效性。请依据情况自身做出判断。因阅读本站内容而被误导等其他因素所造成的损失责任自负。【大学生博客】不承担任何责任。<br>
                  3、博友对自己的言论和行为负责，完全承担发表内容的责任，所持立场与【大学生博客】平台无关。平台使用者因为任何行为而触犯中华人民共和国法律或相关法规的，一切后果自己负责，【大学生博客】不承担任何责任。<br>
                  4、博友所发布的信息中涉及到具体的第三方个人（单位/公司）隐私、商业秘密等，侵犯其权益，对其构成不良影响的，由第三方向【大学生博客】提交正式书面申请删除该信息后，【大学生博客】有权将该信息予以直接删除处理。<br>
                  5、【大学生博客】如因系统维护或升级而需暂停服务时，将事先公告。若因线路及非本站点控制范围外的硬件故障或其它不可抗力而导致暂停服务，于暂停服务期间造成的一切不便与损失，【大学生博客】不负任何责任。<br>
                6、凡以任何方式登陆本站或直接、间接使用【大学生博客】平台资料者，视为自愿接受【大学生博客】平台总规则的约束。本声明未涉及的问题参见国家有关法律法规，当本声明与国家法律法规冲突时，以国家法律法规为准。</font></font></div>
                <div align="left"><font size="3" face="微软雅黑"><font color="#ff0000">附2 广告贴判定标准</font></font><font face="微软雅黑"><br>
                  <font size="2"><font color="#000000">第1条 不符合总版规规定的、简单从字面上便可判定为广告的。</font></font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第2条 为某个商家、某个公司、某种产品做隐性广告的。</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第3条 在ID、昵称、来自、签名档、头像等发贴时可以显示的个人信息中、在主题和回复中，表明商家身份、团购信息、公布群信息或者群号码、公布联系方式的。(原则上不禁止博客、微博)</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第4条 具有推广宣传性质或推广宣传与本平台性质相同的。</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第5条 以任何名义在帖子、附件、程序或者引导到第三方页面中主动添加QQ，QQ群等联系方式</font></font><font color="#000" face="微软雅黑"><font size="2">，除非得到官方认可。</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第6条 在您的博文作品中加入您的群联系方式，加入非大学生博客的网址等（软件官网除外）</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第7条 您发布的原创工具作品有收费功能（可加入捐助功能，但是不能明示或者暗示捐助后可以有特殊照顾，同时软件内不得残留商业化信息。）</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第8条 作品中加入主动弹出非大学生博客平台网页的功能</font></font></div>
                <div align="left"><font size="2" face="微软雅黑"><font color="#000000">第9条 帖子中提供下载链接的附件或者上传平台的附件对应的解压密码、各类会员账号密码设置为非大学生博客网址、其他联系方式等</font></font></div>
                <font face="微软雅黑"><br>
              </font></div><font face="微软雅黑">
              <div align="left"><font color="magenta">注：各分板块版规见以下回复并由版规修改人进行修改（以下板块在不违反总版规的情况下，以各自板块的版规为准,如无版规按照总版规执行）</font><br>
              </div>
              <div align="left"><br>
                <font size="5"><font color="#ff0000"><strong>以上总规则解释权属于【大学生博客平台】所有，并保留随时更新此规则的权利。</strong></font></font></div>
            </font></td>
          </tr>
        </tbody>
      </table>
  </div>
  </body>
</html>
