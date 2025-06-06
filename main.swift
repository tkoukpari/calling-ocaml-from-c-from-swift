import Foundation

// @_silgen_name tells Swift to look for a C function with the given name
// this allows swift to call c functions directly without needing a bridging header
@_silgen_name("fib") func fib(_ n: Int32) -> Int32

let n = Int32(CommandLine.arguments[1])!
let res = fib(n)
print("swift printing the fibonacci number for \(n): \(res)")