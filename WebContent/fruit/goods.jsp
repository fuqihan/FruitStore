<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>现货 台湾芭乐珍珠番石榴 5斤装 低糖高纤维水果 番石榴新鲜水果</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="Images/fruit.png" type="image/gif" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="CSS/head.css" />
    <link rel="stylesheet" type="text/css" href="CSS/goods.css" />
    <link rel="stylesheet" type="text/css" href="CSS/cart.css" />
    <link rel="stylesheet" type="text/css" href="CSS/order.css" />
    <link rel="stylesheet" type="text/css" href="CSS/index.css" />
</head>
<body>

<jsp:include page="homeTop.jsp"></jsp:include>


    <div class="menu1">
        <ul>
            <li><a href="MainPage.MainPage.jsp" class="trackref cur">首 页</a></li>
            <li><a href="#" class="trackref ">进口水果</a></li>
            <li><a href="#" class="trackref ">国产水果</a></li>
            <li><a href="#" class="trackref ">鲜果礼品</a></li>
            <li><a href="#" class="trackref ">美味零食</a></li>
            <li><a href="#" class="trackref ">积分商城</a></li>
            <li><a href="#" class="trackref ">农特产品</a></li>
        </ul>

    </div>

  
    <div class="pWrap">

            <div class="productIntro">
                <div class="pItems">
                    <div class="pItemsMain">
                        <div class="pItemsName">
                            <table class="cm">
                                <tr>
                                    <td>
                                      <h1 style="font-size: 30px">${fru.name}</h1>
                                    </td>
                               </tr>
                               <tr>
                                    <td>
                                       <strong style="font-size: 20px" id="adword-sf"> ${fru.feature}</strong>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="price-sf" style="margin-top:120px;height:50px;">                           
                                <span style="font-size: 20px; ">鲜果价：</span>
                                <span class="rmb" style="color:red">￥</span>
                                <strong  style="font-size: 20px;color:red">${fru.price}</strong>
                            <div class="boxWb"></div>
                        </div>

                        <div class="pItemsChoose">
                            <div id="buy-btn-sf" class="chooseBtns" style="z-index: 1;">
                                
                                <div id="cart-add-btn-sf" class="pBtn">
                                    <a href="addShopOrder.html?id=${fru.id}" id="addCart" style=" color:#fff; width:200px;"><b></b>加入购物车</a>
                                </div>

                                <span class="clear"></span>
                            </div>
                        </div>
                    </div>
                    <div class="pView">
                        <div id="pView">
                            <div id="zoom-jpg" class="jqzoom">
                                <a href="Images/345_thumb_G_1446072965604.jpg" class="MagicZoomPlus" id="Zoomer" rel="disable-expand:true;hint-text: ; selectors-effect: false; selectors-class: onlickImg; zoom-distance: 22;zoom-width: 500; zoom-height: 330;"><img id="J_prodImg" src="${fru.image}" alt="现货 台湾芭乐珍珠番石榴 5斤装" width="330" height="330" /></a>
                            </div>

                            </div>
                           
                        </div>
                       
                    </div>
                </div>
               
                <span class="clear"></span>
            </div>
       
    </div>
    <div class="pWrap">
        <div class="main-box">
                 <div class="pDetail">
                <ul class="pTab">
                    <li class="curr" pcont-target="div-detail">
                        <a href="#">商品介绍</a>
                    </li>
                    <li pcont-target="div-params">
                        <a href="#">售后服务</a>
                    </li>
                    <li pcont-target="div-comment">
                        <a href="#">
                            评价
                            <b>
                                (
                                <font class="comment-total-sf">0</font>
                                )
                            </b>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="flow-layer-sf" class="clear"></div>
            <div id="div-detail" class="pCont cpjs_box" style="display: block;">

                <div style="background-color:#f5f5f5;padding: 4px 20px 4px 0;line-height:20px;overflow:hidden;zoom:1;">
                    <span style="float:left;width: 100px;text-align:right;padding-right:6px;margin-right:6px;">温馨提示：</span>
                    <span style="display:block;overflow:hidden;zoom:1;">商品均经过严格的供应商资质审查、商品审查、入库全检、出货全检流程。由于部分商品存在厂家更换包装、不同批次、不同生产日期、不同生产工厂等情况，导致商品实物与图片存在微小差异，因此请您以收到的商品实物为准，同时我们会尽量做到及时更新，由此给您带来不便敬请谅解，谢谢！</span>
                </div>
                <div class="pJiucuo">
                    如果您发现商品信息存在问题，
                    <a href="#" target="_blank">欢迎纠错</a>
                </div>
                <p style="text-align: left;">&nbsp;<strong style="color: rgb(64, 64, 64); font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22.3999996185303px; text-indent: 2em; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">番石榴，俗称芭乐、那拔仔或拔子。台湾芭乐为桃金娘科番石榴属果树，肉质非常柔软，肉汁丰富，味道甜美， 几乎无籽，风味接近于梨和台湾大青枣之间。它的果实椭圆形，颜色乳青至乳白，极其漂亮，平均单果重280克以上，最大的可达550克，含糖量为 11.45%，含有大量的钾、铁、胡萝卜素等，营养极其丰富。芭乐是台湾的土生水果之一，还是一等一的减肥水果。具有以下特点： 　　</span></span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px; color: rgb(64, 64, 64);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.果形有球形、椭圆形、卵圆形及洋梨形，果皮普通为绿色、红色、黄色，果肉有白色、红色、黄色等。肉质细嫩、清脆香甜、爽口舒心、常吃不腻，是养颜美容的最佳水果。 　　</span></span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px; color: rgb(64, 64, 64); text-align: left;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.营养丰富，可增加食欲，促进儿童生长发育，含有蛋白质、脂肪、醣类、维他命A、B、C，钙、磷、铁。番石榴营养价值高，以维他命C而言，比柑桔多8 倍，比香蕉、木瓜 、番茄（西红柿）、西瓜、凤梨等多数十倍，铁、钙、磷含量也丰富，种子中铁的含量更胜于其它水果，所以最好能一起食下去。 　　</span></span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px; color: rgb(64, 64, 64); text-align: left;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.食疗药用价值高，可防治高血压、糖尿病，对于肥胖症及肠胃不佳之患者，最为理想之食用水果。芭乐的叶片和幼果切片晒干泡茶喝，可辅助治疗糖尿病。 　　</span></span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px; color: rgb(64, 64, 64);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.果实无药害、病害污染，因讲究科学栽植，从小果开始就套装薄膜袋，直到采果，与药害虫害隔绝，是标准的绿色食品。 　　</span></span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; line-height: 1.5;">&nbsp; &nbsp; &nbsp; 　5.方便生食，鲜果洗净（免削皮）即可食用，有些人喜欢切块置于碟上，加上少许酸梅粉或盐巴，风味独特。如使用家庭式果汁机，自制原汁、原味芭乐果汁，享受人生独特口味。</span></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><img src="http://img02.taobaocdn.com/imgextra/i2/1685690872/TB2xQKMbXXXXXX8XpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img04.taobaocdn.com/imgextra/i4/1685690872/TB2yeiObXXXXXXAXpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img04.taobaocdn.com/imgextra/i4/1685690872/TB2Fm5MbXXXXXX3XpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img03.taobaocdn.com/imgextra/i3/1685690872/TB2fPiNbXXXXXXkXpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img03.taobaocdn.com/imgextra/i3/1685690872/TB2vQWNbXXXXXX4XpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img01.taobaocdn.com/imgextra/i1/1685690872/TB21AiNbXXXXXXMXpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img02.taobaocdn.com/imgextra/i2/1685690872/TB2_OuSbXXXXXcXXXXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img01.taobaocdn.com/imgextra/i1/1685690872/TB2LzGTbXXXXXbpXXXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img02.taobaocdn.com/imgextra/i2/1685690872/TB2T0CUbXXXXXaGXXXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img04.taobaocdn.com/imgextra/i4/1685690872/TB2fDaLbXXXXXawXpXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img01.taobaocdn.com/imgextra/i1/1685690872/TB2I.yVbXXXXXXxXXXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /><img src="http://img02.taobaocdn.com/imgextra/i2/1685690872/TB2pGSUbXXXXXa1XXXXXXXXXXXX_%21%211685690872.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; line-height: 2em; background: rgb(238, 238, 238);" alt="" /></p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><img src="http://gd2.alicdn.com/imgextra/i2/731783052/TB2mdaNaFXXXXX9XXXXXXXXXXXX-731783052.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/731783052/TB23jCJaFXXXXbvXXXXXXXXXXXX-731783052.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /><img src="http://gd4.alicdn.com/imgextra/i4/731783052/TB2zHuFaFXXXXXaXpXXXXXXXXXX-731783052.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /><img src="http://gd4.alicdn.com/imgextra/i4/731783052/TB2ntWIaFXXXXbmXXXXXXXXXXXX-731783052.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /><img src="http://gd3.alicdn.com/imgextra/i3/731783052/TB2nfGLaFXXXXaQXXXXXXXXXXXX-731783052.png" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/731783052/TB28X5GaFXXXXXbXpXXXXXXXXXX-731783052.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: top; overflow: hidden; color: rgb(101, 101, 101); font-family: Arial; line-height: normal; background: rgb(238, 238, 238);" alt="" /></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;">&nbsp;</p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><img src="http://gd4.alicdn.com/imgextra/i4/2037267938/TB2wNB.aVXXXXaQXXXXXXXXXXXX_%21%212037267938.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd2.alicdn.com/imgextra/i2/2037267938/TB2o1t5aVXXXXaGXpXXXXXXXXXX_%21%212037267938.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd2.alicdn.com/imgextra/i2/2037267938/TB2Qux_aVXXXXb3XXXXXXXXXXXX_%21%212037267938.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/2037267938/TB29FF.aVXXXXboXXXXXXXXXXXX_%21%212037267938.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd4.alicdn.com/imgextra/i4/2037267938/TB2z.p.aVXXXXaiXXXXXXXXXXXX_%21%212037267938.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /></p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px; color: rgb(64, 64, 64);">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">
                    <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;">
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 番石榴果皮薄，黄绿色，果肉厚，清甜脆爽，心小籽少，果实营养丰富，</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(68, 68, 68);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">含较高的维生素A、C、纤维质及磷、钾、钙、镁等微量元素</span></span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">，另外果实也富含蛋白质和脂质。</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(68, 68, 68);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">常吃能抗老化，排出体内毒素、促进新陈代谢、调节生理机能、常保身体健康，</span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">是糖尿病患者最佳水果</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">。</span></span></span><br style="margin: 0px; padding: 0px;" />
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 36px; vertical-align: baseline;">番石榴的吃法：</span><br style="margin: 0px; padding: 0px;" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.整个原味吃法，当蔬果直接食用。作为最佳抗氧化水果，
                        </span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">它</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">能够有效延缓肌肤衰老及美白肌肤。</span></span></span><br style="margin: 0px; padding: 0px;" />
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.切成片或颗粒。可随意切成不规则的小块，一口一块的吃法，更香脆味美；也可根据个人不同的口感加入细盐巴、咸梅、咸梅粉等，若放入冰箱冷冻后食用，味道更佳。<br style="margin: 0px; padding: 0px;" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.榨汁。（养颜果汁：100毫升果汁中含维生素C98毫克）需加入适量冷开水，根据个人口味、身体需求加入冰糖、牛奶或蜂蜜之类饮用，芳香可口，乃是高级饮料之一。可滋养皮肤，令肌肤回复光泽。<br style="margin: 0px; padding: 0px;" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;番石榴的营养价值：它不但汁多味甜，
                        </span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">营养丰富，健胃、提神、补血、滋肾</span></span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">，而且具有防止细胞遭受破坏而导致癌病变，避免了动脉粥状硬化的发生，抵抗感染病之功效。另外，</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(68, 68, 68);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">常吃它能维持正常的血压及心脏功能</span></span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">。它所含纤维极高,</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);">能有效的清理肠道,对糖尿病患者有独特的功效。</span></span></span>
                    </span>
                </p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
                <p style="margin: 10px auto; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; color: rgb(101, 101, 101); font-family: Arial; line-height: normal;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">本店售后说明：</span></strong></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">&nbsp;亲拍下宝贝即说明同意以下内容</span></strong></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">1.收到水果有个别坏果怎么办？</span></strong></span></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">&nbsp;&nbsp;&nbsp;&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);">收到水果有损坏，请在签收后24小时内拍好图片后传给我们，我们将为您妥善处理！（所拍图片必须</span></span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">能清晰分辨问题水果，所有问题水果确保都在照片之内），签收后超24小时未能提供照片或联系小店客</span></strong></span></span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">服的客户，小店将不承担赔付责任，敬请见谅！以物流签收信息为准。</span></strong></span></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">2.收到的水果不满意，坏了可以退货吗？</span></strong></span></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;因本店所售的太多都是新鲜蔬果，保质期有限，经不住来回运输，会影响二次销售，所以是不支持退货。</span></strong></span></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">&nbsp;&nbsp;&nbsp; 如有坏果我们会根据实际情况退款。切莫拒签，拒签产生的后果请自负！！因买家地址错误或手机（电话</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">）号码不正确，在派送期间出差等个人原因造成快递无法派送，收不到货的，水果腐烂等损失，买家请自</span></strong></span></span></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆;">行负责，本店不予负责。</span></strong></span></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">3.关于水果重量问题</span></strong></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(255, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 153, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 255);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">&nbsp;&nbsp;&nbsp;&nbsp; 本店所有物品均由商业电子秤称重，一般都会在足重的情况下多一到三两的范围内。新鲜水果在发货路上的几天时间内会有水分流失，重量会轻</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">微减少，收到货的时候有时重量会少2～5两左右属正常范围。亲们在签收前请核对重量或者数量无误后</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">再签收。如发现有问题请联系我们旺旺，验收签字之后发生的重量不足，本店不承担责任。一般外包装</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">在半斤-1斤左右，包裹重量减外包装重量就是水果的重量。如果亲们对我们的重量存有疑问，可以</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">拨打快递客服热线查询我们发货时的包裹重量。有问题请在签收后24小时内联系我们反映情况。如不能</span></strong></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 幼圆; color: red;">接受本店的对重量的承诺条款，亲请慎拍！</span></strong></span></span></span></span></span></span></span></span></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; color: rgb(101, 101, 101); font-family: Arial;">&nbsp;</p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><img src="http://gd3.alicdn.com/imgextra/i3/602423314/TB2eBc_aXXXXXbkXpXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/602423314/TB2EXk.aXXXXXXyXpXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd3.alicdn.com/imgextra/i3/602423314/TB2bdNaapXXXXX0XpXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd2.alicdn.com/imgextra/i2/602423314/TB2Tb0bapXXXXc.XXXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd3.alicdn.com/imgextra/i3/602423314/TB2ZfhbapXXXXcMXXXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/602423314/TB2.MxfapXXXXafXXXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /><img src="http://gd1.alicdn.com/imgextra/i1/602423314/TB2fclbapXXXXc.XXXXXXXXXXXX-602423314.jpg" align="absmiddle" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; overflow: hidden; background: rgb(238, 238, 238);" alt="" /></strong></p>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 'microsoft yahei';"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(153, 0, 255);">温馨提示：亲，5斤起拍哦，1件代表1斤，低于10斤小店有权不发货，有任何疑问，请联系本店客服。</span></span></strong></span></strong></p>
                <div>
                    <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline;">
                            <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;">
                                <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: 'microsoft yahei';">
                                    <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(153, 0, 255);">
                                        <br />
                                    </span>
                                </span>
                            </strong>
                        </span>
                    </strong>
                </div>
                <p style="margin: 10px auto 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.3999996185303px;">&nbsp;</p>
            </div>
            <div id="div-params" class="pCont" style="display: none;">
                <div class="sh_box"></div>
            </div>
            <div id="div-comment" class="pCont" style="display: block;">
                <div id="commandp" class="commentList">
                    <div class="pt">
                        <h3 class="pTop">用户评价</h3>
                        <div class="commDetail">
                            <div class="pScore">
                                好评度
                                <strong>
                                    <font id="user-comment-sf">100</font>
                                    <span>%</span>
                                </strong>
                            </div>
                            <div id="sorce-star-sf" class="pPercent">
                                <dl>
                                    <dt>好评</dt>
                                    <dd class="pBar">
                                        <div style="width:100%;"></div>
                                    </dd>
                                    <dd>100%</dd>
                                </dl>
                                <dl>
                                    <dt>中评</dt>
                                    <dd class="pBar">
                                        <div style="width:0%;"></div>
                                    </dd>
                                    <dd>0%</dd>
                                </dl>
                                <dl>
                                    <dt>差评</dt>
                                    <dd class="pBar">
                                        <div style="width:0%;"></div>
                                    </dd>
                                    <dd>0%</dd>
                                </dl>
                            </div>
                            <div class="pBtns">
                                <div>
                                    所有用户都可以对该商品<br />
                                    <a href="javascript:void(0);" class="pbtn2 open_comment">马上评价</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="comment-filter-sf" class="commentAll">
                        <h3 class="curr">
                            <a data-type="0" href="javascript:;">
                                全部评价
                                <font>(0)</font>
                            </a>
                        </h3>
                    </div>
                    <div id="ECS_COMMENT" style="font-size:12px;">
                        <div class="comment_not"><span id="try_report"></span>还没人来评论噢！ </div>
                        <div class="blank5"></div>
                        <div id="comment_show" style="width: 666px; height: 283px; display:none;" class=" jqmID1">
                            <div class="popbox" style="background:none; width:664px; ">
                                <div class="popc" style="width:664px;">
                                    <h2 id="easyDialogTitle"><a class="popwinClose" href="#">关闭</a>发表评论</h2>
                                    <div class="commentsList stat_box">
                                        <form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
                                            <table width="606" border="0" cellspacing="5" cellpadding="0">
                                                <tr width="606">
                                                    <td width="66" align="right">用户名：</td>
                                                    <td>匿名用户</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">E-mail：</td>
                                                    <td><input type="text" name="email" id="email" maxlength="100" value="" class="inputBorder" /></td>
                                                </tr>
                                                <tr>
                                                    <td align="right">评价等级：</td>
                                                    <td>
                                                        <input name="comment_rank" type="radio" value="1" id="comment_rank1" />
                                                        <span class="star s1"></span>

                                                        <input name="comment_rank" type="radio" value="2" id="comment_rank2" />
                                                        <span class="star s2"></span>
                                                        <input name="comment_rank" type="radio" value="3" id="comment_rank3" />
                                                        <span class="star s3"></span>
                                                        <input name="comment_rank" type="radio" value="4" id="comment_rank4" />
                                                        <span class="star s4"></span>
                                                        <input name="comment_rank" type="radio" value="5" checked="checked" id="comment_rank5" />
                                                        <span class="star s5"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">评论内容：</td>
                                                    <td>
                                                        <textarea name="content" class="inputBorder" style="height:100px; width:480px;"></textarea>
                                                        <input type="hidden" name="cmt_type" value="0" />
                                                        <input type="hidden" name="id" value="345" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <div style="padding-left:15px; text-align:left; float:left;">
                                                            验证码：
                                                            <input type="text" name="captcha" class="inputBorder" style="width:50px; margin-left:5px; margin-top:3px; height:30px" />
                                                            <img src="captcha.php?1562189367" alt="captcha" onClick="this.src='captcha.php?'+Math.random()" class="captcha" height="30px">
                                                        </div>
                                                        <input type="submit" class="red_btn_2" value="提交评论" style=" height:30px; line-height:30px; margin-top:10px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear2"></div>
            </div>
        </div>
        <div class="left-box">
           

            <div class="l-recommend">
                <div class="ct">
                    <h2>购买此商品的顾客还买了</h2>
                </div>
                <div class="cm">
                    <ul id="buyrebuy-sf" class="l-buy">
                        <li>
                            <div class="p-img">
                                <a href="#" target="_self"><img alt="新鲜进口泰国龙眼 4斤装" src="Images/344_thumb_G_1446072704182.jpg"></a>
                            </div>
                            <div class="title-a">
                                <a href="#" title="新鲜进口泰国龙眼 4斤装" target="_blank">新鲜进口泰国龙眼 4斤装</a>
                            </div>
                            <div class="p-price">
                                ￥
                                68.0
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="l-recommend" id="history_div">
                <div class="ct">
                    <h2>浏览此商品的顾客还浏览了</h2>
                </div>
                <div class="cm" id='history_list'>
                    <ul id="browserbrowse-sf" class="l-buy"><li><div class="p-img"><a href="#" target="_blank"><img src="Images/345_thumb_G_1446072965604.jpg" alt="现货 台湾芭乐珍珠番石榴 5斤装" /></a></div><div class="title-a"><a href="jinkoushuiguo/345.html" target="_blank" title="现货 台湾芭乐珍珠番石榴 5斤装">现货 台湾芭乐珍珠番石榴 5斤装</a></div><div class="p-price">￥46.0</div></li></ul>
                </div>
            </div>
            
        </div>
        <div class="clear"></div>
    </div>






    <div class="clear1"></div>
    <div id="footer">
        <div class="footer_zd">
            <ul>
                <li class="quanqiu">
                    <a target="_self" href="#"></a>
                </li>
                <li class="chandi">
                    <a target="_self" href="#"></a>
                </li>
                <li class="qcll">
                    <a target="_self" href="#"></a>
                </li>
                <li class="sfzd">
                    <a target="_self" href="#"></a>
                </li>
            </ul>
        </div>
        <div class="foot">
            <div class="pageFooter">
                <div class="middle" style="background:url(Images/logo.png.png) no-repeat left top #FFFFFF;">
                    <ul>
                        <li class="kefu">15382290493</li>
                        <li>周一至周日8:30-22:00</li>
                    </ul>
                </div>
                <div class="right">

                    <ul>
                        <li class="title">新手上路 </li>
                        <li><a href="#" rel="nofollow" title="购物流程">购物流程</a></li>
                        <li><a href="#" rel="nofollow" title="订购方式">订购方式</a></li>
                        <li><a href="#" rel="nofollow" title="常见问题">常见问题</a></li>
                    </ul>

                    <ul>
                        <li class="title">支付方式 </li>
                        <li><a href="#" rel="nofollow" title="货到付款区域">货到付款区域</a></li>
                        <li><a href="#" rel="nofollow" title="配送支付智能查询 ">配送支付智能查询</a></li>
                        <li><a href="#" rel="nofollow" title="支付方式说明">支付方式说明</a></li>
                        <li><a href="#" rel="nofollow" title="礼品卡">礼品卡</a></li>
                    </ul>

                    <ul>
                        <li class="title">合作专区</li>
                        <li><a href="#" rel="nofollow" title="供应商申请">供应商申请</a></li>
                        <li><a href="#" rel="nofollow" title="商务合作">商务合作</a></li>
                        <li><a href="#" rel="nofollow" title="商品资质审核标准">商品资质审核标准</a></li>
                        <li><a href="#" rel="nofollow" title="供应商保证金协议">供应商保证金协议</a></li>
                    </ul>

                    <ul>
                        <li class="title">售后服务</li>
                        <li><a href="#" rel="nofollow" title="售后服务保证 ">售后服务保证</a></li>
                        <li><a href="#" rel="nofollow" title="产品质量保证 ">产品质量保证</a></li>
                        <li><a href="#" rel="nofollow" title="退换货流程">退换货流程</a></li>
                    </ul>
                </div>

            </div>
            <div class="clear"></div>
            <div class="bottom">
                <div class="bottom_kx">
                    <a id="cnnic" target="_blank" href="#">
                        <img border="0" src="Images/kxicon.jpg">
                    </a>
                </div>
                <div class="clear1"></div>
                <div class="siteinfo">
                    <p>
                        <span><a href="#" rel="nofollow" target="_blank">免责条款</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">隐私保护</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">咨询热点</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">联系我们</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">商务合作</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">配送方式</a></span>
                    </p>
                    <p>
                        制作成员：张怀斌 李忠糠 董宇 符启晗 孔正权
                    </p>
                </div>
            </div>
        </div>
        <div align="center">

        </div>
        <img id="flyBuy" />




    </div>

</body>
</html>

