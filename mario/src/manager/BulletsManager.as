package manager
{
	import base.port.ICollisional;
	
	import model.bullets.cannonbullet.CannonBulletModel;

	public class BulletsManager
	{
		private var mModel:CannonBulletModel;
		private static var instance:BulletsManager;
		public function BulletsManager()
		{
		}
		public static function getInstance():BulletsManager
		{
			return instance ||= new BulletsManager();
		}
		
		public function initModel():void
		{
			mModel = new CannonBulletModel();			
		}
		
		public function checkCollision(c:ICollisional):void
		{
			//mModel.checkCollsion(c);
		}
		
		public function update():void
		{
			mModel.update();
		}
		
		public function getModel():CannonBulletModel
		{
			return mModel;
		}
	}
}