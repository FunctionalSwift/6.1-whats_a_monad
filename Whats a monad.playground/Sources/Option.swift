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
    public func flatten<B>() -> Option<B> where A == Option<B> {
        switch self {
        case .none:
            return .none
        case .some(let opt):
            return opt
        }
    }
}

extension Option {
    public func mapFlat<B>(transform: (A) -> Option<B>) -> Option<B> {
        return map(transform).flatten()
    }
}

