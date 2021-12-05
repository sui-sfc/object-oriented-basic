for i in 1...100{
    let x = i
    for j in x...100{
        let y = j
        for k in y...100{
            let z = k
            for l in z...100{
                let w = l
                if x*x+y*y+z*z==w*w {
                    print ("x=\(x),y=\(y),z=\(z),w=\(w)")
                }
            }
        }
    }
}