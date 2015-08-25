package model.bullets.cannonbullet
{
	import flash.geom.Rectangle;

	public class CannonBulletData
	{
		public var hitRect:Rectangle;
		
		public function CannonBulletData()
		{
			hitRect = new Rectangle(0,0,50,50);
		}
	}
}