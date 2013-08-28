package fairytales.fairyPrincess
{
	import fairytales.Hero;
	
	public class Princess extends Hero
	{	
		//Embed MovieClip
		[Embed(source="assets/princess.swf", symbol="Princess_mc")]
		public static var PrincessMC:Class;
		
		//Embed the image
		[Embed(source="assets/images/hitArea.png")]
		public var Hitter:Class;
		
		public function Princess()
		{
		}
		
		override public function drawHero():void
		{
			view = new PrincessMC();
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