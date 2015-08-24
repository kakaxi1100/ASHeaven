package manager
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.ICollisional;
	
	import model.mario.MarioModel;
	import model.mario.data.MarioData;

	public class MarioManager
	{
		private var mMario:MarioModel;
		
		private static var instance:MarioManager;
		public function MarioManager()
		{
		}
		public static function getInstance():MarioManager
		{
			return instance ||= new MarioManager();
		}
		
		public function initModel():void
		{
			mMario = new MarioModel();
		}
		
		public function showMario(parent:DisplayObjectContainer, posx:Number = 0, posy:Number = 0):void
		{
			mMario.showMario(parent, posx, posy);
		}
		
		public function checkCollision(c:ICollisional):void
		{
			mMario.checkCollsion(c);
		}
		
		public function update():void
		{
			mMario.update();
		}
	}
}