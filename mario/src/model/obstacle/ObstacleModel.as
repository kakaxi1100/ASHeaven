package model.obstacle
{
	import flash.display.DisplayObjectContainer;
	
	import model.obstacle.controller.ObstacleController;
	import model.obstacle.data.ObstacleData;
	import model.obstacle.view.ObstacleView;

	public class ObstacleModel
	{
		private var mData:ObstacleData;
		private var mView:ObstacleView;
		private var mControl:ObstacleController;
		public function ObstacleModel(data:ObstacleData = null)
		{
			mData = data;
			mView = new ObstacleView();
			mControl = new ObstacleController();
		}
		
		public function showObstacle(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.x = posx;
			mView.y = posy;
			parent.addChild(mView);
		}
	}
}