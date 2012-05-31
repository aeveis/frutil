package util
{
	/**
	 * ...
	 * @author aeveis
	 */
	public class random 
	{
		
		public function random() 
		{
			
		}
		
		/**
		 * Returns a psuedo-random number n, where min <= n < max. 
		 * 
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @return returns a psuedo-random number n, where min <= n < max. 
		 */
		static public function rand(min:Number = 0, max:Number = 1):Number {
			return Math.random() * (max - min) + min;
		}
		
		/**
		 * Returns a psuedo-random number n as an integer, where min <= n <= max. 
		 * 
		 * @param	min lowest number in range
		 * @param	max highest number in range
		 * @return returns a psuedo-random number n as an integer, where min <= n <= max. 
		 */
		static public function rand_int(min:Number = 0, max:Number = 1):Number {
			return Math.round(Math.random() * (max - min) + min);
		}
		
		/**
		 * Chooses a object randomly in an array
		 * @param	objects an array of objects
		 * @return returns an randomly chosen object
		 */
		static public function rand_pick(objects:Array):* {
			return objects[rand_int(0, objects.length-1)];
		}
		
		/**
		 * Chooses a number of objects randomly in an array
		 * @param	objects an array of objects
		 * @param	n number of objects choosen
		 * @return returns an array of chosen objects
		 */
		static public function rand_picks(objects:Array, n:Number = 1):Array {
			var objs:Array = objects;
			var nums:Array = new Array();
			var i:int;
			var r:Number;
			
			if (n > objects.length)
				n = objects.length;
				
			for (i = 0; i < n; i++ ) {
				r = rand_int(0, objs.length - 1);
				nums.push(objs[r]);
				objs = objs.slice(0, r).concat(objs.slice(r + 1, objs.length));
			}
			
			return nums;
		}
	}

}