function disp(mark)
{
    var avg=0,grade;
    for(var i=0;i<mark.length;i++)
    {
        avg+=mark[i];   
    }
    var num=avg/mark.length;
   if(num<100 && num>=90)
    {
        grade='A';
    }
    else if(num<90 && num>=80)
    {
        grade='B';
    }
    else if(num<80 && num>=70)
    {
        grade='C';
    }
    else if(num<70 && num>=60)
    {
        grade='D';
    }
    else
    {
        grade='F';
    }
    document.writeln("Average Marks = "+num+ " and Grade is " + grade);   
}

disp([80,77,88,95,68]);
