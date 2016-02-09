var name=prompt("User Name", "User Name");
var word1=prompt("Enter First Word","word1");
var word2=prompt("Enter Second Word","word2");
var word3=prompt("Enter Third Word","word3");
var word4=prompt("Enter Fourth Word","word4");
var word5=prompt("Enter Fifth Word","word5");

var color1=prompt("Enter Color","Red");

var arr=["This is good.","Happy days.","Happy to see you.","This is my favorite color.","He is busy now .","Weather is cool.","I like to wear hat.","He is coming from home.","I am going back."];

arr.push("I am "+name);
arr.push(word1+" is difficult to understand.");
arr.push(word2+" rear thing.");
arr.push(word3+" is carring with him.");
arr.push("He looking for "+word4+".");
arr.push(word5+" is usefull.");

var copyArray=[];

function shuffle(o){
    for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
    return o;
}

shuffle(arr);

for(var i=0;i<arr.length;i++)
document.write(arr[i]+" ");
