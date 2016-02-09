function dup(arr)
{
var temp=[],num=1;
var a=[],b=[];
temp=arr;
var i;
temp.sort();
for( i=0;i<temp.length;i++)
{


    for(var j=i+1;j<temp.length;j++)
    {
        if(temp[i]==temp[j])
        {
            num++;
        }
    }
    a.push(temp[i]);
    b.push(num);
 
    i+=num-1;
 
    num=1;
}
for(var i=0;i<a.length;i++)
{
document.write(a[i]+" is present "+b[i]+" times in a array..");
}

}

dup([1,2,2,1,3,5,1,2,5,6,1,1,7,7]);

