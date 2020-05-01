// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Route53 {

    ///  Retrieve a list of the health checks that are associated with the current AWS account. 
    public func listHealthChecksPaginator(_ input: ListHealthChecksRequest, onPage: @escaping (ListHealthChecksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHealthChecks, tokenKey: \ListHealthChecksResponse.nextMarker, onPage: onPage)
    }

    ///  Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a HostedZones child element for each hosted zone. Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the maxitems parameter to list them in groups of up to 100.
    public func listHostedZonesPaginator(_ input: ListHostedZonesRequest, onPage: @escaping (ListHostedZonesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listHostedZones, tokenKey: \ListHostedZonesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone. For more information about DNS query logs, see CreateQueryLoggingConfig. Additional information, including the format of DNS query logs, appears in Logging DNS Queries in the Amazon Route 53 Developer Guide.
    public func listQueryLoggingConfigsPaginator(_ input: ListQueryLoggingConfigsRequest, onPage: @escaping (ListQueryLoggingConfigsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listQueryLoggingConfigs, tokenKey: \ListQueryLoggingConfigsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the resource record sets in a specified hosted zone.  ListResourceRecordSets returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the name and type elements.  Sort order   ListResourceRecordSets sorts results first by DNS name with the labels reversed, for example:  com.example.www.  Note the trailing dot, which can change the sort order when the record name contains characters that appear before . (decimal 46) in the ASCII table. These characters include the following: ! " # $ % &amp; ' ( ) * + , -  When multiple records have the same DNS name, ListResourceRecordSets sorts results by the record type.  Specifying where to start listing records  You can use the name and type elements to specify the resource record set that the list begins with:  If you do not specify Name or Type  The results begin with the first resource record set that the hosted zone contains.  If you specify Name but not Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name.  If you specify Type but not Name  Amazon Route 53 returns the InvalidInput error.  If you specify both Name and Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name, and whose type is greater than or equal to Type.    Resource record sets that are PENDING  This action returns the most current version of the records. This includes records that are PENDING, and that are not yet available on all Route 53 DNS servers.  Changing resource record sets  To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a ChangeResourceRecordSets request while you're paging through the results of a ListResourceRecordSets request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.  Displaying the next page of results  If a ListResourceRecordSets command returns more than one page of results, the value of IsTruncated is true. To display the next page of results, get the values of NextRecordName, NextRecordType, and NextRecordIdentifier (if any) from the response. Then submit another ListResourceRecordSets request, and specify those values for StartRecordName, StartRecordType, and StartRecordIdentifier.
    public func listResourceRecordSetsPaginator(_ input: ListResourceRecordSetsRequest, onPage: @escaping (ListResourceRecordSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourceRecordSets, tokenKey: \ListResourceRecordSetsResponse.nextRecordName, onPage: onPage)
    }

}

extension Route53.ListHealthChecksRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListHealthChecksRequest {
        return .init(
            marker: token, 
            maxItems: self.maxItems
        )

    }
}

extension Route53.ListHostedZonesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListHostedZonesRequest {
        return .init(
            delegationSetId: self.delegationSetId, 
            marker: token, 
            maxItems: self.maxItems
        )

    }
}

extension Route53.ListQueryLoggingConfigsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListQueryLoggingConfigsRequest {
        return .init(
            hostedZoneId: self.hostedZoneId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Route53.ListResourceRecordSetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListResourceRecordSetsRequest {
        return .init(
            hostedZoneId: self.hostedZoneId, 
            maxItems: self.maxItems, 
            startRecordIdentifier: self.startRecordIdentifier, 
            startRecordName: token, 
            startRecordType: self.startRecordType
        )

    }
}


