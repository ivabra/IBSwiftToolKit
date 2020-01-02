infix operator =!

public func =! <T>(left: inout T, right: Any) {
  guard let castedRight = right as? T else {
    fatalError("Can't cast \(right) to type \(T.self)")
  }
  left = castedRight
}

infix operator =?

public func =? <T>(left: inout T, right: Any?) {
  if let right = right as? T {
    left = right
  }
}

public func =? <T>(left: inout T!, right: Any?) {
  left = right as? T
}
