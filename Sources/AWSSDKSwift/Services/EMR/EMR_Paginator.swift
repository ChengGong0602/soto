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

extension EMR {

    ///  Provides information about the bootstrap actions associated with a cluster.
    public func listBootstrapActionsPaginator(
        _ input: ListBootstrapActionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBootstrapActionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBootstrapActions, tokenKey: \ListBootstrapActionsOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
    public func listClustersPaginator(
        _ input: ListClustersInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListClustersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClusters, tokenKey: \ListClustersOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 
    public func listInstanceFleetsPaginator(
        _ input: ListInstanceFleetsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInstanceFleetsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInstanceFleets, tokenKey: \ListInstanceFleetsOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Provides all available details about the instance groups in a cluster.
    public func listInstanceGroupsPaginator(
        _ input: ListInstanceGroupsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInstanceGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInstanceGroups, tokenKey: \ListInstanceGroupsOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
    public func listInstancesPaginator(
        _ input: ListInstancesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInstancesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInstances, tokenKey: \ListInstancesOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
    public func listSecurityConfigurationsPaginator(
        _ input: ListSecurityConfigurationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSecurityConfigurationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSecurityConfigurations, tokenKey: \ListSecurityConfigurationsOutput.marker, on: eventLoop, onPage: onPage)
    }

    ///  Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request of filter by StepStates. You can specify a maximum of ten stepIDs.
    public func listStepsPaginator(
        _ input: ListStepsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStepsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSteps, tokenKey: \ListStepsOutput.marker, on: eventLoop, onPage: onPage)
    }

}

extension EMR.ListBootstrapActionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListBootstrapActionsInput {
        return .init(
            clusterId: self.clusterId,
            marker: token
        )

    }
}

extension EMR.ListClustersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListClustersInput {
        return .init(
            clusterStates: self.clusterStates,
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            marker: token
        )

    }
}

extension EMR.ListInstanceFleetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListInstanceFleetsInput {
        return .init(
            clusterId: self.clusterId,
            marker: token
        )

    }
}

extension EMR.ListInstanceGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListInstanceGroupsInput {
        return .init(
            clusterId: self.clusterId,
            marker: token
        )

    }
}

extension EMR.ListInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListInstancesInput {
        return .init(
            clusterId: self.clusterId,
            instanceFleetId: self.instanceFleetId,
            instanceFleetType: self.instanceFleetType,
            instanceGroupId: self.instanceGroupId,
            instanceGroupTypes: self.instanceGroupTypes,
            instanceStates: self.instanceStates,
            marker: token
        )

    }
}

extension EMR.ListSecurityConfigurationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListSecurityConfigurationsInput {
        return .init(
            marker: token
        )

    }
}

extension EMR.ListStepsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMR.ListStepsInput {
        return .init(
            clusterId: self.clusterId,
            marker: token,
            stepIds: self.stepIds,
            stepStates: self.stepStates
        )

    }
}

