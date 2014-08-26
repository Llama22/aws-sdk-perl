package Aws::EMR::ClusterStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::ClusterTimeline');
}
1
