package model.shoot.cannonshoot
{
	import flash.display.DisplayObjectContainer;
	
	import base.StateMachine;
	import base.port.IBullets;

	public class CannonShootModel
	{
		private var mView:CannonShootView;
		private var mData:CannonShootData;
		private var mControl:CannonShootController;
		
		private var stateMachine:StateMachine;
		public function CannonShootModel()
		{
			mData = new CannonShootData()
			mView = new CannonShootView(mData);
			mControl = new CannonShootController(mData);
			
			stateMachine = new StateMachine(this);
		}
		
		public function update():void
		{
			stateMachine.update();
		}
		
		public function createBullets(down:IBullets, up:IBullets, explode:IBullets):void
		{
			mControl.createBullets(down, up, explode);
		}
		
		public function showBullets(parent:DisplayObjectContainer, posx:Number, posy:Number):void
		{
			mView.x = posx;
			mView.y = posy;
			parent.addChild(mView);
			mControl.showBullets(mView);
		}
	}
}