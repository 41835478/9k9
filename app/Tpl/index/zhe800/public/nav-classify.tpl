<div class="jiu-side-nav {:C('ftx_site_width')}">
  <if condition="C('ftx_site_navlogo') neq ''">
    <div><a class="logo" href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_navlogo')}" width="145" height="70" /></a></div>
    <else />
    <div><a class="logo" href="{:C('ftx_site_url')}"><img src="/static/jky/images/fl_nav_logo.jpg" width="145" height="70" /></a></div>
  </if>
  <div class="content">
    <div class="bd">
      <ul>
        <li class="bd0"><a class="light" href="{:U('brand/index')}">品牌特卖</a></li>
        <li class="bd1"><a class="light" href="{:U('jiu/index')}">9块9包邮</a></li>
        <li class="bd2"><a class="" href="{:U('shijiu/index')}">20元封顶</a></li>
        <li class="bd3"><a class="" href="{:U('sanjiu/index')}">精选预告</a></li>
         <li class="bd4"><a class="" href="{:U('gift/index')}" target="_blank">0元抽奖</a></li>
        <li><a href="{:U('brand/index')}"  style="color: rgb(224, 47, 47);">特卖商城</a></li>
      </ul>
    </div>
    <div class="line"></div>
    <div class="bdc">
      <ul>
        <?php  $cdi=0; ?>
        <volist name="cate_data" id="bcate" mod="12">
          <if condition="($bcate['pid'] eq 0) AND ($cdi lt 19)">
            <?php $cdi++; ?>
            <li class="<eq name="mod" value="0">bdc0</eq><eq name="mod" value="1">bdc1</eq><eq name="mod" value="2">bdc2</eq><eq name="mod" value="3">bdc3</eq><eq name="mod" value="4">bdc4</eq><eq name="mod" value="5">bdc5</eq><eq name="mod" value="6">bdc6</eq><eq name="mod" value="7">bdc7</eq><eq name="mod" value="8">bdc8</eq><eq name="mod" value="9">bdc9</eq><eq name="mod" value="10">bdc1</eq><eq name="mod" value="11">bdc2</eq>"><a <if condition="($cid eq $bcate['id']) OR ($cate_data[$cid]['pid'] eq $bcate['id'])"> class="on"</if>
             <a href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}"><i></i>{$bcate.name}</a></li> 
          </if>
        </volist>
      </ul>
    </div>
    <div class="line"></div>
    <div class="zhi_guang">
      <ul>
        <li><a href="{:U('zdm/index')}">值得买</a></li>
        <li><a href="{:U('guang/index')}">值得逛</a></li>
      </ul>
    </div>
    <div class="move_padding" >
 	<div id="subscribeNew" class="add_link"><a href="{:U('baoming/index')}" title="卖家报名" target="_self"><i class="subscribe_w"></i><span>卖家报名</span></a></div>
      <div id="subscribeNew1" class="add_link"><a href="{:C('ftx_kefu_html')}" title="在线客服" id="contractKf" target="_blank"><i class="contact_w"></i><span>在线客服</span></a></div>
    </div>
  </div>
</div>
