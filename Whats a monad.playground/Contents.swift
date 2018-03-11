//: Playground - What's a monad

let organization = getUserBy(id: 42).mapFlatten { user in getOrganizationBy(id: user.organizationId) }

print(organization.self)
