package model.bullets.cannonbullet
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.IBullets;

	public class CannonBulletModel implements IBullets
	{
		private var mView:CannonBulletView;
		private var mData:CannonBulletData;
		private var mControl:CannonBulletData;
		
		public function CannonBulletModel()
		{
		}
		
		public function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.setPosition(posx, posy);
			parent.addChild(mView);
		}
		
	}
}