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

extension QuickSight {

    ///  Lists Amazon QuickSight analyses that exist in the specified AWS account.
    public func listAnalysesPaginator(
        _ input: ListAnalysesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAnalysesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAnalyses, tokenKey: \ListAnalysesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the versions of the dashboards in the QuickSight subscription.
    public func listDashboardVersionsPaginator(
        _ input: ListDashboardVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDashboardVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboardVersions, tokenKey: \ListDashboardVersionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists dashboards in an AWS account.
    public func listDashboardsPaginator(
        _ input: ListDashboardsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDashboardsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboards, tokenKey: \ListDashboardsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
    public func listDataSetsPaginator(
        _ input: ListDataSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSets, tokenKey: \ListDataSetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists data sources in current AWS Region that belong to this AWS account.
    public func listDataSourcesPaginator(
        _ input: ListDataSourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSources, tokenKey: \ListDataSourcesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the history of SPICE ingestions for a dataset.
    public func listIngestionsPaginator(
        _ input: ListIngestionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListIngestionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIngestions, tokenKey: \ListIngestionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the namespaces for the specified AWS account.
    public func listNamespacesPaginator(
        _ input: ListNamespacesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNamespaces, tokenKey: \ListNamespacesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the aliases of a template.
    public func listTemplateAliasesPaginator(
        _ input: ListTemplateAliasesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTemplateAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateAliases, tokenKey: \ListTemplateAliasesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the versions of the templates in the current Amazon QuickSight account.
    public func listTemplateVersionsPaginator(
        _ input: ListTemplateVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTemplateVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateVersions, tokenKey: \ListTemplateVersionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the templates in the current Amazon QuickSight account.
    public func listTemplatesPaginator(
        _ input: ListTemplatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplates, tokenKey: \ListTemplatesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Searches for analyses that belong to the user specified in the filter.
    public func searchAnalysesPaginator(
        _ input: SearchAnalysesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchAnalysesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchAnalyses, tokenKey: \SearchAnalysesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Searches for dashboards that belong to a user. 
    public func searchDashboardsPaginator(
        _ input: SearchDashboardsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchDashboardsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchDashboards, tokenKey: \SearchDashboardsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension QuickSight.ListAnalysesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListAnalysesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListDashboardVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDashboardVersionsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            dashboardId: self.dashboardId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListDashboardsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDashboardsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListDataSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDataSetsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListDataSourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListDataSourcesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListIngestionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListIngestionsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            dataSetId: self.dataSetId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListNamespacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListNamespacesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.ListTemplateAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplateAliasesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token,
            templateId: self.templateId
        )

    }
}

extension QuickSight.ListTemplateVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplateVersionsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token,
            templateId: self.templateId
        )

    }
}

extension QuickSight.ListTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.ListTemplatesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.SearchAnalysesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.SearchAnalysesRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension QuickSight.SearchDashboardsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QuickSight.SearchDashboardsRequest {
        return .init(
            awsAccountId: self.awsAccountId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

