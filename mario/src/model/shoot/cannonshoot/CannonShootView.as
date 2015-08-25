package model.shoot.cannonshoot
{
	import flash.display.Sprite;
	
	public class CannonShootView extends Sprite
	{
		private var mData:CannonShootData;
		public function CannonShootView(data:CannonShootData)
		{
			super();
			mData = data;
		}
		
		internal function setPosition(posx:Number, posy:Number):void
		{
			this.x = posx;
			this.y = posy;
		}
	}
}