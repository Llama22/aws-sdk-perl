package Paws::S3::Destination;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has StorageClass => (is => 'ro', isa => 'Str');
1;
