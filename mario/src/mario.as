package
{
	import flash.display.Sprite;
	
	import manager.MarioManager;
	import manager.ObstacleManager;
	
	import model.mario.data.MarioData;
	import model.obstacle.data.ObstacleData;
	
	[SWF(backgroundColor = "0xcccccc")]
	public class mario extends Sprite
	{
		public function mario()
		{
			//1
			MarioManager.getInstance().initModel(new MarioData());
			MarioManager.getInstance().showMario(this);
			
			ObstacleManager.getInstance().initModel(new ObstacleData());
			ObstacleManager.getInstance().showObstacle(this, 100, 0);
		}
	}
}