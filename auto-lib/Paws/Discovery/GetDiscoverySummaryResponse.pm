
package Paws::Discovery::GetDiscoverySummaryResponse;
  use Moose;
  has AgentSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerAgentInfo', traits => ['Unwrapped'], xmlname => 'agentSummary' );
  has Applications => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'applications' );
  has ConnectorSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerConnectorInfo', traits => ['Unwrapped'], xmlname => 'connectorSummary' );
  has Servers => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'servers' );
  has ServersMappedToApplications => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'serversMappedToApplications' );
  has ServersMappedtoTags => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'serversMappedtoTags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetDiscoverySummaryResponse

=head1 ATTRIBUTES


=head2 AgentSummary => L<Paws::Discovery::CustomerAgentInfo>

Details about discovered agents, including agent status and health.


=head2 Applications => Int

Number of applications discovered.


=head2 ConnectorSummary => L<Paws::Discovery::CustomerConnectorInfo>

Details about discovered connectors, including connector status and
health.


=head2 Servers => Int

Number of servers discovered.


=head2 ServersMappedToApplications => Int

Number of servers mapped to applications.


=head2 ServersMappedtoTags => Int

Number of servers mapped to tags.


=head2 _request_id => Str


=cut

1;