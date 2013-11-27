function Link(actionName, displayContent)
{
	return "<a href=\"#\" id=\"" + actionName + "\">" + displayContent + "</a>";
}

var Templates = {
	
	Welcome: {
		
		html: "<!-- Begin template: Welcome -->"
        + "<div>"
            + "<h1>Welcome</h1>"
            + Link("begin", "Begin")
            + Link("hello", "Say Hi")
        + "</div>",
		
		actions: {
			"begin" : function(e){
				e.preventDefault();
				console.log("Hello!");
			},
			"hello" : function(e){
				e.preventDefault();
				console.log("Hi");
			}
		}
	} 
	
};