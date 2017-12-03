<?php 

/*echo 'hello,php';
echo '<br>';
echo 'string';
echo '<br>';
echo 1;
echo '<br>';
echo 1.5;*/


//echo true;
/*echo false;*/
//var_dump(true);

//$newsTitle = 'miaov';
//$newsTitle2 = ' news';  //���������ı������ܱ�ʶ��,˫��ſ�ʶ��
//$newsTitle3 = "��ζ����$newsTitle2";
//echo $newsTitle.$newsTitle2.$newsTitle3;
//
//echo '<br>';
//
//echo trim($newsTitle2);
//
//echo strlen($newsTitle2);
//
//echo strlen($newsTitle3);
//
//echo mb_strlen($newsTitle3);

//$connection = mysql_connect('localhost', 'root', '');
//
//var_dump($connection);

//$null = null;
//var_dump($null);
//$null;
//var_dump($null);
//$null = 1;
//unset($null);
//var_dump($null);

/*
 * 定义一个数组
 * array()
 * []
 * 
 * 1 多个元素组成
 * 2 元素之间独立
 * 3 每个元素相当于一个变量
 * 4 每个元素是一个键值对（key=>value）
 * 
 * 键不要求必须连续
 * 可以为整数或字符串
 * 键必须唯一
 * 
 * 值可以是整数，浮点数，字符串，布尔型
 * 可以是数组
 * 
 * 数组按照向数组添加的顺序进行输出，而不是按照键的大小进行输出
 * print_r()  简介的输出数组
 * 
 * 添加数组的方法
 *   array(value,value2,..)/[vlaue1,value2,...]
 *   array(key1=>value1,key2=>value2,..)/[key1=>value1,key2=>value2,...]
 * 
 * 定义后添加
 *   数组变量[] = value 此时key值按照array中最大的key的数字+1
 *   数组变量[key]=value
 * 
 * 修改变量
 *   数组的变量[key] = new value
 * 
 * 删除数组的元素
 *   unset(数组变量[key])
 * 
 * 获取数组的元素
 *   数组变量[key]
 * 
 * 遍历数组（无key）
 *   foreach(数组变量 as $value){
 * 	     处理数组元素$value的代码
 *   }
 * 
 *   foreach(array as $key => $value){
 * 	    处理数组元素$key和数组元素值$value的代码
 *   }
 * 
 * 多维数组
 *   数组元素的值是另一个数组
 * 
 * 二维数组里添加元素
 *   数组变量[] = vlaue
 *   数组变量[key] = vlaue
 *   数组变量[key1][key2] = vlaue
 * 
 * 修改二维数组元素值
 *   数组变量[key] = new value
 *   数组变量[key1][key2] = new value
 * 
 * 删除数组元素
 *   uset(数组元素[key])
 *   unset(数组元素[key1][key2])
 * 
 * 获取二维数组元素
*   数组变量[key]
*   数组变量[key1][key2]
*  
* 遍历二维数组（无key） 
*   foreach(array as $value){
* 	  ...
*   }
*    
*   (有key)
*   foreach(array as $key => $value){
* 	   ....
*   }
* 

* 
* 
* 
* 
* * */
//$newsList = array();
//$newsList2 = [];
//
//var_dump($newsList);
//var_dump($newsList2);

//$newsList = array('news1', 'news2','news3');
//$newsList2 = ['news1','news2','news3'];
//
//var_dump($newsList);
//echo '<br>';
//var_dump($newsList2);

//$newsList3 = array(
//0 => 'news1',
//1 => 'news2',
//2 => 'news3',
//);
//var_dump($newsList3);

//$newsList4 = array(
//'a' => 'news0',
//10 => 'news1',
//1 => 'news2',
//2 => 'news3',
//'string' => 'news4',
//'array1' => 'news5',
//'init' => 1,
//'float' => 1.5,
//'bool' => true,
//'array2' => array(),
//'array' => array(1,2,3),
//);
//var_dump($newsList4);
//
//echo '<br>';
//	
//$newsList4[] = 'news6';
//$newsList4[-1] = 'news7';
//$newsList4[-1] = 'news8';
//$newsList4[11] = 'news9';
//
//unset($newsList4[-1]);
//	
//print_r($newsList4);
//	
//echo '<br>';
//	
//foreach($newsList4 as $value){
//	echo '<br>'.$value;
//};
//
//echo '<br>';
//	
//foreach($newsList4 as $key => $value){
//	echo 'key='.$key.', value='.$value
//.'<br>';
//};

//$news = array(
//'05-17','news1', 'miaov.com'
//);
//
//print_r($news);
//
//echo '<br>';
//
//echo $news[0];
//echo '<br>';
//echo $news[1];
//echo '<br>';
//echo $news[2];
//echo '<br>';
//	
//$news2 = array(
//'time' => '05-17',
//'title' => 'news1',
//'link' => 'miaov.com',
//);
//
//echo $news2['time'];
//echo '<br>';
//echo $news2['title'];
//echo '<br>';
//echo $news2['link'];
//echo '<br>';
	
//$newsList = array(
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
//  'isNew' => 'yes'
// ),
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
// ),
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
// )
//);
//
//$newsList[] = array(
//'time' => '05-17',
//'title' => 'news1',
//'link' => 'miaov.com',
//);
//
//$newsList[0]['isNew1'] = 'no';
//$newsList[1] = array(
//'time' => '05-11',
//'title' => 'news2',
//'link' => 'miaov.com.cn'
//);
//
//$newsList[2]['title'] = 'new3';
//$newsList[2]['time'] = '05-12';
//
//unset($newsList[0]['isNew']);
//
//print_r($newsList);
	
//$newsList = array(
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
//  'isNew' => 'yes'
// ),
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
// ),
// array(
//  'time' => '05-17',
//  'title' => 'news1',
//  'link' => 'miaov.com',
// )
//);
//	
//foreach($newsList as $value){
//	//echo $value['time'].$value['title'];
//	//echo '<br>';
//	//print_r($value);
//	
//	foreach($value as $v){
//		echo $v;
//	};
//	echo '<br>';
//};
//	
//	echo '<br>';
//	
//foreach($newsList as $key => $value){
//	echo '这是第'.($key+1).'条新闻';
//	echo $value['time'].'<a href="#">'.$value['title'].'</a>'.$value['link'].'<br>';
//};
	
//三位数组
$newsList = array(
   array(
    'time' => '05-17',
    'title' => 'news1',
    'link' => 'miaov.com',
    'isNew' => 'yes'
   ),
   array(
    'time' => '05-17',
    'title' => 'news1',
    'link' => 'miaov.com',
   ),
   array(
    'time' => '05-17',
    'title' => 'news1',
    'link' => 'miaov.com',
   )
);
	
	

?>