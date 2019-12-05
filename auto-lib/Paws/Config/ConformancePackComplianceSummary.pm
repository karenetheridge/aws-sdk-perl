package Paws::Config::ConformancePackComplianceSummary;
  use Moose;
  has ConformancePackComplianceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackComplianceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackComplianceSummary object:

  $service_obj->Method(Att1 => { ConformancePackComplianceStatus => $value, ..., ConformancePackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackComplianceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ConformancePackComplianceStatus

=head1 DESCRIPTION

Summary includes the name and status of the conformance pack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackComplianceStatus => Str

  The status of the conformance pack. The allowed values are COMPLIANT
and NON_COMPLIANT.


=head2 B<REQUIRED> ConformancePackName => Str

  The name of the conformance pack name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
