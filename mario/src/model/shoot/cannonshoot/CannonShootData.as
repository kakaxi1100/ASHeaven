package model.shoot.cannonshoot
{
	import base.port.IBullets;

	public class CannonShootData
	{
		public var bulletup:IBullets;
		public var bulletdown:IBullets;
		
		public var explodeBullets:Vector.<IBullets>;
		
		public function CannonShootData()
		{
			explodeBullets = new Vector.<IBullets>(4);
		}
	}
}