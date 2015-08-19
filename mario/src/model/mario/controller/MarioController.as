package model.mario.controller
{
	import model.mario.data.MarioData;
	import model.mario.view.MarioView;
	
	import state.StateMachine;

	public class MarioController
	{
		private var stateMachine:StateMachine;
		private var mData:MarioData;
		private var mView:MarioView;
		
		public function MarioController(data:MarioData, view:MarioView)
		{
			mData = data;
			mView = view;
			stateMachine = new  StateMachine(this);
			//stateMachine.currentState = ;
		}
	}
}