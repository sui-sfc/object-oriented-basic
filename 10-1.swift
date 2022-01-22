import Foundation
func getCongruents(_ upper: Int ) {
    for p in 1...upper {
        for q in p...upper {
            let r: Double = sqrt( Double( p*p + q*q ) )
            if r == Double( Int( r ) ) {
                let n : Double = Double( p * q ) / 2.0
                if n == Double( Int( n ) ) {
                    if n >= 200 && n<=400{
                        print( Int( n ) )
                    }
                }
            }
        }
    }
}
getCongruents( 100 )