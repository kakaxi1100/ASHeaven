package state
{
	import base.AbstractController;

	public class AbstractState
	{
		private var mName:String;
		private var mOwner:AbstractController;
		public function AbstractState(name:String, o:AbstractController)
		{
			mName = name;
			mOwner = o;
		}
		
		public function get owner():AbstractController
		{
			return mOwner;
		}
		
		public function get name():String
		{
			return mName;
		}
		
		public function enter(o:AbstractController):void
		{
		}
		
		public function exit(o:AbstractController):void
		{
		}
		
		public function excute(o:AbstractController):void
		{
		}
	}
}