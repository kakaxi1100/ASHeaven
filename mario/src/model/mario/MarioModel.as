package model.mario
{
	import flash.display.DisplayObjectContainer;
	
	import base.StateMachine;
	import base.port.IBullets;
	import base.port.ICollisional;
	import base.port.IIdleable;
	import base.port.IWalkable;
	
	import state.IdleSate;
	import state.WalkState;

	public class MarioModel implements IIdleable, IWalkable, ICollisional
	{
		private var mData:MarioData;
		private var mView:MarioView;
		private var mControl:MarioController;
		private var stateMachine:StateMachine;
		
		public function MarioModel()
		{
			mData = new MarioData();
			mView = new MarioView(mData);
			mControl = new MarioController(mData);
			
			stateMachine = new  StateMachine(this);
			stateMachine.currentState = new WalkState("walkstate", this);//WalkState.getInstance("walkstate", this);
		}
		
		public function createBullets(b:IBullets):void
		{
			b.create(mView.parent, mView.x + mView.width/2, mView.y+mView.height/2);
			stateMachine.currentState = new IdleSate("idlestate", this);
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
		
		public function checkCollsion(c:ICollisional):void
		{
			if(mView.x >= c.result().x)
			{
				collisional();
				c.collisional();
			}
		}
		
		public function update():void
		{
			mControl.update();
			stateMachine.update();
			mView.update();
		}
		
		//碰撞之后变成什么样子
		public function collisional():void
		{
			mView.collision();
			mControl.collision();
		}
		//实时传出检测结果
		public function result():Object
		{
			// TODO Auto Generated method stub
			return null;
		}
		
		public function idle():void
		{
			//do noting...
		}
		
	}
}