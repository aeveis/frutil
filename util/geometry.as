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
		
		/**
		 * acclerates one object towards another
		 * Note: obja needs at elast x and y, objb parameters NEED to have x and y, velocity, and acceleration values
		 * @param	obja Object a attracter
		 * @param	objb Object b attracted towards a
		 */
		static public function accel(obja:*, objb:*, str:Number=5, spring:Number=1.5, drag:Number=4):void {
			var d:Number = dist(obja, objb);
			if (d != 0) {
				objb.acceleration.x = ((obja.x - objb.x) / d * str * Math.pow(d, spring) +objb.acceleration.x)/2;
				objb.acceleration.x += -drag * objb.velocity.x;
				objb.acceleration.y = ((obja.y - objb.y) / d * str * Math.pow(d, spring) + objb.acceleration.y)/2;
				objb.acceleration.y += -drag * objb.velocity.y;
			}
		}
		
		/**
		 * finds magnitude from origin to a point
		 * Note: parameters NEED to have x and y values
		 * @param	a point
		 * @return returns magnitude from origin to a point
		 */
		static public function mag(p:*):Number {
			return Math.sqrt(Math.pow(p.x, 2) + Math.pow(p.y, 2));
		}
	}

}