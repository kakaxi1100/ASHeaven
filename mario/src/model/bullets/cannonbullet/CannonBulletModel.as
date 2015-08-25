package model.bullets.cannonbullet
{
	import flash.display.DisplayObjectContainer;
	
	import base.StateMachine;
	import base.port.IBullets;
	import base.port.ICollisional;
	import base.port.IWalkable;
	
	import state.WalkState;
	
	public class CannonBulletModel implements IBullets, IWalkable, ICollisional
	{
		private var mData:CannonBulletData;
		private var mView:CannonBulletView;
		private var mControl:CannonBulletController;
		private var stateMachine:StateMachine;
		
		public function CannonBulletModel()
		{
			mData = new CannonBulletData();
			mView = new CannonBulletView(mData);
			mControl = new CannonBulletController(mData);
			
			stateMachine = new StateMachine(this);
		}
		
		public function update():void
		{
			stateMachine.update();
		}
		
		public function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.setPosition(posx, posy);
			parent.addChild(mView);
			stateMachine.currentState = new WalkState("walkState", this);
		}
		
		public function collisional():void
		{
			mView.collision();
			mControl.collision();
		}
		
		public function result():Object
		{
			return null;
		}
		
		public function walk():void
		{
			mView.walk();
			mControl.walk();
		}
		
	}
}