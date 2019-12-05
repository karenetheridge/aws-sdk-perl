package Paws::AccessAnalyzer::InlineArchiveRule;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::AccessAnalyzer::FilterCriteriaMap', request_name => 'filter', traits => ['NameInRequest'], required => 1);
  has RuleName => (is => 'ro', isa => 'Str', request_name => 'ruleName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::InlineArchiveRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::InlineArchiveRule object:

  $service_obj->Method(Att1 => { Filter => $value, ..., RuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::InlineArchiveRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

An inline archive rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

  The criteria for the rule.


=head2 B<REQUIRED> RuleName => Str

  The name of the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
