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

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS Braket service.

The Amazon Braket API Reference provides information about the operations and structures supported in Amazon Braket.
*/
public struct Braket {

    // MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Braket client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "braket",
            serviceProtocol: .restjson,
            apiVersion: "2019-09-01",
            endpoint: endpoint,
            possibleErrorTypes: [BraketErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Cancels the specified task.
    public func cancelQuantumTask(_ input: CancelQuantumTaskRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelQuantumTaskResponse> {
        return self.client.execute(operation: "CancelQuantumTask", path: "/quantum-task/{quantumTaskArn}/cancel", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a quantum task.
    public func createQuantumTask(_ input: CreateQuantumTaskRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateQuantumTaskResponse> {
        return self.client.execute(operation: "CreateQuantumTask", path: "/quantum-task", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the devices available in Amazon Braket.
    public func getDevice(_ input: GetDeviceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeviceResponse> {
        return self.client.execute(operation: "GetDevice", path: "/device/{deviceArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the specified quantum task.
    public func getQuantumTask(_ input: GetQuantumTaskRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetQuantumTaskResponse> {
        return self.client.execute(operation: "GetQuantumTask", path: "/quantum-task/{quantumTaskArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Searches for devices using the specified filters.
    public func searchDevices(_ input: SearchDevicesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SearchDevicesResponse> {
        return self.client.execute(operation: "SearchDevices", path: "/devices", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Searches for tasks that match the specified filter values.
    public func searchQuantumTasks(_ input: SearchQuantumTasksRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SearchQuantumTasksResponse> {
        return self.client.execute(operation: "SearchQuantumTasks", path: "/quantum-tasks", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
