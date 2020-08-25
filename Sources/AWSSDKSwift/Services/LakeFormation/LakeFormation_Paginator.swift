//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

// MARK: Paginators

extension LakeFormation {

    ///  Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    public func getEffectivePermissionsForPathPaginator(
        _ input: GetEffectivePermissionsForPathRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetEffectivePermissionsForPathResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getEffectivePermissionsForPath, tokenKey: \GetEffectivePermissionsForPathResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPermissions, tokenKey: \ListPermissionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the resources registered to be managed by the Data Catalog.
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResources, tokenKey: \ListResourcesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension LakeFormation.GetEffectivePermissionsForPathRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.GetEffectivePermissionsForPathRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

extension LakeFormation.ListPermissionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListPermissionsRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resource: self.resource,
            resourceType: self.resourceType
        )

    }
}

extension LakeFormation.ListResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LakeFormation.ListResourcesRequest {
        return .init(
            filterConditionList: self.filterConditionList,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

