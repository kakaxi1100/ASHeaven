package model.bullets.cannonbullet
{
	import flash.display.DisplayObjectContainer;
	
	import base.StateMachine;
	import base.port.IBullets;
	import base.port.IWalkable;
	
	import state.WalkState;

	public class CannonBulletModel implements IBullets, IWalkable
	{
		private var mView:CannonBulletView;
		private var mData:CannonBulletData;
		private var mControl:CannonBulletController;
		
		private var stateMachine:StateMachine;
		public function CannonBulletModel()
		{
			mData = new CannonBulletData();
			mView = new CannonBulletView(mData);
			mControl = new CannonBulletController(mData);
			
			stateMachine = new StateMachine(this);
		}
		
		public function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.setPosition(posx, posy);
			parent.addChild(mView);
			
			stateMachine.currentState = new WalkState("walkstate", this);
		}
		
		public function update():void
		{
			stateMachine.update();
		}
		
		public function walk():void
		{
			mView.walk();
		}
		
		public function initData(angle:Number, speed:int):void
		{
			mControl.initData(angle, speed);
		}
		
	}
}