package fairytales.fairyDuckling
{
	import fairytales.Hero;
	
	public class Duckling extends Hero
	{	
		//Embed MovieClip
		[Embed(source="assets/duckling.swf", symbol="Duckling_mc")]
		public static var DucklingMC:Class;
		
		//Embed the image
		[Embed(source="assets/images/hitArea.png")]
		public var Hitter:Class;
		
		public function Clumsy()
		{
		}
		
		override public function drawHero():void
		{
			view = new DucklingMC();
			view.x = -view.width * 0.5;
			view.y = -view.height * 0.5;
			view.gotoAndStop("front");
			this.addChild(view);
		}	
		
		override public function placeHitter():void
		{
			hitter = new Hitter();
			hitter.x = view.width * 0.5 -  + hitter.width * 0.5;
			hitter.y = view.height - hitter.height;
			view.addChild(hitter);
		}	
	}
}