package model.bullets
{
	import flash.display.DisplayObjectContainer;
	
	import base.StateMachine;
	import base.port.IBullets;
	import base.port.ICollisional;
	import base.port.IWalkable;
	
	import state.WalkState;

	public class BulletsModel implements IBullets, IWalkable, ICollisional
	{
		private var mData:BulletsData;
		private var mView:BulletsView;
		private var mControl:BulletsController;
		private var stateMachine:StateMachine;
		
		public function BulletsModel()
		{
			mData = new BulletsData();
			mView = new BulletsView(mData);
			mControl = new BulletsController(mData);
			
			stateMachine = new StateMachine(this);
		}
		
		public function checkCollsion(c:ICollisional):void
		{
			if(mView.x >= c.result().x)
			{
				collisional();
				c.collisional();
			}
		}
		
		public function collisional():void
		{
			mView.collision();
		}
		
		public function update():void
		{
//			mControl.update();
			stateMachine.update();
//			mView.update();
		}
		
		public function result():Object
		{
			return null;
		}
		
		public function walk():void
		{
			mView.walk();
		}
		
		public function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.setPosition(posx, posy);
			parent.addChild(mView);
			stateMachine.currentState = new WalkState("walkState", this);
		}
		
	}
}