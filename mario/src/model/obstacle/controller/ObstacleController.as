package model.obstacle.controller
{
	import base.AbstractController;
	
	import model.obstacle.data.ObstacleData;
	import model.obstacle.view.ObstacleView;

	public class ObstacleController extends AbstractController
	{
		public function ObstacleController(data:ObstacleData, view:ObstacleView)
		{
			super(data, view);
		}
	}
}