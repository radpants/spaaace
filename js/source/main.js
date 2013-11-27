var game = new Game();

$(function(){
	
	function RenderTemplate(template, options)
	{
		$("body").html(Mustache.render(template.html, options));
		
		_.each(_.pairs(template.actions), function(action){
			var name = action[0];
			var f = action[1];
			$("a#" + name).click(f);
		});
	}
	
	RenderTemplate( Templates.Welcome, {} );
	
});