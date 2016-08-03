

import_turo_fonts<-function(){
  lib_path=paste0(.libPaths('ggtech'), '/ggtech/Fonts')
  
  font_names=c('basis_grotesque_bold.ttf',
               'basis_grotesque_medium.ttf',
               'FreightDispPro-Black.ttf',
               'PlantinStd-BoldCondensed.ttf')
  
  
  for(i in 1:length(font_names)){
    test_file=paste0(sysfonts::font.paths()[2], '/',font_names[i])
    if(!file.exists(test_file)){
      cp_cmd=paste0('cp ', lib_path, '/',font_names[i], ' ',font.paths()[2])
      system(cp_cmd)
    }
    extrafont::font_import(pattern = font_names[i], prompt=FALSE)
  }
}


