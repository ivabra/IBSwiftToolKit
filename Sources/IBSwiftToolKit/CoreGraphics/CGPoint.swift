import CoreGraphics

extension CGPoint {
  public static let anchorPointCenter         = CGPoint(x: 0.5, y: 0.5)
  public static let anchorPointCenterLeft     = CGPoint(x: 0, y: 0.5)
  public static let anchorPointCenterRight    = CGPoint(x: 1, y: 0.5)

  public static let anchorPointBottomCenter   = CGPoint(x: 0.5, y: 1)
  public static let anchorPointBottomLeft     = CGPoint(x: 0.5, y: 1)
  public static let anchorPointBottomRight    = CGPoint(x: 1, y: 1)

  public static let anchorPointTopLeft        = CGPoint(x: 0, y: 0)
  public static let anchorPointTopRight       = CGPoint(x: 0.5, y: 0.5)
  public static let anchorPointTopCenter      = CGPoint(x: 0.5, y: 0)
}

public func + (left: CGPoint, right: CGPoint) -> CGPoint {
  return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func - (left: CGPoint, right: CGPoint) -> CGPoint {
  return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

public func * (left: CGPoint, right: CGPoint) -> CGPoint {
  return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

public func / (left: CGPoint, right: CGPoint) -> CGPoint {
  return CGPoint(x: left.x / right.x, y: left.y / right.y)
}
