use t::TestConfig;

plan tests => 1 * blocks;

filters {
    yaml => [config => 'dumper'],
    perl => [strict => eval => 'dumper'],
};

sub config { 
        new Religion::Bible::Regex::Config(shift)->get_versification_configurations; 
}

run_is yaml => 'perl';

__END__
=== Get versification map
+++ yaml
---
books:
  1: 
    Match:
      Book: ['Genèse', 'Genese']
      Abbreviation: ['Ge']
    Normalized: 
      Book: "Genèse"
      Abbreviation: "Ge"
regex:
  cl_separateur: ";"
  vl_separateur: ","
versification:
  No 17:1: 'No 16:36'
  No 17:2: 'No 16:37'
  No 17:3: 'No 16:38'
  No 17:4: 'No 16:39'
  No 17:5: 'No 16:40'
  No 17:6: 'No 16:41'
  No 17:7: 'No 16:42'
  No 17:8: 'No 16:43'
  No 17:9: 'No 16:44'
  No 17:10: 'No 16:45'

+++ perl
{
  'No 17:1'  => 'No 16:36',
  'No 17:10' => 'No 16:45',
  'No 17:2'  => 'No 16:37',
  'No 17:3'  => 'No 16:38',
  'No 17:4'  => 'No 16:39',
  'No 17:5'  => 'No 16:40',
  'No 17:6'  => 'No 16:41',
  'No 17:7'  => 'No 16:42',
  'No 17:8'  => 'No 16:43',
  'No 17:9'  => 'No 16:44'
}
