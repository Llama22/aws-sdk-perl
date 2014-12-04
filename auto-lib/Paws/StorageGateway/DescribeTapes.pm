
package Paws::StorageGateway::DescribeTapes {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeTapesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapes - Arguments for method DescribeTapes on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTapes on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method DescribeTapes.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTapes.

As an example:

  $service_obj->DescribeTapes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> GatewayARN => Str

  

=head2 Limit => Int

  

Specifies that the number of virtual tapes described be limited to the
specified number.










=head2 Marker => Str

  

A marker value, obtained in a previous call to C<DescribeTapes>. This
marker indicates which page of results to retrieve.

If not specified, the first page of results is retrieved.










=head2 TapeARNs => ArrayRef[Str]

  

Specifies one or more unique Amazon Resource Names (ARNs) that
represent the virtual tapes you want to describe. If this parameter is
not specified, AWS Storage Gateway returns a description of all virtual
tapes associated with the specified gateway.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeTapes in Paws::StorageGateway

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
