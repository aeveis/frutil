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
		 * returns a random number, but tends to give high or low numbers (reverse bell curve)
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @return returns reverse bell curve random number
		 */
		static public function reverse_rand(min:Number = 0, max:Number=1):Number {
			return random.reverse_rand(min,max);
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
		
		/**
		 * Returns a psuedo-random number n, where min <= n < val with range < n < max. 
		 * 
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @param	val number to be avoided inbetween max and min
		 * @param	range number range around val to be avoided
		 * @return returns a psuedo-random number n, where min <= n < val with range < n < max. 
		 */
		static public function piecewise_rand(min:Number, max:Number, val:Number, range:Number):Number {
			return random.piecewise_rand(min, max, val, range);
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
		 * normalizes number n to 1 given min and max
		 * @param	min minimun number
		 * @param	max maximun number
		 * @param	n number to be normalized
		 * @return  normalized number
		 */
		static public function normalize(min:Number, max:Number, n:Number):Number {
			return geometry.normalize(min, max, n);
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
		 * follows one object towards another
		 * Note: obja needs at least x and y, objb parameters NEED to have x and y, velocity, and acceleration values
		 * @param	obja Object a attracter
		 * @param	objb Object b attracted towards a
		 */
		static public function follow(obja:*, objb:*, speed:Number = 10):void {
			geometry.follow(obja, objb, speed);
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