package model.bullets.cannonbullet
{
	import flash.geom.Rectangle;

	public class CannonBulletData
	{
		public var hitRect:Rectangle;
		public var angle:Number;
		public var speed:int;
		public function CannonBulletData()
		{
			hitRect = new Rectangle(0,0,50,50);
			angle = 0;
			speed = 3;
		}
	}
}