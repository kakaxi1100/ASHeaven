package state
{
	import base.AbstractController;

	public class WalkState extends AbstractState
	{
		public function WalkState(name:String, o:AbstractController)
		{
			super(name, o);
		}
		
		override public function enter(o:AbstractController):void
		{
			
		}
		
		override public function exit(o:AbstractController):void
		{
			
		}
		
		override public function excute(o:AbstractController):void
		{
			owner.view.x++;
		}
	}
}