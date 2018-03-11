public struct Organization {
    public let name: String
}

public func getOrganizationBy(id: Int) -> Option<Organization> {
    return .some(Organization(name: "Functional Swift"))
}
