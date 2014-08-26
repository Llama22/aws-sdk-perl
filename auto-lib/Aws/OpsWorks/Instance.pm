package Aws::OpsWorks::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LastServiceErrorId => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Os => (is => 'ro', isa => 'Str');
  has PrivateDns => (is => 'ro', isa => 'Str');
  has PrivateIp => (is => 'ro', isa => 'Str');
  has PublicDns => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has RootDeviceVolumeId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SshHostDsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshHostRsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');
}
1
