import CoreGraphics

extension CGRect {

  public var topLeftPoint: CGPoint { return CGPoint(x: minX, y: minY)}
  public var topCenterPoint: CGPoint { return CGPoint(x: midX, y: minY)}
  public var topRightPoint: CGPoint { return CGPoint(x: maxX, y: minY)}

  public var centerLeftPoint: CGPoint { return CGPoint(x: minX, y: midY)}
  public var centerPoint: CGPoint { return CGPoint(x: midX, y: midY)}
  public var centerRightPoint: CGPoint { return CGPoint(x: maxX, y: midY)}

  public var bottomLeftPoint: CGPoint { return CGPoint(x: minX, y: maxY)}
  public var bottomCenterPoint: CGPoint { return CGPoint(x: midX, y: maxY)}
  public var bottomRightPoint: CGPoint { return CGPoint(x: maxX, y: maxY)}

  enum VerticalDimension {
    case top
    case center
    case bottom
  }

  enum HorizontalDimension {
    case left
    case center
    case right
  }

  func point(at xDimension: HorizontalDimension, _ yDimension: VerticalDimension) -> CGPoint {

    let x: CGFloat, y: CGFloat

    switch xDimension {
    case .left: x = minX
    case .center: x = midX
    case .right: x = maxX
    }

    switch yDimension {
    case .bottom: y = maxY
    case .center: y = midY
    case .top: y = minY
    }

    return CGPoint(x: x, y: y)
  }
}

extension CGSize {
  public static let infinity: CGSize = .init(width: CGFloat.infinity, height: CGFloat.infinity)
}
