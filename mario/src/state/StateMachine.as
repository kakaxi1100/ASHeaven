package state
{
	import base.AbstractController;

	public class StateMachine
	{
		private var mOwner:AbstractController;
		private var mCurrentState:AbstractState;
		private var mPreviousState:AbstractState;
		private var mGlobalState:AbstractState;
		
		public function StateMachine(o:AbstractController)
		{
			mOwner = o;
		}
		
		public function set currentState(value:AbstractState):void
		{
			mCurrentState = value;
		}
		
		public function get currentState( ):AbstractState
		{
			return mCurrentState;
		}
		
		public function set previousState(value:AbstractState):void
		{
			mPreviousState = value;
		}
		
		public function get previousState( ):AbstractState
		{
			return mPreviousState;
		}
		
		public function set globalState(value:AbstractState):void
		{
			mGlobalState = value;
		}
		
		public function get globalState( ):AbstractState
		{
			return mGlobalState;
		}
		
		public function update():void
		{
			mCurrentState.excute(mOwner);
		}
		
		public function changeState(newState:AbstractState):void
		{
			mPreviousState = mCurrentState;
			mCurrentState.exit(mOwner);
			mCurrentState = newState;
			mCurrentState.enter(mOwner);
		}
		
		public function revertToPreviousState():void
		{
			changeState(mPreviousState);
		}
		
		public function isInState(value:AbstractState):Boolean
		{
			if(mCurrentState.name == value.name)
			{
				return true;
			}
			return false;
		}
	}
}