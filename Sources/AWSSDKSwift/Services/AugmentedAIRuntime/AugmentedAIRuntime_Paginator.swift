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

extension AugmentedAIRuntime {

    ///  Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    public func listHumanLoopsPaginator(
        _ input: ListHumanLoopsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListHumanLoopsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHumanLoops, tokenKey: \ListHumanLoopsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension AugmentedAIRuntime.ListHumanLoopsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AugmentedAIRuntime.ListHumanLoopsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            flowDefinitionArn: self.flowDefinitionArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )

    }
}

