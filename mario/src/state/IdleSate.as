package state
{
	import base.port.IState;
	
	public class IdleSate implements IState
	{
		private var mName:String;
		private var mModel:Object;
		public function IdleSate(name:String, model:Object)
		{
			mName = name;
			mModel = model;
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
			mModel.idle();
		}
	}
}