package model.obstacle.view
{
	import flash.display.Sprite;
	
	public class ObstacleView extends Sprite
	{
		private var mSkin:Sprite;
		public function ObstacleView()
		{
			super();
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0xcc00cc,1);
			mSkin.graphics.drawRect(0,0,20,20);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
		
		public function collision():void
		{
			mSkin.graphics.clear();
			
			mSkin.graphics.beginFill(0xccFF00,1);
			mSkin.graphics.drawRect(0,0,20,20);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
	}
}