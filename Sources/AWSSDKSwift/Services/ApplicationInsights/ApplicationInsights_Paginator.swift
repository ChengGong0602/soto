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

extension ApplicationInsights {

    ///  Lists the IDs of the applications that you are monitoring. 
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplications, tokenKey: \ListApplicationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listComponents, tokenKey: \ListComponentsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///   Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.   
    public func listConfigurationHistoryPaginator(
        _ input: ListConfigurationHistoryRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListConfigurationHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurationHistory, tokenKey: \ListConfigurationHistoryResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the log pattern sets in the specific application.
    public func listLogPatternSetsPaginator(
        _ input: ListLogPatternSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListLogPatternSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLogPatternSets, tokenKey: \ListLogPatternSetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the log patterns in the specific log LogPatternSet.
    public func listLogPatternsPaginator(
        _ input: ListLogPatternsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListLogPatternsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLogPatterns, tokenKey: \ListLogPatternsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the problems with your application.
    public func listProblemsPaginator(
        _ input: ListProblemsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProblemsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProblems, tokenKey: \ListProblemsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension ApplicationInsights.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ApplicationInsights.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListComponentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListConfigurationHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListConfigurationHistoryRequest {
        return .init(
            endTime: self.endTime,
            eventStatus: self.eventStatus,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime
        )

    }
}

extension ApplicationInsights.ListLogPatternSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternSetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListLogPatternsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            patternSetName: self.patternSetName,
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListProblemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListProblemsRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime
        )

    }
}

