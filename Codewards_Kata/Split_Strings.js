function solution(str){
  var array_str = [];
  var str2 = str;
  if (str.length % 2 == 1){
    var str2 = str+'_';
  }
  for (let i = 0; i < str2.length; i+=2){
    array_str.push(str2.substring(i,i+2));
  }
  return array_str
}

solution("abcdefgh")
