package model.bullets
{
	import flash.display.Sprite;

	public class BulletsView extends Sprite
	{
		private var mData:BulletsData;
		private var mSkin:Sprite;
		public function BulletsView(data:BulletsData)
		{
			super();
			mData = data;
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0x11CC00,1);
			mSkin.graphics.drawCircle(0,0,5);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
		
		internal function walk():void
		{
			this.x+=2;
		}
		
		internal function setPosition(posx:Number, posy:Number):void
		{
			this.x = posx;
			this.y = posy;
		}
		
		public function collision():void
		{
			mSkin.graphics.clear();
			mSkin.graphics.beginFill(0xFF1133,1);
			mSkin.graphics.drawCircle(0,0,5);
			mSkin.graphics.endFill();
		}
	}
}