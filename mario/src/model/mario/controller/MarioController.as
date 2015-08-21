package model.mario.controller
{
	import base.StateMachine;
	import base.port.IModel;
	
	import model.mario.MarioModel;
	
	import state.WalkState;

	public class MarioController
	{
		private var stateMachine:StateMachine;
		private var mModel:MarioModel;
		
		public function MarioController(model:MarioModel)
		{
			mModel = model;
			stateMachine = new  StateMachine(mModel);
			stateMachine.currentState = WalkState.getInstance("walkstate", mModel);
		}
		
		public function collision(model:IModel):void
		{
			if(mModel.view.getPosition().x >= model.view.getPosition().x);
			{
				
			}
		}
		
		public function update():void
		{
			stateMachine.update();
		}
	}
}