package fairytales.fairyClumsy
{
	import fairytales.Platform;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class Dirt extends Platform
	{
		[Embed(source="assets/images/dirt.png")]
		private var DirtImage:Class;
		
		private var _dirtImage:DisplayObject;
		private var _view:Sprite;
		
		public function Dirt()
		{
		}
		
		override public function draw():void
		{
			_dirtImage = new DirtImage();
			_view = new Sprite();
			_view.addChild(_dirtImage);
			_view.x = -_view.width * 0.5;
			_view.y = -_view.height * 0.5;
			this.addChild(_view);
		}
	}
}