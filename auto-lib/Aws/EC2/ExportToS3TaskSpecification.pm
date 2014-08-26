package Aws::EC2::ExportToS3TaskSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ContainerFormat => (is => 'ro', isa => 'Str');
  has DiskImageFormat => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
}
1
