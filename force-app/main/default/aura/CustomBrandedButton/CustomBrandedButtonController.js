({
    doInit : function() {
//        helper.initLabels(component);
//		var labelValue = $A.get("$Label.c."+component.get("v.buttonLabel"));
//        alert("labelValue : " + labelValue);
//		component.set("v.buttonTitle", labelValue);
    },
    handleClick : function(component) {
        var attrValue = component.get("v.buttonURL");
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({"url": attrValue});
        urlEvent.fire();
	}
})