package Paws::Glue::Condition;
  use Moose;
  has CrawlerName => (is => 'ro', isa => 'Str');
  has CrawlState => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has LogicalOperator => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Condition object:

  $service_obj->Method(Att1 => { CrawlerName => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlerName

=head1 DESCRIPTION

Defines a condition under which a trigger fires.

=head1 ATTRIBUTES


=head2 CrawlerName => Str

  The name of the crawler to which this condition applies.


=head2 CrawlState => Str

  The state of the crawler to which this condition applies.


=head2 JobName => Str

  The name of the job whose C<JobRuns> this condition applies to, and on
which this trigger waits.


=head2 LogicalOperator => Str

  A logical operator.


=head2 State => Str

  The condition state. Currently, the values supported are C<SUCCEEDED>,
C<STOPPED>, C<TIMEOUT>, and C<FAILED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

