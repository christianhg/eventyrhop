package fairytales.fairyPrincess
{
	import fairytales.Platform;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class Pillow extends Platform
	{
		[Embed(source="assets/images/pillow.png")]
		private var PillowImage:Class;
		
		private var _pillowImage:DisplayObject;
		private var _view:Sprite;
		
		public function Pillow()
		{
		}
		
		override public function draw():void
		{
			_pillowImage = new PillowImage();
			_view = new Sprite();
			_view.addChild(_pillowImage);
			_view.x = -_view.width * 0.5;
			_view.y = -_view.height * 0.5;
			this.addChild(_view);
		}
	}
}