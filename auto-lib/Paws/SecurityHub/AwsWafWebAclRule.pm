package Paws::SecurityHub::AwsWafWebAclRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::SecurityHub::WafAction');
  has ExcludedRules => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::WafExcludedRule]');
  has OverrideAction => (is => 'ro', isa => 'Paws::SecurityHub::WafOverrideAction');
  has Priority => (is => 'ro', isa => 'Int');
  has RuleId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsWafWebAclRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsWafWebAclRule object:

  $service_obj->Method(Att1 => { Action => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsWafWebAclRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Details for a rule in a WAF WebACL.

=head1 ATTRIBUTES


=head2 Action => L<Paws::SecurityHub::WafAction>

  Specifies the action that CloudFront or AWS WAF takes when a web
request matches the conditions in the Rule.


=head2 ExcludedRules => ArrayRef[L<Paws::SecurityHub::WafExcludedRule>]

  Rules to exclude from a rule group.


=head2 OverrideAction => L<Paws::SecurityHub::WafOverrideAction>

  Use the C<OverrideAction> to test your RuleGroup.

Any rule in a RuleGroup can potentially block a request. If you set the
C<OverrideAction> to C<None>, the RuleGroup blocks a request if any
individual rule in the RuleGroup matches the request and is configured
to block that request.

However, if you first want to test the RuleGroup, set the
C<OverrideAction> to C<Count>. The RuleGroup then overrides any block
action specified by individual rules contained within the group.
Instead of blocking matching requests, those requests are counted.

C<ActivatedRule>|C<OverrideAction> applies only when updating or adding
a RuleGroup to a WebACL. In this case you do not use
C<ActivatedRule>|C<Action>. For all other update requests,
C<ActivatedRule>|C<Action> is used instead of
C<ActivatedRule>|C<OverrideAction>.


=head2 Priority => Int

  Specifies the order in which the Rules in a WebACL are evaluated. Rules
with a lower value for Priority are evaluated before Rules with a
higher value. The value must be a unique integer. If you add multiple
Rules to a WebACL, the values do not need to be consecutive.


=head2 RuleId => Str

  The identifier for a Rule.


=head2 Type => Str

  The rule type.

Valid values: C<REGULAR> | C<RATE_BASED> | C<GROUP>

The default is C<REGULAR>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
