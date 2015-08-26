package model.bullets.cannonbullet
{
	public class CannonBulletController
	{
		private var mData:CannonBulletData;
		public function CannonBulletController(data:CannonBulletData)
		{
			mData = data;
		}
		
		internal function initData(angle:Number, speed:int):void
		{
			mData.angle = angle;
			mData.speed = speed;
		}
	}
}