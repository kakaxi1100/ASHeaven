package model.bullets.cannonbullet
{
	import flash.display.Sprite;
	
	public class CannonBulletView extends Sprite
	{
		private var mData:CannonBulletData;
		private var mSkin:Vector.<Sprite>;
		public function CannonBulletView(data:CannonBulletData)
		{
			super();
			mData = data;
			mSkin = new Vector.<Sprite>();
			for(var i:int = 0; i<mData.pcs; i++)
			{
				var temp:Sprite = new Sprite();
				temp = new Sprite();
				temp.graphics.beginFill(0x11CC00,1);
				temp.graphics.drawCircle(0,0,5);
				temp.graphics.endFill();
				mSkin.push(temp);
				this.addChild(temp);
			}
		}
		
		public function setPosition(posx:Number, posy:Number):void
		{
			this.x = posx;
			this.y = posy;
		}
		
		public function collision():void
		{
			
		}
		
		public function walk():void
		{
			var temp:Number = 180/mData.pcs*Math.PI/180;
			for(var i:int = 0; i< mData.pcs; i++)
			{
				var angle:Number = temp*i;
				mSkin[i].x += mData.speed*Math.cos(angle);
				mSkin[i].y += mData.speed*Math.sin(angle);
			}
		}
	}
}