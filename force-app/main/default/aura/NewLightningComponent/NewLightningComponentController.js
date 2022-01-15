({
	onSingleSelectChange: function(cmp){
        
        var selectCmp = cmp.find("InputSelectSingle");
        cmp.set("v.heman", selectCmp.get("v.value"));
    }
})