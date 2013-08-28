package fairytales.fairyMermaid
{
	import fairytales.Platform;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class Shell extends Platform
	{
		[Embed(source="assets/images/shell.png")]
		private var ShellImage:Class;
		
		private var _shellImage:DisplayObject;
		private var _view:Sprite;
		
		public function Shell()
		{
		}
		
		override public function draw():void
		{
			_shellImage = new ShellImage();
			_view = new Sprite();
			_view.addChild(_shellImage);
			_view.x = -_view.width * 0.5;
			_view.y = -_view.height * 0.5;
			this.addChild(_view);
		}
	}
}