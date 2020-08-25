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

extension Route53Domains {

    ///  This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDomainsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomains, tokenKey: \ListDomainsResponse.nextPageMarker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about all of the operations that return an operation ID and that have ever been performed on domains that were registered by the current account. 
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListOperationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOperations, tokenKey: \ListOperationsResponse.nextPageMarker, on: eventLoop, onPage: onPage)
    }

}

extension Route53Domains.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Domains.ListDomainsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Route53Domains.ListOperationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Domains.ListOperationsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            submittedSince: self.submittedSince
        )

    }
}

