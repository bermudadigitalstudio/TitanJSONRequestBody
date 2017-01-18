import TitanCore
import Foundation

public extension RequestType {
  /// Return the body content as a JSON object, if possible, otherwise return nil.
  /// Uses `Foundation` JSONSerialization for decoding.
  var json: Any? {
    guard let bodyAsData = self.body.data(using: .utf8) else {
      return nil
    }
    return try? JSONSerialization.jsonObject(with: bodyAsData,
                                             options: [])
  }
}
