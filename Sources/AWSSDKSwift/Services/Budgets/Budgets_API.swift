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
Client object for interacting with AWS Budgets service.

The AWS Budgets API enables you to use AWS Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for AWS Budgets.  Budgets provide you with a way to see the following information:   How close your plan is to your budgeted amount or to the free tier limits   Your usage-to-date, including how much you've used of your Reserved Instances (RIs)   Your current estimated charges from AWS, and how much your predicted usage will accrue in charges by the end of the month   How much of your budget has been used   AWS updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:    Cost budgets - Plan how much you want to spend on a service.    Usage budgets - Plan how much you want to use one or more services.    RI utilization budgets - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.    RI coverage budgets - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.   Service Endpoint The AWS Budgets API provides the following endpoint:   https://budgets.amazonaws.com   For information about costs that are associated with the AWS Budgets API, see AWS Cost Management Pricing.
*/
public struct Budgets {

    // MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Budgets client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: nil,
            partition: partition,
            amzTarget: "AWSBudgetServiceGateway",
            service: "budgets",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-20",
            endpoint: endpoint,
            serviceEndpoints: ["aws-cn-global": "budgets.amazonaws.com.cn", "aws-global": "budgets.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1), .awscn: (endpoint: "aws-cn-global", region: .cnnorthwest1)],
            possibleErrorTypes: [BudgetsErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Creates a budget and, if included, notifications and subscribers.   Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func createBudget(_ input: CreateBudgetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateBudgetResponse> {
        return self.client.execute(operation: "CreateBudget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a notification. You must create the budget before you create the associated notification.
    public func createNotification(_ input: CreateNotificationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateNotificationResponse> {
        return self.client.execute(operation: "CreateNotification", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a subscriber. You must create the associated budget and notification before you create the subscriber.
    public func createSubscriber(_ input: CreateSubscriberRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateSubscriberResponse> {
        return self.client.execute(operation: "CreateSubscriber", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget. 
    public func deleteBudget(_ input: DeleteBudgetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteBudgetResponse> {
        return self.client.execute(operation: "DeleteBudget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification. 
    public func deleteNotification(_ input: DeleteNotificationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteNotificationResponse> {
        return self.client.execute(operation: "DeleteNotification", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification. 
    public func deleteSubscriber(_ input: DeleteSubscriberRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteSubscriberResponse> {
        return self.client.execute(operation: "DeleteSubscriber", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a budget.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func describeBudget(_ input: DescribeBudgetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBudgetResponse> {
        return self.client.execute(operation: "DescribeBudget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    public func describeBudgetPerformanceHistory(_ input: DescribeBudgetPerformanceHistoryRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBudgetPerformanceHistoryResponse> {
        return self.client.execute(operation: "DescribeBudgetPerformanceHistory", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func describeBudgets(_ input: DescribeBudgetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBudgetsResponse> {
        return self.client.execute(operation: "DescribeBudgets", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the notifications that are associated with a budget.
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeNotificationsForBudgetResponse> {
        return self.client.execute(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the subscribers that are associated with a notification.
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeSubscribersForNotificationResponse> {
        return self.client.execute(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.  Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func updateBudget(_ input: UpdateBudgetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateBudgetResponse> {
        return self.client.execute(operation: "UpdateBudget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a notification.
    public func updateNotification(_ input: UpdateNotificationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateNotificationResponse> {
        return self.client.execute(operation: "UpdateNotification", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a subscriber.
    public func updateSubscriber(_ input: UpdateSubscriberRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateSubscriberResponse> {
        return self.client.execute(operation: "UpdateSubscriber", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
