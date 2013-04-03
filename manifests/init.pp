class bdii {

 case $::operatingsystem {
    RedHat,SLC,SL:   {
         class {'bdii::install':}
         class {'bdii::config':}
         class {'bdii::service':}
         class {'bdii::lemon':}
         class {'bdii::firewall':}
    }
   default: {
              # There is some fedora configuration present but I can't actually get it to work.
    }
 }
}

  
  
