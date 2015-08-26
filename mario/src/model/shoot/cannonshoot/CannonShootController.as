package model.shoot.cannonshoot
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.IBullets;
	
	public class CannonShootController
	{
		private var mData:CannonShootData;
		public function CannonShootController(data:CannonShootData)
		{
			mData = data;
		}
		
		internal function createBullets(down:IBullets, up:IBullets, explode:IBullets = null):void
		{
			mData.bulletup = up;
			mData.bulletdown = down;
//			for(var i:int = 0; i < mData.explodeBullets.length; i++)
//			{
//				mData.explodeBullets.push(explode);
//			}
		}
		
		internal function showBullets(parent:DisplayObjectContainer):void
		{
			mData.bulletdown.initData(0, 3);
			mData.bulletdown.create(parent, parent.x, parent.y + 100);
			mData.bulletup.initData(90, 3);
			mData.bulletup.create(parent, parent.x, parent.y - 100);
		}
	}
}