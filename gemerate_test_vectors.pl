my $enable_counts = 0;
my $reset_at = 256;
my $memwrite = 0;
my $index;

my $global_enables = 0;
my $data_vals = {
    '0010000110111001' => '1101010010010111',
    '0100000110000000' => '0001001100010000',
};

my @data_ins = (
'0000000000000000', 
'0001011010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0011011010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0000111010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0010111010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0001111010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0011111010111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0000000110111001', 
'0100000110000000', 
'0000000000000000', 
'0000000000000000', 
'0010000110111001', 
'0100000110000000', 
);

my $expected_checksum = '0001001100010000';

srand(time);
# print the reset line
#print ("100000000000000000000000000xxxxxxxxxxxxxxxx\n");
print ("1000000000000000000000000000000000000000000\n");
#print ("1000000000000000000000000000\n");
my $last_key = 0;
my $insex = 0;
my @past_keys;
my $expected = '0000000000000000';
my $data = '0000000000000000';


while ($enable_counts < $reset_at - 2 - $#data_ins) {
    if (rand(10) > 6) {
        $memwrite = 1;
        $enable_counts++;
        $global_enables++;
    }
    else {
        $memwrite = 0;
    }
    
    if ($memwrite) {
        $data = '0000000000000000';
    }
    else {
        $data = '';
        for (my $i = 0; $i < 16; $i++) {
            $data .= int(rand(2));
        }
    }
    
    printf ("0%d0%s00000000%s\n",$memwrite,$data,$expected);
} 

#print $global_enables . "\n";
#exit;    

foreach (@data_ins) {
    printf ("0%d0%s00000000%s\n",'1',$_,$expected);
    $global_enables++;
}
$enable_counts = 0;
#print $global_enables . "\n";
#exit;    

for(my $j = 0; $j < 7; $j++) {
    while ($enable_counts < $reset_at ) {

        if (rand(10) > 6) {
            $memwrite = 1;
            $enable_counts++;
            $global_enables++;
        }
        else {
            $memwrite = 0;
        }
        
        $data = '';
        for (my $i = 0; $i < 16; $i++) {
            $data .= int(rand(2));
        }
        #$data = '0000000000000000';
        printf ("0%d0%s00000000%s\n",$memwrite,$data,$expected);
    } 

    $enable_counts = 0;    
    $index++;
    
    if ($index > 6) {
         printf ("010000000000000000000000000%s\n",'0000000000000000');
         printf ("000000000000000000000000000%s\n",$expected_checksum);
         $global_enables++;
    }
}

print $global_enables . "\n";
