
package Paws::Snowball::ListClusterJobs;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusterJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListClusterJobsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListClusterJobs - Arguments for method ListClusterJobs on Paws::Snowball

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusterJobs on the 
Amazon Import/Export Snowball service. Use the attributes of this class
as arguments to method ListClusterJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusterJobs.

As an example:

  $service_obj->ListClusterJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The 39-character ID for the cluster that you want to list, for example
C<CID123e4567-e89b-12d3-a456-426655440000>.



=head2 MaxResults => Int

The number of C<JobListEntry> objects to return.



=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of C<JobListEntry> objects, you have the option of specifying
C<NextToken> as the starting point for your returned list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusterJobs in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

