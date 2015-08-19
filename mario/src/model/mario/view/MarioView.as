package model.mario.view
{
	import flash.display.Sprite;

	public class MarioView extends Sprite
	{
		private var mSkin:Sprite;
		public function MarioView()
		{
			super();
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0,1);
			mSkin.graphics.drawRect(0,0,20,20);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
	}
}