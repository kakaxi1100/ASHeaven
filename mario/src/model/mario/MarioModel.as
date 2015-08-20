package model.mario
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.IWalkable;
	
	import model.mario.controller.MarioController;
	import model.mario.data.MarioData;
	import model.mario.view.MarioView;

	public class MarioModel implements IWalkable
	{
		private var mData:MarioData;
		private var mView:MarioView;
		private var mControl:MarioController;
		
		public function MarioModel(data:MarioData = null)
		{
			mData = data;
			mView = new MarioView();
			mControl = new MarioController(this);
		}
		
		public function showMario(parent:DisplayObjectContainer,  posx:Number , posy:Number):void
		{
			mView.x = posx;
			mView.y = posy;
			parent.addChild(mView);
		}
		
		public function walk():void
		{
			mView.walk();
		}
		
		public function update():void
		{
			mView.update();
			mControl.update();
		}
	}
}