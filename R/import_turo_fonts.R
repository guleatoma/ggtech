

import_turo_fonts<-function(){

  font_names=c(#'basis_grotesque_bold.ttf',
               'basis_grotesque_medium.ttf',
               #'FreightDispPro-Black.ttf',
               'PlantinStd-BoldCondensed.ttf')
  
  
  for(i in 1:length(font_names)){
    test_file=paste0(sysfonts::font.paths()[2], '/',font_names[i])
    if(!file.exists(test_file)){
      origin=paste0('https://github.com/guleatoma/ggtech/tree/master/Fonts/', font_names[i])
      download.file(origin,
                    test_file,
                    method='curl') 
    }
    extrafont::font_import(pattern = font_names[i], prompt=FALSE)
  }
}


