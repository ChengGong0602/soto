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

extension Inspector {

    ///  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    public func getExclusionsPreviewPaginator(
        _ input: GetExclusionsPreviewRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetExclusionsPreviewResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getExclusionsPreview, tokenKey: \GetExclusionsPreviewResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgentsPaginator(
        _ input: ListAssessmentRunAgentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssessmentRunAgentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssessmentRunAgents, tokenKey: \ListAssessmentRunAgentsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRunsPaginator(
        _ input: ListAssessmentRunsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssessmentRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssessmentRuns, tokenKey: \ListAssessmentRunsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargetsPaginator(
        _ input: ListAssessmentTargetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssessmentTargetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssessmentTargets, tokenKey: \ListAssessmentTargetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplatesPaginator(
        _ input: ListAssessmentTemplatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssessmentTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAssessmentTemplates, tokenKey: \ListAssessmentTemplatesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptionsPaginator(
        _ input: ListEventSubscriptionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEventSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEventSubscriptions, tokenKey: \ListEventSubscriptionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  List exclusions that are generated by the assessment run.
    public func listExclusionsPaginator(
        _ input: ListExclusionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListExclusionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listExclusions, tokenKey: \ListExclusionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindings, tokenKey: \ListFindingsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all available Amazon Inspector rules packages.
    public func listRulesPackagesPaginator(
        _ input: ListRulesPackagesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRulesPackagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRulesPackages, tokenKey: \ListRulesPackagesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgentsPaginator(
        _ input: PreviewAgentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (PreviewAgentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: previewAgents, tokenKey: \PreviewAgentsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Inspector.GetExclusionsPreviewRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.GetExclusionsPreviewRequest {
        return .init(
            assessmentTemplateArn: self.assessmentTemplateArn,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            previewToken: self.previewToken
        )

    }
}

extension Inspector.ListAssessmentRunAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentRunAgentsRequest {
        return .init(
            assessmentRunArn: self.assessmentRunArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListAssessmentRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentRunsRequest {
        return .init(
            assessmentTemplateArns: self.assessmentTemplateArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListAssessmentTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentTargetsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListAssessmentTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListAssessmentTemplatesRequest {
        return .init(
            assessmentTargetArns: self.assessmentTargetArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListEventSubscriptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListEventSubscriptionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

extension Inspector.ListExclusionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListExclusionsRequest {
        return .init(
            assessmentRunArn: self.assessmentRunArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListFindingsRequest {
        return .init(
            assessmentRunArns: self.assessmentRunArns,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.ListRulesPackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.ListRulesPackagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Inspector.PreviewAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector.PreviewAgentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            previewAgentsArn: self.previewAgentsArn
        )

    }
}

