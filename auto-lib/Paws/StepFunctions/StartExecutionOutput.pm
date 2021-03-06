
package Paws::StepFunctions::StartExecutionOutput;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'executionArn' , required => 1);
  has StartDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> StartDate => Str

The date the execution was started.


=head2 _request_id => Str


=cut

1;