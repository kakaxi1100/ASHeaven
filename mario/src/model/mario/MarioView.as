package model.mario
{
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import base.port.IView;
	

	public class MarioView extends Sprite implements IView
	{
		private var mData:MarioData;
		private var mSkin:Sprite;
		private var pos:Point = new Point();
		public function MarioView(data:MarioData)
		{
			super();
			
			mData = data;
			
			mSkin = new Sprite();
			mSkin.graphics.beginFill(0,1);
			mSkin.graphics.drawRect(0,0,20,20);
			mSkin.graphics.endFill();
			addChild(mSkin);
		}
		
		public function walk():void
		{
			this.x++;
		}
		
		public function collision():void
		{
			mSkin.graphics.clear();
			mSkin.graphics.beginFill(0xcc00cc,1);
			mSkin.graphics.drawRect(0,0,20,20);
			mSkin.graphics.endFill();
		}
		
		public function update():void
		{
			//mSkin....
		}
		
		public function getPosition():Point
		{
			// TODO Auto Generated method stub
			pos.x = this.x;
			pos.y = this.y;
			return pos;
		}
		
	}
}