package Bundle::Weather;

$VERSION = '1.0.1';

1;
__END__

=head1 NAME

Bundle::Weather - a collection of modules for processing weather products

=head1 DESCRIPTION

This bundle contains a collection of modules for processing weather products
(forecasts, observations, etc.).

The current version only performs the only basic processing of weather
products.  Future versions may include modules for handling and routing
EMWIN (Emergency Managers Weather Information Network) streams. Or even
parsing the information into HTML or XML documents.

=head1 SYNOPSIS

Below is a simple program which will fetch the latest state forecast
from the NWS server and print it out. (The default zone and URL will
have to be changed to match your location, of course.)

    require Weather::Product::NWS;

    $zone = shift || 'NYZ079';
    $file = 'ftp://iwin.nws.noaa.gov/data/text/FPUS61/KOKX.TXT';

    $forecast = new Weather::Product::NWS($file);

    print $forecast->text($zone), "\n";

=head1 CONTENTS

Weather::WMO

Weather::Product

Weather::PIL

Weather::UGC

Weather::Product::NWS

=head1 AUTHOR

Robert Rothenberg <wlkngowl@unix.asb.com>

=cut
