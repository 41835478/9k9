<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
      <include file='public:head'/>
  </head>
  <body>
<div id="wrapper">
 <div class="scroller">
    <header>
        <include file='public:header'/>
    </header>
<div class="item">

      </div>


<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'MO-35760263-1']);
  _gaq.push(['_setDomainName', '']);
  _gaq.push(['_trackPageview']);
  (function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
   })();
</script>

<nav class="tag">
  <a href="javascript:void(0)" class="cur dropdown-trigger">
      <span>
          <empty name='cate'>全部分类<else/>{$cate}</empty>
          <i class="icon-arrow down"></i>
      </span>
  </a>
  <div class="dropdown-menu"> <i class="icon-arrow up"></i>
      <ul>
          <li><a href="{:U('index/index')}">全部分类</a></li>
		                         <empty name="cate_list['s'][$cid]">
									<empty name="cate_list['s'][$cinfo['pid']]">
										
										<volist name="cate_list['p']" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									<else />
										<volist name="cate_list['s'][$cinfo['pid']]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									</empty>
								<else />
									<empty name="cate_list['s'][$cinfo['pid']]">
										<volist name="cate_list['s'][$cid]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									<else />
										<volist name="cate_list['s'][$cinfo['pid']]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									</empty>
								</empty>          
      </ul>
  </div>
  <a href="{:U('jiu/index')}"  ><span>9.9专场</span></a>
  <a href="{:U('guang/index')}" ><span>值得逛</span></a>
</nav>
<include file='public:nav'/>
<section class="deals">
<volist name='items_list' id='item'>
  <div data-id= {$item['id']} >
    <figure>
      <a href="{:U('jump/index',array('id'=>$item['num_iid']))}" target="_blank"><img src="{:attach(get_thumb($item['pic_url'], '_s'),'item')}"/></a>
    </figure>
    <h2>
      <span><a href="{:U('jump/index',array('id'=>$item['num_iid']))}" target="_blank">{$item.title}</a></span>
    <sub ></sub>
      </h2>
    <aside>
        <span class="i1"><i></i><if condition='$item["shop_type"] eq "B"'>天猫<else/>淘宝</if></span>
        <span class="i3"><i></i><if condition='$item["ems"] eq 1'>包邮<else/>不包邮</if></span>
    </aside>
    <p>
    <span>￥<i>{$item.coupon_price}</i></span>
    <cite>已有{$item.volume}人抢购</cite>
      <b class="i1"><a href="{:U('jump/index',array('id'=>$item['num_iid']))}" target="_blank">抢购中</a></b>
    </p>
  </div>
</volist>
  <aside class="more">
    <span>
      <a id="loadMore" data-page="1" href="javascript:void(0);">点击加载更多</a>
    </span>
    <i><a id="toTop" href="javascript:void(0);">TOP<b></b></a></i>
  </aside>

</section>

<footer>
  <include file='public:footer'/>
</footer>

      </div>
    </div>
  </body>
  <script type="text/javascript">
  var FTXIA = {
    'root':'__ROOT__',
    'siteurl':"{:C('ftx_site_url')}",
    'ajax':"{:U('index/index',array('cid'=>$cid,'sort'=>$cur))}",
  };
</script>
</html>
