/*
let  命令  用来声明一个变量，和var相似
const 命令  用来声明一个常量，常量就是不可以变化的量


使用的let的注意事项
  let声明的变量 所声明的变量的代码块内有效。
  
  let 命令声明的变量在域解析的时候不会被提升
  
    let f = 10;
	function(){
	  f = 7;  //暂时性死区
	  let  f = 2;
	}
	
  let不允许在同一个作用域下声明已经存在的变量
    let 在for 循环中应用
	
	var btns = documen.querySelectorAll('button');
	for(var iu=0;i<btns;i++){
	  btns[i].click = function(){
	    alert(i)
	  }
	}
	
	for(let i=0;i<btns.length;i++){
	  btns[i].onclick = function(){
	    alert(i)
	  }
	}
	
	在循环句之内是一个父作用域，在循环之中是一个子作用域
	
	
	const命令同样有上面let的123条特点，第一所声明的常量只在其所在的代码块内有效，第二声明的常量不会被提升，第三 不能声明已经被声明过的的常量，除了这些，在使用const声明的时候需要注意的两点
	  1  声明的时候必须赋值
	  
	  2  声明的常量存储简单的数据类型时候不可以改变其值，如果存储的对象，那么引用不可以被改变，至于对象里面的数据如何变化，是没有关系的
	
	const c;  报错
	
	const a = 1;
	a = {};  //报错
	
	const obj = {a:10};
	obj.a = 20;
	alert(obj)  //20;
	
   变量的解析赋值
     概念
	   本质上是一种匹配模式，只要等号两边的模式相同，那么左边的变量就可以被赋予对应的值
	  结构赋值主要分为
	    1  数组的解析赋值
		2 对象的结构复制
		3  基本类型的解析赋值
		
		
   let a = 1;
   let b = 2;
   let c = 3;
   
   let {a,b,c} = {1,2,3};
   
   

		数组的解析赋值
		
		let [a,[[b],c]] = [1,[[2],3]]
		
		let [,,c] = [1,2,3];
		
		alert(c); //3
		let [x] = [];
		
		alert(x)  //let x   //undefined;
		
		let [y = 1] = []
		alert(y)  //1
		
		
		对象的解析赋值
		let {a,b} = {b:bbb,a:aaa};
		
		console.log(a,b)  //aaa  bbb
		
		let {a:b} = {a:1}
		console.log(b)  //1
		console.log(a)  //defined
		
		
		基本类型的解析赋值
		let [a,b,c,d] = '1234';
		console.log(a,b,c,d)  1 2 3 4
		
		let {length:len] = 'miaov';
		console.log(len)  //5
		
		let {toString:ts} = 1;
		let {toString:bs} = true;
		
		console.log(ts === Number.protypetype.toString);
		console.log(bs === Boolean.pprototype.toString);
		
		//null undefind  不能进行结构赋值
		
		数据结构set
		  集合的概念：集合是由一组无序且唯一（即不能重复）的项组成的，这个数据结构使用了与有限集合相同的数学概念，应用在计算机的数据结构总。
		  特点 ；key和value相同，没有重复的value
		  
		  es6提供了数据结构set 。他类似于数组，但是成员的值都是唯一的，没有重复的值
		  
		  如何创建一个set
		  
		  const s = new set([1,2,3])
		  
		  console.log(s);
		  
		  set类的属性
		  console.(s.size);//3
		  
		  set类的方法
		   1 set.add(value)添加一个数据，返回set结构本身
		     s.add('a').add('b').add('c')
		     console.log(s);
		   
		   2 set.delete(value) 删除指定数据，返回一个布尔值，表示删除是否成功
		     s.delete('a');
		   
		   3 set.has(value)  判断该值是否set的成员，返回一个布尔值
		   
		      s.has('a');  //false
		   
		   4 set.clear()  清除所有数据，没有返回值
		     
			 s.clear(); //   清空
		   
		   5 key()  返回键名的遍历器
		   
		      s.key(); //123bc
		   
		   6 value() 返回值的遍历器
		   
		     s.value(); //123bc
		   
		   7 entries  返回值对的遍历器
		   
		     console.log(s.entries()); //[1,1],[2,2],[3,3][b,b],[c,c]
		   
		   8 forEach() 使用回掉函数遍历每个成员
		   
		     s.forEach(function(value,key,set){
			   console.log(value + 'miaov')
			 })		   
		   
		   s.add(1);  
		   console.log(s)  123bc
		   
		   
		   数据结构Map
		      字典：是用来存储不重复key的Hash结构，不同于集合（set）的是，字典使用的是[键，值]的形式来存储数据结构的
			  
			javascript的对象 （object：{}）只能用字符串当作键。这给他的使用带来很大的限制
			
			为了解决这个问题，es6提供了Map数据结构，他类似与对象，也是键值对的集合，但是键的范围不限于字符串，各种类型的值（包裹对象）都可以当作键。也就是说，object结构提供了“字符串-值”的对应，Map结构提供了“值-值”的对应，是一种更完善的Hash结构实现，如果你需要"键值对"的数据结构，Map比object更适合
		 var data1 = {a:1},data2 ={b:2},obj ={};
		 obj[data1] = 1;
		 obj[data2] = 2;
		 
		 console.log(obj);//  2;
		 
		 console.log(data1.toString() === data2.toString);
			
		 如何创建一个Map
		 
		   const map = new Map([
		     ['a',1],
			 ['b',2]
		   ])
		   
		   console.log(map)  a =>1  b =>2
		 
		 
		 Map 类的属性
		 
		   console.log(map.size)
		 
		 Map 类的方法
		   
		    1 set(key,value)设置建明key对应的键值味value，然后返回整个map结构。如果key已经有值，则键值会被更新，否则就新生成该建。
			
			 map.set('miaov','ketang').set('new','fq')
			
			
			2 get(key)  get方法读取key对应的键值，如果找不到key，返回undefined
			
			  map.get('new');
			
			3 delete(key) 删除某个键，返回true，如果删除失败，返回false
		       map.delete('a'); 
			   
			4  has(key) 方法返回一个布尔值，表示某个间是否在当前Map对象之中。
			  map.has('miaov')
			
			5 clear()  清除所在所有的数据 ，没有返回值
			  map.clear();
			  
			6 keys() 返回建明的遍历器
			  
			   map.keys();
			  
			7 values()  返回键值的遍历器
			
			   map.value();
			   
			8 entries() 返回键值对的遍历器
			
			  map.entries();
			
			9 forEach()  使用回掉函数遍历每个成员
			  
			  
			  map.forEach(funvtion(key,value,map){
			    console.log(key + ':' +value)
			  });
			
			map 注意事项
			
			  map.set(NaN,10).set(NaN.,100)  //NaN => 100
			  
			  map set({},'x').set({},'y') // {}=>x  {}=>y
			  
			  map里面的key的排列顺序是按照添加顺序进行排列的
			  
		
		Iterator 和 for 。。。 of 循环
		  
		  基本概念
		    在es6中新增了set和map两种数据结构，再加上js之前的原有的数组和对象，这样就有了四种数据集合，平时还可以组合使用他们，定义自己的数据结构，比如数组的成员是Map，Map的成员是对象等，这样就需要一种统一的接口机制，来处理所有不同的数据结构
			
			Iterator就是这样一种机制，它是一种接口，为各种不同的数据结构提供统一的访问机制。任何数据结构只要部署Iterator接口，就可以完成遍历操作，而且这种遍历操作是**依次**处理该数据结构的所有成员。
			
			Iterator遍历器的作用
			   为各种数据结构，提供一个统一的简编的访问接口。
			   使得数据结构的成员能够按某种次序排列。
			   es6新增了遍历命令for 。。。 of  循环，Iterator接口主要提供for 。。。 of 消费
			   
			 手写Iterator
			  const arr = [1,2,3];
			  function iterator(arr){
			    let index = 0;
				return {
				  next:function(){
				    return index<arr,length?
					{value:arr[index++],done:false}:
					{value:undefined,done:true}
				  }
				};
			  }
			  
			  const it = iterator(arr);
			  
			  console.log(it.next())
			  console.log(it.next())
			  console.log(it.next())
			  console.log(it.next())
			  
			Iterator的遍历过程
			 创建一个指针对象，只想当前数据结构的起始位置。也就是说，遍历器对象本质上，就是一个指针对象。
			 第一次调用指针对象的next方法，可以将指针指向数据结构的第一个成员。
			 第二次调用指针对象的next的方法，指针就指向数据结构的第二个成员。
			 第三次调用指针对象的next的方法，直到它指向数据结构的结束位置。
			 
			 每一次调用next方法，都会返回数据结构的当前成员的信息。具体老说，就是返回一个value和done两个属相的对象，其中，value属性是当前成员的值，done属性是一个布尔值，表示便利是否结束。
			 
		凡是具有Symbol.iterator属性的数据结构都具有Iterator接口
		
		const arr = [1,2,3];
		const set = new Set([a,b,c]);
		const map = new Map(['a',1]);
		
		const itarr = arr[Symbol.iterator]();
		const itset = set[Symbol.iterator]();
		const itmap = map[Symbol.iterator]();
		
		console.log(itarr);
		console.log(itset);
		console.log(itmap);
		
		console.log(itset.next());
		console.log(itset.next());
		console.log(itset.next());
		console.log(itset.next());
		
		const obj = {};
		
		const.log(obj[Symbol.iterator]);  //undefined;
		
		具备iterator接口的数据接口类型抖可以进行如下操作
		  解构赋值
		  扩展运算符
		  
		  let [x,y] = set;
		  
		  console.log(x,y);
		  
		  //...
		  
		  let str = 'miaov';
		  
		  let arrstr = [...str];
		  
		  console.log(arrstr);  //['m','i','a','o','v'];
		  
		  const arr2 = [{},1,'a',1,'a','b',[]];
		  
		  console.log([...new Set(arr2)])//去重
		  
	   for 。。。of循环
		  const ofarr = [1,2,3,4];
		  for(let i of ofarr){
		    console.log(i);//1 2 3 4
		  }
		
		  const m = new Map();
		  
		  m.set.('a',1).set('b',2).set('c',3)
		  
		  for(let i of m){
		    console.log(i); //['a',1]['b',2]['c',3]
		  }
		  
		  for(let [key,value] of m){
		    console.log(key,value);// a 1  b 2  c 3
		  }
		  
		  //如何给一个不具备iterator接口的数据类型部署一个iterator接口
		  
		  const d = {
		    '0':'m',
			'1':'i',
			'2':'a',
			'3':'o',
			'4':'v',
			length:5
		  };
		  
		  
	 class 语法
	   
	   js语言的传统方法是通过构造函数，定义并生成新对象，是一种基于限制的面向对象系统。这种写法跟传统的面向对象语言，（比如c++和java）差异很大，很容易让新学习这门语言的感到困惑，所以，在es6中新增了类的概念，可以使用class关键字声明一个类，之后以这个类实列化对象
	   
	 
	 const Miaov = function(a,b){
	   this.a = a;
	   this.b = b;
	   return this;
	 }
	 
	 miaov.prototype = {
	   constructor:Miaov,
	   print:function(){
	     console.log(this.a+' '+this.b)
	   }
	 }
	 
	 const miaov = new Miaov('hello','world').print(0;
	 
	 class Miaov {
	   constructor(a,b){
	     this.a = a;
		 this.b = b;
		 return this;
	   }
	   print(){
	     console.log(this.a + '  '+this.b)
	   }
	 }
	 
	 const miaov = new Miaov('hello','world').print();
	 console.log(typeof Miaov);
	 
	 Miaov中的constructor方法是构造方法。this关键字则代表实列对象，也就是说，es5的构造函数Miaov，对应es6的Miaov这个类的构造方法
	 Miaov这个类除了构造方法，还定义了一个print方法，注意，定义‘类’的方法的时候，前面不需要加上function这个关键字，直接把函数定义放进去就可以了，另外。方法之间不需要逗号隔开，加了会报错
	 构造函数的prototype属性，在es6中‘类’上面继续存在，erqie类的所有方法抖定义在类的prototype属性砂上面
	 
	   console.log(Miaov.prototype);
	 
	 定义的类中的方法都是不可以枚举的
	 
	   console.log(object.keys(miaov.prtotype));
	   
	 constructor方法是类的默认方法，通过new命令生成对象，自动调用该方法，一个类必须有constructor方法，如果没有显示定义，一个空的constructor方法会被默认添加
	   
	   class p{};
	   
	   const p = new P();
	   console.oog(p);
	 
	 生成类的实列对象的写法，与es5完全一样，也是使用new命令，如果忘记加上new，想函数那样调用class，将会报错
	   
	   
	   class的继承
	   
	     extends  子类继承父类的属性和方法
	     static 
	     super  子类继承父类的属性
	   
	 子类继承父类，使用extends关键字
	 为父类指定静态方法，使用static方法名字
	 super：
	   在构建函数可以当一个函数来使用，相当于父类的原型对象，并且会自动绑定this到子类上
	 
	 
	 
	 Symbol
	   什么是Symbol？
	     Symbol，表示独一无二的值，他是js中的第七种数据类型。
	   
	   
	   基本的数据类型  Null undefined Number Bollean  String Symbol
	   引用数据类型  object
	   
	let s1 = Symbol(); 
	let s2 = Symbol();
	 console.log(s1);//’Symbol‘
	 console.log(s1 === s2); ///false;
	 
	Symbol函数不能使用new否则会报错，原因在于Symbol是一个原始类型的值，不是对象。
	 函数接受一个字符串的参数，表示对Symbol的描述，主要是为了在控制台显示，或者转换为字符串的时候，比较容易区分
	
	let s3 = new Symbol();//报错
	 
	let s4 = Symbol('miaov');
	let s5 = Symbol('leo');
	
	console.log(s4,s5);//  参数是对Symbol的描述  描述一样也不相等
	
	Symbol 数据类型转换
	  console.log(String(Symbol('miaov')));//Symbol(miaov)
	  console.log(Symbol('leo').toString());  //Symbol(leo)
	  
	  console.log(!!Symbol());//true;
	  
	  console.log(Number(Symbol()));//报错
	  
	  //Symbol不能进行运算符运算
	  console.log(Symbol('momo'+'ppp'));//报错
	  console.log(Symbol('miaov')+100); //报错
	
	作为对象的属性名
	  let yyy = Symbol(yyy);
	  
	  const obj = {};
	  
	  obj[yyy] = 'hello';
	  console.log(obj);//{Symbol(yyy):'hello'}
	  
	  console.log(obj[yyy]);//hello
	
	  let ss = Symbol('ss')
	  const data = {
	    [ss]:'miaov'
	  };
	  console.log(data);//{Symbol(ss):'miaov'}
	  console.log(data[ss]);
	  
	  const data = {
	    [Symbol()]:123,
		a:1,
		b:2
	  };
	  console.log(data);//{Symbol:123}
	  console.log(data[Symbol()]);//undefined;
	  //不能被for in循环遍历，虽然不能被遍历，但也不是私有的属性，可以通过Object.getOwnPropertySymbols方法获得一个对象的所有的Symbol属性
	  for(let i in data){
	    console.log(i);//a b
	  }
	  console.log(Object.getOwnPropertySymbols(data));//[symbol()]
	  console.log(data[Object.getOwnPeopertySymbol(data)[0]]);//123
	
	
	
	字符串的扩展
	  模板字符串
	
	   let html = '<ul>
	                <li>
					  <span></span>
					  <span></span>
					  <span></span>
					  <span></span>
					</li>
				  </ul>';  //报错
				  
		let html = `<ul>
	                <li>
					  <span></span>
					  <span></span>
					  <span></span>
					  <span></span>
					</li>
				  </ul>`;		
		console.log(html)//正常 
		//拼接
		let html = `<ul>
	                <li>
					  <span>${'首页'}</span>
					  <span></span>
					  <span></span>
					  <span></span>
					</li>
				  </ul>`;
		let flag = true;
	    let html = `<ul>
	                <li>
					  <span>${'首页'}</span>
					  <span></span>
					  <span class="${flag?'show':'hide'}"></span>
					  <span></span>
					</li>
				  </ul>`;
	
	  了解一下新增的属性
	    repeat
	    inclueds()  查找字符串里面是否包含此字符串 返回布尔值
		startsWidth()  endWidth(); 查找字符串开始和结束包含这个字符串
		
	  let str1 = 'a';
	  let str2.repeat(3);
	  console.log(str2);//aaa;
	
	  let str = 'miaov';
	  console.log(str.includes('ao'));/true;
	  console.log(str.includes('aos'));/false;
	  
	  console.log(str.startsWdith(m));//true
	  
	  数组的扩展
	    Array.form() 把类数组转成数组
		  
		  var lis = document.querySelectorAll('li');
		  var lis2 = Array.form(lis);
		  console.log(lis2);//[li,li,li]
		  console.log(Array.isArray(lis));//true
		
		Array.of() 声明一个数组
		  const arr = Array.of(1);
		
		find() 查找此数组中是否包含此元素  返回第一个此元素  不符合返回 -1  
		
		findIndex() 查找此数组中是否包含此元素  返回第一个此元素的下标  不符合返回 undefined
		
		 
		  
		 const arr = [1,2,3,4];
		 let res = arr.find(function(a){
		   return a<2;
		 });
		 console.log(res);
		 
		
		fill(); 给定一个值  给数组填充
		  const arr = [1,2,3,4];
		  arr.fill('abc');
		  console.log(arr);// ['abc','abc','abc']
		  arr.fill('abc',1,3)
		  console.log(arr)'//[1,'abc','abc',4]
		  
	对象的扩展
	  对象的简洁表示法
	  
	    let a = 1;
		const obj = {
		  a:a
		}
		console.log(obj);//{a:1}
		
		const obj = {a};
		console.log(obj);//{a:1}
		
		const obj = {
		  fn:function(){
		    console.log(1);
		  },
		  fn2(){
		    console.log(2)
		  }
		};
		
		obj.fn();
		obj.fn2();
		
	  
	  Object.is();  判断两个数据是否一样 返回值布尔值
	    console.log(Object.is(NaN,NaN));//true
		console.log(Object.is(+0,-0);//false
	    
	  
	  Object.assign();用于对象的合并，将原对象的所有可枚举属性，复制到目标对象。
	     let obj1 = {a:1};
		 let obj2 = {a:2,b:3};
		 let obj3 = {c:'abc'}
		 
		 Object.assign(obj1,obj2,obj3);
		 console.log(obj1);//{a:2,b:3,c:"abc"}
		 
	函数的扩展
	   1 为函数参数指定默认值
	   2 函数rest参数
	   3 箭头函数
	   
		 function fn(a,b){
		   a = a||10;
		   b = b||20;
		   console.log(a+b)
		 }
		 fn();
		 fn(0,10); //20
		 
		 function fn(a=10,b=20){
		   console.log(a+b);
		 }
		 fn();//30
		 fn(0,10);//10
		 
		 rest参数形式为（“...变量名”），用于获取函数的多余参数，这样就不需要使用arguments对象了，rest参数搭配的变量是一个数组，该变量将多余的参数放入数组中；
		 
		 function sum(){
		   var args = arguments;
		   var res = 0;
		   for(var i=0;i<args.length;i++){
		     res += args[i];
		   }
		   console.log(res);
		 }
		 sum(1,2,3,4,5);
		 
		 function sum(a,...arr){
		    var res = a;
			for(var i=0;i<arr.length;i++){
			  res += arr[i]
			}
			console.log(res)
		 }
		 sum(10,1,2,3,4,5);//25
		 
		 使用”箭头“（=>）定义函数。
		 
		 const fn = a =>a;
		 const fn2 = function(a){
		   return a;
		 }
		 console.log(fn(1));  //1
		 console.log(fn2(2))  //2
		 
		 const fn = (a,b) => a+b;
		 console.log(fn(1,2)); //3
		 
		 const fn = (a,b) => {
		   a = a*2;
		   b = b*2;
		   return a+b;
		 }
		 console.log(fn(1,2))
		 
		 const fn = (a,b) => ({a,b});
		 console.log(fn(1,2));//{a:1,b:2}
		 
		 var arr = [5,2,3,4,1];
		 
		 arr.sort(function(){
		   return a-b;
		 })
		 
		 arr.sort((a,b)=>a-b)
		 
		 注意事项
		   箭头函数体内没有自己的this对象，所以在使用的时候，其内部的this就是定义时所在的对象，而不是使用时所在环境的对象,不能给箭头使用call apply bind 去改变内部的this指向
		   function fn(){
		     setTimeout(function(){
			   console.log(this)
			 });
			 setTimeout(()=>{
			   console.log(this)
			 })
		   }
		   var obj = {a:1};
		   
		   fn.call(obj);//window  object
		   
		  箭头函数体内没有arguments对象，如果要用。可以用rest参数代替
		    function fn(){
			  setTimeout(()=>{
			    console.log(arguments)
			  },1000)
			}
			fn(1,2,3);//fn的arguments
			const fn = (...arr) => arr
			console.loog(fn(1,2,3,4));
			
		  不可以当作构造函数，不可以使用new命令，否则回抛出一个错误 
		     const fn = () => a+b;
			 const f = new fn(1,2)
			 
		  箭头函数不能用Generator函数
	 
  Promise
	 概念： Promise是通过es6中新增的异步编程解决方案，体现在代码中他是一个对象，可以通过Promise构造函数来实列化。
	  
	  new Promise(cb) ===>实列的基本使用 Pending Resolved Rejected
	  
	  两个原型方法
	    Promise.prototype.thien() ;//捕获Promise加载完成时执行的函数
		Promise.prototype.catch(); //捕获加载失败的实行的函数的异常
		
	  两个常用的静态方法；
	    Promise.all();
		Promise.resolve();
		
	  new Promise(cb)
	  Pending(进行中) ===> Resolved(已完成)
	  pending(进行中) ===> Rejected(已失败)
	  
	  const imgs ={
	    'http://i1.piimg.com/1949/4f411ed22ce88950.jpg'
		'http://i1.piimg.com/1949/4f411ed22ce6ba6f.jpg'
		'http://i1.piimg.com/1949/4f411ed22cefec5f.jpg'
	  }
	  
	  const p = new Promise(function(resolve,reject){
	    const img = new Image();
		img.src = imgs[0];
		img.onload = function(){
		  resolve(this)
		};
		img.onerror = function(){
		  reject(new Error('加载失败'));
		}	
	  })
	  //异步加载
	  console.log(123) ;
	  p.then(function(img){
	    console.log('加载完成')
	    document.body.appendChild(img)
	  },function(err){ //不推荐
	    console.log(err);
	  }).catch(function(err){
	    console.log(err);
	  })
	  console.log(456)
	  
	  function loadimg(url){
	    const p = new Promise(function(){
		  const img = new Image();
		  img.src = url;
		  img.onload = function(){
		    resolve(this);
		  };
		  img.onerror = function(){
		    reject(new Error('图片加载失败'));
		  };
		});
		return p;
	  }
	  
	  loadimg(imgs[0]).then(function(){
	    document.body.appendChild(img);
	  });
	  
	  Promise.all可以将多个Promise实列包装成一个新的Promise实列
	  
	     当所有Promise实列的状态都变成resolved，Promise.all的状态才会变成resolved，此时返回值组成一个数组，传递给then的redolve函数。
		 只要其中有一个被rejected，Promise.all的状态就变成redjected，此时第一个被reject的实列的返回值，会传递给p的回掉函数
	 
		
		const alldone = Promise.all([loadimg(imgs[0]),loadimg(imgs[1]),loadimg(imgs[2])])
		
		alldone.then(function(datas){
		  //console.log(datas);
		  datas.forEach(fuction(item,i){
		    document.body.appendChild(item)
		  })
		}).catch(function(err){
		  console.log(err)
		});
		
    参数是Promise实列。将不会任何修改，原封不动的返回这个实列
	Promise.resolve(loadimg(imgs[0])).then(function(img){
	  document.body.appendChild(img)
	})
	
	将对象转为Promise对象，然后就会立即执行thenable对象的then方法。
	Promise.resolve({
	  then(reslove,reject){
	    const img = new Image();
		img.src = imgs[1];
		img.onload = function(){
		  resolve(this)
		}
	  }
	}).then(function(img){
	  document.body.appendChild(img)
	})
	
	参数是一个基本的数据类型或者不传参数，那么返回一个状态为resolved的Promise对象
	Promise('miaov').then(function(str){
	  console.log(str);
	});
	
	const p = Promise.resolve();
	console.log(p);// 返回 Promise 的 resloved状态
		
	
	
  sprea	
   能把数组展开
   能把对象展开
   function fn(normal,...re){
     ott(...re);
   }
   fn(1,2,3,4)
   function ott(a,b,c){
     console.log(a+B+c);
   }
		
 模板字符串
   语法  `name ${'c'}a`; //字符串拼接
   
 结构赋值
   let human = {
     id:0,
	 name:'flowek',
	 child:{
	   c1:'r',
	   c2:'s'
	 }
   }
   let {id:ide1,name,child:{c1,c2}} = human;
   console.log(id1,name,c1,c2);
   
   类
    class a{
	  constructor(a,b,c){
	    this.a =a;
		this.b = b;
		this.c = c;
	  }
	  move(){
	    console.log('i');
	  }
	  hand(){
	    
	  }    
	}
	let a1 = new a(1,2,3);
	
	console.log(a1.a,a1.b,a1.c);
	a1.move();
	
	class h extends a {
	  constructor(name){
	    super(2,3,4)
	    this.name = name;
	  }
	}
	let h1 = new h('f');
	console.log(h.a);//2
	
	
	
		
*/

/*const map = new Map([
  ['a',1],
  ['b',2]
])
console.log(map)*/
             /* const arr = [1,2,3];
              function iterator(arr){
			    let index = 0;
				return {
				  next:function(){
				    return index<arr.length?
					{value:arr[index++],done:false}:
					{value:undefined,done:true}
				  }
				};
			  }
			  
			  //const it = iterator(arr);
			  const it = arr[Symbol.iterator]();
			  
			  console.log(it.next())
			  console.log(it.next())
			  console.log(it.next())
			  console.log(it.next())*/
	  
	const d = {
	  'k':'m',
	  'l':'i',
	  '2':'a',
	  '3':'o',
	  '4':'v',
	  length:5
	};
	function iterator1(d){
	   let index = 0;
	   let arr = [];
	   for(let attr in d){
	     arr.push(attr);
	   }
	   return {
	     next:function(){
		   return index<arr.length?
	       {key:arr[index],vlaue:d[arr[index++]],done:false}:
		   {key:undefined,value:undefined,done:true};
		 } 
	   }
	};
	
	//let {k:x} = d;
	//console.log(x);
	
	//const it1 = iterator1(d);	
	/*console.log(it1.next());
	console.log(it1.next());
	console.log(it1.next());
	console.log(it1.next());
	console.log(it1.next());
	console.log(it1.next());
	console.log(it1.next());*/
	
	/*let human = {
     id:0,
	 name:'flowek',
	 child:{
	   c1:'r',
	   c2:'s'
	 }
   }
   let {id:id1,name,child:{c1,c2}} = human;
   console.log(id1,name,c1,c2);*/
	
	/*var arr = [];
	var i;
	for(i in d){
	  arr.push(i);
	}
	
	for(i of d){
	  console.log(i)
	}*/
	
	/*<!--let set = new Map([
	  ['a',1],
	  ['b',2]
	 ]); //new Set([1,2,3])
	
	const set = new Set(['a','b','c']);
	
	
	
	const itset = set[Symbol.iterator]();
	console.log(itset.next());-->*/
	
	
	    /*const arr = [1,2,3];
		const set = new Set(['a','b','c']);
		const map = new Map([['a',1]]);
		
		const itarr = arr[Symbol.iterator]();
		const itset = set[Symbol.iterator]();
		const itmap = map[Symbol.iterator]();
		
		console.log(itarr);
		console.log(itset);
		console.log(itmap);
		
		console.log(itset.next());
		console.log(itset.next());
		console.log(itset.next());
		console.log(itset.next());
		
		const obj = {};
		
		console.log(obj[Symbol.iterator]); */ //undefined;
	
	//class继承
window.onload = function(){
	const canvas = document.querySelector('#canvas');	
	const ctx = canvas.getContext('2d');
	
	const w = canvas.width = 600;
	const h = canvas.height = 400;
	
	class ball{
	  constructor(x,y,r){
	    this.x = x;
		this.y = y;
		this.r = r;
		this.color = `rgb(${~~ball.rpfn([55,255])},${~~ball.rpfn([55,255])},${~~ball.rpfn([55,255])})`;
		return this;
	  }
	  render(ctx){
	    ctx.save();
		ctx.translate(this.x,this.y);
		ctx.fillStyle = this.color;
		ctx.beginPath();
		ctx.arc(0,0,this.r,0,2*Math.PI)
		ctx.fill();
		ctx.restore();
		return this;
	  }
	  static rpfn(arr){ //ball.rpfn([1,-10])
	    let max = Math.max(...arr),
		    min = Math.min(...arr);
		return Math.random()*(max-min)+min;
	  }
	  
	}
	
	//const ball1 = new ball(100,100,30).render(ctx)
	
	class superball extends ball {
	  constructor(x,y,r){
	    //ball.call(this,x,y,r); //报错
	    super(x,y,r);
		this.vy = superball.rpfn([2,4]);
		this.g = superball.rpfn([0.2,0.4]);
		this.a = 0;
		return this;
	  }
	  move(ctx){
	    //super() ;///报错
		this.y += this.vy;
		this.vy += this.g;
		let current = this.vy*-0.7;
		if(this.y+this.r>=ctx.canvas.height){
		  this.y  = ctx.canvas.height - this.r;
		  if(Math.abs(current - this.a)<0.1){
		    return false;
		  }
		  this.a = this.vy *= -0.7;
		}
		
		ctx.clearRect(0,0,ctx.canvas.width,ctx.canvas.height);
		
		super.render(ctx);
		
		return true;
	  }
	};
	
	const ball2 = new superball(100,100,30).render(ctx);
	
	let ball1, tiemr;
	canvas.onclick = function(ev){
	  let x = ev.offsetX,y = ev.offsetY;
	  let r = ~~ball.rpfn([25,55]);
	  ctx.clearRect(0,0,ctx.canvas.width,ctx.canvas.height)
	  ball1 = new superball(x,y,r).render(ctx);
	  
	  ballmove();
	}
	
	function ballmove(){
	  timer = window.requestAnimationFrame(ballmove);
	  if(!ball1.move(ctx)){
	    window.cancelAnimationFrame(timer);
	  }
	}
	
}
