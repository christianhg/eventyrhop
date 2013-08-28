package fairytales.fairyDuckling
{
	import fairytales.Platform;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class Rock extends Platform
	{
		[Embed(source="assets/images/rock.png")]
		private var RockImage:Class;
		
		private var _rockImage:DisplayObject;
		private var _view:Sprite;
		
		public function Dirt()
		{
		}
		
		override public function draw():void
		{
			_rockImage = new RockImage();
			_view = new Sprite();
			_view.addChild(_rockImage);
			_view.x = -_view.width * 0.5;
			_view.y = -_view.height * 0.5;
			this.addChild(_view);
		}
	}
}