package  
{
	import flash.display.Sprite;
	import util.*;
	/**
	 * ...
	 * @author aeveis
	 */
	public class frutil extends Sprite
	{
		
		public function frutil() 
		{
			trace(random.rand_picks([0, 1, 2, 3, 4, 5, 6], 7));
			
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
	}

}