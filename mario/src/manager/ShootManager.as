package manager
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.IBullets;
	
	import model.shoot.cannonshoot.CannonShootModel;

	public class ShootManager
	{
		private var mModel:CannonShootModel;
		private static var instance:ShootManager;
		public function ShootManager()
		{
		}
		public static function getInstance():ShootManager
		{
			return instance ||= new ShootManager();
		}
		
		public function initModel():void
		{
			mModel = new CannonShootModel();			
		}
		
		public function showBullets(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mModel.showBullets(parent,posx, posy);
		}
		
		public function createBullest(down:IBullets, up:IBullets, explode:IBullets):void
		{
			mModel.createBullets(down, up, explode);
		}
		
		public function update():void
		{
			mModel.update();
		}
		
		public function getModel():CannonShootModel
		{
			return mModel;
		}
	}
}