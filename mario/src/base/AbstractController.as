package base
{
	public class AbstractController
	{
		private var mData:AbstractData;
		private var mView:AbstractView;
		
		public function AbstractController(data:AbstractData, view:AbstractView)
		{
			mData = data;
			mView = view;
		}
		
		public function get data():AbstractData
		{
			return mData;
		}
		
		public function get view():AbstractView
		{
			return mView;
		}
	}
}