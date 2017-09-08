/*
   方法函数化
  */
  /*window.onload = function(){};
  $();
  function $(){};
  $(function(){
    
  });
  
  innerHTML = 123;
  html(123);
  function html(){
  }
  onclick = function(){}
  click(function(){})
  function click(){}*/
  
  /*window.onload = function(){
    var odiv2 = document.getElementById('div2');
	odiv2.onclick = function(){
	  alert(odiv2.innerHTML);
	}
  }
  */
  
  /*$(function(){
    $('#div2').click(function(){
      alert($(this).html());
    })
  });*/
  
  //链式操作
  $(function(){
    /*var odiv = $('#div2');
	odiv.html('hello');
	odiv.css('background','red');
	odiv.click(function(){
	  alert(123);
	});*/
	
	/*$('#div2').html('hello').css('background','red').click(function(){
	  alert(123);
	});*/
	
  });
  
  /*
    属性选择
	  [=]
	  [^=]开始位置
	  [$=]结束位置
	  [*=]包含
	  引号问题
  */
  $(function(){
    //$('input[value]').css('background','red');
	//$('input[value = 1]').css('background','red');
	//$('input[value^=1]').css('background','red');
	//$('input[value$=1]').css('background','red');
	//$('input[value*=1]').css('background','red');
	//$('div1[class="box box2"]').css('background','red');
  })
  
  /*
    容错处理
  */
  
  
  /*
    取值  合体
  */
  $(function(){
    //odiv.innerHTML = 'hello'
	//alert(odiv.innerHTML);
	
	//$('#div2').html('hello');
	//alert($('#div2').html());
	
	//css('width','200px');
	//css('width');
	
  })
  
  $(function(){
    //alert($('li').html()); //111  当一组元素时候，取值是一组的第一个
    //$('li').html('hello');//当一组元素的时候，赋值是一组中的所有
  });
 
 /*
   jquery 的常用方法
    has();
	not();
	filter();
	next();
	prev();
	find();
	index();索引值 ，第一种：代表的就是当前所有兄弟节点的排第几；第二种：参数（元素）代表的就是所有的这个元素的排第几（两种写法）；
	attr();
 */
 
 $(function(){
   //$('#span1').index('span');
   //$('span').index('$('#span1')');
 })
 
 $(function(){
   //alert($('#div2').attr('title'));
   // $('#div2').attr('title','456');
   //$('#div2').attr('class','box');
 });
 
 //filter() 过滤
 //not()  filter反义词
 
 $(function(){
   // $('div').filter('.box').css('background','red');
   //$('div').not('.box').css('background','red');
 })
 
 //has()  包含
 $(function(){
   //$('div').has('span').css('background','red');;
 });
 
 //next()  下一个兄弟节点  prev() 上一个兄弟节点
 
 //find()  查找
 $(function(){
  // $('#div3').find('h2').css('background','red');
 })
 
 //eq() 查找下标
 $(function(){
   //$('#div3').find('h2').eq(1).css('background','red');
 })
 
 //index(); 索引
  $(function(){
    //alert($('#h').index());//当前元素在所有兄弟节点的位置
  })
  
  /*
    常用方法
	 addClass()    removeClass()  //添加删除样式
	 hasclass()
	 width()       innerWidth()   outerWidth
	 height()      innerHeight()  outerHeight()
	 区别：可以获取隐藏的元素的宽高
	 insertBefore() before() 把元素添加到指定节点外面的前面
	 insertAfter()  after()  把元素添加到指定元素的外面的后面
	 appendTo()    append()把元素添加到指定节点的最后
	 prependTo()   prepend() 把元素添加到指定节点里面的最前面
	 remove()
	 on()          off()
	 scrollTop()
	 toggleClass()  自动添加或删除  属性
  */
 
 $(function(){
   //$('#div1').addClass('box2 box4');
   //$('#div1').removeClass('box2');
 })
 
 $(function(){
   //$('div1').width(); //100
   //$('div1').innerWidth(); //width + padding
   //$('div1').outWidth();  //width + padding + border
   //$('div1').outWidth(true);//width +padding + border + margin
 })
 
 $(function(){
   //$('span').insertBefore($('#div1'));//把span添加到div之前
   //$('#div1').insertAfter($('span'));//把div添加到span之后
   //$('#div1').appendTo($('span'));//把div添加到span中的最后
   //$('#div1').prependTo($('span'));//把div添加到span中最前
 })
 //区别  后续操作变了
 $(function(){
   //$('span').before($('#div1'));//span前面必须是div
 })
 
 $(function(){
   //$('#div1').remove();删除节点
 })
 
$(function(){
  /*$('#div1').click(function(){
   alert(222)
  })
  
  $('#div1').on('click',function(){ //自定义事件
    alert(123);  //
	$('#div1').off();
  });
  
  $('#div1').on('click mouseover',function(){
    alert(123);
	$('#div1').off('mouseover');
  })
  
  $('#div1').on({
    'click':function(){
	  alert(123);
	},
	'mouseover':function(){
	  alert(456);
	}
  });*/
   
})

//scrollTop
$(function(){
  //$(window).click(function(){
  //  alert($(window).scrollTop); //获取滚动距离
  //})
})

/*
 常用方法
  ev  pageX(鼠标的坐标)相对于整个页面
  ev.clientX  相对于可视区
  which（键值）
  preventDefault  阻止默认事件
  stopPropagation 阻止冒泡
  one()
  offset() 距离是相对于页面的    position() 不认margin值
  offsetParent()  parent()
  val()
  size()
  each() //遍历
*/

 $(function(){
   //$('#div1').click(function(ev){
     //ev://兼容后的ev对象
	 // ev.pageX:（相对于文档）  ev.clientX(相对于可视区)
	 //ev.which:    ev.keyCode  //键值
	 //ev.preventDefaule();  //阻滞默认事件
	 //ev.stopPropagation(); //阻止冒泡
	 //return false;  //阻滞默认事件 并  阻止冒泡
	 
   //})
   
   //$('#div1').one('click',function(){
     //alert(2);  //事件只执行一次
   //})
   
   //$('#div2').offset().top; //left 获取到屏幕的距离
   
   //$('#div2').position().top;//left;  获取当前元素变为定位元素到定位元素的距离 ，不算margin
   
   //parent();  获取父级
   //offsetParent();获取有定位的父级
  // $('div4').parent().css('background','blue');
  // $('div4').offsetParent().css('background','blue');
   
   //val();
   //$('input').val();
   //$('input').val(456);
   
   //size();  获取一组元素的长度
   //$('li').size();  //像length
   
   //each();  //循环
   //$('li').each(function(i,elem){  //i 下标 value 对应的元素  this == elem  
    //  $(elem).html(i);
	//if(i == 2){  跳出循环
	  //return false;
	//}
  // })
   
 })
 
 
 
 /*
   get(): 下标和length属性  就是jq转成js
   //scrollHeight  内容高度 
   outerWidth()  针对隐藏元素和参数true
   text()  合体的特列
   remove()  datach()
   $()  $(document).ready();
 */
 
 $(function(){
   //$('#di1').get(0).innerHTML;
   /*
   for(var i=0;i<$('li').length;i++){
      $('li').get(i).style.background = 'red';
   }*/
   /*for(var i=0;i<$('li').get().length;i++){
      $('li').get(i).style.background = 'red';
   }*/
  /* for(var i=0;i<$('li').length;i++){
      $('li')[i].style.background = 'red';
   }*/
   
   //$('#div1').get(0).offsetWidth;//获取不到隐藏的元素的值
   //$('#div1').outerWidth();  //隐藏的元素也获取
   
   //text();
   //$('#div1').text();//不会获取标签 获取的只是文本
   
   /*$('#div1').click(function(){
     alert(123)
   });
   var odiv = $('#div1').remove();
   $('body').append(odiv);  //事件也一块删除
   var odiv = $('#div1').datach();
   $('body').append(odiv);//事件还在
   */
   
 })
 
 $(function(){})//等DOM加载完就可以执行，性能要好
 
 //DOMContentLoaded
 
 //$(document).ready(function(){});
 
 
 /*
   常用的方法
     prev()  上一个兄弟节点
	 next()  下一个兄弟节点
	 frist() 第一个节点
	 last()  最后一个节点
	 children() 获取子元素 参数为筛选 不包括子元素里面的元素
	 find() 获取子元素 查找范围广
	 parent();获取父节点
     parents() 获取当前元素的祖先节点(参数就是筛选功能) 
	 closest();获取最近的指定的祖先节点（包括当前元素自身） 参数必选 只能找到一个元素
	 siblings() 获取元素的兄弟节点(除自己) 参数是筛选
	 nextAll() 下面所有的兄弟节点（除自己） 。。。
	 prevAll()  上面所有的兄弟节点 （除自己） 。。。
	 until()  截至
	 parentsUntil()  从当前元素向上到祖先节点截止元素（不包括两端）参数市截至的元素的位置
	 nextUntil()  从当前元素向下到截止元素（不包括两端）参数市截至的元素的位置
	 prevUntil()  从当前元素向上到截止元素（不包括两端）参数市截至的元素的位置
	 clone()  克隆节点 参数是可以复制之前的操作行为 默认无事件 true为复制行为
	 wrap()  包装 
	 wrapAll()  整体包装  多个span被一个div包装 会改变布局
	 wrapInner()  内部包装  把当前元素所有的子节点包装
	 unwrap()  删除包装（删除父级，不包括body）
	 add()   添加
	 slice()  截取选中
	 serialize()  提交表单时name值 = value值 字符串形式
	 serializeArray() 提交表单时name值 ：'' value值:'' 数组包含json形式
 */
 
 $(function(){
  // $('#div4').parents().css('bckground','red');
  //$('#div4').closest('body').css('bckground','red');
  
  //$('span').siblings().css('background','red');
  //$('span').nextAll().css('background','red');
  
  //$('#div1').clone(true).appendTo($('span'));
  
  //$('spen').wrap('<div>');
  //$('spen').wrapAll('<div>'); //
  //$('spen').wrapInner('<div>');
  
  //var elem = $('#div1');
//  var elem2 = elem.add('span');
//  
//  elem.css('background','red');
//  elem2.css('background','yellow');
  
  //$('li').slice(1,4).css('background','red');
  
  //console.log($('form').serialize()); //string  a=1&b=2&c=3
  //console.log($('form').serializeArray());//[{name:'a',value:'1'},{name:'b',value:'2'},{name:'c',value:'3'}]
 
 })
 
 /*
   jq中的运动
     animmate();参数 1 {} 运动的值和属性 ，2 时间 默认时间400ms 3 运动形式（两种 ：默认 swing(慢快慢) linear（匀速）） 4 回掉函数
	 stop()
	 delay(); //延时
	 delegate()  事件委托
	 undelegate() 阻止事件委托
	 delegateTarget  委托的元素
	 trigger()  主动触发
	 ev.data  
	 ev.target  事件源
	 ev.type
	 
 */
 /*
   常用方法
     hover()  //鼠标移入移出
	 show()      hide()  // 显示  隐藏 参数（fast(200ms) normal(400ms) slow(600ms)）  直接写数字
	 toggle 显示隐藏合体效果
	 fadeIn()    fadeOut()  默认时间400ms
	 fadeToggle();
	 fadeTo()
	 slideDown() slideUp() sildeToggle()
 */
 
 $(function(){
   //$('#div1').hover(function(){//  移入
     //$(this).css('bcakground','blue');
	 //$(this).hide(1000);  //1秒完成
	 //$('#div2').fadeOut(1000);//淡出  1s完成  默认400ms
	 //$('#div2').slideUp();//向上卷起
	 //$('#div2').fadeTo(1000,0.5);// 半透明
   //},function(){  //移出
     //$(this).css('background','red');
	 //$(this).show(1000);
	 //$('#div2').fadeIn();//淡入
	 //$('#div2').slideDown();//向下展开
	 //$('#div2').fadeTo(1000,1);
  // })
 })
 $(function(){
//   $('#div1').click(function(){
//     $(this).animate({width:300（'+=100'）,height:300},4000,'linear',function(){
//	   alert(123);
//	 });

  /*$('#div1').click(function(){
    $(this).animate({
	  width:300        //占位必填
	},{
	  duration:1000,
	  easing:'linear',
	  complete:function(){
	    alert(1);
	  },
	  step:function(a,b){  
	    //console.log(a)  //步幅  检测定时器的每一次的变化
		//console.log(b.pos) //运动过程中的比列值
		//console.log(b)  // 运动中的算法
		$('#div1').html(parseInt(b.pos*28878646));
	  }
	});
  })*/
  
  //队列的概念
  //stop() //清空都列
//	 $(this).animate({width:300},2000).animate({height:300},2000);


//   })
//   
//   $('#div2').click(function(){
//     $('#div1').stop();//默认只会阻止当前运动
//	 $('#div1').stop(true); //阻止后续所有运动
//	 $('#div1').stop(true,true);//第二参数可以立即停止到目标点 （无后续）
//	 $('#div1').finish();//立即停止到所有的目标点
//   })
//   
//   $(this).animate({width:300},2000).delay(1000).animate({height:300},2000);
//   
 })
 
 $(function(){
  /* $('li').on('click',function(){
     this.style.background = 'red';
   });*/
   //$('ul').delegate('li','click',function(){
     //this.style.background = 'red';
	 //$('ul').undelagate();//阻止事件委托
   //});
 })
 
 $(function(){
 // $('#div1').on('click',function(){
//    alert(123);
//  });
//  $('#div1').trigger('click'); //主动触发 利于自定义事件
    //$('#div1').click();
	//$('div').on('click.123',function(){
//	  alert(1);
//	});
//	$('div').on('click.abc',function(){
//	 alert(2);
//	})
//	
//	$('div').trigger('click.abc');

 })
 
 $(function(){
   //$('#div').on('click',{name:'hello'},function(ev){
//     alert(ev.data.name);
//	 alert(ev.target);  //事件源
//	 alert(ev.type);  //事件类型
//   })
 })
 
 ///////////////////////////////////////////
 /*
   $().css()  $().html  $().val   : 只能给jq对象用
   $.xxx()  $.yy()    不仅可以给jq对象用，也可以给js用 叫做工具方法
 */
 
 /*
   $下常用的方法  工具方法
     type()  查看变量类型
	 trim()
	 inArray();
	 proxy()  改变this指向
	 extend() 对象的拷贝
	 noConflict()  防止冲突
	 parseJSON()
	 markArray()
	 
	 isFunction()
	 isNumeric()
	 isArray()
	 isWindow()
	 isEmptyObject(); 判断是不是空的对象
	 isPlainObject()  判断是不是对象自变量  || new Object
	 
	 parseJSON() //把jSON类型的字符串转换成真正的JSON数据 安全性好 要按照严格的JSON 
	 parseHTML() 用来解析htML的形式的字符串 ，转成DOM节点，放到一个数组中
	 parseXML()  用来解析XML形式的字符串，转成真正的XML节点
	 isXMLDoc()  判断是不是XML
	 
 */
 
 $(function(){
   //var a = 'hello';
   //alert($.type(a));//可以判断数据类型
   
   //var str = ' hello ';
   //alert('('$.trim(str)')');//去除空格
   
   //var arr = ['a','b','c','d']
   //alert($.inArray('a',arr));
   
   //function show(){
//     alert(this)
//   }
//   //show();
//   $.proxy(show,document)();
//   
//   function show(n1,n2){
//     alert(n1)
//	 alert(n2)
//     alert(this)
//   }
//   //show();
//   $.proxy(show,document)(3,4);
//   $.proxy(show,document,3,4)();
//   $.proxy(show,document,3)(4);

    //function show(){
	 // alert(this);
	//}
    //$(document).click(show);//
	//$(document).click($.proxy(show,window,3,4));
	
	/*var a = {
	  name:'hello'
	  name1:{age:'20'}
	}
	var b = {};
	$.extend(b,a,{age:'20'});//默认浅拷贝
	//$.extend(true,b,a);//深拷贝
	b.name1.age = 30;
	alert(a.name);*/
//
 })
 
 //$ ,JQuery
 /*var miaov = $.noConflict();
 miao(function(){
   miao('body').css('background','red')
 })*/
 
 //var str = '{"name":"hello"}';
 //$.parseJSON(str).name
 
 window.onload = function(){
   //var adiv = document.getElmentsByTagName('div');  //类数组  
   //$.markArray(adiv).push();
   
 }
 
 /*
   JQ插件
   
   $.browser()  //功能性的
     - http://jquery.thewikies.com/browser/
   
   $.cookie();
     - https://github.com/carhartl/jquery-cookie#readm
   
   e-calendar
     - http://www.jq22.com/jquery-info541
	 - 用法和jq是相同的
 */
 
 //alert($.browser.name);
 
 
 //$.cookie('name','hello',{expires:7/*7天过期时间*/});
 
 //alert($.cookie('name'))
 
  
  /*
    UI组件
	  JQuery UI
	    - http://jquery.com/
		- 交互，部件，特效，工具
		- 配置参数，方法，自定义事件
		- css主题
	  
	  JQuery EasyUI
	    - http://www.jeasyui.com/
		- 更强大的后台交互控件
		- datagrid操作
  */
  
  /*$(function(){
    $('#div1').draggable({
	  cursor:'move',
	  axis:'x',
	  handle:'span'，
	  start:function(){
	    $(this).css('background','blue')
	  }
	});
	
	$('#btn4').click(function(){
	  $('#div1').draggable('destroy');//取消拖拽
	})*/
	
	/*$('#div1').on('dragstart',function(){
	
	    $(this).css('background','blue')
	  
	});*/
	
  })
  
  /*
   清空内容
     html('')
	 empty()
    
	删除节点
	  remove();无后续事件，事件也删除
	  detach();删除元素，但是可以保留原元素的事件
  */
   $(function(){
     //$('#div1').empty();
   }) 
   
   /*
     text()
	   获取文本的特点
	 
	 替换节点
	   replaceWidth()
	   replaceAll()
   */
	$(function(){
	  //$('#div1').text();//获取一个集合所有的文本
	  //$('#div1').text('<h1>aaa</h1>');// 设置问别人呢 <h1>aaa</h1>;
	  //$('#span1').replaceWith($('#div1'));
	  //$('#div1').replaceAll($('#span1'));
	  
	})
	
	/*
	  事件扩展
	    hover()
		  mouseener,mouseleave
		  与over,out区别
		
		focusin()  //光标移入  支持冒泡
		focuout()  光标移出
		  与focus，blur区别  不支持冒泡
		
		one()  执行一次
	*/
	
	$(function(){
	  /*$('#div1').hover(function(){
	    $(this).css('background','blue');
	  },function(){
	    $(this).css('background','red');
	  })*/
	  
	  
	  
	})
	
	/*
	 on()   能接受5个参数
	   源码分析几大参数
	   获取原生event
	     》》originalEvent
		 》》changedTouches
		-自定义事件
     
	 touchstart  移动端触摸事件
	 
	 
	 triggerHandler  //不会触发事件自带的默认行为
	   与trigger()区别
	*/
	$(function(){
	  //$('#div1').on('click','span',(name:"hello"),function(ev){
	    //console.log(ev.data.name)
		//alert(123);//div下的span会触发点击事件
	 // })
	})
	
	$(function(){
	 // $('#div1').on('touchstart',function(ev){
	    //alert(ev.originalEvent.changedTouches);
	  //})
	})
	
	$(function(){
	 /* $('#div1').on('zoomIn',function(){
	     $(this).css('width',200);
	  })
	  $('#div1').on('zoomOut',function(){
	    $(this).css('width',700);
	  })
	  
	  //$('#div1').trigger('zool');
	  
	  $('#div1').on('DOMMouseseScroll',function(ev){
	    if(ev.originalEvent.detail>0){
		  $(this).trigger('zoomIn')
		}else if(ev.originalEvent.detail<0){
		  $(this).trigger('zoomOut');
		}
	  })*/
	  
	})
	
	$(function(){
	  /*$('#input1').on('foucs',function(){
	    this.style.bacground = 'red';
	  })
	  $('#input2').on('click',function(){
	    //$('#input1').trigger('focus');
		$('#input1').triggerHandler('focus');
	  })*/
	  
	  
	  
	})
	
	
	/*
	  event对象
	    stopImmediatePropagation()
		  >>与stopPropagation()区别
		  》注意顺序问题
		 which的鼠标值
		   注意加到mousedown上
	  ready()
	    与$(function(){})关系
		与原生window.onload的区别
		ready的问题
	*/
	$(function(){
	  
	  /*$('#div1').on('click',function(){
	    alert(123);
	  })
	  
	  $('#span1').on('click',function(ev){
	    ev.stopPropagation();//阻止父级的事件
		//ev.stopImmediatePropagation();//会阻止本身的事件
	  })
	  
	  $('#span1').on('click',function(ev){
	    alert(456);
	  })*/
	  
	})
	
	$(function(){
	  /*$('#span1').on('mousedown',function(ev){
	    alert(ev.which)
	  })*/
	})
	
	/*$(function(){//等DOM加载完就会执行
	  $('img').load(function(){
	    alert($('img').width());
	  });
	});
	$(document).ready(function(){});
	$(window).load(function(){});//等整个页面加载完会执行*/
	
	/*
	  JQ截止操作
	    nextUntil()
		prevUntil()
		parentsUntil()
		
	  数据缓存
	    data()
		  prop()
		  与attr的三者的区别
		  removeAttr(),  removeProp(),  removeData()
	*/
	
	$(function(){
	  //$('#span1').parentsUntil('body').css('border','1px red solid');//祖先节点不包括两端
	})
	
	$(function(){
	  //$('#div1').data('name','hello'); //设置缓存 把数据存到了一个大的集合中
	  //alert($('#div1').data('name'));  //读取缓存
	  
	  //$('#div1').attr('name','hello'); //设置 通过setAttribute()方法
	  //alert($('#div1').attr('name'));  //读取 通过getAttribute()方法
	  
	  //$('#div1').prop('name','hello'); //设置 通过 . []  设置
	  //alert($('#div1').prop('name'));  //读取
	})
	
	/*
	 JSON形式的设置
	   on()
	   css()
	   attr()
	   
	 回调形式的设置
	   addClass()
	   html()
	   val()
	   
	   
	*/
	$(function(){
	  //$('div').css({width:100,height:200,background:'red'});
	  //$('div').on({click:function(){},mouseover:function(){}})
	  
	  //$('div').addClass('box');
	  $('div').adClass(function(i,oldClass){
	    //console.log(i);
		//console.log(oldClass);
		
		//return 'box'+(i+1);
	  })
	})
	
	/*
	 $.工具方法
	   $.marge()  合并数组 两个数组
	   $.map()    
	   $.grep()
	   $.unique()  去重只是针对DOM节点的去重方法
	   $.inArray()  查找数组的位置 类似于indexof
	   $.makeArray()  转成数组
	   $.trim()  去掉字符串的前后空格
	*/
	
	$(function(){
	  
	  //var a = [1,2,3]
	  //var b = [4,5,6];
	  
	  //var c = $.marge(a,b);
	  
	  //var arr = ['a','b','c'];
	  
	  //$.map(arr,function(val,i){
	    //return val+i;
		//return 'hello';
	  //})
	  //console.log(arr)
	  
	  //var arr = [1,5,3,8,2];
	  
	  //$.grep(arr,function(val,i){
	    //return val>4;
	  //})
	  //console.log(arr)
	/*  
	 var $div = $('div').get(0); 
	  
	  var arr = []
	  for(var i=0;i<$div.lrngth;i++){
	    arr.push($div[i]);
	  }
	  
	  console.log(arr)
	  arr = $.unique(arr);
	  console.log(arr);*/
	  
	  //var arr = ['a','b','c','d'];
	  //alert($.inArray('b',arr));//1 
	  
	  /*var adiv = document.getElementsByTagName('div');
	  adiv = $markArray(adiv)
	  adiv.push();
	  console.log(adiv);*/
	  
	 // var str = ' hello '
	 // alert('('+ $.trim(str) +')')
	})
	
	/*
	 防止库冲突
	   $.noConflict()
	 
	 遍历
	   $.each();
	 
	 后退链式操作
	   end();
	 
	 后退添加链式操作
	   addBack();
	*/
	
	//var J = $.noConflict();
	
	$(function(){
	  $('div').each(function(){
	    
	  })
	  
	 // var arr = ['a','b','c'];
	 // var obj = {'name':'hello','age':'20'};
	  
	  $.each(arr,function(i,val){  //可循环对象
	   // console.log(i);
		//console.log(val);
	  });
	})
	
	$(function(){
	  //$('div').next().css('background','red').end().css('color','blue');
	  
	  //$('div').next().css('background','red').addBack().css('color','blue');
	  
	  //$('div').add('span').css('color','blue');
	  
	})
	
	/*
	 jq中的队列  存储的都是函数
	  $.queue()  入队
	  $.dequeue()  出队
	    概念与参数的意义
		队列名称
	  
	  queue() 
	  dequeue()
	    源码分析运动队列
		默认队列名fx
		队列的具体应用
	*/
	
	$(function(){
	
	  /*function a(){
	    alert(1)
	  }
	  function b(){
	    alert(2)
	  }
	  function c(){
	    alert(3)
	  }
	
	  $.queue(document,'miaov',a)
	  $.queue(document,'miaov',b)
	  $.queue(document,'miaov',c)
	  
	  $.dequeue(document,'miaov');
	  $.dequeue(document,'miaov');
	  $.dequeue(document,'miaov');
	  
	  $(document).queue('miaov',a)
	  $(document).queue('miaov',b)
	  
	  $(document).dequeue('miaov')
	  $(document).dequeue('miaov')*/
	  
	 /* function a(){
	    $(this).css('background','blue')
		$('div').dequeue('fx')
	  }
	  
	  $('div').animate({width:200})
	  $('div').queue('fx',a);
	  $('div').queue('fx',function(){
	     setTimeout(function(){
		   $('div').dequeue();
		 },2000)
	  })
	  $('div').animate({height:200})
	  $('div').animate({left:200})*/
	
	})
	
	/*
	jq中的回调对象
	 $.Callbacks()
	   基本概念与写法
	     add
		 remove
		 fire
	 应用场景
	 
	 四大参数
	   once
	   memory
	   unique
	   stopOnFalse
	*/
	/*
	 jq中的延时对象
	  $.Deferred()
	   基本概念与用法
	     》与Callbacks()对比学习
		 应用场景
		 状态的定义
		 状态的映射
		   resolve 
		   done
		   reject
		   fail
		
		ajax中的应用
		  》$.when()
		 利用状态的应用
	 
	*/
	
	$(function(){
	  /*function a(){
	    alert(1)
	  }
	  function b(){
	    alert(2)
	  }
	  
	  var ab = $.Callbacks();
	  
	  ab.add(a);
	  ab.add(b);
	  ab.fire();
	  ab.add(c);
	  ab.remove(a);
	  ab.fire();*/
	  
	  function a(){
	    alert(1)
	  }
	  function b(){
	    alert(2)
	  }
	  
	  //var ab = $.Callbacks('once');//只能触发一次
	  //var ab = $.Callbacks('memory');//fire前后写的全部触发
	  //var ab = $.Callbacks('unique');//去掉重复的函数
	  //var ab = $.Callbacks('stopOnFasle');//检测函数中有return false，有直接返回，后续不会执行
	  //var ab = $Callbacks('once memory');
	  
	 /* ab.add(a);
	  ab.add(b);
	  ab.fire();
	  ab.add(c);
	  ab.remove(a);
	  ab.fire();*/ 
	  
	 /* var ab = $.Callbacks();
	  
	  setInterval(function(){
	    alert(1);
		ab.fire();
	  },1000);
	  
	  ab.add(function(){
	    alert(2)
	  })*/
	  
	 /* var cb = $.Deferred();
	  
	  setInterval(function(){
	    alert(1);
		cb.resolve(); //解决
		cb.reject(); //未解决
	  })
	  cb.done(function(){ // 成功
	    alert(2);
	  })
	  cb.fail(function(){ // 失败
	    alert(2);
	  })
	  
	  $.ajax({
	    url:'',
		success:function(){},
		error:function(){}
	  })
	  
	  $.ajax('xxx.php').done(function(){}).fail(function(){});
	  
	  var cb = $.Deferred();
	  $('input').click(function(){
	    setTimeout(function(){
		  cb.resolve(); //状态解决后会报持
		},2000);
		cb.done(a)
	  })
	   function a(){
	     alert(1);
	   }
	   
	   //$.ajax('xxx.php').done(function(){});
	  // $.ajax('yyy.php').done(function(){});
	  
	  $.when($.ajax('xxx.php'),$.ajax('yyy.php')).done(function(){});*/
	   
	})
	
	/*
	 JQ源码架构
	  基于面向对象程序
	    - 实列方法
		- 静态方法
		- this对象格式
		- 下标
	*/
	
	$(function(){
	   
	  /* $('div').css('background','red');
	   $('div')[1].style.background = 'red';
	   
	   var arr = new Array();
	   arr.push();
	   arr.sort(); 
	   
	////////   --------------------源码中
	   function $(selector){
	     
	     return new Jquery();
		 
	   }
	   
	   function Jquery(selecto){
	     //selector > 获取相应的元素
		 //this  == $('div')
		 
		 this = { //存储的元素都是原生的
		   0:div1,
		   1:div2,
		   length:3
		 }
		 
	   }
	   Jquery.prototype.css = function(){
	     for(var i=0;i<this.length;i++){
		   
		 }
		 
	   }*/
	   
	 //////////////////////////////////////
	   
	})
	
	/*
	  jQ插件编写
	  $.fn.extend()
	    this指向
      
	  $.extend()
	  
	  编写插件基本格式
	    分析jquery.e-calenda
		配置参数
		方法
		自定义事件
	  
	  实列：编写选项卡插件
	    
	*/
	
	$.extend();
	$.fn.extend();
	
	$.extend({
	  //trim:function(){},
	 // type:function(){}
	})
	
	/*$.extend({
	  lefttrim:function(str){
	    return str.replace(/^\s+/g,'');
	  }
	})
	
	var str = ' hello ';
	
	$.lefttrim(str)*/
	
	$.fn.extend({
	  size2:function(){
	    //return this.length;
	  }
	})
	
	//$('div').size12();
	
	/*
	 sizzle选择器
	   介绍与实现接口
	     - $() > find()
		
		通用选择
		*
		
		层级选择
		  >
		  +
		  ~
	*/
	
	$(function(){
	
	  //$('*').css('border','2px solid red')
	  //$('#div1').find('*').css('border','1px solid red')
	  //$('div span').css('border','1px solid red')
	  //$('div > span').css('border','1px solid red');//父子级关系的
	 // $('p + span').css('border','1px solid red');//选择下一个兄弟节点
	 // $('p ~ span').css('background','1px solid red')//下面所有的兄弟节点
	  
	})
	
	/*
	  基本选择
	    animated() 寻找有运动的元素
		eq()
		even  奇数行
		odd  偶数行
		first  第一个
		last  最后一个
		gt(i) 索引大于i的元素
		lt(i) 索引小于idea元素
	*/
	
 $(function(){
   /*$('div').eq(0).animate({width:300},5000)
   
   $(document).click(function(){
     $('div:animated').css('background','blue')
   })*/
   
 })
 
 /*
   内容选择
     contains()
	 empty  选择内容为空的元素
	 parent  选择有内容的元素
	 
  可见性筛选
    hidden  选择隐藏的元素
	visible  选择显示的元素
 */
 
 $(function(){
    //$('div:contains(div111)').css('border','1px #000 solid')
 })

/*
 子元素筛选
   first-child  //第一个子元素
   last-child  //最后一个子元素
   first-of-type  此元素的一个
   last-of-type  此元素的最后一人
   nth-child()  此元素在全部的第几个
   nth-of-type()  此元素的第几个
   only-child  只有一个元素被选择
   only-of-type  只有一个此元素被选择
*/

/*
 表单筛选
   :button
   :checkbox
   :radio
   :checked
   :disabled  禁止操作
   :enabled  非禁止的
   :selected 下拉菜单选中的
*/

/*
 filter() 筛选
 not()   过滤
 has()  包含
*/

/*
 jq中的调试
  基于firebug的插件firequery
    自动注入jquery库
	查看当前jquery库版本
	高亮对应选择DOM元素
	数据缓存查看
*/


/*
 JQ中的模板引擎
   概念与作用
    基于JQ的Jsviews模板
	http://www.jsviews.com/
	Jsrender
	  模板使用
	  模板语法
	  
	JsViews
	  MVVM 动态数据
	  
	JsObservable
	  数据交互
*/

/*
  单元测试 Qunit
    什么是单元测试
	  与功能测试和集成测试的区别
	  单元测试的好处
	
	Qunit的使用
	  标签
	    quint
		  测试主题区域
		
		quint-fixture
		  进行DOM测试
*/
	
	
	/*
	  jquery Mobile
	    基于jquery开发
		用于创建移动web应用的开发框架
	  
	  data 
	    data-role
		  page
		  header
		  content
		  footer
	  
	*/
