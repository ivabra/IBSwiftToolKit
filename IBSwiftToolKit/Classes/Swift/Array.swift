extension Array {
  public mutating func withoutItemsAtIndexesInPlace(_ indexes: [Int]) -> [Element] {
    let indexSet = Set(indexes)
    var removed = [Element]()
    self = enumerated().filter {

      if indexSet.contains($0.offset) {
        removed.append($0.element)
        return false
      }
      return true
      }.map {$0.element}
    return removed
  }

  public mutating func withItemsAtIndexesInPlace(_ indexes: [Int]) {
    let indexSet = Set(indexes)
    self = enumerated().filter {indexSet.contains($0.offset)}.map {$0.element}
  }

  public func withoutItemsAtIndexes(_ indexes: [Int]) -> [Element] {
    let indexSet = Set(indexes)
    return enumerated().filter {!indexSet.contains($0.offset)}.map {$0.element}
  }

  public func withItemsAtIndexes(_ indexes: [Int]) -> [Element] {
    let indexSet = Set(indexes)
    return enumerated().filter {indexSet.contains($0.offset)}.map {$0.element}
  }
}
