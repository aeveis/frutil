package  
{
	import flash.display.Sprite;
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
	}

}