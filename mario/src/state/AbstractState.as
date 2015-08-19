package state
{
	public class AbstractState implements IState
	{
		private var mName:String;
		private var mOwner:Object;
		public function AbstractState(name:String, o:Object)
		{
			mName = name;
			mOwner = o;
		}
		
		public function get owner():Object
		{
			return mOwner;
		}
		
		public function get name():String
		{
			return mName;
		}
		
		public function enter(o:Object):void
		{
		}
		
		public function exit(o:Object):void
		{
		}
		
		public function excute(o:Object):void
		{
		}
	}
}