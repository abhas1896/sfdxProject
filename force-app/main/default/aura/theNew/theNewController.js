({ 
	add : function(component) {
        
        var sum = component.get("v.num1") + component.get("v.num2");
        component.set("v.sum",sum);
		
	},
    
    multip : function(component) {
    
    	var multi = component.get("v.mul1") * component.get("v.mul2");    
        component.set("v.multi",multi);
	}
})