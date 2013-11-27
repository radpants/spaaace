var Game = gamecore.Base.extend("Game",
{
	
},
{
	stars: [],
	
	init: function()
	{
		for( var i = 0; i < 10; i++ )
		{
			this.stars.push( new Star() );
		}
	},
	
});

// ----------------------------------------------------

var game = new Game();