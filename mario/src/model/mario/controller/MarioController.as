package model.mario.controller
{
	import base.AbstractController;
	
	import model.mario.data.MarioData;
	import model.mario.view.MarioView;
	
	import state.StateMachine;
	import state.WalkState;

	public class MarioController extends AbstractController
	{
		private var stateMachine:StateMachine;
		private var mData:MarioData;
		private var mView:MarioView;
		
		public function MarioController(data:MarioData, view:MarioView)
		{
			super(data, view);
			mData = data;
			mView = view;
			stateMachine = new  StateMachine(this);
			stateMachine.currentState = new WalkState("walk", this);
		}
	}
}