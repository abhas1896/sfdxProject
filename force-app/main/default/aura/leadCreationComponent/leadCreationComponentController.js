({
    doInit: function(component, event, helper) {
        helper.getCarsAvailable(component, event);
    },
    
    save: function(component, event, helper) {
        helper.saveAccount(component, event);
    },
    
    handleCarsAvailable: function(component, event, helper) {
        var carsAvailable = component.get("v.leadObj.Cars_Available__c");
        
    }
});