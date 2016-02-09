var library = [
{
author: "Bill Gates",
title: 'The Road Ahead',
readingStatus: true
},
{
author: 'Steve Jobs',
title: 'Walter Isaacson',
readingStatus: true
},
{
author: 'Suzanne Collins',
title: 'Mockingjay: The Final Book of The Hunger Games',
readingStatus: false
}];

function disp(arr)
{
    for(var i=0;i<arr.length;i++)
    {
        document.writeln("Author : " + arr[i].author);
        document.writeln("Title : " + arr[i].title);
        document.writeln("Reading Status : " + arr[i].readingStatus);
    }
}

disp(library);
