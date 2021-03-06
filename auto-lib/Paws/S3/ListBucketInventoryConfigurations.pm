
package Paws::S3::ListBucketInventoryConfigurations;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBucketInventoryConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?inventory');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListBucketInventoryConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketInventoryConfigurations - Arguments for method ListBucketInventoryConfigurations on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBucketInventoryConfigurations on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method ListBucketInventoryConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBucketInventoryConfigurations.

As an example:

  $service_obj->ListBucketInventoryConfigurations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the inventory configurations to
retrieve.



=head2 ContinuationToken => Str

The marker used to continue an inventory configuration listing that has
been truncated. Use the NextContinuationToken from a previously
truncated list response to continue the listing. The continuation token
is an opaque value that Amazon S3 understands.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBucketInventoryConfigurations in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

