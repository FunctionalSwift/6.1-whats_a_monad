//: Playground - What's a monad

let organization = getUserBy(id: 42).map { user in getOrganizationBy(id: user.organizationId) }

print(organization.self)
