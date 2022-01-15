({
	loadOptions : function(component) {
		var types = [{class: "optionClass",label: "5k",value: "5k"},
                     {class: "optionClass",label: "10k",value: "10k"},
                     {class: "optionClass",label: "Half-Marathon",value: "Half-Marathon"}];
		component.find("Type").set("v.options", types);
	},
    
    createNewRace : function(component){
    
        var action = component.get("c.newRaceDB");
        action.setParams({"race" : component.get("v.newRace")});
        action.setCallback(this,function(response) {
            var state = response.getState();
            if(component.isValid() && state === "SUCCESS"){
                console.log("Race Successfully Added");
                var appEvent = $A.get("e.c:AddToRaceList");
                appEvent.setParams({"race" : response.getReturnValue()});
                appEvent.fire();
            }else if(state === "ERROR"){
                
                var errors = response.getError();
                if(errors) {
                    if(errors[0] && errors[0].message){
                        console.log("Error Message:  " + errors[0].message);
                    }
                }else{
                    console.log("Unknown error");
                }
            } else{
                
                console.log("Action state returned was: " + state);
            }
        }) 
        $A.enqueueAction(action);
}
})