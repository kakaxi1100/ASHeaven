package manager
{
	import flash.display.DisplayObjectContainer;
	
	import model.obstacle.ObstacleModel;

	public class ObstacleManager
	{
		private var mObstacle:ObstacleModel;
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
			mObstacle = new ObstacleModel();
		}
		
		public function showObstacle(parent:DisplayObjectContainer, posx:Number = 0, posy:Number = 0):void
		{
			mObstacle.showObstacle(parent, posx, posy);
		}
		
		public function getModel():ObstacleModel
		{
			return mObstacle;
		}
	}
}