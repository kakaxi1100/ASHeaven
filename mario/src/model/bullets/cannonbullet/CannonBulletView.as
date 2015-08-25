package model.bullets.cannonbullet
{
	import flash.display.Sprite;
	
	public class CannonBulletView extends Sprite
	{
		private var mSkin:Sprite;
		public function CannonBulletView()
		{
			super();
			
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0,1);
			mSkin.graphics.drawRect(0,0,50,50);
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