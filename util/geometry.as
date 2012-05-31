package util
{
	/**
	 * ...
	 * @author aeveis
	 */
	public class geometry 
	{
		
		public function geometry() 
		{
			
		}
		
		/**
		 * finds distance between two points
		 * Note: parameters NEED to have x and y values
		 * @param	a point 1
		 * @param	b point 2
		 * @return returns distance between the two points
		 */
		static public function dist(a:*, b:*):Number {
			return Math.sqrt(Math.pow(a.x-b.x, 2) + Math.pow(a.y-b.y, 2));
		}
		
		/**
		 * finds distance between two points
		 * @param	x1 x of point 1
		 * @param	y1 y of point 1
		 * @param	x2 x of point 2
		 * @param	y2 y of point 2
		 * @return returns distance between the two points
		 */
		static public function pdist(x1:Number, y1:Number, x2:Number, y2:Number):Number {
			return Math.sqrt(Math.pow(x1-x2, 2) + Math.pow(y1-y2, 2));
		}
	}

}