package Aws::CloudSearch::AnalysisOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlgorithmicStemming => (is => 'ro', isa => 'Str');
  has StemmingDictionary => (is => 'ro', isa => 'Str');
  has Stopwords => (is => 'ro', isa => 'Str');
  has Synonyms => (is => 'ro', isa => 'Str');
}
1
