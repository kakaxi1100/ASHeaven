package manager
{
	import base.port.ICollisional;
	
	import model.bullets.BulletsModel;

	public class BulletsManager
	{
		private var mModel:BulletsModel;
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
			mModel = new BulletsModel();			
		}
		
		public function checkCollision(c:ICollisional):void
		{
			mModel.checkCollsion(c);
		}
		
		public function update():void
		{
			mModel.update();
		}
		
		public function getModel():BulletsModel
		{
			return mModel;
		}
	}
}