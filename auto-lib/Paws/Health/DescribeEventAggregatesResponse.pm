
package Paws::Health::DescribeEventAggregatesResponse;
  use Moose;
  has EventAggregates => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventAggregate]', traits => ['Unwrapped'], xmlname => 'eventAggregates' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventAggregatesResponse

=head1 ATTRIBUTES


=head2 EventAggregates => ArrayRef[L<Paws::Health::EventAggregate>]

The number of events in each category that meet the optional filter
criteria.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;