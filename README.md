# DarkMediaWiki
DarkMediaWiki is a docker image coming from MediaWiki that includes a DarkVector theme from https://github.com/dolfinus/DarkVector.

## Installation
To select the dark theme, add the following to the LocalSettings.php file:

    wfLoadSkin( 'DarkVector' );
    $wgDarkVectorUseSimpleSearch = true;
    $wgDarkVectorUseIconWatch = true;

The skin must be set for each user. You can also set it as the default skin:

    $wgDefaultSkin = 'DarkVector';

 Also refer to the mediawiki docs [here](https://www.mediawiki.org/wiki/Manual:Skin_configuration#:~:text=skins%20are%20analogous.-,Setting%20the%20default%20skin%20for%20a%20wiki,specified%20in%20the%20skin%20file.) and DarkVector docs [here](https://www.mediawiki.org/wiki/Skin:DarkVector).