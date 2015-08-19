package state
{
	public class StateMachine
	{
		private var mOwner:Object;
		private var mCurrentState:IState;
		private var mPreviousState:IState;
		private var mGlobalState:IState;
		
		public function StateMachine(o:Object)
		{
			mOwner = o;
		}
		
		public function set currentState(value:IState):void
		{
			mCurrentState = value;
		}
		
		public function get currentState( ):IState
		{
			return mCurrentState;
		}
		
		public function set previousState(value:IState):void
		{
			mPreviousState = value;
		}
		
		public function get previousState( ):IState
		{
			return mPreviousState;
		}
		
		public function set globalState(value:IState):void
		{
			mGlobalState = value;
		}
		
		public function get globalState( ):IState
		{
			return mGlobalState;
		}
		
		public function update():void
		{
			mCurrentState.excute(mOwner);
		}
		
		public function changeState(newState:IState):void
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
		
		public function isInState(value:IState):Boolean
		{
			if(mCurrentState.name == value.name)
			{
				return true;
			}
			return false;
		}
	}
}