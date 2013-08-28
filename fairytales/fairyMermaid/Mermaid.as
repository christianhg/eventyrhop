package fairytales.fairyMermaid
{
	import fairytales.Hero;
	
	public class Mermaid extends Hero
	{	
		//Embed MovieClip
		[Embed(source="assets/mermaid.swf", symbol="Mermaid_mc")]
		public static var MermaidMC:Class;
		
		//Embed the image
		[Embed(source="assets/images/hitArea.png")]
		public var Hitter:Class;
		
		public function Mermaid()
		{
		}
		
		override public function drawHero():void
		{
			view = new MermaidMC();
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