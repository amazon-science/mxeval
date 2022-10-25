# You are an expert Perl programmer, and here is your task.
# Write a Perl function to count positive numbers in a list.
# >>> pos_count([1, -2, 3, -4])
# 2
# >>> pos_count([3, 4, 5, -1])
# 3
# >>> pos_count([1, 2, 3, 4])
# 4
sub pos_count
{
  my ($list) = @_;
  my ($pos, $count) = 0;
  foreach my $x (@$list) {
    if ($x > 0) {
      $pos++;
    }
  }
  return $pos;
}

# You are an expert Perl programmer, and here is your task.
# Write a function to find minimum of three numbers.
# >>> min_of_three(10, 20, 0)
# 0
# >>> min_of_three(19, 15, 18)
# 15
# >>> min_of_three(-10, -20, -30)
# -30
sub min_of_three
{
  my ($a, $b, $c) = @_;
  return ($a < $b ? $a : $b) < $c ? $b : $c;
}

# You are an expert Perl programmer, and here is your task.
# Write a function to replace characters in a string.
# >>> replace_char("polygon", "y", "l")
# "pollgon"
# >>> replace_char("character", "c", "a")
# "aharaater"
# >>> replace_char("python", "l", "a")
# "python"
sub replace_char
{
  my ($str1, $ch, $newch) = @_;
  $str1 =~ s/$ch/$newch/g;
  return $str1;
}