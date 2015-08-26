package model.bullets.cannonbullet
{
	import flash.display.Sprite;
	
	public class CannonBulletView extends Sprite
	{
		private var mData:CannonBulletData;
		private var mSkin:Sprite;
		public function CannonBulletView(data:CannonBulletData)
		{
			super();
		
			mData = data;
			
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
		
		internal function walk():void
		{
			this.x += mData.speed*Math.cos(mData.angle);
			this.y += mData.speed*Math.sin(mData.angle);
		}
	}
}