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

extension MediaConvert {

    ///  Send an request with an empty body to the regional API endpoint to get your account API endpoint.
    public func describeEndpointsPaginator(
        _ input: DescribeEndpointsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEndpoints, tokenKey: \DescribeEndpointsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    public func listJobTemplatesPaginator(
        _ input: ListJobTemplatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobTemplates, tokenKey: \ListJobTemplatesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPresetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPresets, tokenKey: \ListPresetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListQueuesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listQueues, tokenKey: \ListQueuesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension MediaConvert.DescribeEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.DescribeEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            mode: self.mode,
            nextToken: token
        )

    }
}

extension MediaConvert.ListJobTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListJobTemplatesRequest {
        return .init(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )

    }
}

extension MediaConvert.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order,
            queue: self.queue,
            status: self.status
        )

    }
}

extension MediaConvert.ListPresetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListPresetsRequest {
        return .init(
            category: self.category,
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )

    }
}

extension MediaConvert.ListQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConvert.ListQueuesRequest {
        return .init(
            listBy: self.listBy,
            maxResults: self.maxResults,
            nextToken: token,
            order: self.order
        )

    }
}

