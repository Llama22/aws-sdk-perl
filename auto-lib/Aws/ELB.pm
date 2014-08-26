
use AWS::API;


package Aws::ELB::AddTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::AddTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');
}
package Aws::ELB::ApplySecurityGroupsToLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::ApplySecurityGroupsToLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');
}
package Aws::ELB::AttachLoadBalancerToSubnets {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::AttachLoadBalancerToSubnetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');
}
package Aws::ELB::ConfigureHealthCheck {
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::ConfigureHealthCheckResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');
}
package Aws::ELB::CreateAppCookieStickinessPolicy {
  use Moose;
  has CookieName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateAppCookieStickinessPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicyResult');
}
package Aws::ELB::CreateLBCookieStickinessPolicy {
  use Moose;
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLBCookieStickinessPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');
}
package Aws::ELB::CreateLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
}
package Aws::ELB::CreateLoadBalancerListeners {
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerListenersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');
}
package Aws::ELB::CreateLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');
}
package Aws::ELB::DeleteLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeleteLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');
}
package Aws::ELB::DeleteLoadBalancerListeners {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPorts => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeleteLoadBalancerListenersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListenersResult');
}
package Aws::ELB::DeleteLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeleteLoadBalancerPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');
}
package Aws::ELB::DeregisterInstancesFromLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeregisterInstancesFromLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancerResult');
}
package Aws::ELB::DescribeInstanceHealth {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeInstanceHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');
}
package Aws::ELB::DescribeLoadBalancerAttributes {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancerAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributesResult');
}
package Aws::ELB::DescribeLoadBalancerPolicies {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancerPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPoliciesResult');
}
package Aws::ELB::DescribeLoadBalancerPolicyTypes {
  use Moose;
  has PolicyTypeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancerPolicyTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');
}
package Aws::ELB::DescribeLoadBalancers {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');
}
package Aws::ELB::DescribeTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
}
package Aws::ELB::DetachLoadBalancerFromSubnets {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DetachLoadBalancerFromSubnetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnetsResult');
}
package Aws::ELB::DisableAvailabilityZonesForLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancerResult');
}
package Aws::ELB::EnableAvailabilityZonesForLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');
}
package Aws::ELB::ModifyLoadBalancerAttributes {
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::ModifyLoadBalancerAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');
}
package Aws::ELB::RegisterInstancesWithLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::RegisterInstancesWithLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');
}
package Aws::ELB::RemoveTags {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagKeyOnly]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::RemoveTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');
}
package Aws::ELB::SetLoadBalancerListenerSSLCertificate {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::SetLoadBalancerListenerSSLCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');
}
package Aws::ELB::SetLoadBalancerPoliciesForBackendServer {
  use Moose;
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');
}
package Aws::ELB::SetLoadBalancerPoliciesOfListener {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::SetLoadBalancerPoliciesOfListenerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');
}

package Aws::ELB::AddTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::ApplySecurityGroupsToLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::AttachLoadBalancerToSubnetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::ConfigureHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck');

}
package Aws::ELB::CreateAppCookieStickinessPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLBCookieStickinessPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DNSName => (is => 'ro', isa => 'Str');

}
package Aws::ELB::CreateLoadBalancerListenersResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLoadBalancerPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerListenersResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeregisterInstancesFromLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
package Aws::ELB::DescribeInstanceHealthResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Aws::ELB::InstanceState]');

}
package Aws::ELB::DescribeLoadBalancerAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');

}
package Aws::ELB::DescribeLoadBalancerPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyDescription]');

}
package Aws::ELB::DescribeLoadBalancerPolicyTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyTypeDescription]');

}
package Aws::ELB::DescribeLoadBalancersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
package Aws::ELB::DescribeTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagDescription]');

}
package Aws::ELB::DetachLoadBalancerFromSubnetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::ModifyLoadBalancerAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');
  has LoadBalancerName => (is => 'ro', isa => 'Str');

}
package Aws::ELB::RegisterInstancesWithLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
package Aws::ELB::RemoveTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerListenerSSLCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerPoliciesOfListenerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}

package Aws::ELB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::AddTags', @_);
  }
  sub ApplySecurityGroupsToLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::ApplySecurityGroupsToLoadBalancer', @_);
  }
  sub AttachLoadBalancerToSubnets {
    my $self = shift;
    return $self->do_call('Aws::ELB::AttachLoadBalancerToSubnets', @_);
  }
  sub ConfigureHealthCheck {
    my $self = shift;
    return $self->do_call('Aws::ELB::ConfigureHealthCheck', @_);
  }
  sub CreateAppCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateAppCookieStickinessPolicy', @_);
  }
  sub CreateLBCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLBCookieStickinessPolicy', @_);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancer', @_);
  }
  sub CreateLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancerListeners', @_);
  }
  sub CreateLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancerPolicy', @_);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancer', @_);
  }
  sub DeleteLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancerListeners', @_);
  }
  sub DeleteLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancerPolicy', @_);
  }
  sub DeregisterInstancesFromLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeregisterInstancesFromLoadBalancer', @_);
  }
  sub DescribeInstanceHealth {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeInstanceHealth', @_);
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerAttributes', @_);
  }
  sub DescribeLoadBalancerPolicies {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerPolicies', @_);
  }
  sub DescribeLoadBalancerPolicyTypes {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerPolicyTypes', @_);
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancers', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeTags', @_);
  }
  sub DetachLoadBalancerFromSubnets {
    my $self = shift;
    return $self->do_call('Aws::ELB::DetachLoadBalancerFromSubnets', @_);
  }
  sub DisableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DisableAvailabilityZonesForLoadBalancer', @_);
  }
  sub EnableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::EnableAvailabilityZonesForLoadBalancer', @_);
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Aws::ELB::ModifyLoadBalancerAttributes', @_);
  }
  sub RegisterInstancesWithLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::RegisterInstancesWithLoadBalancer', @_);
  }
  sub RemoveTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::RemoveTags', @_);
  }
  sub SetLoadBalancerListenerSSLCertificate {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerListenerSSLCertificate', @_);
  }
  sub SetLoadBalancerPoliciesForBackendServer {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerPoliciesForBackendServer', @_);
  }
  sub SetLoadBalancerPoliciesOfListener {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerPoliciesOfListener', @_);
  }
}
1;
