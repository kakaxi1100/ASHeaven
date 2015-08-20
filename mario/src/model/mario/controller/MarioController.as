package model.mario.controller
{
	import base.StateMachine;
	
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
		
		public function collection():void
		{
			
		}
		
		public function update():void
		{
			stateMachine.update();
		}
	}
}