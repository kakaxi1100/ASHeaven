package model.mario.controller
{
	import model.mario.data.MarioData;

	public class MarioController
	{
		private var data:MarioData;
		
		public function MarioController(pData:MarioData)
		{
			data = pData;
		}
		
		public function collision():void
		{
			data.isCollide = true;
		}
		
		public function update():void
		{
			//检测是否发生碰撞
		}
	}
}