package Aws::SDB::Item {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1
