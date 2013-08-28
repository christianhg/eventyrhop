package fairytales.fairyMermaid
{
	import fairytales.Background;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class MermaidBackground extends Background
	{
		//Embed image
		[Embed(source="assets/images/background.png")]
		private var BackgroundImage:Class;
		
		//Private properties
		private var _backgroundImage:DisplayObject;
		private var _background:Sprite;
		
		public function MermaidBackground()
		{
			_backgroundImage = new BackgroundImage();
			_background = new Sprite();
			_background.addChild(_backgroundImage);
			this.addChild(_background);
		}
	}
}