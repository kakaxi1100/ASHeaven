package model.bullets.shotbullet
{
	import flash.display.Sprite;
	
	public class ShotBulletView extends Sprite
	{
		private var mData:ShotBulletData;
		public function ShotBulletView(data:ShotBulletData)
		{
			super();
			mData = data;
		}
	}
}