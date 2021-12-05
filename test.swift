var months = [31,28,31,30,31,30,31,31,30,31,30,31]
let input=Int(readLine()!)!
let cal_month=input/100
var cal_days=input%100
for i in 1..<cal_month {
    cal_days = cal_days + months[i-1]  
}
print("\(cal_days)日目")