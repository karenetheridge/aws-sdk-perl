package Paws::Inspector::Run;
  use Moose;
  has assessmentArn => (is => 'ro', isa => 'Str');
  has completionTime => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Str');
  has rulesPackages => (is => 'ro', isa => 'ArrayRef[Str]');
  has runArn => (is => 'ro', isa => 'Str');
  has runName => (is => 'ro', isa => 'Str');
  has runState => (is => 'ro', isa => 'Str');
1;