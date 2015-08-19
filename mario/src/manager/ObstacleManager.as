package manager
{
	import flash.display.DisplayObjectContainer;
	
	import model.obstacle.ObstacleModel;
	import model.obstacle.data.ObstacleData;

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
		
		public function initModel(data:ObstacleData):void
		{
			mObstacle = new ObstacleModel(data);
		}
		
		public function showObstacle(parent:DisplayObjectContainer, posx:Number = 0, posy:Number = 0):void
		{
			mObstacle.showObstacle(parent, posx, posy);
		}
	}
}