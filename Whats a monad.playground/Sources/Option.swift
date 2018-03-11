import Foundation

public enum Option<A> {
    case none
    case some(A)
    
    public func map<B>(_ transform: (A) -> B) -> Option<B> {
        return self.flatMap {
            .some(transform($0))
        }
    }
}

extension Option {
    public func flatMap<B>(transform: (A) -> Option<B>) -> Option<B> {
        switch self {
        case .none:
            return .none
        case .some(let opt):
            return transform(opt)
        }
    }
}
