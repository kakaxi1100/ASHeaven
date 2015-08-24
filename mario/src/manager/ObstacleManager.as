package manager
{
	import flash.display.DisplayObjectContainer;
	
	import model.obstacle.ObstacleModel;

	public class ObstacleManager
	{
		private var mModel:ObstacleModel;
		private static var instance:ObstacleManager;
		public function ObstacleManager()
		{
		}
		public static function getInstance():ObstacleManager
		{
			return instance ||= new ObstacleManager();
		}
		
		public function initModel():void
		{
			mModel = new ObstacleModel();
		}
		
		public function showObstacle(parent:DisplayObjectContainer, posx:Number = 0, posy:Number = 0):void
		{
			mModel.showObstacle(parent, posx, posy);
		}
		
		public function getModel():ObstacleModel
		{
			return mModel;
		}
	}
}