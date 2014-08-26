package Aws::RDS::OptionGroupOption {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultPort => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has MinimumRequiredMinorEngineVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OptionGroupOptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOptionSetting]');
  has OptionsDependedOn => (is => 'ro', isa => 'ArrayRef[Str]');
  has Permanent => (is => 'ro', isa => 'Bool');
  has Persistent => (is => 'ro', isa => 'Bool');
  has PortRequired => (is => 'ro', isa => 'Bool');
}
1
