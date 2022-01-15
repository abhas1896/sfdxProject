({
    saveAccount: function(component, event, helper) {
        var action = component.get("c.createLeadRecord");
        action.setParams({
            leadObj: component.get("v.leadObj")
        });
        action.setCallback(this, function(response) {
            component.set("v.isShow", false);
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.message", "Lead created successfully");
            } else if (state === "ERROR") {
                alert("Problem saving contact, response state: " + state);
            } else {
                alert("Unknown problem, response state: " + state);
            }
        });
        $A.enqueueAction(action);
    },
    
    getCarsAvailable: function(component, event, helper) {
        var action = component.get("c.getCarsAvailable");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var result = response.getReturnValue();
                var CarsAvailableMap = [];
                for (var key in result) {
                    CarsAvailableMap.push({ key: key, value: result[key] });
                }
                component.set("v.CarsAvailableMap", CarsAvailableMap);
            }
        });
        $A.enqueueAction(action);
    }
    
});