({
    handleClick:function(cmp,event)
    {
         var attribute = cmp.get("v.text");
        console.log("current value"+attribute);
        var target;
        if(event.getSource)
        {       
             //framework
             target = event.getSource();
            cmp.set("v.text",target.get("v.label"));
        }
        else{
            
            //hybrid button
            target = event.target.value;
            cmp.set("v.text",event.target.value+"***");
            
        }
    }
    
    
})