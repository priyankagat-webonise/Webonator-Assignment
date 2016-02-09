function disp()
{
    for(var i=1;i<=100;i++)
    {
        if(i%3==0 && i%5==0)
        {
            document.writeln("foobar");
        }
        else if(i%3==0)
        {
            document.writeln("foo");
        }
        else if(i%5==0)
        {
            document.writeln("bar");
        }
        else
        {
            document.writeln(i);
        }
    }

}

disp();
