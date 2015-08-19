package model.obstacle.view
{
	import flash.display.Sprite;
	
	import base.AbstractView;
	
	public class ObstacleView extends AbstractView
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
	}
}