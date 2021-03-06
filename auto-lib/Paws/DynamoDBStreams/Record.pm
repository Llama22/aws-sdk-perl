package Paws::DynamoDBStreams::Record;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', xmlname => 'awsRegion', request_name => 'awsRegion', traits => ['Unwrapped','NameInRequest']);
  has Dynamodb => (is => 'ro', isa => 'Paws::DynamoDBStreams::StreamRecord', xmlname => 'dynamodb', request_name => 'dynamodb', traits => ['Unwrapped','NameInRequest']);
  has EventID => (is => 'ro', isa => 'Str', xmlname => 'eventID', request_name => 'eventID', traits => ['Unwrapped','NameInRequest']);
  has EventName => (is => 'ro', isa => 'Str', xmlname => 'eventName', request_name => 'eventName', traits => ['Unwrapped','NameInRequest']);
  has EventSource => (is => 'ro', isa => 'Str', xmlname => 'eventSource', request_name => 'eventSource', traits => ['Unwrapped','NameInRequest']);
  has EventVersion => (is => 'ro', isa => 'Str', xmlname => 'eventVersion', request_name => 'eventVersion', traits => ['Unwrapped','NameInRequest']);
  has UserIdentity => (is => 'ro', isa => 'Paws::DynamoDBStreams::Identity', xmlname => 'userIdentity', request_name => 'userIdentity', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::Record

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::Record object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., UserIdentity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::Record object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

A description of a unique event within a stream.

=head1 ATTRIBUTES


=head2 AwsRegion => Str

  The region in which the C<GetRecords> request was received.


=head2 Dynamodb => L<Paws::DynamoDBStreams::StreamRecord>

  The main body of the stream record, containing all of the
DynamoDB-specific fields.


=head2 EventID => Str

  A globally unique identifier for the event that was recorded in this
stream record.


=head2 EventName => Str

  The type of data modification that was performed on the DynamoDB table:

=over

=item *

C<INSERT> - a new item was added to the table.

=item *

C<MODIFY> - one or more of an existing item's attributes were modified.

=item *

C<REMOVE> - the item was deleted from the table

=back



=head2 EventSource => Str

  The AWS service from which the stream record originated. For DynamoDB
Streams, this is C<aws:dynamodb>.


=head2 EventVersion => Str

  The version number of the stream record format. This number is updated
whenever the structure of C<Record> is modified.

Client applications must not assume that C<eventVersion> will remain at
a particular value, as this number is subject to change at any time. In
general, C<eventVersion> will only increase as the low-level DynamoDB
Streams API evolves.


=head2 UserIdentity => L<Paws::DynamoDBStreams::Identity>

  Items that are deleted by the Time to Live process after expiration
have the following fields:

=over

=item *

Records[].userIdentity.type

"Service"

=item *

Records[].userIdentity.principalId

"dynamodb.amazonaws.com"

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

