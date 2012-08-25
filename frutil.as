package  
{
	import util.*;
	/**
	 * ...
	 * @author aeveis
	 */
	public class frutil
	{
		
		public function frutil() 
		{
			
		}
		
		//Random functions
		
		/**
		 * Returns a psuedo-random number n, where min <= n < max. 
		 * 
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @return returns a psuedo-random number n, where min <= n < max. 
		 */
		static public function rand(min:Number = 0, max:Number = 1):Number {
			return random.rand(min, max);
		}
		
		/**
		 * Returns a psuedo-random number n as an integer, where min <= n <= max. 
		 * 
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @return returns a psuedo-random number n as an integer, where min <= n <= max. 
		 */
		static public function rand_int(min:Number = 0, max:Number = 1):Number {
			return random.rand_int(min, max);
		}
		
		/**
		 * Chooses a object randomly in an array
		 * @param	objects an array of objects
		 * @return returns an randomly chosen object
		 */
		static public function rand_pick(objects:Array):* {
			return random.rand_pick(objects);
		}
		
		/**
		 * Chooses a number of objects randomly in an array
		 * @param	objects an array of objects
		 * @param	n number of objects choosen
		 * @return returns an array of chosen objects
		 */
		static public function rand_picks(objects:Array, n:Number = 1):Array {
			return random.rand_picks(objects, n);
		}
		
		//Geometry functions
		
		/**
		 * finds distance between two points
		 * Note: parameters NEED to have x and y values
		 * @param	a point 1
		 * @param	b point 2
		 * @return returns distance between the two points
		 */
		static public function dist(a:*, b:*):Number {
			return geometry.dist(a, b);
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
			return geometry.pdist(x1, y1, x2, y2);
		}
		
		/**
		 *  generates simplex noise
		 * @param	x Multiply x coordinate for more noise
		 * @param	y Multiply y coordinate for more noise
		 * @param	z
		 * @return returns a value in the range of about -0.347 to 0.347
		 */
		static public function simplex(x:Number, y:Number, z:Number, min:Number = 0, max:Number = 1):Number {
			return perlin.simplex(x, y, z, min, max);
		}
		
		/**
		 * acclerates one object towards another
		 * Note: parameters NEED to have x and y, velocity, and acceleration values
		 * @param	obja Object a
		 * @param	objb Object attracted towards
		 */
		static public function accel(obja:*, objb:*, str:Number=5, spring:Number=1.5, drag:Number=4):void {
			geometry.accel(obja,objb,str,spring,drag);
		}
		
		/**
		 * finds magnitude from origin to a point
		 * Note: parameters NEED to have x and y values
		 * @param	a point
		 * @return returns magnitude from origin to a point
		 */
		static public function mag(p:*):Number {
			return geometry.mag(p);
		}
	}

}