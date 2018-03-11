public struct User {
    public let name: String
    public let organizationId: Int
}

public func getUserBy(id: Int) -> Option<User> {
    return .some(User(name: "alex", organizationId: 1))
}
