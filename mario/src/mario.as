package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import manager.MarioManager;
	import manager.ObstacleManager;
	
	import model.mario.data.MarioData;
	import model.obstacle.data.ObstacleData;
	
	[SWF(backgroundColor = "0xcccccc", frameRate="60")]
	public class mario extends Sprite
	{
		public function mario()
		{
			//1
			MarioManager.getInstance().initModel(new MarioData());
			MarioManager.getInstance().showMario(this);
			
			ObstacleManager.getInstance().initModel(new ObstacleData());
			ObstacleManager.getInstance().showObstacle(this, 100, 0);
			
			addEventListener(Event.ADDED_TO_STAGE, onAddHandler);
		}
		
		private function onAddHandler(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddHandler);
			stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
		private function onEnterFrame(e:Event):void
		{
			MarioManager.getInstance().update();
		}
	}
}