package Aws::SQS::ChangeMessageVisibilityBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
}
1
