package model.obstacle
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.ICollisional;
	
	import model.obstacle.controller.ObstacleController;
	import model.obstacle.data.ObstacleData;
	import model.obstacle.view.ObstacleView;

	public class ObstacleModel implements ICollisional
	{
		private var mData:ObstacleData;
		private var mView:ObstacleView;
		private var mControl:ObstacleController;
		public function ObstacleModel(data:ObstacleData = null)
		{
			mData = new ObstacleData();
			mView = new ObstacleView();
			mControl = new ObstacleController(mData);
		}
		
		public function showObstacle(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.x = posx;
			mView.y = posy;
			parent.addChild(mView);
		}
		
		public function collisional():void
		{
			mView.collision();
		}
		
		public function result():Object
		{
			var o:Object = new Object();
			o.x = mView.x;
			return o;
		}
		
	}
}