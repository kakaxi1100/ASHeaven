package manager
{
	import base.port.IBullets;
	
	import model.bullets.cannonbullet.CannonBulletModel;

	public class BulletsManager
	{
		private var mModel:Vector.<CannonBulletModel>;
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
			mModel = new Vector.<CannonBulletModel>();			
		}
		
		public function createBullets():IBullets
		{
			var temp:CannonBulletModel = new CannonBulletModel();
			mModel.push(temp);
			return temp;
		}
		
		public function update():void
		{
			for each(var item:CannonBulletModel in mModel)
			{
				item.update();
			}
		}
		
	}
}