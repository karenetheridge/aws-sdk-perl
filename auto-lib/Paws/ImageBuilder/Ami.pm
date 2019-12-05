package Paws::ImageBuilder::Ami;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::ImageBuilder::ImageState', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Ami

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Ami object:

  $service_obj->Method(Att1 => { Description => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Ami object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Details of an EC2 AMI.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the EC2 AMI.


=head2 Image => Str

  The AMI ID of the EC2 AMI.


=head2 Name => Str

  The name of the EC2 AMI.


=head2 Region => Str

  The region of the EC2 AMI.


=head2 State => L<Paws::ImageBuilder::ImageState>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
