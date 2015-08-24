package manager
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.IBullets;
	import base.port.ICollisional;
	
	import model.mario.MarioModel;

	public class MarioManager
	{
		private var mModel:MarioModel;
		
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
			mModel = new MarioModel();
		}
		
		public function showMario(parent:DisplayObjectContainer, posx:Number = 0, posy:Number = 0):void
		{
			mModel.showMario(parent, posx, posy);
		}
		
		public function checkCollision(c:ICollisional):void
		{
			mModel.checkCollsion(c);
		}
		
		public function createBullets(b:IBullets):void
		{
			mModel.createBullets(b);
		}
		
		public function update():void
		{
			mModel.update();
		}
	}
}