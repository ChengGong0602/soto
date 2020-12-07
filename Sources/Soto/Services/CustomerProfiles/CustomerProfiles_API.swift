//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS CustomerProfiles service.
///
/// Amazon Connect Customer Profiles Welcome to the Amazon Connect Customer Profiles API Reference. This guide provides information about the Amazon Connect Customer Profiles API, including supported operations, data types, parameters, and schemas. Amazon Connect Customer Profiles is a unified customer profile for your contact center that has pre-built connectors powered by AppFlow that make it easy to combine customer information from third party applications, such as Salesforce (CRM), ServiceNow (ITSM), and your enterprise resource planning (ERP), with contact history from your Amazon Connect contact center. If you're new to Amazon Connect, you might find it helpful to also review the Amazon Connect Administrator Guide.
public struct CustomerProfiles: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CustomerProfiles client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "profile",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-15",
            endpoint: endpoint,
            errorType: CustomerProfilesErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates a new key value with a specific profile, such as a Contact Trace Record (CTR) ContactId. A profile object can have a single unique key and any number of additional keys that can be used to identify the profile that it belongs to.
    public func addProfileKey(_ input: AddProfileKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddProfileKeyResponse> {
        return self.client.execute(operation: "AddProfileKey", path: "/domains/{DomainName}/profiles/keys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a domain, which is a container for all customer data, such as customer profile attributes, object types, profile keys, and encryption keys. You can create multiple domains, and each domain can have multiple third-party integrations. Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances can be associated with one domain.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        return self.client.execute(operation: "CreateDomain", path: "/domains/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a standard profile. A standard profile represents the following attributes for a customer profile in a domain.
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProfileResponse> {
        return self.client.execute(operation: "CreateProfile", path: "/domains/{DomainName}/profiles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specific domain and all of its customer data, such as customer profile attributes and their related objects.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        return self.client.execute(operation: "DeleteDomain", path: "/domains/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an integration from a specific domain.
    public func deleteIntegration(_ input: DeleteIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIntegrationResponse> {
        return self.client.execute(operation: "DeleteIntegration", path: "/domains/{DomainName}/integrations/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the standard customer profile and all data pertaining to the profile.
    public func deleteProfile(_ input: DeleteProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfileResponse> {
        return self.client.execute(operation: "DeleteProfile", path: "/domains/{DomainName}/profiles/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a searchable key from a customer profile.
    public func deleteProfileKey(_ input: DeleteProfileKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfileKeyResponse> {
        return self.client.execute(operation: "DeleteProfileKey", path: "/domains/{DomainName}/profiles/keys/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an object associated with a profile of a given ProfileObjectType.
    public func deleteProfileObject(_ input: DeleteProfileObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfileObjectResponse> {
        return self.client.execute(operation: "DeleteProfileObject", path: "/domains/{DomainName}/profiles/objects/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a ProfileObjectType from a specific domain as well as removes all the ProfileObjects of that type. It also disables integrations from this specific ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that were populated from this ProfileObjectType.
    public func deleteProfileObjectType(_ input: DeleteProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfileObjectTypeResponse> {
        return self.client.execute(operation: "DeleteProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific domain.
    public func getDomain(_ input: GetDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainResponse> {
        return self.client.execute(operation: "GetDomain", path: "/domains/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an integration for a domain.
    public func getIntegration(_ input: GetIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationResponse> {
        return self.client.execute(operation: "GetIntegration", path: "/domains/{DomainName}/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the object types for a specific domain.
    public func getProfileObjectType(_ input: GetProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProfileObjectTypeResponse> {
        return self.client.execute(operation: "GetProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the template information for a specific object type. A template is a predefined ProfileObjectType, such as “Salesforce-Account” or “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API, with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the template.
    public func getProfileObjectTypeTemplate(_ input: GetProfileObjectTypeTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProfileObjectTypeTemplateResponse> {
        return self.client.execute(operation: "GetProfileObjectTypeTemplate", path: "/templates/{TemplateId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the integrations associated to a specific URI in the AWS account.
    public func listAccountIntegrations(_ input: ListAccountIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountIntegrationsResponse> {
        return self.client.execute(operation: "ListAccountIntegrations", path: "/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the domains for an AWS account that have been created.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainsResponse> {
        return self.client.execute(operation: "ListDomains", path: "/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the integrations in your domain.
    public func listIntegrations(_ input: ListIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIntegrationsResponse> {
        return self.client.execute(operation: "ListIntegrations", path: "/domains/{DomainName}/integrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the template information for object types.
    public func listProfileObjectTypeTemplates(_ input: ListProfileObjectTypeTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfileObjectTypeTemplatesResponse> {
        return self.client.execute(operation: "ListProfileObjectTypeTemplates", path: "/templates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the templates available within the service.
    public func listProfileObjectTypes(_ input: ListProfileObjectTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfileObjectTypesResponse> {
        return self.client.execute(operation: "ListProfileObjectTypes", path: "/domains/{DomainName}/object-types", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of objects associated with a profile of a given ProfileObjectType.
    public func listProfileObjects(_ input: ListProfileObjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfileObjectsResponse> {
        return self.client.execute(operation: "ListProfileObjects", path: "/domains/{DomainName}/profiles/objects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an integration between the service and a third-party service, which includes Amazon AppFlow and Amazon Connect. An integration can belong to only one domain.
    public func putIntegration(_ input: PutIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutIntegrationResponse> {
        return self.client.execute(operation: "PutIntegration", path: "/domains/{DomainName}/integrations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds additional objects to customer profiles of a given ObjectType. When adding a specific profile object, like a Contact Trace Record (CTR), an inferred profile can get created if it is not mapped to an existing profile. The resulting profile will only have a phone number populated in the standard ProfileObject. Any additional CTRs with the same phone number will be mapped to the same inferred profile. When a ProfileObject is created and if a ProfileObjectType already exists for the ProfileObject, it will provide data to a standard profile depending on the ProfileObjectType definition. PutProfileObject needs an ObjectType, which can be created using PutProfileObjectType.
    public func putProfileObject(_ input: PutProfileObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutProfileObjectResponse> {
        return self.client.execute(operation: "PutProfileObject", path: "/domains/{DomainName}/profiles/objects", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Defines a ProfileObjectType.
    public func putProfileObjectType(_ input: PutProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutProfileObjectTypeResponse> {
        return self.client.execute(operation: "PutProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for profiles within a specific domain name using name, phone number, email address, account number, or a custom defined index.
    public func searchProfiles(_ input: SearchProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchProfilesResponse> {
        return self.client.execute(operation: "SearchProfiles", path: "/domains/{DomainName}/profiles/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the properties of a domain, including creating or selecting a dead letter queue or an encryption key. Once a domain is created, the name can’t be changed.
    public func updateDomain(_ input: UpdateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainResponse> {
        return self.client.execute(operation: "UpdateDomain", path: "/domains/{DomainName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the properties of a profile. The ProfileId is required for updating a customer profile. When calling the UpdateProfile API, specifying an empty string value means that any existing value will be removed. Not specifying a string value means that any value already there will be kept.
    public func updateProfile(_ input: UpdateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProfileResponse> {
        return self.client.execute(operation: "UpdateProfile", path: "/domains/{DomainName}/profiles", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CustomerProfiles {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CustomerProfiles, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}