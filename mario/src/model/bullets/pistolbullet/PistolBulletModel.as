package model.bullets.pistolbullet
{
	import flash.display.DisplayObjectContainer;

	public class PistolBulletModel
	{
		private var mView:PistolBulletView;
		private var mData:PistolBulletData;
		private var mControl:PistolBulletController;
		
		public function PistolBulletModel()
		{
		}
		
		public function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.setPosition(posx, posy);
			parent.addChild(mView);
		}
	}
}