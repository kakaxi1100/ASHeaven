package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import manager.BulletsManager;
	import manager.MarioManager;
	import manager.ObstacleManager;
	
	[SWF(backgroundColor = "0xcccccc", frameRate="60")]
	public class mario extends Sprite
	{
		public function mario()
		{
			//1
			MarioManager.getInstance().initModel();
			MarioManager.getInstance().showMario(this,100,100);
			
			ObstacleManager.getInstance().initModel();
			ObstacleManager.getInstance().showObstacle(this, 200, 100);
			
			BulletsManager.getInstance().initModel();
			
			addEventListener(Event.ADDED_TO_STAGE, onAddHandler);
		}
		
		private function onAddHandler(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddHandler);
			stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
			stage.addEventListener(MouseEvent.CLICK, onClickHandler);
		}
		
		private function onClickHandler(e:MouseEvent):void
		{
			MarioManager.getInstance().createBullets(BulletsManager.getInstance().getModel());
		}
		
		private function onEnterFrame(e:Event):void
		{
			MarioManager.getInstance().checkCollision(ObstacleManager.getInstance().getModel());
			MarioManager.getInstance().update();
			
			BulletsManager.getInstance().checkCollision(ObstacleManager.getInstance().getModel());
			BulletsManager.getInstance().update();
		}
	}
}