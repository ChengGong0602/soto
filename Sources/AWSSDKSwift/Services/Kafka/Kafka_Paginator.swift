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

extension Kafka {

    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperationsPaginator(
        _ input: ListClusterOperationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListClusterOperationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClusterOperations, tokenKey: \ListClusterOperationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListClustersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClusters, tokenKey: \ListClustersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisionsPaginator(
        _ input: ListConfigurationRevisionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListConfigurationRevisionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurationRevisions, tokenKey: \ListConfigurationRevisionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of all the MSK configurations in this Region.
    public func listConfigurationsPaginator(
        _ input: ListConfigurationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurations, tokenKey: \ListConfigurationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of Kafka versions.
    public func listKafkaVersionsPaginator(
        _ input: ListKafkaVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListKafkaVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listKafkaVersions, tokenKey: \ListKafkaVersionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodesPaginator(
        _ input: ListNodesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNodesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNodes, tokenKey: \ListNodesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Kafka.ListClusterOperationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListClusterOperationsRequest {
        return .init(
            clusterArn: self.clusterArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kafka.ListClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListClustersRequest {
        return .init(
            clusterNameFilter: self.clusterNameFilter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kafka.ListConfigurationRevisionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListConfigurationRevisionsRequest {
        return .init(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kafka.ListConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kafka.ListKafkaVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListKafkaVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kafka.ListNodesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kafka.ListNodesRequest {
        return .init(
            clusterArn: self.clusterArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

