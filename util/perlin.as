package util
{
	/**
	 * Actually Simplex noise O(n^2) instead of O(2^n) with Perlin
	 * Based off of code found here http://stephencarmody.wikispaces.com/Simplex+Noise
	 * @author aeveis
	 */
	public class perlin 
	{
		
		static private var i:int, j:int, k:int, A:Array = [0, 0, 0];
		
		static private var u:Number, v:Number, w:Number, s:Number;
		
		static private const third:Number = (1.0 / 3.0);
		static private const sixth:Number = (1.0 / 6.0);
		static private const bound:Number = 0.347;
		
		static private const T:Array = [0x15, 0x38, 0x32, 0x2c, 0x0d, 0x13, 0x07, 0x2a];
		
		static public var high:Number = 0;
		static public var low:Number = 0;
		
		public function perlin() 
		{
			
		}
		
		/**
		 *  generates simplex noise
		 * @param	x Multiply x coordinate for more noise
		 * @param	y Multiply y coordinate for more noise
		 * @param	z
		 * @return returns a value in the range of about min to max -0.347 to 0.347
		 */
		static public function simplex(x:Number, y:Number, z:Number, min:Number=0, max:Number=1):Number {
			s = (x + y + z) * third;
			i = Math.floor(x + s);
			j = Math.floor(y + s);
			k = Math.floor(z + s);
			
			s = (i + j + k) * sixth;
			u = x - i + s;
			v = y - j + s;
			w = z - k + s;
			
			A[0] = A[1] = A[2] = 0;
			
			var hi:int = u >= w ? u >= v ? 0 : 1 : v >= w ? 1 : 2;
			var lo:int = u < w ? u < v ? 0 : 1 : v < w ? 1 : 2;
			
			var result:Number = k1(hi) + k1(3 - hi - lo) + k1(lo) + k1(0);
			result = (result + bound) / (bound * 2);
			if (result > 1) {
				if (result > high) {
					high = result;
					trace("high: " + high);
				}
				result = 1;
			}
			if (result < 0) {
				if (result < low) {
					low = result;
					trace("low: " + low);
				}
				result = 0;
			}
			return result * (max - min) + min;
		}
		
		static private function k1(a:int):Number {
			s = (A[0] + A[1] + A[2]) * sixth;
			
			var x:Number = u - A[0] + s;
			var y:Number = u - A[1] + s;
			var z:Number = u - A[2] + s;
			var t:Number = 0.6 - (x * x) - (y * y) - (z * z);
			
			var h:Number = shuffle(i + A[0], j + A[1], k + A[2]);
			A[a]++;
			
			if (t < 0) 
				return 0;
			
			var b5:int = h >> 5 & 1;
			var b4:int = h >> 4 & 1;
			var b3:int = h >> 3 & 1;
			var b2:int = h >> 2 & 1;
			var b:int = h & 3;
			
			var p:Number = b == 1? x:b == 2? y:z;
			var q:Number = b == 1? y:b == 2? z:x;
			var r:Number = b == 1? z:b == 2? x:y;
			
			p = b5 == b3? -p:p;
			q = b5 == b4? -q:q;
			r = b5 != (b4 ^ b3)? -r:r;
			t *= t;
			
			return 8 * t * t * (p + (b == 0? q + r:b2 == 0?q:r));		
		}
		
		static private function shuffle(i1:int, j1:int, k1:int):int {
			return 	b1(i1, j1, k1, 0) + b1(j1, k1, i1, 1) + b1(k1, i1, j1, 2) + b1(i1, j1, k1, 3) +
					b1(j1, k1, i1, 4) + b1(k1, i1, j1, 5) + b1(i1, j1, k1, 6) + b1(j1, k1, i1, 7);
		}
		
		static private function b1(i1:int, j1:int, k1:int, B:int):int {
			return T[b2(i1, B) << 2 | b2(j1, B) << 1 | b2(k1, B)];
		}
		
		static private function b2(N:int, B:int):int {
			return N >> B & 1;
		}
	}

}