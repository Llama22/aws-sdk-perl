package Aws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
}
1
