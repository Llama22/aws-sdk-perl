
package Paws::ECS::CreateCluster {
  use Moose;
  has clusterName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateCluster - Arguments for method CreateCluster on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method CreateCluster.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

As an example:

  $service_obj->CreateCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 clusterName => Str

  

The name of your cluster. If you do not specify a name for your
cluster, you will create a cluster named C<default>.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateCluster in Paws::ECS

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
