package model.bullets.pistolbullet
{
	import flash.display.Sprite;
	
	public class PistolBulletView extends Sprite
	{
		private var mSkin:Sprite;
		public function PistolBulletView()
		{
			super();
			
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0,1);
			mSkin.graphics.drawCircle(0,0,5);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
		
		internal function setPosition(posx:Number, posy:Number):void
		{
			this.x = posx;
			this.y = posy;
		}
	}
}