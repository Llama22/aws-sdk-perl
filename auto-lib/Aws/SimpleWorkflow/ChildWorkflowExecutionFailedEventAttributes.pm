package Aws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has reason => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1
