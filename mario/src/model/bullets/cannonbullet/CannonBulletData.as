package model.bullets.cannonbullet
{
	import flash.geom.Rectangle;

	public class CannonBulletData
	{
		public var speed:int;
		
		public var hitRect:Rectangle;
		
		public var pcs:int;
		
		public function CannonBulletData()
		{
			speed = 3;
			pcs = 5;
			hitRect = new Rectangle(0,0,10,10);			
		}
	}
}