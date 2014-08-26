package Aws::CloudWatch::MetricDatum {
  use Moose;
  with ('AWS::API::ResultParser');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'Aws::CloudWatch::StatisticSet');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
}
1
