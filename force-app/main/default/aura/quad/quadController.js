({
	getOpps : function(cmp) {
        
        var action = cmp.get("c.getOpp");
        debugger;
        action.setCallback(this,function(response){
            
            var state = response.getState();
            if(state === "SUCCESS"){
                
                cmp.set("v.opportunity",response.getReturnValue());
            }
            
        });
        
        $A.enqueueAction(action);
		
	}
})