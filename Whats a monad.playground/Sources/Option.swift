import Foundation

public enum Option<A> {
    case none
    case some(A)
    
    public func map<B>(_ f: (A) -> B) -> Option<B> {
        switch self {
        case .none: return .none
        case let .some(a): return .some(f(a))
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
