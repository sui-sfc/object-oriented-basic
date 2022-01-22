func  sumpair(_ n: Int = 6,_ zerovalue: Int = 0 ) -> Int { 
    return ( n <= 0 ) ? zerovalue :  ( n <= 1 ) ? 1 : (n-1) * n + sumpair( n-2, zerovalue )
}
print( sumpair(  ))
print(sumpair( 43 ))
print(sumpair( -3, 10 ))
print(sumpair( 12, 28 ))
print(sumpair( sumpair( 22, 12 ), 140 ))