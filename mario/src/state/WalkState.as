package state
{
	import base.port.IState;
	
	public class WalkState implements IState
	{
		private var mName:String;
		private var mModel:Object;
		
		private static var instance:WalkState;
		public function WalkState(name:String, model:Object)
		{
			mName = name;
			mModel = model;
		}
		public static function getInstance(name:String, model:Object):WalkState
		{
			return instance ||= new WalkState(name, model);
		}
		
		public function get owner():Object
		{
			return mModel;
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
			mModel.walk();
		}
	}
}