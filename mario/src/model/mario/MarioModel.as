package model.mario
{
	import flash.display.DisplayObjectContainer;
	
	import base.port.ICollisional;
	import base.port.IModel;
	import base.port.IView;
	import base.port.IWalkable;
	
	import model.mario.controller.MarioController;
	import model.mario.data.MarioData;
	import model.mario.view.MarioView;

	public class MarioModel implements IWalkable, ICollisional, IModel
	{
		private var mData:MarioData;
		private var mView:MarioView;
		private var mControl:MarioController;
		
		public function MarioModel()
		{
			mData = new MarioData();
			mView = new MarioView(mData);
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
		
		public function collisional(o:IModel):void
		{
			mControl.collision(o);
		}
		
		public function get view():IView
		{
			return mView;
		}
		
		public function hello():void
		{
			// TODO Auto Generated method stub
			
		}
		
	}
}